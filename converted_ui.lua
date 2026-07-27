    local settings = Instance.new("Frame")
    settings.BorderSizePixel = 0
    settings.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    settings.AnchorPoint = Vector2.new(0.5, 0.5)
    settings.ClipsDescendants = true
    settings.Size = UDim2.new(1, 0, 1, 0)
    settings.Position = UDim2.new(0.5, 0, 0.5, 0)
    settings.BorderColor3 = Color3.fromRGB(0, 0, 0)
    settings.Name = [[settings]]
    settings.LayoutOrder = 9
    settings.BackgroundTransparency = 1
    settings.Parent = UI.settings
    settings.Visible = false

    local List = Instance.new("UIListLayout")
    List.SortOrder = Enum.SortOrder.LayoutOrder
    List.Name = [[List]]
    List.Parent = settings

    local header = Instance.new("Frame")
    header.ZIndex = 99
    header.BorderSizePixel = 0
    header.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    header.AutomaticSize = Enum.AutomaticSize.Y
    header.Size = UDim2.new(1, 0, 0, 0)
    header.BorderColor3 = Color3.fromRGB(0, 0, 0)
    header.Name = [[header]]
    header.LayoutOrder = -99
    header.BackgroundTransparency = 1
    header.Parent = settings

    local list = Instance.new("UIListLayout")
    list.Padding = UDim.new(0, 1)
    list.VerticalAlignment = Enum.VerticalAlignment.Center
    list.SortOrder = Enum.SortOrder.LayoutOrder
    list.Name = [[list]]
    list.Parent = header

    local stroke = Instance.new("UIStroke")
    stroke.Transparency = 0.95
    stroke.Color = Color3.fromRGB(255, 255, 255)
    stroke.Name = [[stroke]]
    stroke.Parent = header

    local name = Instance.new("TextLabel")
    name.BorderSizePixel = 0
    name.AutoLocalize = false
    name.TextSize = 16
    name.TextXAlignment = Enum.TextXAlignment.Left
    name.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    name.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
    name.TextColor3 = Color3.fromRGB(255, 255, 255)
    name.BackgroundTransparency = 1
    name.AnchorPoint = Vector2.new(0.5, 0)
    name.Size = UDim2.new(1, 0, 0, 0)
    name.BorderColor3 = Color3.fromRGB(0, 0, 0)
    name.Text = [[Settings]]
    name.AutomaticSize = Enum.AutomaticSize.XY
    name.Name = [[name]]
    name.Position = UDim2.new(0.5, 0, 0, 0)
    name:SetAttribute([[Key]], [[orbit.settings.header]])
    CollectionService:AddTag(name, [[OrbitTranslation]])
    name.Parent = header

    local flex = Instance.new("UIFlexItem")
    flex.Name = [[flex]]
    flex.FlexMode = Enum.UIFlexMode.Fill
    flex.Parent = name

    local desc = Instance.new("TextLabel")
    desc.BorderSizePixel = 0
    desc.AutoLocalize = false
    desc.TextSize = 14
    desc.TextXAlignment = Enum.TextXAlignment.Left
    desc.TextTransparency = 0.5
    desc.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    desc.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    desc.TextColor3 = Color3.fromRGB(255, 255, 255)
    desc.BackgroundTransparency = 1
    desc.AnchorPoint = Vector2.new(0.5, 0)
    desc.Size = UDim2.new(0, 0, 0, 14)
    desc.BorderColor3 = Color3.fromRGB(0, 0, 0)
    desc.Text = [[Personalize your panel without requiring any coding knowledge.]]
    desc.LayoutOrder = 1
    desc.AutomaticSize = Enum.AutomaticSize.X
    desc.Name = [[desc]]
    desc.Position = UDim2.new(0.5, 0, 0, 0)
    desc:SetAttribute([[Key]], [[orbit.settings.description]])
    CollectionService:AddTag(desc, [[OrbitTranslation]])
    desc.Parent = header

    local padding = Instance.new("UIPadding")
    padding.PaddingTop = UDim.new(0, 16)
    padding.PaddingRight = UDim.new(0, 26)
    padding.Name = [[padding]]
    padding.PaddingLeft = UDim.new(0, 26)
    padding.PaddingBottom = UDim.new(0, 16)
    padding.Parent = header

    local content = Instance.new("Frame")
    content.BorderSizePixel = 0
    content.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    content.AnchorPoint = Vector2.new(0.5, 0.5)
    content.Size = UDim2.new(1, 0, 0, 0)
    content.Position = UDim2.new(0.5, 0, 0.5, 0)
    content.BorderColor3 = Color3.fromRGB(0, 0, 0)
    content.Name = [[content]]
    content.BackgroundTransparency = 1
    content.Parent = settings

    local Flex = Instance.new("UIFlexItem")
    Flex.Name = [[Flex]]
    Flex.FlexMode = Enum.UIFlexMode.Fill
    Flex.Parent = content

    local main = Instance.new("Frame")
    main.BorderSizePixel = 0
    main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    main.ClipsDescendants = true
    main.Size = UDim2.new(1, 0, 1, 0)
    main.BorderColor3 = Color3.fromRGB(0, 0, 0)
    main.Name = [[main]]
    main.BackgroundTransparency = 1
    main.Parent = content

    local Flex2 = Instance.new("UIFlexItem")
    Flex2.Name = [[Flex]]
    Flex2.FlexMode = Enum.UIFlexMode.Fill
    Flex2.Parent = main

    local item = Instance.new("ScrollingFrame")
    item.Active = true
    item.ScrollingDirection = Enum.ScrollingDirection.Y
    item.BorderSizePixel = 0
    item.CanvasSize = UDim2.new(0, 0, 0, 0)
    item.Name = [[item]]
    item.ScrollBarImageTransparency = 1
    item.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    item.AnchorPoint = Vector2.new(0.5, 0.5)
    item.AutomaticCanvasSize = Enum.AutomaticSize.Y
    item.Size = UDim2.new(1, 0, 1, 0)
    item.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
    item.Position = UDim2.new(0.5, 0, 0.5, 0)
    item.BorderColor3 = Color3.fromRGB(0, 0, 0)
    item.ScrollBarThickness = 0
    item.LayoutOrder = 3
    item.BackgroundTransparency = 1
    item.Parent = main

    local display = Instance.new("Frame")
    display.BorderSizePixel = 0
    display.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
    display.AnchorPoint = Vector2.new(0.5, 0.5)
    display.Size = UDim2.new(1, 0, 1, -85)
    display.Position = UDim2.new(0.5, 0, 0.5, 0)
    display.BorderColor3 = Color3.fromRGB(0, 0, 0)
    display.Name = [[display]]
    display.LayoutOrder = 2
    display.Parent = item

    local corner = Instance.new("UICorner")
    corner.Name = [[corner]]
    corner.CornerRadius = UDim.new(0, 16)
    corner.Parent = display

    local Loading = Instance.new("Frame")
    Loading.Visible = false
    Loading.ZIndex = 999999999
    Loading.BorderSizePixel = 0
    Loading.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
    Loading.AnchorPoint = Vector2.new(0.5, 0.5)
    Loading.Size = UDim2.new(1, 0, 1, 0)
    Loading.Position = UDim2.new(0.5, 0, 0.5, 0)
    Loading.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Loading.Name = [[Loading]]
    Loading.Parent = display

    local Proccess = Instance.new("TextLabel")
    Proccess.BorderSizePixel = 0
    Proccess.AutoLocalize = false
    Proccess.TextSize = 15
    Proccess.TextTransparency = 0.9
    Proccess.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Proccess.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    Proccess.TextColor3 = Color3.fromRGB(255, 255, 255)
    Proccess.BackgroundTransparency = 1
    Proccess.AnchorPoint = Vector2.new(0.5, 0.5)
    Proccess.Size = UDim2.new(1, 0, 0, 20)
    Proccess.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Proccess.Text = [[Loading]]
    Proccess.Name = [[Proccess]]
    Proccess.Position = UDim2.new(0.5, 0, 0.5, 0)
    Proccess.Parent = Loading

    local corner2 = Instance.new("UICorner")
    corner2.Name = [[corner]]
    corner2.CornerRadius = UDim.new(0, 16)
    corner2.Parent = Loading

    local fade = Instance.new("Frame")
    fade.BorderSizePixel = 0
    fade.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
    fade.AnchorPoint = Vector2.new(0.5, 1)
    fade.Size = UDim2.new(1, -25, 0, 60)
    fade.Position = UDim2.new(0.5, 0, 1, 0)
    fade.BorderColor3 = Color3.fromRGB(0, 0, 0)
    fade.Name = [[fade]]
    fade.Parent = display

    local uigradient = Instance.new("UIGradient")
    uigradient.Rotation = 90
    uigradient.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 1),NumberSequenceKeypoint.new(1.000, 0)}
    uigradient.Parent = fade

    local scroll = Instance.new("ScrollingFrame")
    scroll.Active = true
    scroll.ScrollingDirection = Enum.ScrollingDirection.Y
    scroll.BorderSizePixel = 0
    scroll.CanvasSize = UDim2.new(0, 0, 0, 0)
    scroll.VerticalScrollBarInset = Enum.ScrollBarInset.ScrollBar
    scroll.Name = [[scroll]]
    scroll.ScrollBarImageTransparency = 1
    scroll.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    scroll.AnchorPoint = Vector2.new(0.5, 0.5)
    scroll.AutomaticCanvasSize = Enum.AutomaticSize.Y
    scroll.Size = UDim2.new(1, 0, 1.0081, 0)
    scroll.ScrollBarImageColor3 = Color3.fromRGB(50, 50, 50)
    scroll.Position = UDim2.new(0.5, 0, 0.49595, 0)
    scroll.BorderColor3 = Color3.fromRGB(0, 0, 0)
    scroll.ScrollBarThickness = 4
    scroll.LayoutOrder = 2
    scroll.BackgroundTransparency = 1
    scroll.Parent = display

    local uilistlayout = Instance.new("UIListLayout")
    uilistlayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    uilistlayout.Padding = UDim.new(0, 8)
    uilistlayout.SortOrder = Enum.SortOrder.LayoutOrder
    uilistlayout.Parent = scroll

    local Basics = Instance.new("Frame")
    Basics.BorderSizePixel = 0
    Basics.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    Basics.AnchorPoint = Vector2.new(0.5, 0.5)
    Basics.ClipsDescendants = true
    Basics.AutomaticSize = Enum.AutomaticSize.Y
    Basics.Size = UDim2.new(1, 0, 1.01215, 0)
    Basics.Position = UDim2.new(0.49777, 0, 0.74351, 0)
    Basics.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Basics.Name = [[Basics]]
    Basics.Parent = scroll

    local Corner = Instance.new("UICorner")
    Corner.Name = [[Corner]]
    Corner.CornerRadius = UDim.new(0, 14)
    Corner.Parent = Basics

    local uilistlayout2 = Instance.new("UIListLayout")
    uilistlayout2.VerticalFlex = Enum.UIFlexAlignment.Fill
    uilistlayout2.SortOrder = Enum.SortOrder.LayoutOrder
    uilistlayout2.Parent = Basics

    local Selection = Instance.new("ImageButton")
    Selection.Active = false
    Selection.BorderSizePixel = 0
    Selection.BackgroundTransparency = 1
    Selection.SelectionOrder = 1
    Selection.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    Selection.Selectable = false
    Selection.Size = UDim2.new(1, 0, 0, 50)
    Selection.LayoutOrder = 1
    Selection.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Selection.Name = [[Selection]]
    CollectionService:AddTag(Selection, [[SettingObject]])
    Selection.Parent = Basics

    local Padding = Instance.new("UIPadding")
    Padding.PaddingRight = UDim.new(0, 12)
    Padding.Name = [[Padding]]
    Padding.PaddingLeft = UDim.new(0, 12)
    Padding.Parent = Selection

    local holder = Instance.new("ImageLabel")
    holder.BorderSizePixel = 0
    holder.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    holder.ImageTransparency = 1
    holder.AnchorPoint = Vector2.new(0, 0.5)
    holder.Size = UDim2.new(0, 32, 0, 32)
    holder.BorderColor3 = Color3.fromRGB(0, 0, 0)
    holder.BackgroundTransparency = 0.8
    holder.LayoutOrder = 1
    holder.Name = [[holder]]
    holder.Position = UDim2.new(0, 0, 0.5, 0)
    holder.Parent = Selection

    local icon = Instance.new("ImageLabel")
    icon.BorderSizePixel = 0
    icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    icon.ImageTransparency = 0.5
    icon.AnchorPoint = Vector2.new(0.5, 0.5)
    icon.Image = [[rbxassetid://100073130130484]]
    icon.Size = UDim2.new(0, 25, 0, 25)
    icon.BorderColor3 = Color3.fromRGB(0, 0, 0)
    icon.BackgroundTransparency = 1
    icon.LayoutOrder = 1
    icon.Name = [[icon]]
    icon.Position = UDim2.new(0.5, 0, 0.5, 0)
    icon.Parent = holder

    local Corner2 = Instance.new("UICorner")
    Corner2.Name = [[Corner]]
    Corner2.CornerRadius = UDim.new(0, 6)
    Corner2.Parent = holder

    local Extra = Instance.new("Folder")
    Extra.Name = [[Extra]]
    Extra.Parent = Selection

    local Separator = Instance.new("Frame")
    Separator.BorderSizePixel = 0
    Separator.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Separator.AnchorPoint = Vector2.new(0.5, 1)
    Separator.Size = UDim2.new(2, 0, 0, 1)
    Separator.Position = UDim2.new(0.5, 0, 1, 1)
    Separator.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Separator.Name = [[Separator]]
    Separator.BackgroundTransparency = 0.98
    Separator.Parent = Extra

    local List2 = Instance.new("UIListLayout")
    List2.Padding = UDim.new(0, 10)
    List2.VerticalAlignment = Enum.VerticalAlignment.Center
    List2.SortOrder = Enum.SortOrder.LayoutOrder
    List2.Name = [[List]]
    List2.FillDirection = Enum.FillDirection.Horizontal
    List2.Parent = Selection

    local info = Instance.new("Frame")
    info.BorderSizePixel = 0
    info.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    info.Size = UDim2.new(0, 0, 0, 28)
    info.BorderColor3 = Color3.fromRGB(0, 0, 0)
    info.Name = [[info]]
    info.LayoutOrder = 2
    info.BackgroundTransparency = 1
    info.Parent = Selection

    local Flex3 = Instance.new("UIFlexItem")
    Flex3.Name = [[Flex]]
    Flex3.FlexMode = Enum.UIFlexMode.Fill
    Flex3.Parent = info

    local Header = Instance.new("TextLabel")
    Header.TextTruncate = Enum.TextTruncate.AtEnd
    Header.BorderSizePixel = 0
    Header.TextSize = 14
    Header.TextXAlignment = Enum.TextXAlignment.Left
    Header.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Header.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    Header.TextColor3 = Color3.fromRGB(255, 255, 255)
    Header.BackgroundTransparency = 1
    Header.Size = UDim2.new(1, 0, 0, 0)
    Header.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Header.Text = [[Language]]
    Header.AutomaticSize = Enum.AutomaticSize.Y
    Header.Name = [[Header]]
    Header.Parent = info

    local Description = Instance.new("TextLabel")
    Description.TextTruncate = Enum.TextTruncate.AtEnd
    Description.BorderSizePixel = 0
    Description.TextSize = 12
    Description.TextXAlignment = Enum.TextXAlignment.Left
    Description.TextTransparency = 0.7
    Description.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Description.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    Description.TextColor3 = Color3.fromRGB(255, 255, 255)
    Description.BackgroundTransparency = 1
    Description.AnchorPoint = Vector2.new(0, 1)
    Description.Size = UDim2.new(1, 0, 0, 0)
    Description.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Description.Text = [[The Language of the Ui.]]
    Description.AutomaticSize = Enum.AutomaticSize.Y
    Description.Name = [[Description]]
    Description.Position = UDim2.new(0, 0, 1, 0)
    Description.Parent = info

    local icon2 = Instance.new("ImageLabel")
    icon2.BorderSizePixel = 0
    icon2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    icon2.Image = [[rbxassetid://95898765113869]]
    icon2.Size = UDim2.new(0.5, 0, 0.5, 0)
    icon2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    icon2.BackgroundTransparency = 1
    icon2.LayoutOrder = 99
    icon2.Name = [[icon]]
    icon2.Parent = Selection

    local aspect = Instance.new("UIAspectRatioConstraint")
    aspect.Name = [[aspect]]
    aspect.Parent = icon2

    local value = Instance.new("TextLabel")
    value.BorderSizePixel = 0
    value.TextSize = 14
    value.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
    value.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    value.TextColor3 = Color3.fromRGB(255, 255, 255)
    value.Size = UDim2.new(0, 125, 0, 30)
    value.BorderColor3 = Color3.fromRGB(0, 0, 0)
    value.Text = [[English]]
    value.LayoutOrder = 98
    value.AutomaticSize = Enum.AutomaticSize.X
    value.Name = [[value]]
    value.Parent = Selection

    local Corner3 = Instance.new("UICorner")
    Corner3.Name = [[Corner]]
    Corner3.CornerRadius = UDim.new(0, 18)
    Corner3.Parent = value

    local Switch = Instance.new("Frame")
    Switch.BorderSizePixel = 0
    Switch.SelectionOrder = 2
    Switch.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Switch.Size = UDim2.new(1, 0, 0, 50)
    Switch.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Switch.Name = [[Switch]]
    Switch.LayoutOrder = 2
    Switch.BackgroundTransparency = 1
    CollectionService:AddTag(Switch, [[SettingObject]])
    Switch.Parent = Basics

    local switch = Instance.new("ImageButton")
    switch.BorderSizePixel = 0
    switch.AutoButtonColor = false
    switch.ImageTransparency = 1
    switch.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
    switch.AnchorPoint = Vector2.new(1, 0.5)
    switch.Size = UDim2.new(0, 45, 0, 27)
    switch.LayoutOrder = 99
    switch.BorderColor3 = Color3.fromRGB(0, 0, 0)
    switch.Name = [[switch]]
    switch.Position = UDim2.new(1, 0, 0.5, 0)
    switch:SetAttribute([[Enabled]], true)
    switch:SetAttribute([[State]], false)
    CollectionService:AddTag(switch, [[OrbitBooleanSwitch]])
    switch.Parent = Switch

    local Corner4 = Instance.new("UICorner")
    Corner4.Name = [[Corner]]
    Corner4.CornerRadius = UDim.new(1, 0)
    Corner4.Parent = switch

    local uipadding = Instance.new("UIPadding")
    uipadding.PaddingRight = UDim.new(0, 5)
    uipadding.PaddingLeft = UDim.new(0, 5)
    uipadding.Parent = switch

    local circle = Instance.new("Frame")
    circle.BorderSizePixel = 0
    circle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    circle.AnchorPoint = Vector2.new(0, 0.5)
    circle.Size = UDim2.new(0, 19, 0, 19)
    circle.Position = UDim2.new(0, 0, 0.5, 0)
    circle.BorderColor3 = Color3.fromRGB(0, 0, 0)
    circle.Name = [[circle]]
    circle.BackgroundTransparency = 0.95
    circle.Parent = switch

    local Corner5 = Instance.new("UICorner")
    Corner5.Name = [[Corner]]
    Corner5.CornerRadius = UDim.new(1, 0)
    Corner5.Parent = circle

    local Padding2 = Instance.new("UIPadding")
    Padding2.PaddingRight = UDim.new(0, 12)
    Padding2.Name = [[Padding]]
    Padding2.PaddingLeft = UDim.new(0, 12)
    Padding2.Parent = Switch

    local holder2 = Instance.new("ImageLabel")
    holder2.BorderSizePixel = 0
    holder2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    holder2.ImageTransparency = 1
    holder2.AnchorPoint = Vector2.new(0, 0.5)
    holder2.Size = UDim2.new(0, 32, 0, 32)
    holder2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    holder2.BackgroundTransparency = 0.8
    holder2.LayoutOrder = 1
    holder2.Name = [[holder]]
    holder2.Position = UDim2.new(0, 0, 0.5, 0)
    holder2.Parent = Switch

    local icon3 = Instance.new("ImageLabel")
    icon3.BorderSizePixel = 0
    icon3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    icon3.ImageTransparency = 0.5
    icon3.AnchorPoint = Vector2.new(0.5, 0.5)
    icon3.Image = [[rbxassetid://113350802604636]]
    icon3.Size = UDim2.new(0, 25, 0, 25)
    icon3.BorderColor3 = Color3.fromRGB(0, 0, 0)
    icon3.BackgroundTransparency = 1
    icon3.LayoutOrder = 1
    icon3.Name = [[icon]]
    icon3.Position = UDim2.new(0.5, 0, 0.5, 0)
    icon3.Parent = holder2

    local Corner6 = Instance.new("UICorner")
    Corner6.Name = [[Corner]]
    Corner6.CornerRadius = UDim.new(0, 6)
    Corner6.Parent = holder2

    local Extra2 = Instance.new("Folder")
    Extra2.Name = [[Extra]]
    Extra2.Parent = Switch

    local Separator2 = Instance.new("Frame")
    Separator2.BorderSizePixel = 0
    Separator2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Separator2.AnchorPoint = Vector2.new(0.5, 1)
    Separator2.Size = UDim2.new(2, 0, 0, 1)
    Separator2.Position = UDim2.new(0.5, 0, 1, 1)
    Separator2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Separator2.Name = [[Separator]]
    Separator2.BackgroundTransparency = 0.98
    Separator2.Parent = Extra2

    local List3 = Instance.new("UIListLayout")
    List3.Padding = UDim.new(0, 10)
    List3.VerticalAlignment = Enum.VerticalAlignment.Center
    List3.SortOrder = Enum.SortOrder.LayoutOrder
    List3.Name = [[List]]
    List3.FillDirection = Enum.FillDirection.Horizontal
    List3.Parent = Switch

    local info2 = Instance.new("Frame")
    info2.BorderSizePixel = 0
    info2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    info2.Size = UDim2.new(0, 0, 0, 28)
    info2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    info2.Name = [[info]]
    info2.LayoutOrder = 2
    info2.BackgroundTransparency = 1
    info2.Parent = Switch

    local Flex4 = Instance.new("UIFlexItem")
    Flex4.Name = [[Flex]]
    Flex4.FlexMode = Enum.UIFlexMode.Fill
    Flex4.Parent = info2

    local Header2 = Instance.new("TextLabel")
    Header2.TextTruncate = Enum.TextTruncate.AtEnd
    Header2.BorderSizePixel = 0
    Header2.TextSize = 14
    Header2.TextXAlignment = Enum.TextXAlignment.Left
    Header2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Header2.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    Header2.TextColor3 = Color3.fromRGB(255, 255, 255)
    Header2.BackgroundTransparency = 1
    Header2.Size = UDim2.new(1, 0, 0, 0)
    Header2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Header2.Text = [[Dragging]]
    Header2.AutomaticSize = Enum.AutomaticSize.Y
    Header2.Name = [[Header]]
    Header2.Parent = info2

    local Description2 = Instance.new("TextLabel")
    Description2.TextTruncate = Enum.TextTruncate.AtEnd
    Description2.BorderSizePixel = 0
    Description2.TextSize = 12
    Description2.TextXAlignment = Enum.TextXAlignment.Left
    Description2.TextTransparency = 0.7
    Description2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Description2.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    Description2.TextColor3 = Color3.fromRGB(255, 255, 255)
    Description2.BackgroundTransparency = 1
    Description2.AnchorPoint = Vector2.new(0, 1)
    Description2.Size = UDim2.new(1, 0, 0, 0)
    Description2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Description2.Text = [[Allow the Panel to be moved around the screen.]]
    Description2.AutomaticSize = Enum.AutomaticSize.Y
    Description2.Name = [[Description]]
    Description2.Position = UDim2.new(0, 0, 1, 0)
    Description2.Parent = info2

    local Input = Instance.new("Frame")
    Input.BorderSizePixel = 0
    Input.SelectionOrder = 5
    Input.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Input.Size = UDim2.new(1, 0, 0, 50)
    Input.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Input.Name = [[Input]]
    Input.LayoutOrder = 6
    Input.BackgroundTransparency = 1
    CollectionService:AddTag(Input, [[SettingObject]])
    Input.Parent = Basics

    local Padding3 = Instance.new("UIPadding")
    Padding3.PaddingRight = UDim.new(0, 12)
    Padding3.Name = [[Padding]]
    Padding3.PaddingLeft = UDim.new(0, 12)
    Padding3.Parent = Input

    local holder3 = Instance.new("ImageLabel")
    holder3.BorderSizePixel = 0
    holder3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    holder3.ImageTransparency = 1
    holder3.AnchorPoint = Vector2.new(0, 0.5)
    holder3.Size = UDim2.new(0, 32, 0, 32)
    holder3.BorderColor3 = Color3.fromRGB(0, 0, 0)
    holder3.BackgroundTransparency = 0.8
    holder3.LayoutOrder = 1
    holder3.Name = [[holder]]
    holder3.Position = UDim2.new(0, 0, 0.5, 0)
    holder3.Parent = Input

    local icon4 = Instance.new("ImageLabel")
    icon4.BorderSizePixel = 0
    icon4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    icon4.ImageTransparency = 0.5
    icon4.AnchorPoint = Vector2.new(0.5, 0.5)
    icon4.Image = [[rbxassetid://107315438931182]]
    icon4.Size = UDim2.new(0, 25, 0, 25)
    icon4.BorderColor3 = Color3.fromRGB(0, 0, 0)
    icon4.BackgroundTransparency = 1
    icon4.LayoutOrder = 1
    icon4.Name = [[icon]]
    icon4.Position = UDim2.new(0.5, 0, 0.5, 0)
    icon4.Parent = holder3

    local Corner7 = Instance.new("UICorner")
    Corner7.Name = [[Corner]]
    Corner7.CornerRadius = UDim.new(0, 6)
    Corner7.Parent = holder3

    local Extra3 = Instance.new("Folder")
    Extra3.Name = [[Extra]]
    Extra3.Parent = Input

    local Separator3 = Instance.new("Frame")
    Separator3.BorderSizePixel = 0
    Separator3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Separator3.AnchorPoint = Vector2.new(0.5, 1)
    Separator3.Size = UDim2.new(2, 0, 0, 1)
    Separator3.Position = UDim2.new(0.5, 0, 1, 1)
    Separator3.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Separator3.Name = [[Separator]]
    Separator3.BackgroundTransparency = 0.98
    Separator3.Parent = Extra3

    local List4 = Instance.new("UIListLayout")
    List4.Padding = UDim.new(0, 10)
    List4.VerticalAlignment = Enum.VerticalAlignment.Center
    List4.SortOrder = Enum.SortOrder.LayoutOrder
    List4.Name = [[List]]
    List4.FillDirection = Enum.FillDirection.Horizontal
    List4.Parent = Input

    local info3 = Instance.new("Frame")
    info3.BorderSizePixel = 0
    info3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    info3.Size = UDim2.new(0, 0, 0, 28)
    info3.BorderColor3 = Color3.fromRGB(0, 0, 0)
    info3.Name = [[info]]
    info3.LayoutOrder = 2
    info3.BackgroundTransparency = 1
    info3.Parent = Input

    local Flex5 = Instance.new("UIFlexItem")
    Flex5.Name = [[Flex]]
    Flex5.FlexMode = Enum.UIFlexMode.Fill
    Flex5.Parent = info3

    local Header3 = Instance.new("TextLabel")
    Header3.TextTruncate = Enum.TextTruncate.AtEnd
    Header3.BorderSizePixel = 0
    Header3.TextSize = 14
    Header3.TextXAlignment = Enum.TextXAlignment.Left
    Header3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Header3.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    Header3.TextColor3 = Color3.fromRGB(255, 255, 255)
    Header3.BackgroundTransparency = 1
    Header3.Size = UDim2.new(1, 0, 0, 0)
    Header3.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Header3.Text = [[Activation Key]]
    Header3.AutomaticSize = Enum.AutomaticSize.Y
    Header3.Name = [[Header]]
    Header3.Parent = info3

    local Description3 = Instance.new("TextLabel")
    Description3.TextTruncate = Enum.TextTruncate.AtEnd
    Description3.BorderSizePixel = 0
    Description3.TextSize = 12
    Description3.TextXAlignment = Enum.TextXAlignment.Left
    Description3.TextTransparency = 0.7
    Description3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Description3.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    Description3.TextColor3 = Color3.fromRGB(255, 255, 255)
    Description3.BackgroundTransparency = 1
    Description3.AnchorPoint = Vector2.new(0, 1)
    Description3.Size = UDim2.new(1, 0, 0, 0)
    Description3.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Description3.Text = [[The Key to toggle the Ui with.]]
    Description3.AutomaticSize = Enum.AutomaticSize.Y
    Description3.Name = [[Description]]
    Description3.Position = UDim2.new(0, 0, 1, 0)
    Description3.Parent = info3

    local reset = Instance.new("ImageButton")
    reset.Active = false
    reset.BorderSizePixel = 0
    reset.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
    reset.Selectable = false
    reset.Size = UDim2.new(0.6, 0, 0.6, 0)
    reset.LayoutOrder = 3
    reset.BorderColor3 = Color3.fromRGB(0, 0, 0)
    reset.Name = [[reset]]
    reset.Position = UDim2.new(0.82152, 0, 0, 0)
    reset.Parent = Input

    local Corner8 = Instance.new("UICorner")
    Corner8.Name = [[Corner]]
    Corner8.CornerRadius = UDim.new(1, 0)
    Corner8.Parent = reset

    local uiaspectratioconstraint = Instance.new("UIAspectRatioConstraint")
    uiaspectratioconstraint.Parent = reset

    local button = Instance.new("ImageLabel")
    button.Active = true
    button.BorderSizePixel = 0
    button.AutoLocalize = false
    button.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
    button.AnchorPoint = Vector2.new(0.5, 0.5)
    button.Image = [[rbxassetid://119058990992889]]
    button.Size = UDim2.new(0.8, 0, 0.8, 0)
    button.BorderColor3 = Color3.fromRGB(0, 0, 0)
    button.BackgroundTransparency = 1
    button.LayoutOrder = 1
    button.Selectable = true
    button.Name = [[button]]
    button.Position = UDim2.new(0.5, 0, 0.5, 0)
    button.Parent = reset

    local key = Instance.new("Frame")
    key.BorderSizePixel = 0
    key.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    key.Size = UDim2.new(0.15, 0, 1, 0)
    key.Position = UDim2.new(0.68504, 0, 0, 0)
    key.BorderColor3 = Color3.fromRGB(0, 0, 0)
    key.Name = [[key]]
    key.LayoutOrder = 4
    key.BackgroundTransparency = 1
    key.Parent = Input

    local box = Instance.new("TextButton")
    box.BorderSizePixel = 0
    box.AutoLocalize = false
    box.TextSize = 16
    box.TextColor3 = Color3.fromRGB(255, 255, 255)
    box.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
    box.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    box.AnchorPoint = Vector2.new(0, 0.5)
    box.Size = UDim2.new(0.99, 0, -0.76, 79)
    box.LayoutOrder = 1
    box.BorderColor3 = Color3.fromRGB(0, 0, 0)
    box.Text = [[...]]
    box.Name = [[box]]
    box.Position = UDim2.new(0, 0, 0.5, 0)
    box.Parent = key

    local Corner9 = Instance.new("UICorner")
    Corner9.Name = [[Corner]]
    Corner9.CornerRadius = UDim.new(0, 18)
    Corner9.Parent = box

    local Flex6 = Instance.new("UIFlexItem")
    Flex6.Name = [[Flex]]
    Flex6.FlexMode = Enum.UIFlexMode.Fill
    Flex6.Parent = box

    local frame = Instance.new("Frame")
    frame.BorderSizePixel = 0
    frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    frame.Size = UDim2.new(1, 0, 0.128, 0)
    frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    frame.BackgroundTransparency = 1
    frame.Parent = Basics

    local Header4 = Instance.new("TextLabel")
    Header4.BorderSizePixel = 0
    Header4.TextSize = 14
    Header4.TextXAlignment = Enum.TextXAlignment.Left
    Header4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Header4.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    Header4.TextColor3 = Color3.fromRGB(176, 176, 176)
    Header4.BackgroundTransparency = 1
    Header4.Size = UDim2.new(1, 0, 1, 0)
    Header4.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Header4.Text = [[Basics]]
    Header4.AutomaticSize = Enum.AutomaticSize.Y
    Header4.Name = [[Header]]
    Header4.Parent = frame

    local Padding4 = Instance.new("UIPadding")
    Padding4.PaddingTop = UDim.new(0, 10)
    Padding4.Name = [[Padding]]
    Padding4.PaddingLeft = UDim.new(0, 15)
    Padding4.Parent = Header4

    local Switch2 = Instance.new("Frame")
    Switch2.BorderSizePixel = 0
    Switch2.SelectionOrder = 3
    Switch2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Switch2.Size = UDim2.new(1, 0, 0, 50)
    Switch2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Switch2.Name = [[Switch]]
    Switch2.LayoutOrder = 3
    Switch2.BackgroundTransparency = 1
    CollectionService:AddTag(Switch2, [[SettingObject]])
    Switch2.Parent = Basics

    local switch2 = Instance.new("ImageButton")
    switch2.BorderSizePixel = 0
    switch2.AutoButtonColor = false
    switch2.ImageTransparency = 1
    switch2.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
    switch2.AnchorPoint = Vector2.new(1, 0.5)
    switch2.Size = UDim2.new(0, 45, 0, 27)
    switch2.LayoutOrder = 99
    switch2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    switch2.Name = [[switch]]
    switch2.Position = UDim2.new(1, 0, 0.5, 0)
    switch2:SetAttribute([[Enabled]], true)
    switch2:SetAttribute([[State]], false)
    CollectionService:AddTag(switch2, [[OrbitBooleanSwitch]])
    switch2.Parent = Switch2

    local Corner10 = Instance.new("UICorner")
    Corner10.Name = [[Corner]]
    Corner10.CornerRadius = UDim.new(1, 0)
    Corner10.Parent = switch2

    local uipadding2 = Instance.new("UIPadding")
    uipadding2.PaddingRight = UDim.new(0, 5)
    uipadding2.PaddingLeft = UDim.new(0, 5)
    uipadding2.Parent = switch2

    local circle2 = Instance.new("Frame")
    circle2.BorderSizePixel = 0
    circle2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    circle2.AnchorPoint = Vector2.new(0, 0.5)
    circle2.Size = UDim2.new(0, 19, 0, 19)
    circle2.Position = UDim2.new(0, 0, 0.5, 0)
    circle2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    circle2.Name = [[circle]]
    circle2.BackgroundTransparency = 0.95
    circle2.Parent = switch2

    local Corner11 = Instance.new("UICorner")
    Corner11.Name = [[Corner]]
    Corner11.CornerRadius = UDim.new(1, 0)
    Corner11.Parent = circle2

    local Padding5 = Instance.new("UIPadding")
    Padding5.PaddingRight = UDim.new(0, 12)
    Padding5.Name = [[Padding]]
    Padding5.PaddingLeft = UDim.new(0, 12)
    Padding5.Parent = Switch2

    local holder4 = Instance.new("ImageLabel")
    holder4.BorderSizePixel = 0
    holder4.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    holder4.ImageTransparency = 1
    holder4.AnchorPoint = Vector2.new(0, 0.5)
    holder4.Size = UDim2.new(0, 32, 0, 32)
    holder4.BorderColor3 = Color3.fromRGB(0, 0, 0)
    holder4.BackgroundTransparency = 0.8
    holder4.LayoutOrder = 1
    holder4.Name = [[holder]]
    holder4.Position = UDim2.new(0, 0, 0.5, 0)
    holder4.Parent = Switch2

    local icon5 = Instance.new("ImageLabel")
    icon5.BorderSizePixel = 0
    icon5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    icon5.ImageTransparency = 0.5
    icon5.AnchorPoint = Vector2.new(0.5, 0.5)
    icon5.Image = [[rbxassetid://107742686770693]]
    icon5.Size = UDim2.new(0, 30, 0, 30)
    icon5.BorderColor3 = Color3.fromRGB(0, 0, 0)
    icon5.BackgroundTransparency = 1
    icon5.LayoutOrder = 1
    icon5.Name = [[icon]]
    icon5.Position = UDim2.new(0.5, 0, 0.5, 0)
    icon5.Parent = holder4

    local Corner12 = Instance.new("UICorner")
    Corner12.Name = [[Corner]]
    Corner12.CornerRadius = UDim.new(0, 6)
    Corner12.Parent = holder4

    local Extra4 = Instance.new("Folder")
    Extra4.Name = [[Extra]]
    Extra4.Parent = Switch2

    local Separator4 = Instance.new("Frame")
    Separator4.BorderSizePixel = 0
    Separator4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Separator4.AnchorPoint = Vector2.new(0.5, 1)
    Separator4.Size = UDim2.new(2, 0, 0, 1)
    Separator4.Position = UDim2.new(0.5, 0, 1, 1)
    Separator4.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Separator4.Name = [[Separator]]
    Separator4.BackgroundTransparency = 0.98
    Separator4.Parent = Extra4

    local List5 = Instance.new("UIListLayout")
    List5.Padding = UDim.new(0, 10)
    List5.VerticalAlignment = Enum.VerticalAlignment.Center
    List5.SortOrder = Enum.SortOrder.LayoutOrder
    List5.Name = [[List]]
    List5.FillDirection = Enum.FillDirection.Horizontal
    List5.Parent = Switch2

    local info4 = Instance.new("Frame")
    info4.BorderSizePixel = 0
    info4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    info4.Size = UDim2.new(0, 0, 0, 28)
    info4.BorderColor3 = Color3.fromRGB(0, 0, 0)
    info4.Name = [[info]]
    info4.LayoutOrder = 2
    info4.BackgroundTransparency = 1
    info4.Parent = Switch2

    local Flex7 = Instance.new("UIFlexItem")
    Flex7.Name = [[Flex]]
    Flex7.FlexMode = Enum.UIFlexMode.Fill
    Flex7.Parent = info4

    local Header5 = Instance.new("TextLabel")
    Header5.TextTruncate = Enum.TextTruncate.AtEnd
    Header5.BorderSizePixel = 0
    Header5.TextSize = 14
    Header5.TextXAlignment = Enum.TextXAlignment.Left
    Header5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Header5.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    Header5.TextColor3 = Color3.fromRGB(255, 255, 255)
    Header5.BackgroundTransparency = 1
    Header5.Size = UDim2.new(1, 0, 0, 0)
    Header5.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Header5.Text = [[Resizing]]
    Header5.AutomaticSize = Enum.AutomaticSize.Y
    Header5.Name = [[Header]]
    Header5.Parent = info4

    local Description4 = Instance.new("TextLabel")
    Description4.TextTruncate = Enum.TextTruncate.AtEnd
    Description4.BorderSizePixel = 0
    Description4.TextSize = 12
    Description4.TextXAlignment = Enum.TextXAlignment.Left
    Description4.TextTransparency = 0.7
    Description4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Description4.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    Description4.TextColor3 = Color3.fromRGB(255, 255, 255)
    Description4.BackgroundTransparency = 1
    Description4.AnchorPoint = Vector2.new(0, 1)
    Description4.Size = UDim2.new(1, 0, 0, 0)
    Description4.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Description4.Text = [[Allow the Panel to be Resized.]]
    Description4.AutomaticSize = Enum.AutomaticSize.Y
    Description4.Name = [[Description]]
    Description4.Position = UDim2.new(0, 0, 1, 0)
    Description4.Parent = info4

    local uipadding3 = Instance.new("UIPadding")
    uipadding3.PaddingTop = UDim.new(0, 8)
    uipadding3.PaddingRight = UDim.new(0, 4)
    uipadding3.PaddingLeft = UDim.new(0, 8)
    uipadding3.PaddingBottom = UDim.new(0, 8)
    uipadding3.Parent = scroll

    local item2 = Instance.new("Frame")
    item2.BorderSizePixel = 0
    item2.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    item2.AnchorPoint = Vector2.new(0.5, 0.5)
    item2.ClipsDescendants = true
    item2.AutomaticSize = Enum.AutomaticSize.Y
    item2.Size = UDim2.new(1, 0, 0, 80)
    item2.Position = UDim2.new(0.49554, 0, 0.7393, 0)
    item2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    item2.Name = [[item]]
    item2.Parent = scroll

    local Corner13 = Instance.new("UICorner")
    Corner13.Name = [[Corner]]
    Corner13.CornerRadius = UDim.new(0, 14)
    Corner13.Parent = item2

    local uilistlayout3 = Instance.new("UIListLayout")
    uilistlayout3.Padding = UDim.new(0, 15)
    uilistlayout3.SortOrder = Enum.SortOrder.LayoutOrder
    uilistlayout3.Parent = item2

    local Selection2 = Instance.new("ImageButton")
    Selection2.Active = false
    Selection2.BorderSizePixel = 0
    Selection2.BackgroundTransparency = 1
    Selection2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    Selection2.Selectable = false
    Selection2.Size = UDim2.new(1, 0, 0, 50)
    Selection2.LayoutOrder = 5
    Selection2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Selection2.Name = [[Selection]]
    CollectionService:AddTag(Selection2, [[SettingObject]])
    Selection2.Parent = item2

    local Padding6 = Instance.new("UIPadding")
    Padding6.PaddingRight = UDim.new(0, 12)
    Padding6.Name = [[Padding]]
    Padding6.PaddingLeft = UDim.new(0, 12)
    Padding6.Parent = Selection2

    local holder5 = Instance.new("ImageLabel")
    holder5.BorderSizePixel = 0
    holder5.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    holder5.ImageTransparency = 1
    holder5.AnchorPoint = Vector2.new(0, 0.5)
    holder5.Size = UDim2.new(0, 32, 0, 32)
    holder5.BorderColor3 = Color3.fromRGB(0, 0, 0)
    holder5.BackgroundTransparency = 0.8
    holder5.LayoutOrder = 1
    holder5.Name = [[holder]]
    holder5.Position = UDim2.new(0, 0, 0.5, 0)
    holder5.Parent = Selection2

    local icon6 = Instance.new("ImageLabel")
    icon6.BorderSizePixel = 0
    icon6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    icon6.ImageTransparency = 0.5
    icon6.AnchorPoint = Vector2.new(0.5, 0.5)
    icon6.Image = [[rbxassetid://129563448979488]]
    icon6.Size = UDim2.new(0, 20, 0, 20)
    icon6.BorderColor3 = Color3.fromRGB(0, 0, 0)
    icon6.BackgroundTransparency = 1
    icon6.LayoutOrder = 1
    icon6.Name = [[icon]]
    icon6.Position = UDim2.new(0.5, 0, 0.5, 0)
    icon6.Parent = holder5

    local Corner14 = Instance.new("UICorner")
    Corner14.Name = [[Corner]]
    Corner14.CornerRadius = UDim.new(0, 6)
    Corner14.Parent = holder5

    local List6 = Instance.new("UIListLayout")
    List6.Padding = UDim.new(0, 10)
    List6.VerticalAlignment = Enum.VerticalAlignment.Center
    List6.SortOrder = Enum.SortOrder.LayoutOrder
    List6.Name = [[List]]
    List6.FillDirection = Enum.FillDirection.Horizontal
    List6.Parent = Selection2

    local frame2 = Instance.new("Frame")
    frame2.Parent = Selection2
