local Players = game:GetService("Players")
local MarketplaceService = game:GetService("MarketplaceService")
local LogService = game:GetService("LogService")
local RunService = game:GetService("RunService")

local Client = Players.LocalPlayer

local HomeTabController = {}

function HomeTabController.Init(HomeTab)
    if not HomeTab then return end

    --// Date
    local dateLabel = HomeTab:FindFirstChild("date", true)
    if dateLabel then
        dateLabel.Text = os.date("%B %d, %Y")
    end

    --// Game Info
    local information = HomeTab:FindFirstChild("information", true)
    if information then
        local gameName = information:FindFirstChild("game_name", true)
        local creator = information:FindFirstChild("creator", true)
        local description = information:FindFirstChild("description", true)
        local jobId = information:FindFirstChild("jobid", true) and information:FindFirstChild("jobid", true):FindFirstChild("value")
        local placeId = information:FindFirstChild("placeid", true) and information:FindFirstChild("placeid", true):FindFirstChild("value")
        local photo = information:FindFirstChild("photo", true)
        local backgroundimage = HomeTab:FindFirstChild("background_image", true)

        if placeId then
            placeId.Text = tostring(game.PlaceId)
        end
        if jobId then
            jobId.Text = game.JobId ~= "" and game.JobId or "Studio / Local"
        end

        task.spawn(function()
            pcall(function()
                if game.PlaceId > 0 then
                    local productInfo = MarketplaceService:GetProductInfo(game.PlaceId)
                    if gameName then
                        gameName.Text = productInfo.Name
                    end
                    if creator then
                        creator.Text = "By " .. productInfo.Creator.Name
                    end
                    if description then
                        local descText = productInfo.Description or "No Description"
                        -- Limit description length to prevent UI breaking
                        if #descText > 120 then
                            descText = string.sub(descText, 1, 117) .. "..."
                        end
                        description.Text = descText
                    end
                else
                    if gameName then gameName.Text = game.Name end
                    if creator then creator.Text = "By Unknown" end
                    if description then description.Text = "Studio / Local Game" end
                end
            end)
        end)
        
        -- Load Images directly via rbxthumb API (super fast and reliable)
        if game.GameId > 0 then
            if photo then
                photo.Image = "rbxthumb://type=GameIcon&id=" .. game.GameId .. "&w=150&h=150"
            end
            if backgroundimage then
                backgroundimage.Image = "rbxthumb://type=GameThumbnail&id=" .. game.GameId .. "&w=768&h=432"
            end
        end
    end

    --// Overview Uptime
    local uptime = HomeTab:FindFirstChild("uptime", true)
    if uptime then
        local stopwatch = uptime:FindFirstChild("stopwatch")
        if stopwatch then
            local daysLabel = stopwatch:FindFirstChild("Days")
            local hoursLabel = stopwatch:FindFirstChild("Hours")
            local minsLabel = stopwatch:FindFirstChild("Minutes")
            local secsLabel = stopwatch:FindFirstChild("Seconds")

            task.spawn(function()
                while task.wait(1) do
                    local timePassed = workspace.DistributedGameTime
                    
                    local secs = math.floor(timePassed % 60)
                    local mins = math.floor((timePassed / 60) % 60)
                    local hours = math.floor((timePassed / 3600) % 24)
                    local days = math.floor(timePassed / 86400)

                    if secsLabel then secsLabel.Text = string.format("%02d", secs) end
                    if minsLabel then minsLabel.Text = string.format("%02d", mins) end
                    if hoursLabel then hoursLabel.Text = string.format("%02d", hours) end
                    if daysLabel then daysLabel.Text = string.format("%02d", days) end
                end
            end)
        end
    end

    --// Developer Console
    local console = HomeTab:FindFirstChild("console", true)
    if console then
        local logsContainer = console:FindFirstChild("logs", true)
        if logsContainer then
            local logTemplate = logsContainer:FindFirstChild("log", true)
            if logTemplate then
                logTemplate.Visible = false
                local logOrder = 1000000
                
                local function addLog(message, messageType)
                    local newLog = logTemplate:Clone()
                    newLog.Text = message
                    newLog.Visible = true
                    
                    if messageType == Enum.MessageType.MessageError then
                        newLog.TextColor3 = Color3.fromRGB(255, 100, 100)
                    elseif messageType == Enum.MessageType.MessageWarning then
                        newLog.TextColor3 = Color3.fromRGB(255, 200, 100)
                    elseif messageType == Enum.MessageType.MessageInfo then
                        newLog.TextColor3 = Color3.fromRGB(100, 150, 255)
                    else
                        newLog.TextColor3 = Color3.fromRGB(215, 215, 215)
                    end
                    
                    logOrder = logOrder - 1
                    newLog.LayoutOrder = logOrder
                    newLog.Parent = logsContainer
                    
                    local maxLogs = 100
                    local children = logsContainer:GetChildren()
                    local logElements = {}
                    for _, child in ipairs(children) do
                        if child:IsA("TextLabel") and child.Visible then
                            table.insert(logElements, child)
                        end
                    end
                    if #logElements > maxLogs then
                        table.sort(logElements, function(a, b) return a.LayoutOrder > b.LayoutOrder end)
                        logElements[1]:Destroy()
                    end
                end
                
                local history = LogService:GetLogHistory()
                for _, log in ipairs(history) do
                    addLog(log.message, log.messageType)
                end
                
                LogService.MessageOut:Connect(addLog)
            end
        end
    end

    --// People
    local peopleContainer = HomeTab:FindFirstChild("people", true)
    if peopleContainer then
        local peopleList = peopleContainer:FindFirstChild("People")
        if peopleList then
            local scroll = peopleList:FindFirstChild("scroll")
            if scroll then
                local playerTemplate = scroll:FindFirstChild("Player")
                if playerTemplate then
                    playerTemplate.Visible = false
                    playerTemplate.Size = UDim2.new(1, 0, 0, 40)
                    
                    local function updatePlayerList()
                        for _, child in ipairs(scroll:GetChildren()) do
                            if child:IsA("Frame") and child ~= playerTemplate then
                                child:Destroy()
                            end
                        end
                        
                        for _, player in ipairs(Players:GetPlayers()) do
                            local pFrame = playerTemplate:Clone()
                            pFrame.Visible = true
                            pFrame.Name = player.Name
                            
                            local info = pFrame:FindFirstChild("Informatiom")
                            if info then
                                local nameLabel = info:FindFirstChild("Name")
                                local profile = info:FindFirstChild("Profile")
                                
                                if nameLabel then nameLabel.Text = player.DisplayName end
                                if profile then
                                    profile.Image = "https://www.roblox.com/headshot-thumbnail/image?userId=" .. player.UserId .. "&width=420&height=420&format=png"
                                end
                            end
                            
                            local teleportBtn = pFrame:FindFirstChild("Teleport")
                            if teleportBtn then
                                if player == Client then
                                    teleportBtn.Visible = false
                                else
                                    teleportBtn.MouseButton1Click:Connect(function()
                                        if Client.Character and Client.Character:FindFirstChild("HumanoidRootPart") and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                                            Client.Character.HumanoidRootPart.CFrame = player.Character.HumanoidRootPart.CFrame
                                        end
                                    end)
                                end
                            end
                            
                            pFrame.Parent = scroll
                        end
                    end
                    
                    updatePlayerList()
                    Players.PlayerAdded:Connect(updatePlayerList)
                    Players.PlayerRemoving:Connect(updatePlayerList)
                end
            end
        end
    end

    --// Player Count
    local countWidget = HomeTab:FindFirstChild("count") or (HomeTab:FindFirstChild("people", true) and HomeTab:FindFirstChild("people", true):FindFirstChild("count"))
    if countWidget then
        local meter = countWidget:FindFirstChild("meter")
        local countText = countWidget:FindFirstChild("count")
        
        if meter and countText then
            local line = meter:FindFirstChild("line")
            
            local function updatePlayerCount()
                local currentPlayers = #Players:GetPlayers()
                local maxPlayers = Players.MaxPlayers
                if maxPlayers == 0 then maxPlayers = 20 end
                
                countText.Text = currentPlayers .. "/" .. maxPlayers
                
                if line then
                    local percentage = math.clamp(currentPlayers / maxPlayers, 0, 1)
                    local targetRotation = -180 + (180 * percentage)
                    
                    local TweenService = game:GetService("TweenService")
                    TweenService:Create(line, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Rotation = targetRotation}):Play()
                end
            end
            
            updatePlayerCount()
            Players.PlayerAdded:Connect(updatePlayerCount)
            Players.PlayerRemoving:Connect(updatePlayerCount)
        end
    end
end

return HomeTabController
