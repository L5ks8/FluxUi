local Debugbar = {}

function Debugbar:Create(parentPanel)
    local debugFrame = Instance.new("Frame")
    debugFrame.Name = "debug"
    debugFrame.Active = true
    debugFrame.ZIndex = 99
    debugFrame.BorderSizePixel = 0
    debugFrame.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
    debugFrame.AnchorPoint = Vector2.new(0, 1)
    debugFrame.ClipsDescendants = true
    debugFrame.Size = UDim2.new(1, 0, 0, 30)
    debugFrame.Position = UDim2.new(0, 0, 1, 0)
    debugFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    debugFrame.LayoutOrder = 4
    debugFrame.Parent = parentPanel

    local debugCorner = Instance.new("UICorner")
    debugCorner.TopLeftRadius = UDim.new(0, 0)
    debugCorner.TopRightRadius = UDim.new(0, 0)
    debugCorner.BottomLeftRadius = UDim.new(0, 18)
    debugCorner.BottomRightRadius = UDim.new(0, 18)
    debugCorner.Parent = debugFrame

    local list = Instance.new("UIListLayout")
    list.Name = "list"
    list.Padding = UDim.new(0, 6)
    list.VerticalAlignment = Enum.VerticalAlignment.Center
    list.SortOrder = Enum.SortOrder.LayoutOrder
    list.FillDirection = Enum.FillDirection.Horizontal
    list.Parent = debugFrame

    local divider = Instance.new("UIStroke")
    divider.Name = "divider"
    divider.Thickness = 1.5
    divider.Color = Color3.fromRGB(46, 46, 46)
    divider.Parent = debugFrame

    local padding = Instance.new("UIPadding")
    padding.Name = "padding"
    padding.PaddingTop = UDim.new(0.225, 0)
    padding.PaddingRight = UDim.new(0.03, 20)
    padding.PaddingLeft = UDim.new(0.03, 0)
    padding.PaddingBottom = UDim.new(0.3, 0)
    padding.Parent = debugFrame

    local errors = Instance.new("Frame")
    errors.Name = "errors"
    errors.BorderSizePixel = 0
    errors.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    errors.Size = UDim2.new(0.06, 0, 1, 0)
    errors.BorderColor3 = Color3.fromRGB(0, 0, 0)
    errors.LayoutOrder = 1
    errors.BackgroundTransparency = 1
    errors.Parent = debugFrame

    local errorsList = Instance.new("UIListLayout")
    errorsList.Name = "list"
    errorsList.HorizontalAlignment = Enum.HorizontalAlignment.Center
    errorsList.Padding = UDim.new(0, 8)
    errorsList.VerticalAlignment = Enum.VerticalAlignment.Center
    errorsList.SortOrder = Enum.SortOrder.LayoutOrder
    errorsList.FillDirection = Enum.FillDirection.Horizontal
    errorsList.Parent = errors

    local errorsIcon = Instance.new("ImageLabel")
    errorsIcon.Name = "icon"
    errorsIcon.BorderSizePixel = 0
    errorsIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    errorsIcon.ImageColor3 = Color3.fromRGB(255, 81, 81)
    errorsIcon.Image = "rbxassetid://14563958666"
    errorsIcon.Size = UDim2.new(1, 0, 1, 0)
    errorsIcon.BorderColor3 = Color3.fromRGB(0, 0, 0)
    errorsIcon.BackgroundTransparency = 1
    errorsIcon.LayoutOrder = 1
    errorsIcon.Parent = errors

    local errorsIconAspect = Instance.new("UIAspectRatioConstraint")
    errorsIconAspect.Name = "aspect"
    errorsIconAspect.Parent = errorsIcon

    local errorsValue = Instance.new("TextLabel")
    errorsValue.Name = "value"
    errorsValue.TextWrapped = true
    errorsValue.TextTruncate = Enum.TextTruncate.AtEnd
    errorsValue.BorderSizePixel = 0
    errorsValue.TextSize = 16
    errorsValue.TextXAlignment = Enum.TextXAlignment.Left
    errorsValue.TextScaled = true
    errorsValue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    errorsValue.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    errorsValue.TextColor3 = Color3.fromRGB(255, 81, 81)
    errorsValue.BackgroundTransparency = 1
    errorsValue.Size = UDim2.new(0, 0, 1, 0)
    errorsValue.BorderColor3 = Color3.fromRGB(0, 0, 0)
    errorsValue.Text = "0"
    errorsValue.LayoutOrder = 2
    errorsValue.Parent = errors

    local errorsValueFlex = Instance.new("UIFlexItem")
    errorsValueFlex.Name = "flex"
    errorsValueFlex.FlexMode = Enum.UIFlexMode.Fill
    errorsValueFlex.Parent = errorsValue

    local errorsValueSize = Instance.new("UITextSizeConstraint")
    errorsValueSize.Name = "size"
    errorsValueSize.MaxTextSize = 13
    errorsValueSize.Parent = errorsValue

    local warnings = Instance.new("Frame")
    warnings.Name = "warnings"
    warnings.BorderSizePixel = 0
    warnings.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    warnings.Size = UDim2.new(0.06, 0, 1, 0)
    warnings.BorderColor3 = Color3.fromRGB(0, 0, 0)
    warnings.LayoutOrder = 2
    warnings.BackgroundTransparency = 1
    warnings.Parent = debugFrame

    local warningsList = Instance.new("UIListLayout")
    warningsList.Name = "list"
    warningsList.HorizontalAlignment = Enum.HorizontalAlignment.Center
    warningsList.Padding = UDim.new(0, 8)
    warningsList.VerticalAlignment = Enum.VerticalAlignment.Center
    warningsList.SortOrder = Enum.SortOrder.LayoutOrder
    warningsList.FillDirection = Enum.FillDirection.Horizontal
    warningsList.Parent = warnings

    local warningsIcon = Instance.new("ImageLabel")
    warningsIcon.Name = "icon"
    warningsIcon.BorderSizePixel = 0
    warningsIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    warningsIcon.ImageColor3 = Color3.fromRGB(255, 255, 81)
    warningsIcon.Image = "rbxassetid://71503984286896"
    warningsIcon.Size = UDim2.new(1, 0, 1, 0)
    warningsIcon.BorderColor3 = Color3.fromRGB(0, 0, 0)
    warningsIcon.BackgroundTransparency = 1
    warningsIcon.LayoutOrder = 1
    warningsIcon.Parent = warnings

    local warningsIconAspect = Instance.new("UIAspectRatioConstraint")
    warningsIconAspect.Name = "aspect"
    warningsIconAspect.Parent = warningsIcon

    local warningsValue = Instance.new("TextLabel")
    warningsValue.Name = "value"
    warningsValue.TextWrapped = true
    warningsValue.TextTruncate = Enum.TextTruncate.AtEnd
    warningsValue.BorderSizePixel = 0
    warningsValue.TextSize = 16
    warningsValue.TextXAlignment = Enum.TextXAlignment.Left
    warningsValue.TextScaled = true
    warningsValue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    warningsValue.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    warningsValue.TextColor3 = Color3.fromRGB(255, 255, 81)
    warningsValue.BackgroundTransparency = 1
    warningsValue.Size = UDim2.new(0, 0, 1, 0)
    warningsValue.BorderColor3 = Color3.fromRGB(0, 0, 0)
    warningsValue.Text = "0"
    warningsValue.LayoutOrder = 2
    warningsValue.Parent = warnings

    local warningsValueFlex = Instance.new("UIFlexItem")
    warningsValueFlex.Name = "flex"
    warningsValueFlex.FlexMode = Enum.UIFlexMode.Fill
    warningsValueFlex.Parent = warningsValue

    local warningsValueSize = Instance.new("UITextSizeConstraint")
    warningsValueSize.Name = "size"
    warningsValueSize.MaxTextSize = 13
    warningsValueSize.Parent = warningsValue

    local memory = Instance.new("Frame")
    memory.Name = "memory"
    memory.BorderSizePixel = 0
    memory.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    memory.AutomaticSize = Enum.AutomaticSize.X
    memory.Size = UDim2.new(0.2, 0, 1, 0)
    memory.BorderColor3 = Color3.fromRGB(0, 0, 0)
    memory.LayoutOrder = 3
    memory.BackgroundTransparency = 1
    memory.Parent = debugFrame

    local memoryList = Instance.new("UIListLayout")
    memoryList.Name = "list"
    memoryList.HorizontalAlignment = Enum.HorizontalAlignment.Center
    memoryList.Padding = UDim.new(0.05, 0)
    memoryList.VerticalAlignment = Enum.VerticalAlignment.Center
    memoryList.SortOrder = Enum.SortOrder.LayoutOrder
    memoryList.FillDirection = Enum.FillDirection.Horizontal
    memoryList.Parent = memory

    local memoryValue = Instance.new("TextLabel")
    memoryValue.Name = "value"
    memoryValue.TextWrapped = true
    memoryValue.TextTruncate = Enum.TextTruncate.AtEnd
    memoryValue.BorderSizePixel = 0
    memoryValue.TextSize = 14
    memoryValue.TextXAlignment = Enum.TextXAlignment.Left
    memoryValue.TextScaled = true
    memoryValue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    memoryValue.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    memoryValue.TextColor3 = Color3.fromRGB(255, 255, 255)
    memoryValue.BackgroundTransparency = 1
    memoryValue.Size = UDim2.new(0, 0, 1, 0)
    memoryValue.BorderColor3 = Color3.fromRGB(0, 0, 0)
    memoryValue.Text = "0 MB"
    memoryValue.LayoutOrder = 2
    memoryValue.AutomaticSize = Enum.AutomaticSize.X
    memoryValue.Parent = memory

    local memoryValueSize = Instance.new("UITextSizeConstraint")
    memoryValueSize.Name = "size"
    memoryValueSize.MaxTextSize = 14
    memoryValueSize.Parent = memoryValue

    local memoryLabel = Instance.new("TextLabel")
    memoryLabel.Name = "label"
    memoryLabel.TextWrapped = true
    memoryLabel.TextTruncate = Enum.TextTruncate.AtEnd
    memoryLabel.BorderSizePixel = 0
    memoryLabel.TextSize = 14
    memoryLabel.TextXAlignment = Enum.TextXAlignment.Left
    memoryLabel.TextScaled = true
    memoryLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    memoryLabel.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    memoryLabel.TextColor3 = Color3.fromRGB(255, 255, 81)
    memoryLabel.BackgroundTransparency = 1
    memoryLabel.Size = UDim2.new(0, 0, 1, 0)
    memoryLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
    memoryLabel.Text = "Memory Usage:"
    memoryLabel.LayoutOrder = 1
    memoryLabel.AutomaticSize = Enum.AutomaticSize.X
    memoryLabel.Parent = memory

    local memoryLabelSize = Instance.new("UITextSizeConstraint")
    memoryLabelSize.Name = "size"
    memoryLabelSize.MaxTextSize = 14
    memoryLabelSize.Parent = memoryLabel

    local ping = Instance.new("Frame")
    ping.Name = "ping"
    ping.BorderSizePixel = 0
    ping.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ping.Size = UDim2.new(0.2, 0, 1, 0)
    ping.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ping.LayoutOrder = 4
    ping.BackgroundTransparency = 1
    ping.Parent = debugFrame

    local pingList = Instance.new("UIListLayout")
    pingList.Name = "list"
    pingList.HorizontalAlignment = Enum.HorizontalAlignment.Center
    pingList.Padding = UDim.new(0.05, 0)
    pingList.VerticalAlignment = Enum.VerticalAlignment.Center
    pingList.SortOrder = Enum.SortOrder.LayoutOrder
    pingList.FillDirection = Enum.FillDirection.Horizontal
    pingList.Parent = ping

    local pingValue = Instance.new("TextLabel")
    pingValue.Name = "value"
    pingValue.TextWrapped = true
    pingValue.TextTruncate = Enum.TextTruncate.AtEnd
    pingValue.BorderSizePixel = 0
    pingValue.TextSize = 14
    pingValue.TextXAlignment = Enum.TextXAlignment.Left
    pingValue.TextScaled = true
    pingValue.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    pingValue.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    pingValue.TextColor3 = Color3.fromRGB(255, 255, 255)
    pingValue.BackgroundTransparency = 1
    pingValue.Size = UDim2.new(0, 0, 1, 0)
    pingValue.BorderColor3 = Color3.fromRGB(0, 0, 0)
    pingValue.Text = "0 ms"
    pingValue.LayoutOrder = 2
    pingValue.AutomaticSize = Enum.AutomaticSize.X
    pingValue.Parent = ping

    local pingValueSize = Instance.new("UITextSizeConstraint")
    pingValueSize.Name = "size"
    pingValueSize.MaxTextSize = 14
    pingValueSize.Parent = pingValue

    local pingLabel = Instance.new("TextLabel")
    pingLabel.Name = "label"
    pingLabel.TextWrapped = true
    pingLabel.TextTruncate = Enum.TextTruncate.AtEnd
    pingLabel.BorderSizePixel = 0
    pingLabel.TextSize = 14
    pingLabel.TextXAlignment = Enum.TextXAlignment.Left
    pingLabel.TextScaled = true
    pingLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    pingLabel.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    pingLabel.TextColor3 = Color3.fromRGB(255, 255, 81)
    pingLabel.BackgroundTransparency = 1
    pingLabel.Size = UDim2.new(0, 0, 1, 0)
    pingLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
    pingLabel.Text = "Avg. Ping:"
    pingLabel.LayoutOrder = 1
    pingLabel.AutomaticSize = Enum.AutomaticSize.X
    pingLabel.Parent = ping

    local pingLabelSize = Instance.new("UITextSizeConstraint")
    pingLabelSize.Name = "size"
    pingLabelSize.MaxTextSize = 14
    pingLabelSize.Parent = pingLabel

    local space = Instance.new("Frame")
    space.Name = "space"
    space.BorderSizePixel = 0
    space.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    space.Size = UDim2.new(0, 0, 1, 0)
    space.BorderColor3 = Color3.fromRGB(0, 0, 0)
    space.LayoutOrder = 5
    space.BackgroundTransparency = 1
    space.Parent = debugFrame

    local spaceFlex = Instance.new("UIFlexItem")
    spaceFlex.Name = "flex"
    spaceFlex.FlexMode = Enum.UIFlexMode.Fill
    spaceFlex.Parent = space

    local fps = Instance.new("TextLabel")
    fps.Name = "fps"
    fps.BorderSizePixel = 0
    fps.TextSize = 14
    fps.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    fps.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    fps.TextColor3 = Color3.fromRGB(255, 255, 255)
    fps.BackgroundTransparency = 1
    fps.Size = UDim2.new(0, 0, 1, 0)
    fps.BorderColor3 = Color3.fromRGB(0, 0, 0)
    fps.Text = "FPS: 0.0/s"
    fps.LayoutOrder = 6
    fps.AutomaticSize = Enum.AutomaticSize.X
    fps.Parent = debugFrame

    local region = Instance.new("TextLabel")
    region.Name = "region"
    region.BorderSizePixel = 0
    region.TextSize = 14
    region.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    region.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    region.TextColor3 = Color3.fromRGB(255, 255, 255)
    region.BackgroundTransparency = 1
    region.Size = UDim2.new(0, 0, 1, 0)
    region.BorderColor3 = Color3.fromRGB(0, 0, 0)
    region.Text = "Region: N/A"
    region.LayoutOrder = 7
    region.AutomaticSize = Enum.AutomaticSize.X
    region.Parent = debugFrame

    return debugFrame
end

return Debugbar
