local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LogService = game:GetService("LogService")
local StatsService = game:GetService("Stats")

local Client = Players.LocalPlayer

local Controller = {}

--// Debugbar
function Controller.InitDebugbar(Debug)
    if not Debug then return end

    task.spawn(function()
        if Debug:FindFirstChild("region") then
            Debug.region.Text = "Unknown"
        end
    end)

    -- fps
    task.spawn(function()
        while task.wait(1) do
            if Debug:FindFirstChild("fps") then
                Debug.fps.Text = `FPS: {math.floor(1 / RunService.RenderStepped:Wait())}/s`
            end
        end
    end)

    -- ping
    task.spawn(function()
        while task.wait(1) do
            if Debug:FindFirstChild("ping") and Debug.ping:FindFirstChild("value") then
                Debug.ping.value.Text = `Ping: {math.floor(Client:GetNetworkPing() * 1000)}ms`
            end
        end
    end)

    -- console errors & warnings
    task.spawn(function()
        while task.wait(1) do
            local data = { errors = 0, warnings = 0 }
            local logs = LogService:GetLogHistory()
            
            for _, log in ipairs(logs) do
                if log.messageType == Enum.MessageType.MessageError then
                    data.errors += 1
                elseif log.messageType == Enum.MessageType.MessageWarning then
                    data.warnings += 1
                end
            end
            
            if Debug:FindFirstChild("errors") and Debug.errors:FindFirstChild("value") then
                Debug.errors.value.Text = tostring(data.errors)
            end
            if Debug:FindFirstChild("warnings") and Debug.warnings:FindFirstChild("value") then
                Debug.warnings.value.Text = tostring(data.warnings)
            end
        end
    end)

    -- memory
    task.spawn(function()
        while task.wait(1) do
            if Debug:FindFirstChild("memory") and Debug.memory:FindFirstChild("value") then
                Debug.memory.value.Text = `{math.floor(StatsService:GetTotalMemoryUsageMb())} MB`
            end
        end
    end)
end

--// Topbar
function Controller.InitTopbar(Topbar, Main, TweenService, Animations)
    if not Topbar or not Main then return end

    local actions = Topbar:FindFirstChild("actions")
    local mainActions = actions and actions:FindFirstChild("main")
    
    if not mainActions then return end

    local fullscreenBtn = mainActions:FindFirstChild("fullscreen")
    local closeBtn = mainActions:FindFirstChild("close")
    local navBtn = mainActions:FindFirstChild("nav")
    local returnBtn = mainActions:FindFirstChild("return")

    -- fullscreen 
    if fullscreenBtn then
        fullscreenBtn.MouseButton1Click:Connect(function()
            Main:SetAttribute("Fullscreen", not Main:GetAttribute("Fullscreen"))
        end)
    end

    Main:GetAttributeChangedSignal("Fullscreen"):Connect(function()
        local isFullscreen = Main:GetAttribute("Fullscreen")
        
        if fullscreenBtn and fullscreenBtn:FindFirstChild("Icons") then
            local fsIcon = fullscreenBtn.Icons:FindFirstChild("Fullscreen")
            local minIcon = fullscreenBtn.Icons:FindFirstChild("Minimize")
            
            if fsIcon then fsIcon.Visible = not isFullscreen end
            if minIcon then minIcon.Visible = isFullscreen end
        end
    end)

    -- close
    if closeBtn then
        closeBtn.MouseButton1Click:Connect(function()
            if TweenService and Animations and Main:IsA("CanvasGroup") then
                local tween = TweenService:Create(Main, Animations.Smooth, { GroupTransparency = 1 })
                tween:Play()
                tween.Completed:Wait()
            end
            Main.Visible = false 
        end)
    end

    -- navigation
    if navBtn then
        navBtn.MouseButton1Click:Connect(function()
        end)
    end

    -- return 
    if returnBtn then
        returnBtn.MouseButton1Click:Connect(function()
        end)
    end

    -- double click to fullscreen 
    local lastClick = 0
    Topbar.MouseButton1Click:Connect(function()
        if time() - lastClick < 0.5 then
            Main:SetAttribute("Fullscreen", not Main:GetAttribute("Fullscreen"))
            lastClick = 0
        else
            lastClick = time()
        end
    end)

    -- hover
    if TweenService and Animations then
        for _, button in pairs(mainActions:GetChildren()) do
            if button:IsA("ImageButton") or button:IsA("TextButton") then
                button.MouseEnter:Connect(function()
                    if button:FindFirstChild("scale") then
                        TweenService:Create(button.scale, Animations.Fast, { Scale = 1.1 }):Play()
                    end
                end)

                button.MouseLeave:Connect(function()
                    if button:FindFirstChild("scale") then
                        TweenService:Create(button.scale, Animations.Fast, { Scale = 1 }):Play()
                    end
                end)

                button.MouseButton1Down:Connect(function()
                    if button:FindFirstChild("scale") then
                        TweenService:Create(button.scale, Animations.Fast, { Scale = 0.9 }):Play()
                    end
                end)

                button.MouseButton1Up:Connect(function()
                    if button:FindFirstChild("scale") then
                        TweenService:Create(button.scale, Animations.Fast, { Scale = 1 }):Play()
                    end
                end)
            end
        end
    end
