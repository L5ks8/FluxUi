local Mainframe = {}

function Mainframe:Create()
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Name = "FluxUI"
    ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    ScreenGui.Parent = game:GetService("CoreGui")

    local main = Instance.new("CanvasGroup")
    main.Name = "main"
    main.BorderSizePixel = 0
    main.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
    main.AnchorPoint = Vector2.new(0.5, 0.5)
    main.Size = UDim2.new(0, 700, 0, 465)
    main.Position = UDim2.new(0.5, 0, 0.5, 0)
    main.BorderColor3 = Color3.fromRGB(0, 0, 0)
    main.Parent = ScreenGui

    local mainCorner = Instance.new("UICorner")
    mainCorner.TopLeftRadius = UDim.new(0, 18)
    mainCorner.TopRightRadius = UDim.new(0, 18)
    mainCorner.BottomLeftRadius = UDim.new(0, 18)
    mainCorner.BottomRightRadius = UDim.new(0, 18)
    mainCorner.Parent = main

    local panel = Instance.new("Frame")
    panel.Name = "panel"
    panel.BorderSizePixel = 0
    panel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    panel.AnchorPoint = Vector2.new(0.5, 0.5)
    panel.Size = UDim2.new(1, 0, 1, 0)
    panel.Position = UDim2.new(0.5, 0, 0.5, 0)
    panel.BorderColor3 = Color3.fromRGB(0, 0, 0)
    panel.BackgroundTransparency = 1
    panel.Parent = main

    if _G.FluxUiDebugbar then
        _G.FluxUiDebugbar:Create(panel)
    end

    if _G.FluxUiTopbar then
        _G.FluxUiTopbar:Create(panel)
    end

    -- Automatically generated UI from G2L
    local content = Instance.new("Frame")
    content.BorderSizePixel = 0
    content.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    content.AnchorPoint = Vector2.new(0.5, 1)
    content.Size = UDim2.new(1, 0, 1, -35)
    content.Position = UDim2.new(0.5, 0, 1, 0)
    content.BorderColor3 = Color3.fromRGB(0, 0, 0)
    content.Name = "content"
    content.BackgroundTransparency = 1
    content.Parent = panel

    local tabs = Instance.new("Frame")
    tabs.BorderSizePixel = 0
    tabs.BackgroundColor3 = Color3.fromRGB(21, 21, 21)
    tabs.ClipsDescendants = true
    tabs.Size = UDim2.new(-0.03095, 200, 1.0814, -65)
    tabs.Position = UDim2.new(0, 15, 0, 0)
    tabs.BorderColor3 = Color3.fromRGB(0, 0, 0)
    tabs.Name = "tabs"
    tabs.LayoutOrder = 10
    tabs.BackgroundTransparency = 1
    tabs.Parent = content

    local corner7 = Instance.new("UICorner")
    corner7.Name = "corner"
    corner7.CornerRadius = UDim.new(0, 12)
    corner7.Parent = tabs

    local mainFrame3 = Instance.new("Frame")
    mainFrame3.BorderSizePixel = 0
    mainFrame3.BackgroundColor3 = Color3.fromRGB(9, 9, 9)
    mainFrame3.AnchorPoint = Vector2.new(0.5, 0.5)
    mainFrame3.AutomaticSize = Enum.AutomaticSize.Y
    mainFrame3.Size = UDim2.new(1.12337, -22, 0.81953, 0)
    mainFrame3.Position = UDim2.new(1.84019, -14, 0.51218, -14)
    mainFrame3.BorderColor3 = Color3.fromRGB(0, 0, 0)
    mainFrame3.Name = "main"
    mainFrame3.LayoutOrder = 1
    mainFrame3.BackgroundTransparency = 0.7
    mainFrame3.Parent = tabs

    local navigation = Instance.new("ScrollingFrame")
    navigation.Active = true
    navigation.ScrollingDirection = Enum.ScrollingDirection.Y
    navigation.BorderSizePixel = 0
    navigation.CanvasSize = UDim2.new(0, 0, 0, 0)
    navigation.Name = "navigation"
    navigation.ScrollBarImageTransparency = 1
    navigation.BackgroundColor3 = Color3.fromRGB(9, 9, 9)
    navigation.AnchorPoint = Vector2.new(0.5, 1)
    navigation.AutomaticCanvasSize = Enum.AutomaticSize.Y
    navigation.Size = UDim2.new(1, 0, 0.98075, 0)
    navigation.Position = UDim2.new(0.5, 0, 1.01283, -10)
    navigation.BorderColor3 = Color3.fromRGB(0, 0, 0)
    navigation.ScrollBarThickness = 0
    navigation.LayoutOrder = 3
    navigation.BackgroundTransparency = 1
    navigation.Parent = mainFrame3

    local mainFrame4 = Instance.new("Frame")
    mainFrame4.BorderSizePixel = 0
    mainFrame4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    mainFrame4.AnchorPoint = Vector2.new(0.5, 0)
    mainFrame4.AutomaticSize = Enum.AutomaticSize.Y
    mainFrame4.Size = UDim2.new(1, 0, 0, 0)
    mainFrame4.Position = UDim2.new(0.5, 0, 0, 0)
    mainFrame4.BorderColor3 = Color3.fromRGB(0, 0, 0)
    mainFrame4.Name = "main"
    mainFrame4.BackgroundTransparency = 1
    mainFrame4.Parent = navigation

    local list8 = Instance.new("UIListLayout")
    list8.HorizontalAlignment = Enum.HorizontalAlignment.Center
    list8.Padding = UDim.new(0, 5)
    list8.SortOrder = Enum.SortOrder.LayoutOrder
    list8.Name = "list"
    list8.Parent = mainFrame4

    local padding4 = Instance.new("UIPadding")
    padding4.PaddingTop = UDim.new(0, 2)
    padding4.PaddingRight = UDim.new(0, 8)
    padding4.Name = "padding"
    padding4.PaddingLeft = UDim.new(0, 8)
    padding4.Parent = mainFrame4

    local ExampleTab = Instance.new("ImageButton")
    ExampleTab.SliceScale = 0.01
    ExampleTab.BorderSizePixel = 0
    ExampleTab.SliceCenter = Rect.new(512, 512, 512, 512)
    ExampleTab.ScaleType = Enum.ScaleType.Slice
    ExampleTab.AutoButtonColor = false
    ExampleTab.ImageTransparency = 1
    ExampleTab.BackgroundTransparency = 1
    ExampleTab.BackgroundColor3 = Color3.fromRGB(41, 41, 41)
    ExampleTab.ImageColor3 = Color3.fromRGB(0, 0, 0)
    ExampleTab.Image = "rbxassetid://125088425775676"
    ExampleTab.Size = UDim2.new(1, 0, 0, 31)
    ExampleTab.LayoutOrder = 7
    ExampleTab.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ExampleTab.Name = "ExampleTab"
    ExampleTab.Parent = mainFrame4

    local list9 = Instance.new("UIListLayout")
    list9.Padding = UDim.new(0, 10)
    list9.VerticalAlignment = Enum.VerticalAlignment.Center
    list9.SortOrder = Enum.SortOrder.LayoutOrder
    list9.Name = "list"
    list9.FillDirection = Enum.FillDirection.Horizontal
    list9.Parent = ExampleTab

    local padding5 = Instance.new("UIPadding")
    padding5.PaddingRight = UDim.new(0, 12)
    padding5.Name = "padding"
    padding5.PaddingLeft = UDim.new(0, 12)
    padding5.Parent = ExampleTab

    local label3 = Instance.new("TextLabel")
    label3.BorderSizePixel = 0
    label3.AutoLocalize = false
    label3.TextSize = 14
    label3.TextXAlignment = Enum.TextXAlignment.Left
    label3.TextTransparency = 0.5
    label3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    label3.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    label3.TextColor3 = Color3.fromRGB(255, 255, 255)
    label3.BackgroundTransparency = 1
    label3.Size = UDim2.new(0, 0, 0, 22)
    label3.BorderColor3 = Color3.fromRGB(0, 0, 0)
    label3.Text = "ExampleTab"
    label3.LayoutOrder = 2
    label3.Name = "label"
    label3.Position = UDim2.new(0.16667, 0, 0, 0)
    label3.Parent = ExampleTab

    local Flex2 = Instance.new("UIFlexItem")
    Flex2.Name = "Flex"
    Flex2.FlexMode = Enum.UIFlexMode.Fill
    Flex2.Parent = label3

    local corner8 = Instance.new("UICorner")
    corner8.Name = "corner"
    corner8.CornerRadius = UDim.new(0, 12)
    corner8.Parent = ExampleTab

    local holder = Instance.new("ImageLabel")
    holder.BorderSizePixel = 0
    holder.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    holder.ImageTransparency = 1
    holder.Size = UDim2.new(0, 20, 0, 20)
    holder.BorderColor3 = Color3.fromRGB(0, 0, 0)
    holder.BackgroundTransparency = 0.8
    holder.LayoutOrder = 1
    holder.Name = "holder"
    holder.Parent = ExampleTab

    local icon6 = Instance.new("ImageLabel")
    icon6.BorderSizePixel = 0
    icon6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    icon6.ImageTransparency = 0.5
    icon6.AnchorPoint = Vector2.new(0.5, 0.5)
    icon6.Image = "rbxassetid://94685968948870"
    icon6.Size = UDim2.new(0, 17, 0, 17)
    icon6.BorderColor3 = Color3.fromRGB(0, 0, 0)
    icon6.BackgroundTransparency = 1
    icon6.LayoutOrder = 1
    icon6.Name = "icon"
    icon6.Position = UDim2.new(0.5, 0, 0.5, 0)
    icon6.Parent = holder

    local Corner = Instance.new("UICorner")
    Corner.Name = "Corner"
    Corner.CornerRadius = UDim.new(0, 6)
    Corner.Parent = holder

    local icons = Instance.new("Frame")
    icons.BorderSizePixel = 0
    icons.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    icons.Size = UDim2.new(0, 0, 0, 22)
    icons.BorderColor3 = Color3.fromRGB(0, 0, 0)
    icons.Name = "icons"
    icons.LayoutOrder = 9
    icons.Parent = ExampleTab

    local list10 = Instance.new("UIListLayout")
    list10.HorizontalAlignment = Enum.HorizontalAlignment.Right
    list10.Padding = UDim.new(0, 10)
    list10.VerticalAlignment = Enum.VerticalAlignment.Center
    list10.SortOrder = Enum.SortOrder.LayoutOrder
    list10.Name = "list"
    list10.FillDirection = Enum.FillDirection.Horizontal
    list10.Parent = icons

    local warning = Instance.new("ImageLabel")
    warning.BorderSizePixel = 0
    warning.ScaleType = Enum.ScaleType.Fit
    warning.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    warning.ImageTransparency = 0.5
    warning.ImageColor3 = Color3.fromRGB(255, 192, 0)
    warning.AnchorPoint = Vector2.new(0.5, 0.5)
    warning.Image = "rbxassetid://85824584748112"
    warning.Size = UDim2.new(0, 16, 0, 16)
    warning.Visible = false
    warning.BorderColor3 = Color3.fromRGB(0, 0, 0)
    warning.BackgroundTransparency = 1
    warning.Name = "warning"
    warning.Position = UDim2.new(0.5, 0, 0.5, 0)
    warning.Parent = icons

    local loading = Instance.new("ImageLabel")
    loading.BorderSizePixel = 0
    loading.ScaleType = Enum.ScaleType.Fit
    loading.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    loading.ImageTransparency = 0.5
    loading.AnchorPoint = Vector2.new(0.5, 0.5)
    loading.Image = "rbxassetid://119058990992889"
    loading.Size = UDim2.new(0, 16, 0, 16)
    loading.Visible = false
    loading.BorderColor3 = Color3.fromRGB(0, 0, 0)
    loading.BackgroundTransparency = 1
    loading.Name = "loading"
    loading.Position = UDim2.new(0.5, 0, 0.5, 0)
    loading.Parent = icons

    local home = Instance.new("ImageButton")
    home.SliceScale = 0.01
    home.BorderSizePixel = 0
    home.SliceCenter = Rect.new(512, 512, 512, 512)
    home.ScaleType = Enum.ScaleType.Slice
    home.AutoButtonColor = false
    home.ImageTransparency = 1
    home.BackgroundColor3 = Color3.fromRGB(41, 41, 41)
    home.ImageColor3 = Color3.fromRGB(0, 0, 0)
    home.Image = "rbxassetid://125088425775676"
    home.Size = UDim2.new(1, 0, 0, 31)
    home.LayoutOrder = 1
    home.BorderColor3 = Color3.fromRGB(0, 0, 0)
    home.Name = "home"
    home.Parent = mainFrame4

    local list11 = Instance.new("UIListLayout")
    list11.Padding = UDim.new(0, 10)
    list11.VerticalAlignment = Enum.VerticalAlignment.Center
    list11.SortOrder = Enum.SortOrder.LayoutOrder
    list11.Name = "list"
    list11.FillDirection = Enum.FillDirection.Horizontal
    list11.Parent = home

    local padding6 = Instance.new("UIPadding")
    padding6.PaddingRight = UDim.new(0, 12)
    padding6.Name = "padding"
    padding6.PaddingLeft = UDim.new(0, 12)
    padding6.Parent = home

    local label4 = Instance.new("TextLabel")
    label4.BorderSizePixel = 0
    label4.AutoLocalize = false
    label4.TextSize = 14
    label4.TextXAlignment = Enum.TextXAlignment.Left
    label4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    label4.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    label4.TextColor3 = Color3.fromRGB(255, 255, 255)
    label4.BackgroundTransparency = 1
    label4.Size = UDim2.new(0, 0, 0, 22)
    label4.BorderColor3 = Color3.fromRGB(0, 0, 0)
    label4.Text = "Home"
    label4.LayoutOrder = 2
    label4.Name = "label"
    label4.Position = UDim2.new(0.16667, 0, 0, 0)
    label4.Parent = home

    local Flex3 = Instance.new("UIFlexItem")
    Flex3.Name = "Flex"
    Flex3.FlexMode = Enum.UIFlexMode.Fill
    Flex3.Parent = label4

    local corner9 = Instance.new("UICorner")
    corner9.Name = "corner"
    corner9.CornerRadius = UDim.new(0, 12)
    corner9.Parent = home

    local holder2 = Instance.new("ImageLabel")
    holder2.BorderSizePixel = 0
    holder2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    holder2.ImageTransparency = 1
    holder2.AnchorPoint = Vector2.new(0.5, 0.5)
    holder2.Size = UDim2.new(0, 20, 0, 20)
    holder2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    holder2.BackgroundTransparency = 0.8
    holder2.LayoutOrder = 1
    holder2.Name = "holder"
    holder2.Parent = home

    local icon7 = Instance.new("ImageLabel")
    icon7.BorderSizePixel = 0
    icon7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    icon7.ImageTransparency = 0.5
    icon7.AnchorPoint = Vector2.new(0.5, 0.5)
    icon7.Image = "rbxassetid://94685968948870"
    icon7.Size = UDim2.new(0, 16, 0, 16)
    icon7.BorderColor3 = Color3.fromRGB(0, 0, 0)
    icon7.BackgroundTransparency = 1
    icon7.LayoutOrder = 1
    icon7.Name = "icon"
    icon7.Position = UDim2.new(0.5, 0, 0.5, 0)
    icon7.Parent = holder2

    local Corner2 = Instance.new("UICorner")
    Corner2.Name = "Corner"
    Corner2.CornerRadius = UDim.new(0, 6)
    Corner2.Parent = holder2

    local icons2 = Instance.new("Frame")
    icons2.BorderSizePixel = 0
    icons2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    icons2.Size = UDim2.new(0, 0, 0, 22)
    icons2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    icons2.Name = "icons"
    icons2.LayoutOrder = 9
    icons2.Parent = home

    local list12 = Instance.new("UIListLayout")
    list12.HorizontalAlignment = Enum.HorizontalAlignment.Right
    list12.Padding = UDim.new(0, 10)
    list12.VerticalAlignment = Enum.VerticalAlignment.Center
    list12.SortOrder = Enum.SortOrder.LayoutOrder
    list12.Name = "list"
    list12.FillDirection = Enum.FillDirection.Horizontal
    list12.Parent = icons2

    local warning2 = Instance.new("ImageLabel")
    warning2.BorderSizePixel = 0
    warning2.ScaleType = Enum.ScaleType.Fit
    warning2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    warning2.ImageTransparency = 0.5
    warning2.ImageColor3 = Color3.fromRGB(255, 192, 0)
    warning2.AnchorPoint = Vector2.new(0.5, 0.5)
    warning2.Image = "rbxassetid://85824584748112"
    warning2.Size = UDim2.new(0, 16, 0, 16)
    warning2.Visible = false
    warning2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    warning2.BackgroundTransparency = 1
    warning2.Name = "warning"
    warning2.Position = UDim2.new(0.5, 0, 0.5, 0)
    warning2.Parent = icons2

    local loading2 = Instance.new("ImageLabel")
    loading2.BorderSizePixel = 0
    loading2.ScaleType = Enum.ScaleType.Fit
    loading2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    loading2.ImageTransparency = 0.5
    loading2.AnchorPoint = Vector2.new(0.5, 0.5)
    loading2.Image = "rbxassetid://119058990992889"
    loading2.Size = UDim2.new(0, 16, 0, 16)
    loading2.Visible = false
    loading2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    loading2.BackgroundTransparency = 1
    loading2.Name = "loading"
    loading2.Position = UDim2.new(0.5, 0, 0.5, 0)
    loading2.Parent = icons2

    local UIListLayout = Instance.new("UIListLayout")
    UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout.Parent = navigation

    local flex4 = Instance.new("UIFlexItem")
    flex4.Name = "flex"
    flex4.FlexMode = Enum.UIFlexMode.Fill
    flex4.Parent = navigation

    local list13 = Instance.new("UIListLayout")
    list13.Padding = UDim.new(0, 10)
    list13.SortOrder = Enum.SortOrder.LayoutOrder
    list13.Name = "list"
    list13.Parent = mainFrame3

    local Corner3 = Instance.new("UICorner")
    Corner3.Name = "Corner"
    Corner3.CornerRadius = UDim.new(0, 15)
    Corner3.Parent = mainFrame3

    local flex5 = Instance.new("UIFlexItem")
    flex5.Name = "flex"
    flex5.FlexMode = Enum.UIFlexMode.Fill
    flex5.Parent = mainFrame3

    local padding7 = Instance.new("UIPadding")
    padding7.PaddingTop = UDim.new(0, 8)
    padding7.Name = "padding"
    padding7.PaddingBottom = UDim.new(0, 8)
    padding7.Parent = mainFrame3

    local Padding2 = Instance.new("UIPadding")
    Padding2.PaddingTop = UDim.new(0, 8)
    Padding2.PaddingRight = UDim.new(0, 5)
    Padding2.Name = "Padding"
    Padding2.PaddingBottom = UDim.new(0, 9)
    Padding2.Parent = tabs

    local anchoredbutton = Instance.new("Frame")
    anchoredbutton.BorderSizePixel = 0
    anchoredbutton.BackgroundColor3 = Color3.fromRGB(9, 9, 9)
    anchoredbutton.AutomaticSize = Enum.AutomaticSize.Y
    anchoredbutton.Size = UDim2.new(1, 0, 0.14134, 0)
    anchoredbutton.BorderColor3 = Color3.fromRGB(0, 0, 0)
    anchoredbutton.Name = "anchored_button"
    anchoredbutton.LayoutOrder = 1
    anchoredbutton.BackgroundTransparency = 0.7
    anchoredbutton.Parent = tabs

    local Corner4 = Instance.new("UICorner")
    Corner4.Name = "Corner"
    Corner4.CornerRadius = UDim.new(0, 12)
    Corner4.Parent = anchoredbutton

    local settings = Instance.new("ImageButton")
    settings.SliceScale = 0.01
    settings.BorderSizePixel = 0
    settings.SliceCenter = Rect.new(512, 512, 512, 512)
    settings.ScaleType = Enum.ScaleType.Slice
    settings.AutoButtonColor = false
    settings.ImageTransparency = 1
    settings.BackgroundTransparency = 1
    settings.BackgroundColor3 = Color3.fromRGB(41, 41, 41)
    settings.ImageColor3 = Color3.fromRGB(0, 0, 0)
    settings.Image = "rbxassetid://125088425775676"
    settings.Size = UDim2.new(1.18703, -22, -0.21764, 48)
    settings.LayoutOrder = 1
    settings.BorderColor3 = Color3.fromRGB(0, 0, 0)
    settings.Name = "settings"
    settings.Position = UDim2.new(-0.02405, 0, 0, 0)
    settings.Parent = anchoredbutton

    local list14 = Instance.new("UIListLayout")
    list14.Padding = UDim.new(0, 10)
    list14.VerticalAlignment = Enum.VerticalAlignment.Center
    list14.SortOrder = Enum.SortOrder.LayoutOrder
    list14.Name = "list"
    list14.FillDirection = Enum.FillDirection.Horizontal
    list14.Parent = settings

    local padding8 = Instance.new("UIPadding")
    padding8.PaddingRight = UDim.new(0, 12)
    padding8.Name = "padding"
    padding8.PaddingLeft = UDim.new(0, 12)
    padding8.Parent = settings

    local label5 = Instance.new("TextLabel")
    label5.BorderSizePixel = 0
    label5.AutoLocalize = false
    label5.TextSize = 14
    label5.TextXAlignment = Enum.TextXAlignment.Left
    label5.TextTransparency = 0.5
    label5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    label5.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    label5.TextColor3 = Color3.fromRGB(255, 255, 255)
    label5.BackgroundTransparency = 1
    label5.Size = UDim2.new(0, 0, 0, 22)
    label5.BorderColor3 = Color3.fromRGB(0, 0, 0)
    label5.Text = "Settings"
    label5.LayoutOrder = 2
    label5.Name = "label"
    label5.Position = UDim2.new(0.20642, 0, 0.16667, 0)
    label5.Parent = settings

    local Flex4 = Instance.new("UIFlexItem")
    Flex4.Name = "Flex"
    Flex4.FlexMode = Enum.UIFlexMode.Fill
    Flex4.Parent = label5

    local corner10 = Instance.new("UICorner")
    corner10.Name = "corner"
    corner10.CornerRadius = UDim.new(0, 12)
    corner10.Parent = settings

    local holder3 = Instance.new("ImageLabel")
    holder3.BorderSizePixel = 0
    holder3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    holder3.ImageTransparency = 1
    holder3.Size = UDim2.new(0, 20, 0, 20)
    holder3.BorderColor3 = Color3.fromRGB(0, 0, 0)
    holder3.BackgroundTransparency = 0.8
    holder3.LayoutOrder = 1
    holder3.Name = "holder"
    holder3.Parent = settings

    local icon8 = Instance.new("ImageLabel")
    icon8.BorderSizePixel = 0
    icon8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    icon8.ImageTransparency = 0.5
    icon8.AnchorPoint = Vector2.new(0.5, 0.5)
    icon8.Image = "rbxassetid://95898765113869"
    icon8.Size = UDim2.new(0, 15, 0, 15)
    icon8.BorderColor3 = Color3.fromRGB(0, 0, 0)
    icon8.BackgroundTransparency = 1
    icon8.LayoutOrder = 1
    icon8.Name = "icon"
    icon8.Position = UDim2.new(0.5, 0, 0.5, 0)
    icon8.Parent = holder3

    local Corner5 = Instance.new("UICorner")
    Corner5.Name = "Corner"
    Corner5.CornerRadius = UDim.new(0, 6)
    Corner5.Parent = holder3

    local icons3 = Instance.new("Frame")
    icons3.BorderSizePixel = 0
    icons3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    icons3.Size = UDim2.new(0, 0, 0, 22)
    icons3.BorderColor3 = Color3.fromRGB(0, 0, 0)
    icons3.Name = "icons"
    icons3.LayoutOrder = 9
    icons3.Parent = settings

    local list15 = Instance.new("UIListLayout")
    list15.HorizontalAlignment = Enum.HorizontalAlignment.Right
    list15.Padding = UDim.new(0, 10)
    list15.VerticalAlignment = Enum.VerticalAlignment.Center
    list15.SortOrder = Enum.SortOrder.LayoutOrder
    list15.Name = "list"
    list15.FillDirection = Enum.FillDirection.Horizontal
    list15.Parent = icons3

    local warning3 = Instance.new("ImageLabel")
    warning3.BorderSizePixel = 0
    warning3.ScaleType = Enum.ScaleType.Fit
    warning3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    warning3.ImageTransparency = 0.5
    warning3.ImageColor3 = Color3.fromRGB(255, 192, 0)
    warning3.AnchorPoint = Vector2.new(0.5, 0.5)
    warning3.Image = "rbxassetid://85824584748112"
    warning3.Size = UDim2.new(0, 16, 0, 16)
    warning3.Visible = false
    warning3.BorderColor3 = Color3.fromRGB(0, 0, 0)
    warning3.BackgroundTransparency = 1
    warning3.Name = "warning"
    warning3.Position = UDim2.new(0.5, 0, 0.5, 0)
    warning3.Parent = icons3

    local loading3 = Instance.new("ImageLabel")
    loading3.BorderSizePixel = 0
    loading3.ScaleType = Enum.ScaleType.Fit
    loading3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    loading3.ImageTransparency = 0.5
    loading3.AnchorPoint = Vector2.new(0.5, 0.5)
    loading3.Image = "rbxassetid://119058990992889"
    loading3.Size = UDim2.new(0, 16, 0, 16)
    loading3.Visible = false
    loading3.BorderColor3 = Color3.fromRGB(0, 0, 0)
    loading3.BackgroundTransparency = 1
    loading3.Name = "loading"
    loading3.Position = UDim2.new(0.5, 0, 0.5, 0)
    loading3.Parent = icons3

    local flex6 = Instance.new("UIFlexItem")
    flex6.Name = "flex"
    flex6.FlexMode = Enum.UIFlexMode.Fill
    flex6.Parent = anchoredbutton

    local padding9 = Instance.new("UIPadding")
    padding9.PaddingRight = UDim.new(0, 6)
    padding9.Name = "padding"
    padding9.PaddingLeft = UDim.new(0, 6)
    padding9.PaddingBottom = UDim.new(0, 7)
    padding9.Parent = anchoredbutton

    local UIListLayout2 = Instance.new("UIListLayout")
    UIListLayout2.Padding = UDim.new(0, 7)
    UIListLayout2.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout2.Parent = tabs

    local user = Instance.new("ImageButton")
    user.BorderSizePixel = 0
    user.AutoButtonColor = false
    user.ImageTransparency = 1
    user.BackgroundTransparency = 0.7
    user.BackgroundColor3 = Color3.fromRGB(9, 9, 9)
    user.AnchorPoint = Vector2.new(0.5, 0.5)
    user.Size = UDim2.new(1.12337, -22, 0, 48)
    user.BorderColor3 = Color3.fromRGB(0, 0, 0)
    user.Name = "user"
    user.Position = UDim2.new(0.5, 0, 0.07229, 0)
    user.Parent = tabs

    local Corner6 = Instance.new("UICorner")
    Corner6.Name = "Corner"
    Corner6.CornerRadius = UDim.new(0, 15)
    Corner6.Parent = user

    local list16 = Instance.new("UIListLayout")
    list16.Wraps = true
    list16.Padding = UDim.new(0, 10)
    list16.VerticalAlignment = Enum.VerticalAlignment.Center
    list16.SortOrder = Enum.SortOrder.LayoutOrder
    list16.Name = "list"
    list16.Parent = user

    local padding10 = Instance.new("UIPadding")
    padding10.PaddingRight = UDim.new(0, 30)
    padding10.Name = "padding"
    padding10.PaddingLeft = UDim.new(0, 18)
    padding10.Parent = user

    local info = Instance.new("Frame")
    info.BorderSizePixel = 0
    info.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    info.Size = UDim2.new(0.47325, 0, 1, 0)
    info.Position = UDim2.new(0.22222, 0, 0, 0)
    info.BorderColor3 = Color3.fromRGB(0, 0, 0)
    info.Name = "info"
    info.LayoutOrder = 5
    info.BackgroundTransparency = 1
    info.Parent = user

    local Flex5 = Instance.new("UIFlexItem")
    Flex5.Name = "Flex"
    Flex5.FlexMode = Enum.UIFlexMode.Fill
    Flex5.Parent = info

    local username = Instance.new("TextLabel")
    username.TextTruncate = Enum.TextTruncate.SplitWord
    username.BorderSizePixel = 0
    username.AutoLocalize = false
    username.TextSize = 10
    username.TextXAlignment = Enum.TextXAlignment.Left
    username.TextTransparency = 0.5
    username.TextYAlignment = Enum.TextYAlignment.Top
    username.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    username.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
    username.TextColor3 = Color3.fromRGB(255, 255, 255)
    username.BackgroundTransparency = 1
    username.AnchorPoint = Vector2.new(0.5, 0)
    username.Size = UDim2.new(1, 0, 0, 0)
    username.BorderColor3 = Color3.fromRGB(0, 0, 0)
    username.Text = "@username"
    username.LayoutOrder = 2
    username.Name = "username"
    username.Position = UDim2.new(0.5, 0, 0, 0)
    username.Parent = info

    local Flex6 = Instance.new("UIFlexItem")
    Flex6.Name = "Flex"
    Flex6.FlexMode = Enum.UIFlexMode.Fill
    Flex6.Parent = username

    local list17 = Instance.new("UIListLayout")
    list17.Wraps = true
    list17.VerticalAlignment = Enum.VerticalAlignment.Center
    list17.SortOrder = Enum.SortOrder.LayoutOrder
    list17.Name = "list"
    list17.Parent = info

    local display = Instance.new("TextLabel")
    display.TextTruncate = Enum.TextTruncate.SplitWord
    display.BorderSizePixel = 0
    display.AutoLocalize = false
    display.TextSize = 13
    display.TextXAlignment = Enum.TextXAlignment.Left
    display.TextYAlignment = Enum.TextYAlignment.Bottom
    display.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    display.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
    display.TextColor3 = Color3.fromRGB(255, 255, 255)
    display.BackgroundTransparency = 1
    display.AnchorPoint = Vector2.new(0.5, 0)
    display.Size = UDim2.new(1, 0, 0, 0)
    display.BorderColor3 = Color3.fromRGB(0, 0, 0)
    display.Text = "Display"
    display.LayoutOrder = 1
    display.Name = "display"
    display.Position = UDim2.new(0.5, 0, -0.125, 0)
    display.Parent = info

    local Flex7 = Instance.new("UIFlexItem")
    Flex7.Name = "Flex"
    Flex7.FlexMode = Enum.UIFlexMode.Fill
    Flex7.Parent = display

    local profile = Instance.new("ImageLabel")
    profile.BorderSizePixel = 0
    profile.ScaleType = Enum.ScaleType.Crop
    profile.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
    profile.ImageTransparency = 1
    profile.AnchorPoint = Vector2.new(0, 0.5)
    profile.Size = UDim2.new(0, 26, 1, 0)
    profile.BorderColor3 = Color3.fromRGB(0, 0, 0)
    profile.BackgroundTransparency = 1
    profile.LayoutOrder = 1
    profile.Name = "profile"
    profile.Position = UDim2.new(0, 0, 0.5, 0)
    profile.Parent = user

    local corner11 = Instance.new("UICorner")
    corner11.Name = "corner"
    corner11.CornerRadius = UDim.new(1, 0)
    corner11.Parent = profile

    local thumbnail = Instance.new("ImageLabel")
    thumbnail.BorderSizePixel = 0
    thumbnail.ScaleType = Enum.ScaleType.Crop
    thumbnail.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
    thumbnail.AnchorPoint = Vector2.new(0, 0.5)
    thumbnail.Image = "https://www.roblox.com/headshot-thumbnail/image?userId=3765399271&width=420&height=420&format=png"
    thumbnail.Size = UDim2.new(0, 26, 0, 26)
    thumbnail.BorderColor3 = Color3.fromRGB(0, 0, 0)
    thumbnail.LayoutOrder = 1
    thumbnail.Name = "thumbnail"
    thumbnail.Position = UDim2.new(0, 0, 0.5, 0)
    thumbnail.Parent = profile

    local corner12 = Instance.new("UICorner")
    corner12.Name = "corner"
    corner12.CornerRadius = UDim.new(1, 0)
    corner12.Parent = thumbnail

    local screen = Instance.new("CanvasGroup")
    screen.BorderSizePixel = 0
    screen.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    screen.AnchorPoint = Vector2.new(0.5, 0.5)
    screen.Size = UDim2.new(0.72381, 0, 0.93023, 0)
    screen.Position = UDim2.new(0.63809, 0, 0.46512, 0)
    screen.BorderColor3 = Color3.fromRGB(0, 0, 0)
    screen.Name = "screen"
    screen.Parent = content

    local corner13 = Instance.new("UICorner")
    corner13.Name = "corner"
    corner13.CornerRadius = UDim.new(0, 18)
    corner13.Parent = screen

    local padding11 = Instance.new("UIPadding")
    padding11.PaddingTop = UDim.new(0, 5)
    padding11.Name = "padding"
    padding11.Parent = screen

    local page = Instance.new("UIPageLayout")
    page.HorizontalAlignment = Enum.HorizontalAlignment.Center
    page.GamepadInputEnabled = false
    page.TouchInputEnabled = false
    page.Animated = false
    page.VerticalAlignment = Enum.VerticalAlignment.Center
    page.SortOrder = Enum.SortOrder.LayoutOrder
    page.Name = "page"
    page.ScrollWheelInputEnabled = false
    page.Parent = screen

    local controls = Instance.new("Frame")
    controls.ZIndex = 999
    controls.BorderSizePixel = 0
    controls.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    controls.AnchorPoint = Vector2.new(0.5, 0.5)
    controls.Size = UDim2.new(1, 0, 1, 0)
    controls.Position = UDim2.new(0.5, 0, 0.5, 0)
    controls.Name = "controls"
    controls.BackgroundTransparency = 1
    controls.Parent = main

    local drag = Instance.new("ImageButton")
    drag.BorderSizePixel = 0
    drag.BackgroundTransparency = 1
    drag.ImageTransparency = 1
    drag.AnchorPoint = Vector2.new(0.5, 0)
    drag.Size = UDim2.new(0, 70, 0, 35)
    drag.Name = "drag"
    drag.Position = UDim2.new(0.5, 0, 0, 0)
    drag.Parent = controls

    local drag_bar = Instance.new("Frame")
    drag_bar.BorderSizePixel = 0
    drag_bar.BackgroundColor3 = Color3.fromRGB(91, 91, 91)
    drag_bar.AnchorPoint = Vector2.new(0.5, 0.5)
    drag_bar.Size = UDim2.new(1, 0, 0, 5)
    drag_bar.Position = UDim2.new(0.5, 0, 0.5, 0)
    drag_bar.Name = "bar"
    drag_bar.BackgroundTransparency = 0.5
    drag_bar.Parent = drag

    local drag_corner = Instance.new("UICorner")
    drag_corner.CornerRadius = UDim.new(1, 0)
    drag_corner.Parent = drag_bar

    local drag_stroke = Instance.new("UIStroke")
    drag_stroke.Enabled = false
    drag_stroke.Color = Color3.fromRGB(255, 255, 255)
    drag_stroke.Name = "stroke"
    drag_stroke.Parent = drag_bar

    local drag_padding = Instance.new("UIPadding")
    drag_padding.PaddingRight = UDim.new(0, 15)
    drag_padding.PaddingLeft = UDim.new(0, 15)
    drag_padding.Name = "padding"
    drag_padding.Parent = drag

    local resize = Instance.new("ImageButton")
    resize.BorderSizePixel = 0
    resize.AutoButtonColor = false
    resize.BackgroundTransparency = 1
    resize.AnchorPoint = Vector2.new(1, 1)
    resize.Size = UDim2.new(0, 35, 0, 35)
    resize.Name = "resize"
    resize.Position = UDim2.new(1, -8, 1, -8)
    resize.Parent = controls

    local resize_icon = Instance.new("ImageLabel")
    resize_icon.BorderSizePixel = 0
    resize_icon.SliceCenter = Rect.new(132, 132, 224, 224)
    resize_icon.SliceScale = 0.03
    resize_icon.ScaleType = Enum.ScaleType.Slice
    resize_icon.ImageColor3 = Color3.fromRGB(91, 91, 91)
    resize_icon.AnchorPoint = Vector2.new(1, 1)
    resize_icon.Image = "rbxassetid://88780680171023"
    resize_icon.Size = UDim2.new(1, 0, 1, 0)
    resize_icon.BackgroundTransparency = 1
    resize_icon.Name = "icon"
    resize_icon.Parent = resize

    local resize_padding = Instance.new("UIPadding")
    resize_padding.PaddingTop = UDim.new(0, 10)
    resize_padding.PaddingLeft = UDim.new(0, 10)
    resize_padding.Name = "Padding"
    resize_padding.Parent = resize

    local resize_scale2 = Instance.new("UIScale")
    resize_scale2.Name = "Scale"
    resize_scale2.Parent = resize

    local main_scale = Instance.new("UIScale")
    main_scale.Name = "Scale"
    main_scale.Parent = main

    local WindowTable = {
        Instance = ScreenGui,
        Main = main,
        Panel = panel,
        Content = content,
        Tabs = tabs,
        Controls = controls
    }

    if _G.FluxUiMaintab then _G.FluxUiMaintab:Create(WindowTable) end
    if _G.FluxUiSettignsTab then _G.FluxUiSettignsTab:Create(WindowTable) end
    return WindowTable
end

return Mainframe