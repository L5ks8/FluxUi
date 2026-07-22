local TweenService = game:GetService("TweenService")

local Animations = {
    Fast = TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
}

return function(parent, titleText, callback)
    local ToggleFrame = Instance.new("Frame")
    ToggleFrame.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
    ToggleFrame.Size = UDim2.new(1, 0, 0, 35)
    ToggleFrame.Parent = parent
    
    local UICorner = Instance.new("UICorner")
    UICorner.CornerRadius = UDim.new(0, 4)
    UICorner.Parent = ToggleFrame
    
    local Title = Instance.new("TextLabel")
    Title.BackgroundTransparency = 1
    Title.Size = UDim2.new(1, -60, 1, 0)
    Title.Position = UDim2.new(0, 10, 0, 0)
    Title.Text = titleText
    Title.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title.Font = Enum.Font.Gotham
    Title.TextSize = 13
    Title.TextXAlignment = Enum.TextXAlignment.Left
    Title.Parent = ToggleFrame
    
    local Switch = Instance.new("Frame")
    Switch.AnchorPoint = Vector2.new(1, 0.5)
    Switch.Position = UDim2.new(1, -10, 0.5, 0)
    Switch.Size = UDim2.new(0, 36, 0, 20)
    Switch.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    Switch.Parent = ToggleFrame
    
    local SwitchCorner = Instance.new("UICorner")
    SwitchCorner.CornerRadius = UDim.new(1, 0)
    SwitchCorner.Parent = Switch
    
    local Knob = Instance.new("Frame")
    Knob.AnchorPoint = Vector2.new(0, 0.5)
    Knob.Position = UDim2.new(0, 2, 0.5, 0)
    Knob.Size = UDim2.new(0, 16, 0, 16)
    Knob.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Knob.Parent = Switch
    
    local KnobCorner = Instance.new("UICorner")
    KnobCorner.CornerRadius = UDim.new(1, 0)
    KnobCorner.Parent = Knob
    
    local Btn = Instance.new("TextButton")
    Btn.BackgroundTransparency = 1
    Btn.Size = UDim2.new(1, 0, 1, 0)
    Btn.Text = ""
    Btn.Parent = ToggleFrame
    
    local state = false
    Btn.MouseButton1Click:Connect(function()
        state = not state
        TweenService:Create(Knob, Animations.Fast, {Position = state and UDim2.new(1, -18, 0.5, 0) or UDim2.new(0, 2, 0.5, 0)}):Play()
        TweenService:Create(Switch, Animations.Fast, {BackgroundColor3 = state and Color3.fromRGB(255, 255, 255) or Color3.fromRGB(40, 40, 40)}):Play()
        TweenService:Create(Knob, Animations.Fast, {BackgroundColor3 = state and Color3.fromRGB(0, 0, 0) or Color3.fromRGB(255, 255, 255)}):Play()
        if callback then callback(state) end
    end)
    
    return ToggleFrame
end
