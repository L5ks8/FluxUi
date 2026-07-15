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
    mainCorner.BottomLeftRadius = UDim.new(0, 0)
    mainCorner.BottomRightRadius = UDim.new(0, 0)
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

    local WindowTable = {
        Instance = ScreenGui,
        Main = main,
        Panel = panel
    }

    return WindowTable
end

return Mainframe
