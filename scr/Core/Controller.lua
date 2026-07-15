local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LogService = game:GetService("LogService")
local StatsService = game:GetService("Stats")

local Client = Players.LocalPlayer

local Controller = {}

--// Debugbar
function Controller.InitDebugbar(Debug, Remotes)
    if not Debug or not Remotes then return end

    task.spawn(function()
        local region = "Unknown"
        pcall(function()
            region = Remotes.Retrieving.RetrieveServerRegion:InvokeServer()
        end)
        if Debug:FindFirstChild("region") then
            Debug.region.Text = region or "Unknown"
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
            
            pcall(function()
                local server_data = Remotes.Retrieving.RetrieveConsoleData:InvokeServer()
                local er = server_data ~= nil and server_data.errors or 0
                local wr = server_data ~= nil and server_data.warnings or 0
                data.errors += er
                data.warnings += wr
            end)
            
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

    if closeBtn then
        closeBtn.MouseButton1Click:Connect(function()
            Main.Visible = false 
        end)
    end

    if navBtn then
        navBtn.MouseButton1Click:Connect(function()
            
        end)
    end

    if returnBtn then
        returnBtn.MouseButton1Click:Connect(function()
        end)
    end

    local lastClick = 0
    Topbar.MouseButton1Click:Connect(function()
        if time() - lastClick < 0.5 then
            Main:SetAttribute("Fullscreen", not Main:GetAttribute("Fullscreen"))
            lastClick = 0
        else
            lastClick = time()
        end
    end)

    if TweenService and Animations then
        for _, button in pairs(mainActions:GetChildren()) do
            if button:IsA("ImageButton") or button:IsA("TextButton") then
                button.MouseEnter:Connect(function()
                    TweenService:Create(button, Animations.Fast, { BackgroundTransparency = 0.8}):Play()
                    if button:FindFirstChild("scale") then
                        TweenService:Create(button.scale, Animations.Fast, { Scale = 1.1 }):Play()
                    end
                end)

                button.MouseLeave:Connect(function()
                    TweenService:Create(button, Animations.Fast, { BackgroundTransparency = 1 }):Play()
                    if button:FindFirstChild("scale") then
                        TweenService:Create(button.scale, Animations.Fast, { Scale = 1 }):Play()
                    end
                end)

                button.MouseButton1Down:Connect(function()
                    TweenService:Create(button, Animations.Smooth, { BackgroundTransparency = 0.85 }):Play()
                    if button:FindFirstChild("scale") then
                        TweenService:Create(button.scale, Animations.Fast, { Scale = 0.9 }):Play()
                    end
                end)

                button.MouseButton1Up:Connect(function()
                    TweenService:Create(button, Animations.Fast, { BackgroundTransparency = 1 }):Play()
                    if button:FindFirstChild("scale") then
                        TweenService:Create(button.scale, Animations.Fast, { Scale = 1 }):Play()
                    end
                end)
            end
        end
    end
end

--//Notification

return Controller