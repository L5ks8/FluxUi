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

--//Notification



--//TabHandler
function Controller.InitTabHandler(WindowTable)
    local tabsContainer = WindowTable.Tabs
    if not tabsContainer then return end
    
    local screen = WindowTable.Content and WindowTable.Content:FindFirstChild("screen")
    local pageLayout = screen and screen:FindFirstChild("page")
    if not pageLayout then return end
    
    for _, descendant in ipairs(tabsContainer:GetDescendants()) do
        if descendant:IsA("ImageButton") or descendant:IsA("TextButton") then
            local targetPage = screen:FindFirstChild(descendant.Name)
            if targetPage and descendant.Name ~= "content" and descendant.Name ~= "scroll" then
                descendant.MouseButton1Click:Connect(function()
                    pageLayout:JumpTo(targetPage)
                end)
            end
        end
    end
end

return Controller