end

--//UserProfile
function Controller.InitUserProfile(WindowTable)
    local Players = game:GetService("Players")
    local LocalPlayer = Players.LocalPlayer
    if not LocalPlayer then return end

    local tabsContainer = WindowTable.Tabs
    if not tabsContainer then return end
    
    local userBtn = tabsContainer:FindFirstChild("user", true)
    if userBtn then
        local info = userBtn:FindFirstChild("info")
        if info then
            local display = info:FindFirstChild("display")
            local username = info:FindFirstChild("username")
            
            if display then display.Text = LocalPlayer.DisplayName end
            if username then username.Text = "@" .. LocalPlayer.Name end
        end
        
        local profile = userBtn:FindFirstChild("profile")
        if profile then
            local thumbnail = profile:FindFirstChild("thumbnail")
            if thumbnail and thumbnail:IsA("ImageLabel") then
                thumbnail.Image = "rbxthumb://type=AvatarHeadShot&id=" .. LocalPlayer.UserId .. "&w=420&h=420"
            end
        end
    end
end
--// Drag and Resize
function Controller.InitDragAndResize(WindowTable)
    local UserInputService = game:GetService("UserInputService")
    local TweenService = game:GetService("TweenService")
    local Players = game:GetService("Players")
    local Client = Players.LocalPlayer
    local Mouse = Client:GetMouse()
    local Camera = workspace.CurrentCamera
    
    local Main = WindowTable.Main
    local Controls = WindowTable.Controls
    if not Main or not Controls then return end
    
    local Animations = {
        Smooth = TweenInfo.new(0.25, Enum.EasingStyle.Quart, Enum.EasingDirection.Out),
        Fast = TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
    }

    --// Drag
    local Hovering = false
    local Holding = false
    local DragConnection = nil
    local InitialX, InitialY, UIInitialPos = nil, nil, nil

    local function Drag()
        if Holding == false then 
            if DragConnection then DragConnection:Disconnect() end
            return 
        end

        local distanceMovedX = InitialX - Mouse.X
        local distanceMovedY = InitialY - Mouse.Y

        TweenService:Create(Main, Animations.Smooth, { Position = UIInitialPos - UDim2.new(0, distanceMovedX, 0, distanceMovedY) }):Play()
    end

    local dragBtn = Controls:FindFirstChild("drag")
    if dragBtn then
        dragBtn.MouseEnter:Connect(function()
            Hovering = true
            TweenService:Create(dragBtn, Animations.Fast, { Size = UDim2.fromOffset(75, 35) }):Play()
            if dragBtn:FindFirstChild("bar") then
                TweenService:Create(dragBtn.bar, Animations.Fast, { BackgroundTransparency = 0 }):Play()
            end
        end)

        dragBtn.MouseLeave:Connect(function()
            Hovering = false
            TweenService:Create(dragBtn, Animations.Fast, { Size = UDim2.fromOffset(70, 35) }):Play()
            if dragBtn:FindFirstChild("bar") then
                TweenService:Create(dragBtn.bar, Animations.Fast, { BackgroundTransparency = 0.5 }):Play()
            end
        end)
    end

    UserInputService.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            Holding = Hovering
            if Holding then
                InitialX, InitialY = Mouse.X, Mouse.Y
                UIInitialPos = Main.Position
                DragConnection = Mouse.Move:Connect(Drag)
            end
        end
    end)

    task.spawn(function()
        while task.wait() do
            if dragBtn and dragBtn:FindFirstChild("bar") and dragBtn.bar:FindFirstChild("stroke") then
                if Holding == true then
                    dragBtn.bar.stroke.Thickness = 1
                    dragBtn.bar.stroke.Enabled = true
                else
                    dragBtn.bar.stroke.Thickness = 0
                    dragBtn.bar.stroke.Enabled = false
                end
            end
        end
    end)

    UserInputService.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            Holding = false
        end
    end)

    --// Sizing
    local Resizing = false
    local start_mouse_pos = nil
    local start_scale = 1
    local tapped = false

    local resizeBtn = Controls:FindFirstChild("resize")

    local function ResizeStart(input)
        Resizing = true
        start_mouse_pos = Vector2.new(input.Position.X, input.Position.Y)
        
        local scale = Main:FindFirstChild("Scale")
        if scale then
            start_scale = scale.Scale
        end
    end

    local function ResizeDisconnect()
        Resizing = false
        if resizeBtn and resizeBtn:FindFirstChild("Scale") then
            TweenService:Create(resizeBtn.Scale, Animations.Fast, {Scale = 1}):Play()
        end
    end

    local function ResizeUpdate(input)
        if Resizing and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
            local scale = Main:FindFirstChild("Scale")
            if not scale then return end
            
            local currentMousePosition = Vector2.new(input.Position.X, input.Position.Y)
            local mouseDelta = currentMousePosition - start_mouse_pos
            
            -- Scale proportionally based on X delta.
            -- Dragging 400 pixels to the right adds +1 to the scale.
            local newScale = start_scale + (mouseDelta.X / 400)
            newScale = math.clamp(newScale, 0.4, 2.5)

            TweenService:Create(scale, Animations.Smooth, {Scale = newScale}):Play()
        end
    end

    if resizeBtn then
        resizeBtn.MouseEnter:Connect(function()
            TweenService:Create(resizeBtn, Animations.Fast, { Size = UDim2.fromOffset(40, 40) }):Play()
            if resizeBtn:FindFirstChild("icon") then
                TweenService:Create(resizeBtn.icon, Animations.Fast, { ImageColor3 = Color3.fromRGB(80, 80, 80) }):Play()
            end
        end)

        resizeBtn.MouseLeave:Connect(function()
            TweenService:Create(resizeBtn, Animations.Fast, { Size = UDim2.fromOffset(35, 35) }):Play()
            if resizeBtn:FindFirstChild("icon") then
                TweenService:Create(resizeBtn.icon, Animations.Fast, { ImageColor3 = Color3.fromRGB(60, 60, 60) }):Play()
            end
        end)

        resizeBtn.MouseButton1Down:Connect(function()
            tapped = true
        end)

        resizeBtn.InputBegan:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 or (input.UserInputType == Enum.UserInputType.Touch and tapped) then
                ResizeStart(input)
            end
        end)
    end

    UserInputService.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            tapped = false
            ResizeDisconnect()
        end
    end)

    UserInputService.InputChanged:Connect(function(input)
        if (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) and Resizing then
            ResizeUpdate(input)
        end
    end)
