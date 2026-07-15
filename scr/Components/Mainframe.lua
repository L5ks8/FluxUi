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

    local WindowTable = {
        Instance = ScreenGui,
        Main = main,
        Panel = panel,
        Content = content,
        Tabs = tabs
    }

    return WindowTable
end

return Mainframe
