local function CreateSettings(WindowTable)
    local UI = {}
    local CollectionService = game:GetService("CollectionService")
    local ScreenGui = WindowTable.Content:FindFirstChild("screen") or WindowTable.Content

    UI.settings = Instance.new("Frame")
    UI.settings.Parent = ScreenGui
    UI.settings.BorderSizePixel = 0
    UI.settings.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    UI.settings.AnchorPoint = Vector2.new(0.5, 0.5)
    UI.settings.ClipsDescendants = true
    UI.settings.Size = UDim2.new(1, 0, 1, 0)
    UI.settings.Position = UDim2.new(0.5, 0, 0.5, 0)
    UI.settings.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.settings.Name = "settings"
    UI.settings.LayoutOrder = 9
    UI.settings.BackgroundTransparency = 0

    UI.selection = Instance.new("ScrollingFrame")
    UI.selection.Active = true
    UI.selection.ScrollingDirection = Enum.ScrollingDirection.Y
    UI.selection.ZIndex = 2
    UI.selection.BorderSizePixel = 0
    UI.selection.CanvasSize = UDim2.new(0, 0, 0, 0)
    UI.selection.Name = "selection"
    UI.selection.ScrollBarImageTransparency = 1
    UI.selection.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.selection.AnchorPoint = Vector2.new(1, 0.5)
    UI.selection.AutomaticCanvasSize = Enum.AutomaticSize.Y
    UI.selection.Size = UDim2.new(1, 0, 1, 0)
    UI.selection.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
    UI.selection.Position = UDim2.new(1, 0, 0.5, 0)
    UI.selection.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.selection.ScrollBarThickness = 0
    UI.selection.LayoutOrder = 1
    UI.selection.BackgroundTransparency = 1
    UI.selection.Parent = UI.settings

    UI.selection_Layout = Instance.new("UIListLayout")
    UI.selection_Layout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UI.selection_Layout.Padding = UDim.new(0, 6)
    UI.selection_Layout.SortOrder = Enum.SortOrder.LayoutOrder
    UI.selection_Layout.Name = "Layout"
    UI.selection_Layout.Parent = UI.selection

    UI.padding = Instance.new("UIPadding")
    UI.padding.PaddingTop = UDim.new(0, 12)
    UI.padding.PaddingRight = UDim.new(0, 16)
    UI.padding.Name = "padding"
    UI.padding.PaddingLeft = UDim.new(0, 16)
    UI.padding.PaddingBottom = UDim.new(0, 12)
    UI.padding.Parent = UI.selection

    UI.item = Instance.new("ImageButton")
    UI.item.BorderSizePixel = 0
    UI.item.AutoButtonColor = false
    UI.item.ImageTransparency = 1
    UI.item.BackgroundTransparency = 0.4
    UI.item.BackgroundColor3 = Color3.fromRGB(21, 21, 21)
    UI.item.Size = UDim2.new(1, 0, 0, 75)
    UI.item.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.item.Name = "item"
    UI.item.Position = UDim2.new(0, 0, 0.76415, 0)
    UI.item.Parent = UI.selection
    CollectionService:AddTag(UI.item, "OrbitSettingNavigationButton")

    UI.item_Padding = Instance.new("UIPadding")
    UI.item_Padding.PaddingTop = UDim.new(0, 15)
    UI.item_Padding.PaddingRight = UDim.new(0, 18)
    UI.item_Padding.Name = "Padding"
    UI.item_Padding.PaddingLeft = UDim.new(0, 15)
    UI.item_Padding.PaddingBottom = UDim.new(0, 15)
    UI.item_Padding.Parent = UI.item

    UI.item_Layout = Instance.new("UIListLayout")
    UI.item_Layout.Padding = UDim.new(0, 12)
    UI.item_Layout.VerticalAlignment = Enum.VerticalAlignment.Center
    UI.item_Layout.SortOrder = Enum.SortOrder.LayoutOrder
    UI.item_Layout.Name = "Layout"
    UI.item_Layout.FillDirection = Enum.FillDirection.Horizontal
    UI.item_Layout.Parent = UI.item

    UI.item_Corner = Instance.new("UICorner")
    UI.item_Corner.Name = "Corner"
    UI.item_Corner.CornerRadius = UDim.new(0, 20)
    UI.item_Corner.Parent = UI.item

    UI.holder = Instance.new("ImageLabel")
    UI.holder.BorderSizePixel = 0
    UI.holder.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    UI.holder.ImageTransparency = 1
    UI.holder.AnchorPoint = Vector2.new(0.5, 0.5)
    UI.holder.Size = UDim2.new(0, 45, 0, 45)
    UI.holder.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.holder.BackgroundTransparency = 0.8
    UI.holder.LayoutOrder = 1
    UI.holder.Name = "holder"
    UI.holder.Parent = UI.item

    UI.icon = Instance.new("ImageLabel")
    UI.icon.BorderSizePixel = 0
    UI.icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.icon.ImageTransparency = 0.25
    UI.icon.AnchorPoint = Vector2.new(0.5, 0.5)
    UI.icon.Image = "rbxassetid://127976422209566"
    UI.icon.Size = UDim2.new(0, 26, 0, 26)
    UI.icon.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.icon.BackgroundTransparency = 1
    UI.icon.LayoutOrder = 1
    UI.icon.Name = "icon"
    UI.icon.Position = UDim2.new(0.5, 0, 0.5, 0)
    UI.icon.Parent = UI.holder

    UI.holder_Corner = Instance.new("UICorner")
    UI.holder_Corner.Name = "Corner"
    UI.holder_Corner.CornerRadius = UDim.new(0, 14)
    UI.holder_Corner.Parent = UI.holder

    UI.topbar = Instance.new("Frame")
    UI.topbar.BorderSizePixel = 0
    UI.topbar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.topbar.AnchorPoint = Vector2.new(0.5, 0)
    UI.topbar.AutomaticSize = Enum.AutomaticSize.XY
    UI.topbar.Position = UDim2.new(0.5, 0, 0, 0)
    UI.topbar.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.topbar.Name = "topbar"
    UI.topbar.LayoutOrder = 2
    UI.topbar.BackgroundTransparency = 1
    UI.topbar.Parent = UI.item

    UI.title = Instance.new("TextLabel")
    UI.title.BorderSizePixel = 0
    UI.title.AutoLocalize = false
    UI.title.TextSize = 16
    UI.title.TextXAlignment = Enum.TextXAlignment.Left
    UI.title.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    UI.title.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    UI.title.TextColor3 = Color3.fromRGB(255, 255, 255)
    UI.title.BackgroundTransparency = 1
    UI.title.AnchorPoint = Vector2.new(0.5, 1)
    UI.title.Size = UDim2.new(1, 0, 0, 0)
    UI.title.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.title.Text = "Advanced Settings"
    UI.title.LayoutOrder = 1
    UI.title.AutomaticSize = Enum.AutomaticSize.XY
    UI.title.Name = "title"
    UI.title.Position = UDim2.new(0.5, 0, 1, -10)
    UI.title.Parent = UI.topbar

    UI.topbar_Layout = Instance.new("UIListLayout")
    UI.topbar_Layout.SortOrder = Enum.SortOrder.LayoutOrder
    UI.topbar_Layout.Name = "Layout"
    UI.topbar_Layout.Parent = UI.topbar

    UI.description = Instance.new("TextLabel")
    UI.description.TextWrapped = true
    UI.description.BorderSizePixel = 0
    UI.description.AutoLocalize = false
    UI.description.TextSize = 14
    UI.description.TextXAlignment = Enum.TextXAlignment.Left
    UI.description.TextTransparency = 0.6
    UI.description.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    UI.description.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    UI.description.TextColor3 = Color3.fromRGB(255, 255, 255)
    UI.description.BackgroundTransparency = 1
    UI.description.AnchorPoint = Vector2.new(0.5, 1)
    UI.description.Size = UDim2.new(1, 0, 0, 0)
    UI.description.ClipsDescendants = true
    UI.description.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.description.Text = "Make your experience better with advanced changes"
    UI.description.LayoutOrder = 1
    UI.description.AutomaticSize = Enum.AutomaticSize.XY
    UI.description.Name = "description"
    UI.description.Position = UDim2.new(0.5, 0, 1, -10)
    UI.description.Parent = UI.topbar

    UI.Flex = Instance.new("UIFlexItem")
    UI.Flex.Name = "Flex"
    UI.Flex.FlexMode = Enum.UIFlexMode.Fill
    UI.Flex.Parent = UI.topbar

    UI.enter = Instance.new("ImageLabel")
    UI.enter.BorderSizePixel = 0
    UI.enter.ScaleType = Enum.ScaleType.Fit
    UI.enter.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.enter.ImageTransparency = 0.5
    UI.enter.AnchorPoint = Vector2.new(0.5, 0.5)
    UI.enter.Image = "rbxassetid://100608752811999"
    UI.enter.Size = UDim2.new(0, 25, 0, 25)
    UI.enter.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.enter.BackgroundTransparency = 1
    UI.enter.LayoutOrder = 5
    UI.enter.Name = "enter"
    UI.enter.Position = UDim2.new(0.5, 0, 0.5, 0)
    UI.enter.Parent = UI.item

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

    local info5 = Instance.new("Frame")
    info5.BorderSizePixel = 0
    info5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    info5.Size = UDim2.new(0, 0, 0, 28)
    info5.BorderColor3 = Color3.fromRGB(0, 0, 0)
    info5.Name = [[info]]
    info5.LayoutOrder = 2
    info5.BackgroundTransparency = 1
    info5.Parent = Selection2

    local Flex8 = Instance.new("UIFlexItem")
    Flex8.Name = [[Flex]]
    Flex8.FlexMode = Enum.UIFlexMode.Fill
    Flex8.Parent = info5

    local Header6 = Instance.new("TextLabel")
    Header6.TextTruncate = Enum.TextTruncate.AtEnd
    Header6.BorderSizePixel = 0
    Header6.TextSize = 14
    Header6.TextXAlignment = Enum.TextXAlignment.Left
    Header6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Header6.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    Header6.TextColor3 = Color3.fromRGB(255, 255, 255)
    Header6.BackgroundTransparency = 1
    Header6.Size = UDim2.new(1, 0, 0, 0)
    Header6.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Header6.Text = [[Tab Layout]]
    Header6.AutomaticSize = Enum.AutomaticSize.Y
    Header6.Name = [[Header]]
    Header6.Parent = info5

    local Description5 = Instance.new("TextLabel")
    Description5.TextTruncate = Enum.TextTruncate.AtEnd
    Description5.BorderSizePixel = 0
    Description5.TextSize = 12
    Description5.TextXAlignment = Enum.TextXAlignment.Left
    Description5.TextTransparency = 0.7
    Description5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Description5.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    Description5.TextColor3 = Color3.fromRGB(255, 255, 255)
    Description5.BackgroundTransparency = 1
    Description5.AnchorPoint = Vector2.new(0, 1)
    Description5.Size = UDim2.new(1, 0, 0, 0)
    Description5.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Description5.Text = [[Change the Layout of the Tabs]]
    Description5.AutomaticSize = Enum.AutomaticSize.Y
    Description5.Name = [[Description]]
    Description5.Position = UDim2.new(0, 0, 1, 0)
    Description5.Parent = info5

    local icon7 = Instance.new("ImageLabel")
    icon7.BorderSizePixel = 0
    icon7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    icon7.Image = [[rbxassetid://95898765113869]]
    icon7.Size = UDim2.new(0, 26, 0, 26)
    icon7.BorderColor3 = Color3.fromRGB(0, 0, 0)
    icon7.BackgroundTransparency = 1
    icon7.LayoutOrder = 99
    icon7.Name = [[icon]]
    icon7.Parent = Selection2

    local aspect2 = Instance.new("UIAspectRatioConstraint")
    aspect2.Name = [[aspect]]
    aspect2.Parent = icon7

    local value2 = Instance.new("TextLabel")
    value2.BorderSizePixel = 0
    value2.TextSize = 14
    value2.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
    value2.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    value2.TextColor3 = Color3.fromRGB(255, 255, 255)
    value2.Size = UDim2.new(0, 125, 0, 30)
    value2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    value2.Text = [[Left]]
    value2.LayoutOrder = 98
    value2.AutomaticSize = Enum.AutomaticSize.X
    value2.Name = [[value]]
    value2.Parent = Selection2

    local Corner15 = Instance.new("UICorner")
    Corner15.Name = [[Corner]]
    Corner15.CornerRadius = UDim.new(0, 18)
    Corner15.Parent = value2

    local frame2 = Instance.new("Frame")
    frame2.BorderSizePixel = 0
    frame2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    frame2.Size = UDim2.new(1, 0, 0.128, 0)
    frame2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    frame2.BackgroundTransparency = 1
    frame2.Parent = item2

    local Header7 = Instance.new("TextLabel")
    Header7.BorderSizePixel = 0
    Header7.TextSize = 14
    Header7.TextXAlignment = Enum.TextXAlignment.Left
    Header7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Header7.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    Header7.TextColor3 = Color3.fromRGB(176, 176, 176)
    Header7.BackgroundTransparency = 1
    Header7.Size = UDim2.new(1, 0, 1, 0)
    Header7.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Header7.Text = [[Layout]]
    Header7.AutomaticSize = Enum.AutomaticSize.Y
    Header7.Name = [[Header]]
    Header7.Parent = frame2

    local Padding7 = Instance.new("UIPadding")
    Padding7.PaddingTop = UDim.new(0, 10)
    Padding7.Name = [[Padding]]
    Padding7.PaddingLeft = UDim.new(0, 15)
    Padding7.Parent = Header7

    local item3 = Instance.new("Frame")
    item3.BorderSizePixel = 0
    item3.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    item3.AnchorPoint = Vector2.new(0.5, 0.5)
    item3.ClipsDescendants = true
    item3.AutomaticSize = Enum.AutomaticSize.Y
    item3.Size = UDim2.new(1, 0, 0.2, 80)
    item3.Position = UDim2.new(0.49554, 0, 0.7393, 0)
    item3.BorderColor3 = Color3.fromRGB(0, 0, 0)
    item3.Name = [[item]]
    item3.Parent = scroll

    local Corner16 = Instance.new("UICorner")
    Corner16.Name = [[Corner]]
    Corner16.CornerRadius = UDim.new(0, 14)
    Corner16.Parent = item3

    local uilistlayout4 = Instance.new("UIListLayout")
    uilistlayout4.Padding = UDim.new(0, 15)
    uilistlayout4.SortOrder = Enum.SortOrder.LayoutOrder
    uilistlayout4.Parent = item3

    local frame3 = Instance.new("Frame")
    frame3.BorderSizePixel = 0
    frame3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    frame3.Size = UDim2.new(1, 0, 0.128, 0)
    frame3.BorderColor3 = Color3.fromRGB(0, 0, 0)
    frame3.BackgroundTransparency = 1
    frame3.Parent = item3

    local Other = Instance.new("TextLabel")
    Other.BorderSizePixel = 0
    Other.TextSize = 14
    Other.TextXAlignment = Enum.TextXAlignment.Left
    Other.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Other.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    Other.TextColor3 = Color3.fromRGB(176, 176, 176)
    Other.BackgroundTransparency = 1
    Other.Size = UDim2.new(1, 0, 1, 0)
    Other.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Other.Text = [[Header]]
    Other.AutomaticSize = Enum.AutomaticSize.Y
    Other.Name = [[Other]]
    Other.Parent = frame3

    local Padding8 = Instance.new("UIPadding")
    Padding8.PaddingTop = UDim.new(0, 10)
    Padding8.Name = [[Padding]]
    Padding8.PaddingLeft = UDim.new(0, 15)
    Padding8.Parent = Other

    local Switch3 = Instance.new("Frame")
    Switch3.BorderSizePixel = 0
    Switch3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Switch3.Size = UDim2.new(1, 0, 0, 50)
    Switch3.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Switch3.Name = [[Switch]]
    Switch3.LayoutOrder = 2
    Switch3.BackgroundTransparency = 1
    CollectionService:AddTag(Switch3, [[SettingObject]])
    Switch3.Parent = item3

    local switch3 = Instance.new("ImageButton")
    switch3.BorderSizePixel = 0
    switch3.AutoButtonColor = false
    switch3.ImageTransparency = 1
    switch3.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
    switch3.AnchorPoint = Vector2.new(1, 0.5)
    switch3.Size = UDim2.new(0, 45, 0, 27)
    switch3.LayoutOrder = 99
    switch3.BorderColor3 = Color3.fromRGB(0, 0, 0)
    switch3.Name = [[switch]]
    switch3.Position = UDim2.new(1, 0, 0.5, 0)
    switch3:SetAttribute([[Enabled]], true)
    switch3:SetAttribute([[State]], false)
    CollectionService:AddTag(switch3, [[OrbitBooleanSwitch]])
    switch3.Parent = Switch3

    local Corner17 = Instance.new("UICorner")
    Corner17.Name = [[Corner]]
    Corner17.CornerRadius = UDim.new(1, 0)
    Corner17.Parent = switch3

    local uipadding4 = Instance.new("UIPadding")
    uipadding4.PaddingRight = UDim.new(0, 5)
    uipadding4.PaddingLeft = UDim.new(0, 5)
    uipadding4.Parent = switch3

    local circle3 = Instance.new("Frame")
    circle3.BorderSizePixel = 0
    circle3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    circle3.AnchorPoint = Vector2.new(0, 0.5)
    circle3.Size = UDim2.new(0, 19, 0, 19)
    circle3.Position = UDim2.new(0, 0, 0.5, 0)
    circle3.BorderColor3 = Color3.fromRGB(0, 0, 0)
    circle3.Name = [[circle]]
    circle3.BackgroundTransparency = 0.95
    circle3.Parent = switch3

    local Corner18 = Instance.new("UICorner")
    Corner18.Name = [[Corner]]
    Corner18.CornerRadius = UDim.new(1, 0)
    Corner18.Parent = circle3

    local Padding9 = Instance.new("UIPadding")
    Padding9.PaddingRight = UDim.new(0, 12)
    Padding9.Name = [[Padding]]
    Padding9.PaddingLeft = UDim.new(0, 12)
    Padding9.PaddingBottom = UDim.new(0, 20)
    Padding9.Parent = Switch3

    local holder6 = Instance.new("ImageLabel")
    holder6.BorderSizePixel = 0
    holder6.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    holder6.ImageTransparency = 1
    holder6.AnchorPoint = Vector2.new(0, 0.5)
    holder6.Size = UDim2.new(0, 32, 0, 32)
    holder6.BorderColor3 = Color3.fromRGB(0, 0, 0)
    holder6.BackgroundTransparency = 0.8
    holder6.LayoutOrder = 1
    holder6.Name = [[holder]]
    holder6.Position = UDim2.new(0, 0, 0.5, 0)
    holder6.Parent = Switch3

    local icon8 = Instance.new("ImageLabel")
    icon8.BorderSizePixel = 0
    icon8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    icon8.ImageTransparency = 0.5
    icon8.AnchorPoint = Vector2.new(0.5, 0.5)
    icon8.Image = [[rbxassetid://85824584748112]]
    icon8.Size = UDim2.new(0, 21, 0, 21)
    icon8.BorderColor3 = Color3.fromRGB(0, 0, 0)
    icon8.BackgroundTransparency = 1
    icon8.LayoutOrder = 1
    icon8.Name = [[icon]]
    icon8.Position = UDim2.new(0.5, 0, 0.5, 0)
    icon8.Parent = holder6

    local Corner19 = Instance.new("UICorner")
    Corner19.Name = [[Corner]]
    Corner19.CornerRadius = UDim.new(0, 6)
    Corner19.Parent = holder6

    local List7 = Instance.new("UIListLayout")
    List7.Padding = UDim.new(0, 10)
    List7.VerticalAlignment = Enum.VerticalAlignment.Center
    List7.SortOrder = Enum.SortOrder.LayoutOrder
    List7.Name = [[List]]
    List7.FillDirection = Enum.FillDirection.Horizontal
    List7.Parent = Switch3

    local info6 = Instance.new("Frame")
    info6.BorderSizePixel = 0
    info6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    info6.Size = UDim2.new(0, 0, 0, 28)
    info6.BorderColor3 = Color3.fromRGB(0, 0, 0)
    info6.Name = [[info]]
    info6.LayoutOrder = 2
    info6.BackgroundTransparency = 1
    info6.Parent = Switch3

    local Flex9 = Instance.new("UIFlexItem")
    Flex9.Name = [[Flex]]
    Flex9.FlexMode = Enum.UIFlexMode.Fill
    Flex9.Parent = info6

    local Name = Instance.new("TextLabel")
    Name.TextTruncate = Enum.TextTruncate.AtEnd
    Name.BorderSizePixel = 0
    Name.TextSize = 14
    Name.TextXAlignment = Enum.TextXAlignment.Left
    Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Name.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    Name.TextColor3 = Color3.fromRGB(255, 255, 255)
    Name.BackgroundTransparency = 1
    Name.Size = UDim2.new(1, 0, 0, 0)
    Name.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Name.Text = [[Debug Bar]]
    Name.AutomaticSize = Enum.AutomaticSize.Y
    Name.Name = [[Name]]
    Name.Parent = info6

    local Description6 = Instance.new("TextLabel")
    Description6.TextTruncate = Enum.TextTruncate.AtEnd
    Description6.BorderSizePixel = 0
    Description6.TextSize = 12
    Description6.TextXAlignment = Enum.TextXAlignment.Left
    Description6.TextTransparency = 0.7
    Description6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Description6.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    Description6.TextColor3 = Color3.fromRGB(255, 255, 255)
    Description6.BackgroundTransparency = 1
    Description6.AnchorPoint = Vector2.new(0, 1)
    Description6.Size = UDim2.new(1, 0, 0, 0)
    Description6.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Description6.Text = [[Toggle the Debugbar]]
    Description6.AutomaticSize = Enum.AutomaticSize.Y
    Description6.Name = [[Description]]
    Description6.Position = UDim2.new(0, 0, 1, 0)
    Description6.Parent = info6

    local topbar = Instance.new("Frame")
    topbar.ZIndex = 12
    topbar.BorderSizePixel = 0
    topbar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    topbar.Size = UDim2.new(1, 0, 0, 40)
    topbar.BorderColor3 = Color3.fromRGB(0, 0, 0)
    topbar.Name = [[topbar]]
    topbar.LayoutOrder = 1
    topbar.BackgroundTransparency = 1
    topbar.Parent = item

    local reset2 = Instance.new("ImageButton")
    reset2.BorderSizePixel = 0
    reset2.SliceCenter = Rect.new(512, 512, 512, 512)
    reset2.ScaleType = Enum.ScaleType.Slice
    reset2.AutoButtonColor = false
    reset2.ImageTransparency = 1
    reset2.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
    reset2.AutomaticSize = Enum.AutomaticSize.X
    reset2.Size = UDim2.new(0.5, 0, 1, 0)
    reset2.LayoutOrder = 2
    reset2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    reset2.Name = [[reset]]
    CollectionService:AddTag(reset2, [[OrbitActionButton]])
    reset2.Parent = topbar

    local icon9 = Instance.new("ImageLabel")
    icon9.BorderSizePixel = 0
    icon9.ScaleType = Enum.ScaleType.Fit
    icon9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    icon9.ImageTransparency = 0.5
    icon9.AnchorPoint = Vector2.new(0.5, 0.5)
    icon9.Image = [[rbxassetid://79413295774210]]
    icon9.Size = UDim2.new(0, 25, 0, 25)
    icon9.BorderColor3 = Color3.fromRGB(0, 0, 0)
    icon9.BackgroundTransparency = 1
    icon9.Name = [[icon]]
    icon9.Position = UDim2.new(0.5, 0, 0.5, 0)
    icon9.Parent = reset2

    local Corner20 = Instance.new("UICorner")
    Corner20.Name = [[Corner]]
    Corner20.CornerRadius = UDim.new(0, 12)
    Corner20.Parent = reset2

    local Scale = Instance.new("UIScale")
    Scale.Name = [[Scale]]
    Scale.Parent = reset2

    local Padding10 = Instance.new("UIPadding")
    Padding10.PaddingTop = UDim.new(0, 4)
    Padding10.PaddingRight = UDim.new(0, 14)
    Padding10.Name = [[Padding]]
    Padding10.PaddingLeft = UDim.new(0, 14)
    Padding10.PaddingBottom = UDim.new(0, 4)
    Padding10.Parent = reset2

    local List8 = Instance.new("UIListLayout")
    List8.HorizontalAlignment = Enum.HorizontalAlignment.Center
    List8.Padding = UDim.new(0, 12)
    List8.VerticalAlignment = Enum.VerticalAlignment.Center
    List8.SortOrder = Enum.SortOrder.LayoutOrder
    List8.Name = [[List]]
    List8.FillDirection = Enum.FillDirection.Horizontal
    List8.Parent = reset2

    local name2 = Instance.new("TextLabel")
    name2.BorderSizePixel = 0
    name2.TextSize = 14
    name2.TextTransparency = 0.6
    name2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    name2.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    name2.TextColor3 = Color3.fromRGB(255, 255, 255)
    name2.BackgroundTransparency = 1
    name2.Size = UDim2.new(0, 0, 1, 0)
    name2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    name2.Text = [[Reset Settings]]
    name2.LayoutOrder = 1
    name2.AutomaticSize = Enum.AutomaticSize.X
    name2.Name = [[name]]
    name2.Parent = reset2

    local Flex10 = Instance.new("UIFlexItem")
    Flex10.Name = [[Flex]]
    Flex10.FlexMode = Enum.UIFlexMode.Fill
    Flex10.Parent = reset2

    local list2 = Instance.new("UIListLayout")
    list2.Padding = UDim.new(0, 10)
    list2.VerticalAlignment = Enum.VerticalAlignment.Center
    list2.SortOrder = Enum.SortOrder.LayoutOrder
    list2.Name = [[list]]
    list2.FillDirection = Enum.FillDirection.Horizontal
    list2.Parent = topbar

    local back = Instance.new("ImageButton")
    back.BorderSizePixel = 0
    back.SliceCenter = Rect.new(512, 512, 512, 512)
    back.ScaleType = Enum.ScaleType.Slice
    back.AutoButtonColor = false
    back.ImageTransparency = 1
    back.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
    back.Size = UDim2.new(0, 48, 1, 0)
    back.LayoutOrder = 3
    back.BorderColor3 = Color3.fromRGB(0, 0, 0)
    back.Name = [[back]]
    CollectionService:AddTag(back, [[OrbitActionButton]])
    CollectionService:AddTag(back, [[OrbitSettingCloseButton]])
    back.Parent = topbar

    local Corner21 = Instance.new("UICorner")
    Corner21.Name = [[Corner]]
    Corner21.CornerRadius = UDim.new(0, 12)
    Corner21.Parent = back

    local Scale2 = Instance.new("UIScale")
    Scale2.Name = [[Scale]]
    Scale2.Parent = back

    local Padding11 = Instance.new("UIPadding")
    Padding11.PaddingTop = UDim.new(0, 4)
    Padding11.PaddingRight = UDim.new(0, 14)
    Padding11.Name = [[Padding]]
    Padding11.PaddingLeft = UDim.new(0, 14)
    Padding11.PaddingBottom = UDim.new(0, 4)
    Padding11.Parent = back

    local List9 = Instance.new("UIListLayout")
    List9.HorizontalAlignment = Enum.HorizontalAlignment.Center
    List9.Padding = UDim.new(0, 12)
    List9.VerticalAlignment = Enum.VerticalAlignment.Center
    List9.SortOrder = Enum.SortOrder.LayoutOrder
    List9.Name = [[List]]
    List9.FillDirection = Enum.FillDirection.Horizontal
    List9.Parent = back

    local icon10 = Instance.new("ImageLabel")
    icon10.BorderSizePixel = 0
    icon10.ScaleType = Enum.ScaleType.Fit
    icon10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    icon10.ImageTransparency = 0.5
    icon10.AnchorPoint = Vector2.new(0.5, 0.5)
    icon10.Image = [[rbxassetid://112816935640445]]
    icon10.Size = UDim2.new(0, 25, 0, 25)
    icon10.BorderColor3 = Color3.fromRGB(0, 0, 0)
    icon10.BackgroundTransparency = 1
    icon10.Name = [[icon]]
    icon10.Position = UDim2.new(0.5, 0, 0.5, 0)
    icon10.Parent = back

    local Layout = Instance.new("UIListLayout")
    Layout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    Layout.Padding = UDim.new(0, 15)
    Layout.SortOrder = Enum.SortOrder.LayoutOrder
    Layout.Name = [[Layout]]
    Layout.Parent = item

    local padding2 = Instance.new("UIPadding")
    padding2.PaddingTop = UDim.new(0, 12)
    padding2.PaddingRight = UDim.new(0, 20)
    padding2.Name = [[padding]]
    padding2.PaddingLeft = UDim.new(0, 20)
    padding2.PaddingBottom = UDim.new(0, 20)
    padding2.Parent = item

    local uilistlayout5 = Instance.new("UIListLayout")
    uilistlayout5.SortOrder = Enum.SortOrder.LayoutOrder
    uilistlayout5.Parent = main

    settings.Visible = false
    UI.item.MouseButton1Click:Connect(function()
        UI.selection.Visible = false
        settings.Visible = true
    end)

    back.MouseButton1Click:Connect(function()
    
    settings.Visible = false
    local confirmation = Instance.new("ImageLabel")
    confirmation.ZIndex = 10
    confirmation.BorderSizePixel = 0
    confirmation.SliceCenter = Rect.new(300, 300, 300, 300)
    confirmation.SliceScale = 0.5
    confirmation.ScaleType = Enum.ScaleType.Slice
    confirmation.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    confirmation.AutomaticSize = Enum.AutomaticSize.Y
    confirmation.ImageColor3 = Color3.fromRGB(0, 0, 0)
    confirmation.AnchorPoint = Vector2.new(0.5, 0.5)
    confirmation.Image = [[rbxassetid://72548733587158]]
    confirmation.Size = UDim2.new(0, 450, 0, 0)
    confirmation.BorderColor3 = Color3.fromRGB(0, 0, 0)
    confirmation.BackgroundTransparency = 1
    confirmation.Selectable = true
    confirmation.Name = [[confirmation]]
    confirmation.Position = UDim2.new(0.5, 0, 0.5, 0)
    confirmation:SetAttribute([[CurrentPromptID]], [[]])
    confirmation.Parent = screengui

    local scale = Instance.new("UIScale")
    scale.Name = [[scale]]
    scale.Parent = confirmation

    local padding = Instance.new("UIPadding")
    padding.PaddingTop = UDim.new(0, 75)
    padding.PaddingRight = UDim.new(0, 75)
    padding.Name = [[padding]]
    padding.PaddingLeft = UDim.new(0, 75)
    padding.PaddingBottom = UDim.new(0, 75)
    padding.Parent = confirmation

    local list = Instance.new("UIListLayout")
    list.SortOrder = Enum.SortOrder.LayoutOrder
    list.Name = [[list]]
    list.Parent = confirmation

    local frame = Instance.new("ImageButton")
    frame.SliceScale = 0.12
    frame.BorderSizePixel = 0
    frame.SliceCenter = Rect.new(512, 512, 512, 512)
    frame.ScaleType = Enum.ScaleType.Slice
    frame.Modal = true
    frame.AutoButtonColor = false
    frame.BackgroundTransparency = 1
    frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    frame.ImageColor3 = Color3.fromRGB(35, 35, 35)
    frame.AnchorPoint = Vector2.new(0.5, 0)
    frame.Image = [[rbxassetid://125088425775676]]
    frame.AutomaticSize = Enum.AutomaticSize.Y
    frame.Size = UDim2.new(1, 0, 0, 0)
    frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    frame.Name = [[frame]]
    frame.Position = UDim2.new(0.5, 0, 0, 0)
    frame.Parent = confirmation

    local content = Instance.new("CanvasGroup")
    content.Active = true
    content.BorderSizePixel = 0
    content.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    content.Selectable = true
    content.AutomaticSize = Enum.AutomaticSize.Y
    content.Size = UDim2.new(1, 0, 0, 0)
    content.BorderColor3 = Color3.fromRGB(0, 0, 0)
    content.Name = [[content]]
    content.LayoutOrder = 1
    content.BackgroundTransparency = 1
    content.SelectionGroup = true
    content.Parent = frame

    local header = Instance.new("TextLabel")
    header.TextWrapped = true
    header.BorderSizePixel = 0
    header.TextSize = 18
    header.TextXAlignment = Enum.TextXAlignment.Left
    header.TextYAlignment = Enum.TextYAlignment.Top
    header.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    header.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
    header.TextColor3 = Color3.fromRGB(255, 255, 255)
    header.BackgroundTransparency = 1
    header.Size = UDim2.new(1, 0, 0, 0)
    header.BorderColor3 = Color3.fromRGB(0, 0, 0)
    header.Text = [[Header]]
    header.AutomaticSize = Enum.AutomaticSize.Y
    header.Name = [[header]]
    header.Parent = content

    local label = Instance.new("TextLabel")
    label.TextWrapped = true
    label.BorderSizePixel = 0
    label.TextSize = 15
    label.TextXAlignment = Enum.TextXAlignment.Left
    label.TextTransparency = 0.3
    label.TextYAlignment = Enum.TextYAlignment.Top
    label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    label.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    label.TextColor3 = Color3.fromRGB(255, 255, 255)
    label.BackgroundTransparency = 1
    label.Size = UDim2.new(1, 0, 0, 0)
    label.BorderColor3 = Color3.fromRGB(0, 0, 0)
    label.Text = [[Description]]
    label.AutomaticSize = Enum.AutomaticSize.Y
    label.Name = [[label]]
    label.Parent = content

    local list2 = Instance.new("UIListLayout")
    list2.HorizontalAlignment = Enum.HorizontalAlignment.Center
    list2.Padding = UDim.new(0, 5)
    list2.SortOrder = Enum.SortOrder.LayoutOrder
    list2.Name = [[list]]
    list2.Parent = content

    local actions = Instance.new("Frame")
    actions.BorderSizePixel = 0
    actions.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    actions.Size = UDim2.new(1, 0, 0, 60)
    actions.BorderColor3 = Color3.fromRGB(0, 0, 0)
    actions.Name = [[actions]]
    actions.LayoutOrder = 2
    actions.BackgroundTransparency = 1
    actions.Parent = content

    local list3 = Instance.new("UIListLayout")
    list3.HorizontalAlignment = Enum.HorizontalAlignment.Center
    list3.HorizontalFlex = Enum.UIFlexAlignment.Fill
    list3.Padding = UDim.new(0, 10)
    list3.VerticalAlignment = Enum.VerticalAlignment.Bottom
    list3.SortOrder = Enum.SortOrder.LayoutOrder
    list3.Name = [[list]]
    list3.FillDirection = Enum.FillDirection.Horizontal
    list3.Parent = actions

    local accept = Instance.new("TextButton")
    accept.BorderSizePixel = 0
    accept.TextSize = 15
    accept.TextColor3 = Color3.fromRGB(255, 255, 255)
    accept.BackgroundColor3 = Color3.fromRGB(0, 141, 255)
    accept.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
    accept.AnchorPoint = Vector2.new(0, 0.5)
    accept.AutomaticSize = Enum.AutomaticSize.X
    accept.Size = UDim2.new(0, 0, 0, 40)
    accept.LayoutOrder = 2
    accept.BorderColor3 = Color3.fromRGB(0, 0, 0)
    accept.Text = [[Confirm]]
    accept.Name = [[accept]]
    accept.Position = UDim2.new(0, 0, 0.5, 0)
    CollectionService:AddTag(accept, [[Exe6PrimaryThemeBackgroundColor3]])
    accept.Parent = actions

    local padding2 = Instance.new("UIPadding")
    padding2.PaddingRight = UDim.new(0, 24)
    padding2.Name = [[padding]]
    padding2.PaddingLeft = UDim.new(0, 24)
    padding2.Parent = accept

    local corner = Instance.new("UICorner")
    corner.Name = [[corner]]
    corner.CornerRadius = UDim.new(1, 0)
    corner.Parent = accept

    local stroke = Instance.new("UIStroke")
    stroke.Color = Color3.fromRGB(255, 255, 255)
    stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    stroke.Name = [[stroke]]
    CollectionService:AddTag(stroke, [[Exe6AerialEffect]])
    stroke.Parent = accept

    local gradient = Instance.new("UIGradient")
    gradient.Rotation = 62
    gradient.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(0.500, 1),NumberSequenceKeypoint.new(1.000, 0)}
    gradient.Name = [[gradient]]
    gradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(90, 178, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(90, 178, 255))}
    CollectionService:AddTag(gradient, [[Exe6DynamicSpeculars]])
    CollectionService:AddTag(gradient, [[Exe6PrimarySpeculars]])
    gradient.Parent = stroke

    local padding3 = Instance.new("UIPadding")
    padding3.PaddingRight = UDim.new(0, 1)
    padding3.Name = [[padding]]
    padding3.PaddingLeft = UDim.new(0, 1)
    padding3.PaddingBottom = UDim.new(0, 1)
    padding3.Parent = actions

    local cancel = Instance.new("TextButton")
    cancel.BorderSizePixel = 0
    cancel.TextSize = 15
    cancel.TextColor3 = Color3.fromRGB(255, 255, 255)
    cancel.BackgroundColor3 = Color3.fromRGB(187, 0, 0)
    cancel.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
    cancel.AnchorPoint = Vector2.new(0, 0.5)
    cancel.AutomaticSize = Enum.AutomaticSize.X
    cancel.Size = UDim2.new(0, 0, 0, 40)
    cancel.LayoutOrder = 1
    cancel.BorderColor3 = Color3.fromRGB(27, 27, 27)
    cancel.Text = [[Cancel]]
    cancel.Name = [[cancel]]
    cancel.Position = UDim2.new(0, 0, 0.5, 0)
    cancel.Parent = actions

    local corner2 = Instance.new("UICorner")
    corner2.Name = [[corner]]
    corner2.CornerRadius = UDim.new(1, 0)
    corner2.Parent = cancel

    local padding4 = Instance.new("UIPadding")
    padding4.PaddingRight = UDim.new(0, 20)
    padding4.Name = [[padding]]
    padding4.PaddingLeft = UDim.new(0, 20)
    padding4.Parent = cancel

    local padding5 = Instance.new("UIPadding")
    padding5.PaddingTop = UDim.new(0, 25)
    padding5.PaddingRight = UDim.new(0, 25)
    padding5.Name = [[padding]]
    padding5.PaddingLeft = UDim.new(0, 25)
    padding5.PaddingBottom = UDim.new(0, 25)
    padding5.Parent = content

    local Options = Instance.new("Frame")
    Options.BorderSizePixel = 0
    Options.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Options.Size = UDim2.new(0, 265, 0, 120)
    Options.Position = UDim2.new(-0.024, 0, 0.22523, 0)
    Options.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Options.Name = [[Options]]
    Options.BackgroundTransparency = 1
    Options.Parent = content

    local uilistlayout = Instance.new("UIListLayout")
    uilistlayout.Padding = UDim.new(0, 10)
    uilistlayout.VerticalAlignment = Enum.VerticalAlignment.Center
    uilistlayout.SortOrder = Enum.SortOrder.LayoutOrder
    uilistlayout.Parent = Options

    local left = Instance.new("ImageButton")
    left.Active = false
    left.BorderSizePixel = 0
    left.BackgroundTransparency = 0.85
    left.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    left.Selectable = false
    left.Size = UDim2.new(0, 256, 0, 50)
    left.BorderColor3 = Color3.fromRGB(0, 0, 0)
    left.Name = [[left]]
    left.Position = UDim2.new(0, 0, 0.52083, 0)
    left.Parent = Options

    local textlabel = Instance.new("TextLabel")
    textlabel.BorderSizePixel = 0
    textlabel.TextSize = 20
    textlabel.TextTransparency = 0.2
    textlabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    textlabel.FontFace = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
    textlabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    textlabel.BackgroundTransparency = 1
    textlabel.Size = UDim2.new(0, 135, 0, 50)
    textlabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
    textlabel.Text = [[Left]]
    textlabel.LayoutOrder = 1
    textlabel.Position = UDim2.new(0.4707, 0, 0, 0)
    textlabel.Parent = left

    local selected = Instance.new("ImageLabel")
    selected.BorderSizePixel = 0
    selected.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    selected.Image = [[rbxassetid://101453217391307]]
    selected.Size = UDim2.new(0, 20, 0, 20)
    selected.BorderColor3 = Color3.fromRGB(0, 0, 0)
    selected.BackgroundTransparency = 1
    selected.Name = [[selected]]
    selected.Position = UDim2.new(0.19531, 0, 0, 0)
    selected.Parent = left

    local uicorner = Instance.new("UICorner")
    uicorner.CornerRadius = UDim.new(1, 0)
    uicorner.Parent = selected

    local uilistlayout2 = Instance.new("UIListLayout")
    uilistlayout2.HorizontalAlignment = Enum.HorizontalAlignment.Right
    uilistlayout2.Padding = UDim.new(0, 60)
    uilistlayout2.VerticalAlignment = Enum.VerticalAlignment.Center
    uilistlayout2.SortOrder = Enum.SortOrder.LayoutOrder
    uilistlayout2.FillDirection = Enum.FillDirection.Horizontal
    uilistlayout2.Parent = left

    local uicorner2 = Instance.new("UICorner")
    uicorner2.CornerRadius = UDim.new(1, 0)
    uicorner2.Parent = left

    local right = Instance.new("ImageButton")
    right.Active = false
    right.BorderSizePixel = 0
    right.BackgroundTransparency = 0.85
    right.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    right.Selectable = false
    right.Size = UDim2.new(0, 256, 0, 50)
    right.BorderColor3 = Color3.fromRGB(0, 0, 0)
    right.Name = [[right]]
    right.Position = UDim2.new(0, 0, 0.0625, 0)
    right.Parent = Options

    local uicorner3 = Instance.new("UICorner")
    uicorner3.CornerRadius = UDim.new(1, 0)
    uicorner3.Parent = right

    local uilistlayout3 = Instance.new("UIListLayout")
    uilistlayout3.HorizontalAlignment = Enum.HorizontalAlignment.Right
    uilistlayout3.Padding = UDim.new(0, 60)
    uilistlayout3.VerticalAlignment = Enum.VerticalAlignment.Center
    uilistlayout3.SortOrder = Enum.SortOrder.LayoutOrder
    uilistlayout3.FillDirection = Enum.FillDirection.Horizontal
    uilistlayout3.Parent = right

    local textlabel2 = Instance.new("TextLabel")
    textlabel2.BorderSizePixel = 0
    textlabel2.TextSize = 20
    textlabel2.TextTransparency = 0.2
    textlabel2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    textlabel2.FontFace = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
    textlabel2.TextColor3 = Color3.fromRGB(255, 255, 255)
    textlabel2.BackgroundTransparency = 1
    textlabel2.Size = UDim2.new(0, 135, 0, 50)
    textlabel2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    textlabel2.Text = [[Right]]
    textlabel2.LayoutOrder = 1
    textlabel2.Position = UDim2.new(0.4707, 0, 0, 0)
    textlabel2.Parent = right

    local selected2 = Instance.new("ImageLabel")
    selected2.BorderSizePixel = 0
    selected2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    selected2.Image = [[rbxassetid://101453217391307]]
    selected2.Size = UDim2.new(0, 20, 0, 20)
    selected2.Visible = false
    selected2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    selected2.BackgroundTransparency = 1
    selected2.Name = [[selected]]
    selected2.Position = UDim2.new(0.19531, 0, 0, 0)
    selected2.Parent = right

    local uicorner4 = Instance.new("UICorner")
    uicorner4.CornerRadius = UDim.new(1, 0)
    uicorner4.Parent = selected2

    local LeafletControls = Instance.new("Frame")
    LeafletControls.ZIndex = 99999
    LeafletControls.BorderSizePixel = 0
    LeafletControls.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    LeafletControls.AnchorPoint = Vector2.new(1, 1)
    LeafletControls.Size = UDim2.new(1, 0, 1, 0)
    LeafletControls.Position = UDim2.new(1, 0, 1, 0)
    LeafletControls.BorderColor3 = Color3.fromRGB(0, 0, 0)
    LeafletControls.Name = [[LeafletControls]]
    LeafletControls.BackgroundTransparency = 1
    LeafletControls.Parent = frame

    local Top = Instance.new("Frame")
    Top.BorderSizePixel = 0
    Top.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Top.AnchorPoint = Vector2.new(0.5, 0)
    Top.Size = UDim2.new(1, 0, 0, 50)
    Top.Position = UDim2.new(0.5, 0, 0, 0)
    Top.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Top.Name = [[Top]]
    Top.BackgroundTransparency = 1
    Top.Parent = LeafletControls

    local padding6 = Instance.new("UIPadding")
    padding6.PaddingTop = UDim.new(0, 5)
    padding6.PaddingRight = UDim.new(0, 5)
    padding6.Name = [[padding]]
    padding6.Parent = Top

    local list4 = Instance.new("UIListLayout")
    list4.HorizontalAlignment = Enum.HorizontalAlignment.Right
    list4.Padding = UDim.new(0, -5)
    list4.SortOrder = Enum.SortOrder.LayoutOrder
    list4.Name = [[list]]
    list4.FillDirection = Enum.FillDirection.Horizontal
    list4.Parent = Top

    local Bottom = Instance.new("Frame")
    Bottom.BorderSizePixel = 0
    Bottom.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Bottom.AnchorPoint = Vector2.new(1, 1)
    Bottom.Size = UDim2.new(0, 50, 0, 50)
    Bottom.Position = UDim2.new(1, 0, 1, 0)
    Bottom.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Bottom.Name = [[Bottom]]
    Bottom.BackgroundTransparency = 1
    Bottom.Parent = LeafletControls

    local list5 = Instance.new("UIListLayout")
    list5.HorizontalFlex = Enum.UIFlexAlignment.Fill
    list5.SortOrder = Enum.SortOrder.LayoutOrder
    list5.Name = [[list]]
    list5.FillDirection = Enum.FillDirection.Horizontal
    list5.Parent = Bottom

    local Resize = Instance.new("ImageButton")
    Resize.BorderSizePixel = 0
    Resize.AutoButtonColor = false
    Resize.Visible = false
    Resize.BackgroundTransparency = 1
    Resize.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Resize.Size = UDim2.new(1, 0, 1, 0)
    Resize.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Resize.Name = [[Resize]]
    CollectionService:AddTag(Resize, [[Exe6ResizeHandle]])
    Resize.Parent = Bottom

    local icon = Instance.new("ImageLabel")
    icon.BorderSizePixel = 0
    icon.SliceCenter = Rect.new(51, 52, 51, 52)
    icon.SliceScale = 0.5
    icon.ScaleType = Enum.ScaleType.Slice
    icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    icon.ImageColor3 = Color3.fromRGB(60, 60, 60)
    icon.AnchorPoint = Vector2.new(1, 1)
    icon.Image = [[rbxassetid://86527207319523]]
    icon.Size = UDim2.new(0, 18, 0, 18)
    icon.BorderColor3 = Color3.fromRGB(0, 0, 0)
    icon.BackgroundTransparency = 1
    icon.Name = [[icon]]
    icon.Position = UDim2.new(1, 0, 1, 0)
    icon.Parent = Resize

    local scale2 = Instance.new("UIScale")
    scale2.Name = [[scale]]
    scale2.Parent = icon

    local padding7 = Instance.new("UIPadding")
    padding7.PaddingRight = UDim.new(0, 8)
    padding7.Name = [[padding]]
    padding7.PaddingBottom = UDim.new(0, 8)
    padding7.Parent = Resize

    local Protection = Instance.new("ImageButton")
    Protection.BorderSizePixel = 0
    Protection.AutoButtonColor = false
    Protection.Visible = false
    Protection.BackgroundTransparency = 1
    Protection.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Protection.AnchorPoint = Vector2.new(0.5, 0.5)
    Protection.Size = UDim2.new(1, 0, 1, 0)
    Protection.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Protection.Name = [[Protection]]
    Protection.Position = UDim2.new(0.5, 0, 0.5, 0)
    Protection.Parent = LeafletControls

    local Space = Instance.new("Frame")
    Space.BorderSizePixel = 0
    Space.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Space.Selectable = true
    Space.AnchorPoint = Vector2.new(0.5, 0.5)
    Space.Size = UDim2.new(1, 0, 1, 0)
    Space.Position = UDim2.new(0.5, 0, 0.5, 0)
    Space.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Space.Name = [[Space]]
    Space.BackgroundTransparency = 1
    Space.Parent = LeafletControls

    local Shield = Instance.new("ImageButton")
    Shield.BorderSizePixel = 0
    Shield.AutoButtonColor = false
    Shield.Visible = false
    Shield.BackgroundTransparency = 1
    Shield.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Shield.AnchorPoint = Vector2.new(0.5, 0.5)
    Shield.Size = UDim2.new(1, 0, 1, 0)
    Shield.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Shield.Name = [[Shield]]
    Shield.Position = UDim2.new(0.5, 0, 0.5, 0)
    Shield.Parent = LeafletControls

    confirmation.Visible = false
    
    return {
        MainSettings = UI.settings,
        AdvancedSettings = settings,
        SelectionTab = UI.selection,
        AdvSettingsBtn = UI.item,
        BackBtn = back,
        Confirmation = confirmation,
        TabLayoutBtn = Selection2,
        LeftBtn = left,
        RightBtn = right,
        LeftSelected = selected,
        RightSelected = selected2,
        AcceptBtn = accept,
        CancelBtn = cancel
    }

end

local SettignsTab = {}
function SettignsTab:Create(WindowTable)
    WindowTable.SettingsElements = CreateSettings(WindowTable)
end
return SettignsTab
