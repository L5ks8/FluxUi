local Icons = require("scr.Assets.Icons.lua")
local Debugbar = require("scr.Components.Debugbar.lua")

local Mainframe = {}

function Mainframe:Create()
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Name = "FluxUI"

    local main = Instance.new("CanvasGroup")
    main.Name = "main"
    main.AnchorPoint = Vector2.new(0.5, 0.5)
    main.Position = UDim2.new(0.5, 0, 0.5, 0)
    main.Size = UDim2.new(0, 700, 0, 465)
    main.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
    main.BorderColor3 = Color3.fromRGB(0, 0, 0)
    main.BorderSizePixel = 0

    local panel = Instance.new("Frame")
    panel.Name = "panel"
    panel.AnchorPoint = Vector2.new(0.5, 0.5)
    panel.Position = UDim2.new(0.5, 0, 0.5, 0)
    panel.Size = UDim2.new(1, 0, 1, 0)
    panel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    panel.BorderColor3 = Color3.fromRGB(0, 0, 0)
    panel.BorderSizePixel = 0
    panel.BackgroundTransparency = 1
    panel.Parent = main

    Debugbar:Create()

end

return Mainframe
