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

    local content = Instance.new("Frame")
    content.Name = "content"
    content.BorderSizePixel = 0
    content.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    content.AnchorPoint = Vector2.new(0.5, 1)
    content.Size = UDim2.new(1, 0, 1, -35)
    content.Position = UDim2.new(0.5, 0, 1, 0)
    content.BorderColor3 = Color3.fromRGB(0, 0, 0)
    content.BackgroundTransparency = 1
    content.Parent = panel

    local tabs = Instance.new("Frame")
    tabs.Name = "tabs"
    tabs.BorderSizePixel = 0
    tabs.BackgroundColor3 = Color3.fromRGB(21, 21, 21)
    tabs.ClipsDescendants = true
    tabs.Size = UDim2.new(-0.03095, 200, 1.0814, -65)
    tabs.Position = UDim2.new(0, 15, 0, 0)
    tabs.BorderColor3 = Color3.fromRGB(0, 0, 0)
    tabs.LayoutOrder = 10
    tabs.BackgroundTransparency = 1
    tabs.Parent = content

    local corner = Instance.new("UICorner")
    corner.Name = "corner"
    corner.CornerRadius = UDim.new(0, 12)
    corner.Parent = tabs

    local mainTab = Instance.new("Frame")
    mainTab.Name = "main"
    mainTab.BorderSizePixel = 0
    mainTab.BackgroundColor3 = Color3.fromRGB(9, 9, 9)
    mainTab.AnchorPoint = Vector2.new(0.5, 0.5)
    mainTab.AutomaticSize = Enum.AutomaticSize.Y
    mainTab.Size = UDim2.new(1.12337, -22, 0.81953, 0)
    mainTab.Position = UDim2.new(1.84019, -14, 0.51218, -14)
    mainTab.BorderColor3 = Color3.fromRGB(0, 0, 0)
    mainTab.LayoutOrder = 1
    mainTab.BackgroundTransparency = 0.7
    mainTab.Parent = tabs

    local navigation = Instance.new("ScrollingFrame")
    navigation.Name = "navigation"
    navigation.Active = true
    navigation.ScrollingDirection = Enum.ScrollingDirection.Y
    navigation.BorderSizePixel = 0
    navigation.CanvasSize = UDim2.new(0, 0, 0, 0)
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
    navigation.Parent = mainTab

    local navMain = Instance.new("Frame")
    navMain.Name = "main"
    navMain.BorderSizePixel = 0
    navMain.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    navMain.AnchorPoint = Vector2.new(0.5, 0)
    navMain.AutomaticSize = Enum.AutomaticSize.Y
    navMain.Size = UDim2.new(1, 0, 0, 0)
    navMain.Position = UDim2.new(0.5, 0, 0, 0)
    navMain.BorderColor3 = Color3.fromRGB(0, 0, 0)
    navMain.BackgroundTransparency = 1
    navMain.Parent = navigation

    local navList = Instance.new("UIListLayout")
    navList.Name = "list"
    navList.HorizontalAlignment = Enum.HorizontalAlignment.Center
    navList.Padding = UDim.new(0, 5)
    navList.SortOrder = Enum.SortOrder.LayoutOrder
    navList.Parent = navMain

    local navPadding = Instance.new("UIPadding")
    navPadding.Name = "padding"
    navPadding.PaddingTop = UDim.new(0, 2)
    navPadding.PaddingRight = UDim.new(0, 8)
    navPadding.PaddingLeft = UDim.new(0, 8)
    navPadding.Parent = navMain

    local WindowTable = {
        Instance = ScreenGui,
        Main = main,
        Panel = panel,
        Content = content,
        Tabs = tabs,
        Navigation = navigation
    }

    return WindowTable
end

return Mainframe
