local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")

local Animations = {
    Fast = TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
}

return function(parent, titleText, min, max, default, callback)
    local SliderFrame = Instance.new("Frame")
    SliderFrame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    SliderFrame.Size = UDim2.new(1, 0, 0, 50)
    SliderFrame.Parent = parent
    
    local UICorner = Instance.new("UICorner")
    UICorner.CornerRadius = UDim.new(0, 6)
    UICorner.Parent = SliderFrame
    
    local UIStroke = Instance.new("UIStroke")
    UIStroke.Color = Color3.fromRGB(40, 40, 40)
    UIStroke.Thickness = 1
    UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    UIStroke.Parent = SliderFrame

    local Title = Instance.new("TextLabel")
    Title.BackgroundTransparency = 1
    Title.Size = UDim2.new(1, -60, 0, 25)
    Title.Position = UDim2.new(0, 12, 0, 4)
    Title.Text = titleText
    Title.TextColor3 = Color3.fromRGB(240, 240, 240)
    Title.Font = Enum.Font.GothamSemibold
    Title.TextSize = 13
    Title.TextXAlignment = Enum.TextXAlignment.Left
    Title.Parent = SliderFrame
    
    local ValueBg = Instance.new("Frame")
    ValueBg.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    ValueBg.Size = UDim2.new(0, 40, 0, 20)
    ValueBg.AnchorPoint = Vector2.new(1, 0)
    ValueBg.Position = UDim2.new(1, -12, 0, 6)
    ValueBg.Parent = SliderFrame
    
    local ValueCorner = Instance.new("UICorner")
    ValueCorner.CornerRadius = UDim.new(0, 4)
    ValueCorner.Parent = ValueBg
    
    local ValueLabel = Instance.new("TextLabel")
    ValueLabel.BackgroundTransparency = 1
    ValueLabel.Size = UDim2.new(1, 0, 1, 0)
    ValueLabel.Text = tostring(default)
    ValueLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    ValueLabel.TextTransparency = 0.2
    ValueLabel.Font = Enum.Font.GothamMedium
    ValueLabel.TextSize = 12
    ValueLabel.Parent = ValueBg
    
    local BarBG = Instance.new("Frame")
    BarBG.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    BarBG.Size = UDim2.new(1, -24, 0, 6)
    BarBG.Position = UDim2.new(0, 12, 0, 34)
    BarBG.Parent = SliderFrame
    
    local BarCorner = Instance.new("UICorner")
    BarCorner.CornerRadius = UDim.new(1, 0)
    BarCorner.Parent = BarBG
    
    local BarFill = Instance.new("Frame")
    BarFill.BackgroundColor3 = Color3.fromRGB(220, 220, 220)
    local initialScale = (default - min) / (max - min)
    BarFill.Size = UDim2.new(initialScale, 0, 1, 0)
    BarFill.Parent = BarBG
    
    local FillCorner = Instance.new("UICorner")
    FillCorner.CornerRadius = UDim.new(1, 0)
    FillCorner.Parent = BarFill
    
    local Thumb = Instance.new("Frame")
    Thumb.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Thumb.Size = UDim2.new(0, 14, 0, 14)
    Thumb.AnchorPoint = Vector2.new(0.5, 0.5)
    Thumb.Position = UDim2.new(1, 0, 0.5, 0)
    Thumb.Parent = BarFill
    
    local ThumbCorner = Instance.new("UICorner")
    ThumbCorner.CornerRadius = UDim.new(1, 0)
    ThumbCorner.Parent = Thumb
    
    local ThumbShadow = Instance.new("UIStroke")
    ThumbShadow.Color = Color3.fromRGB(0, 0, 0)
    ThumbShadow.Transparency = 0.8
    ThumbShadow.Thickness = 2
    ThumbShadow.Parent = Thumb
    
    local Btn = Instance.new("TextButton")
    Btn.BackgroundTransparency = 1
    Btn.Size = UDim2.new(1, 0, 1, 0)
    Btn.Text = ""
    Btn.Parent = SliderFrame
    
    local dragging = false
    
    Btn.MouseEnter:Connect(function()
        TweenService:Create(UIStroke, Animations.Fast, {Color = Color3.fromRGB(60, 60, 60)}):Play()
        TweenService:Create(Thumb, Animations.Fast, {Size = UDim2.new(0, 16, 0, 16)}):Play()
    end)
    
    Btn.MouseLeave:Connect(function()
        if not dragging then
            TweenService:Create(UIStroke, Animations.Fast, {Color = Color3.fromRGB(40, 40, 40)}):Play()
            TweenService:Create(Thumb, Animations.Fast, {Size = UDim2.new(0, 14, 0, 14)}):Play()
        end
    end)
    
    Btn.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            TweenService:Create(Thumb, Animations.Fast, {Size = UDim2.new(0, 12, 0, 12), BackgroundColor3 = Color3.fromRGB(200, 200, 200)}):Play()
            
            local mousePos = input.Position.X
            local barPos = BarBG.AbsolutePosition.X
            local barSize = BarBG.AbsoluteSize.X
            local scale = math.clamp((mousePos - barPos) / barSize, 0, 1)
            
            local value = math.floor(min + ((max - min) * scale))
            ValueLabel.Text = tostring(value)
            TweenService:Create(BarFill, Animations.Fast, {Size = UDim2.new(scale, 0, 1, 0)}):Play()
            if callback then callback(value) end
        end
    end)
    
    UserInputService.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = false
            TweenService:Create(UIStroke, Animations.Fast, {Color = Color3.fromRGB(40, 40, 40)}):Play()
            TweenService:Create(Thumb, Animations.Fast, {Size = UDim2.new(0, 14, 0, 14), BackgroundColor3 = Color3.fromRGB(255, 255, 255)}):Play()
        end
    end)
    
    UserInputService.InputChanged:Connect(function(input)
        if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
            local mousePos = input.Position.X
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
