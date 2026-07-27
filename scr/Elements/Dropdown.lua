local TweenService = game:GetService("TweenService")

local Animations = {
    Fast = TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
    Smooth = TweenInfo.new(0.35, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
}

return function(parent, titleText, options, callback)
    local DropdownFrame = Instance.new("Frame")
    DropdownFrame.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
    DropdownFrame.Size = UDim2.new(1, 0, 0, 36)
    DropdownFrame.ClipsDescendants = true
    DropdownFrame.Parent = parent
    
    local UICorner = Instance.new("UICorner")
    UICorner.CornerRadius = UDim.new(0, 6)
    UICorner.Parent = DropdownFrame
    
    local UIStroke = Instance.new("UIStroke")
    UIStroke.Color = Color3.fromRGB(65, 65, 65)
    UIStroke.Thickness = 1
    UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    UIStroke.Parent = DropdownFrame

    local TopBtn = Instance.new("TextButton")
    TopBtn.BackgroundTransparency = 1
    TopBtn.Size = UDim2.new(1, 0, 0, 36)
    TopBtn.Text = ""
    TopBtn.Parent = DropdownFrame
    
    local Title = Instance.new("TextLabel")
    Title.BackgroundTransparency = 1
    Title.Size = UDim2.new(1, -40, 1, 0)
    Title.Position = UDim2.new(0, 12, 0, 0)
    Title.Text = titleText
    Title.TextColor3 = Color3.fromRGB(240, 240, 240)
    Title.Font = Enum.Font.GothamSemibold
    Title.TextSize = 13
    Title.TextXAlignment = Enum.TextXAlignment.Left
    Title.Parent = TopBtn
    
    local Icon = Instance.new("ImageLabel")
    Icon.BackgroundTransparency = 1
    Icon.AnchorPoint = Vector2.new(1, 0.5)
    Icon.Position = UDim2.new(1, -12, 0.5, 0)
    Icon.Size = UDim2.new(0, 16, 0, 16)
    Icon.Image = "rbxassetid://10002167683"
    Icon.ImageColor3 = Color3.fromRGB(255, 255, 255)
    Icon.ImageTransparency = 0.4
    Icon.Parent = TopBtn
    
    local OptionsContainer = Instance.new("Frame")
    OptionsContainer.BackgroundTransparency = 1
    OptionsContainer.Size = UDim2.new(1, 0, 0, 0)
    OptionsContainer.Position = UDim2.new(0, 0, 0, 36)
    OptionsContainer.Parent = DropdownFrame
    
    local List = Instance.new("UIListLayout")
    List.Padding = UDim.new(0, 4)
    List.HorizontalAlignment = Enum.HorizontalAlignment.Center
    List.Parent = OptionsContainer
    
    local open = false
    TopBtn.MouseButton1Click:Connect(function()
        open = not open
        local targetHeight = open and (36 + (#options * 32) + 8) or 36
        TweenService:Create(DropdownFrame, Animations.Smooth, {Size = UDim2.new(1, 0, 0, targetHeight)}):Play()
        TweenService:Create(Icon, Animations.Fast, {Rotation = open and 180 or 0}):Play()
        TweenService:Create(UIStroke, Animations.Fast, {Color = open and Color3.fromRGB(100, 100, 100) or Color3.fromRGB(65, 65, 65)}):Play()
    end)
    
    local OptBtns = {}
    
    for _, opt in ipairs(options) do
        local OptBtn = Instance.new("TextButton")
        OptBtn.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
        OptBtn.Size = UDim2.new(1, -16, 0, 28)
        OptBtn.Text = opt
        OptBtn.TextColor3 = Color3.fromRGB(220, 220, 220)
        OptBtn.Font = Enum.Font.GothamMedium
        OptBtn.TextSize = 13
        OptBtn.AutoButtonColor = false
        OptBtn.Parent = OptionsContainer
        
        local OptCorner = Instance.new("UICorner")
        OptCorner.CornerRadius = UDim.new(0, 4)
        OptCorner.Parent = OptBtn

        local OptStroke = Instance.new("UIStroke")
        OptStroke.Color = Color3.fromRGB(60, 60, 60)
        OptStroke.Thickness = 1
        OptStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
        OptStroke.Parent = OptBtn
        
        table.insert(OptBtns, {Btn = OptBtn, Text = opt})
        
        OptBtn.MouseEnter:Connect(function()
            TweenService:Create(OptBtn, Animations.Fast, {BackgroundColor3 = Color3.fromRGB(60, 60, 60)}):Play()
            TweenService:Create(OptStroke, Animations.Fast, {Color = Color3.fromRGB(80, 80, 80)}):Play()
        end)
        
        OptBtn.MouseLeave:Connect(function()
            TweenService:Create(OptBtn, Animations.Fast, {BackgroundColor3 = Color3.fromRGB(45, 45, 45)}):Play()
            TweenService:Create(OptStroke, Animations.Fast, {Color = Color3.fromRGB(60, 60, 60)}):Play()
        end)
        
        OptBtn.MouseButton1Click:Connect(function()
            Title.Text = titleText .. " : " .. opt
            open = false
            TweenService:Create(DropdownFrame, Animations.Smooth, {Size = UDim2.new(1, 0, 0, 36)}):Play()
            TweenService:Create(Icon, Animations.Fast, {Rotation = 0}):Play()
            TweenService:Create(UIStroke, Animations.Fast, {Color = Color3.fromRGB(65, 65, 65)}):Play()
            if callback then callback(opt) end
        end)
    end
    
    return DropdownFrame
end
