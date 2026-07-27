local TweenService = game:GetService("TweenService")

local Animations = {
    Fast = TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
}

return function(parent, titleText, callback)
    local ButtonFrame = Instance.new("Frame")
    ButtonFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    ButtonFrame.Size = UDim2.new(1, 0, 0, 36)
    ButtonFrame.Parent = parent
    
    local UICorner = Instance.new("UICorner")
    UICorner.CornerRadius = UDim.new(0, 6)
    UICorner.Parent = ButtonFrame
    
    local UIStroke = Instance.new("UIStroke")
    UIStroke.Color = Color3.fromRGB(65, 65, 65)
    UIStroke.Thickness = 1
    UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    UIStroke.Parent = ButtonFrame

    local Btn = Instance.new("TextButton")
    Btn.BackgroundTransparency = 1
    Btn.Size = UDim2.new(1, 0, 1, 0)
    Btn.Text = titleText
    Btn.TextColor3 = Color3.fromRGB(240, 240, 240)
    Btn.Font = Enum.Font.GothamSemibold
    Btn.TextSize = 14
    Btn.Parent = ButtonFrame
    
    Btn.MouseEnter:Connect(function()
        TweenService:Create(ButtonFrame, Animations.Fast, {BackgroundColor3 = Color3.fromRGB(55, 55, 55)}):Play()
        TweenService:Create(UIStroke, Animations.Fast, {Color = Color3.fromRGB(85, 85, 85)}):Play()
    end)
    
    Btn.MouseLeave:Connect(function()
        TweenService:Create(ButtonFrame, Animations.Fast, {BackgroundColor3 = Color3.fromRGB(45, 45, 45)}):Play()
        TweenService:Create(UIStroke, Animations.Fast, {Color = Color3.fromRGB(65, 65, 65)}):Play()
    end)
    
    Btn.MouseButton1Down:Connect(function()
        TweenService:Create(ButtonFrame, Animations.Fast, {BackgroundColor3 = Color3.fromRGB(35, 35, 35)}):Play()
        TweenService:Create(Btn, Animations.Fast, {TextSize = 13}):Play()
    end)
    
    Btn.MouseButton1Up:Connect(function()
        TweenService:Create(ButtonFrame, Animations.Fast, {BackgroundColor3 = Color3.fromRGB(55, 55, 55)}):Play()
        TweenService:Create(Btn, Animations.Fast, {TextSize = 14}):Play()
    end)
    
    Btn.MouseButton1Click:Connect(function()
        if callback then callback() end
    end)
    
    return ButtonFrame
end
