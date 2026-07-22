local TweenService = game:GetService("TweenService")

local Animations = {
    Fast = TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
    Smooth = TweenInfo.new(0.35, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
}

return function(parent, titleText, options, callback)
    local DropdownFrame = Instance.new("Frame")
    DropdownFrame.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
    DropdownFrame.Size = UDim2.new(1, 0, 0, 35)
    DropdownFrame.ClipsDescendants = true
    DropdownFrame.Parent = parent
    
    local UICorner = Instance.new("UICorner")
    UICorner.CornerRadius = UDim.new(0, 4)
    UICorner.Parent = DropdownFrame
    
    local TopBtn = Instance.new("TextButton")
    TopBtn.BackgroundTransparency = 1
    TopBtn.Size = UDim2.new(1, 0, 0, 35)
    TopBtn.Text = ""
    TopBtn.Parent = DropdownFrame
    
    local Title = Instance.new("TextLabel")
    Title.BackgroundTransparency = 1
    Title.Size = UDim2.new(1, -40, 1, 0)
    Title.Position = UDim2.new(0, 10, 0, 0)
    Title.Text = titleText
    Title.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title.Font = Enum.Font.Gotham
    Title.TextSize = 13
    Title.TextXAlignment = Enum.TextXAlignment.Left
    Title.Parent = TopBtn
    
    local Icon = Instance.new("ImageLabel")
    Icon.BackgroundTransparency = 1
    Icon.AnchorPoint = Vector2.new(1, 0.5)
    Icon.Position = UDim2.new(1, -10, 0.5, 0)
    Icon.Size = UDim2.new(0, 14, 0, 14)
    Icon.Image = "rbxassetid://10002167683"
    Icon.ImageColor3 = Color3.fromRGB(255, 255, 255)
    Icon.ImageTransparency = 0.5
    Icon.Parent = TopBtn
    
    local OptionsContainer = Instance.new("Frame")
    OptionsContainer.BackgroundTransparency = 1
    OptionsContainer.Size = UDim2.new(1, 0, 0, 0)
    OptionsContainer.Position = UDim2.new(0, 0, 0, 35)
    OptionsContainer.Parent = DropdownFrame
    
    local List = Instance.new("UIListLayout")
    List.Padding = UDim.new(0, 2)
    List.Parent = OptionsContainer
    
    local open = false
    TopBtn.MouseButton1Click:Connect(function()
        open = not open
        local targetHeight = open and (35 + (#options * 30) + 5) or 35
        TweenService:Create(DropdownFrame, Animations.Smooth, {Size = UDim2.new(1, 0, 0, targetHeight)}):Play()
        TweenService:Create(Icon, Animations.Fast, {Rotation = open and 180 or 0}):Play()
    end)
    
    for _, opt in ipairs(options) do
        local OptBtn = Instance.new("TextButton")
        OptBtn.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
        OptBtn.Size = UDim2.new(1, -20, 0, 28)
        OptBtn.Position = UDim2.new(0, 10, 0, 0)
        OptBtn.Text = opt
        OptBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
        OptBtn.TextTransparency = 0.4
        OptBtn.Font = Enum.Font.Gotham
        OptBtn.TextSize = 13
        OptBtn.Parent = OptionsContainer
        
        local OptCorner = Instance.new("UICorner")
        OptCorner.CornerRadius = UDim.new(0, 4)
        OptCorner.Parent = OptBtn
        
        OptBtn.MouseButton1Click:Connect(function()
            Title.Text = titleText .. ": " .. opt
            open = false
            TweenService:Create(DropdownFrame, Animations.Smooth, {Size = UDim2.new(1, 0, 0, 35)}):Play()
            TweenService:Create(Icon, Animations.Fast, {Rotation = 0}):Play()
            if callback then callback(opt) end
        end)
    end
    
    return DropdownFrame
end
