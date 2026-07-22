local TweenService = game:GetService("TweenService")

local Animations = {
    Fast = TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
}

return function(parent, titleText, callback)
    local ButtonFrame = Instance.new("Frame")
    ButtonFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    ButtonFrame.Size = UDim2.new(1, 0, 0, 35)
    ButtonFrame.Parent = parent
    
    local UICorner = Instance.new("UICorner")
    UICorner.CornerRadius = UDim.new(0, 4)
    UICorner.Parent = ButtonFrame
    
    local Btn = Instance.new("TextButton")
    Btn.BackgroundTransparency = 1
    Btn.Size = UDim2.new(1, 0, 1, 0)
    Btn.Text = titleText
    Btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    Btn.Font = Enum.Font.Gotham
    Btn.TextSize = 13
    Btn.Parent = ButtonFrame
    
    Btn.MouseEnter:Connect(function()
        TweenService:Create(ButtonFrame, Animations.Fast, {BackgroundColor3 = Color3.fromRGB(40, 40, 40)}):Play()
    end)
    
    Btn.MouseLeave:Connect(function()
        TweenService:Create(ButtonFrame, Animations.Fast, {BackgroundColor3 = Color3.fromRGB(30, 30, 30)}):Play()
    end)
    
    Btn.MouseButton1Down:Connect(function()
        TweenService:Create(ButtonFrame, Animations.Fast, {BackgroundColor3 = Color3.fromRGB(20, 20, 20)}):Play()
    end)
    
    Btn.MouseButton1Up:Connect(function()
        TweenService:Create(ButtonFrame, Animations.Fast, {BackgroundColor3 = Color3.fromRGB(40, 40, 40)}):Play()
    end)
    
    Btn.MouseButton1Click:Connect(function()
        if callback then callback() end
    end)
    
    return ButtonFrame
end
