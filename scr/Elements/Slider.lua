local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")

local Animations = {
    Fast = TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
}

return function(parent, titleText, min, max, default, callback)
    local SliderFrame = Instance.new("Frame")
    SliderFrame.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
    SliderFrame.Size = UDim2.new(1, 0, 0, 50)
    SliderFrame.Parent = parent
    
    local UICorner = Instance.new("UICorner")
    UICorner.CornerRadius = UDim.new(0, 4)
    UICorner.Parent = SliderFrame
    
    local Title = Instance.new("TextLabel")
    Title.BackgroundTransparency = 1
    Title.Size = UDim2.new(1, -20, 0, 25)
    Title.Position = UDim2.new(0, 10, 0, 0)
    Title.Text = titleText
    Title.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title.Font = Enum.Font.Gotham
    Title.TextSize = 13
    Title.TextXAlignment = Enum.TextXAlignment.Left
    Title.Parent = SliderFrame
    
    local ValueLabel = Instance.new("TextLabel")
    ValueLabel.BackgroundTransparency = 1
    ValueLabel.Size = UDim2.new(0, 50, 0, 25)
    ValueLabel.AnchorPoint = Vector2.new(1, 0)
    ValueLabel.Position = UDim2.new(1, -10, 0, 0)
    ValueLabel.Text = tostring(default)
    ValueLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    ValueLabel.TextTransparency = 0.5
    ValueLabel.Font = Enum.Font.Gotham
    ValueLabel.TextSize = 13
    ValueLabel.TextXAlignment = Enum.TextXAlignment.Right
    ValueLabel.Parent = SliderFrame
    
    local BarBG = Instance.new("Frame")
    BarBG.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    BarBG.Size = UDim2.new(1, -20, 0, 6)
    BarBG.Position = UDim2.new(0, 10, 0, 33)
    BarBG.Parent = SliderFrame
    
    local BarCorner = Instance.new("UICorner")
    BarCorner.CornerRadius = UDim.new(1, 0)
    BarCorner.Parent = BarBG
    
    local BarFill = Instance.new("Frame")
    BarFill.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    local initialScale = (default - min) / (max - min)
    BarFill.Size = UDim2.new(initialScale, 0, 1, 0)
    BarFill.Parent = BarBG
    
    local FillCorner = Instance.new("UICorner")
    FillCorner.CornerRadius = UDim.new(1, 0)
    FillCorner.Parent = BarFill
    
    local Btn = Instance.new("TextButton")
    Btn.BackgroundTransparency = 1
    Btn.Size = UDim2.new(1, 0, 1, 0)
    Btn.Text = ""
    Btn.Parent = SliderFrame
    
    local dragging = false
    Btn.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
        end
    end)
    
    UserInputService.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = false
        end
    end)
    
    UserInputService.InputChanged:Connect(function(input)
        if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
            local mousePos = UserInputService:GetMouseLocation().X
            local barPos = BarBG.AbsolutePosition.X
            local barSize = BarBG.AbsoluteSize.X
            local scale = math.clamp((mousePos - barPos) / barSize, 0, 1)
            
            local value = math.floor(min + ((max - min) * scale))
            ValueLabel.Text = tostring(value)
            TweenService:Create(BarFill, Animations.Fast, {Size = UDim2.new(scale, 0, 1, 0)}):Play()
            
            if callback then callback(value) end
        end
    end)
    
    return SliderFrame
end