end

--//TabHandler
function Controller.InitTabHandler(WindowTable)
    local tabsContainer = WindowTable.Tabs
    if not tabsContainer then return end
    
    local screen = WindowTable.Content and WindowTable.Content:FindFirstChild("screen")
    local pageLayout = screen and screen:FindFirstChild("page")
    if not pageLayout then return end
    
    local TweenService = game:GetService("TweenService")
    local Animations = { Fast = TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out) }
    
    local allTabButtons = {}
    
    for _, descendant in ipairs(tabsContainer:GetDescendants()) do
        if descendant:IsA("ImageButton") or descendant:IsA("TextButton") then

            local targetPage = screen:FindFirstChild(descendant.Name)
            if targetPage and descendant.Name ~= "content" and descendant.Name ~= "scroll" then
                table.insert(allTabButtons, descendant)
                
                descendant.MouseButton1Click:Connect(function()
                    pageLayout:JumpTo(targetPage)
                    
                    for _, btn in pairs(allTabButtons) do
                        if btn == descendant then
                            TweenService:Create(btn, Animations.Fast, {BackgroundTransparency = 0}):Play()
                        else
                            TweenService:Create(btn, Animations.Fast, {BackgroundTransparency = 1}):Play()
                        end
                    end
                end)
            end
        end
    end
end

return Controller