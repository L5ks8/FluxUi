local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")

local SettignsTab = {}

local Animations = {
    Fast = TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
    Smooth = TweenInfo.new(0.35, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
}

function SettignsTab:Create(WindowTable)
    local screen = WindowTable.Content:FindFirstChild('screen')
    if not screen then return end
    
    local ExampleTab = Instance.new("ImageButton")
    ExampleTab.BorderSizePixel = 0
    ExampleTab.BackgroundTransparency = 1
    ExampleTab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ExampleTab.AnchorPoint = Vector2.new(0.5, 0.5)
    ExampleTab.Size = UDim2.new(1, 0, 1, 0)
    ExampleTab.LayoutOrder = 1
    ExampleTab.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ExampleTab.Name = "ExampleTab"
    ExampleTab.Position = UDim2.new(0.5, 0, 0.5, 0)
    ExampleTab.Parent = screen

    local ExampleTabScroll = Instance.new("ScrollingFrame")
    ExampleTabScroll.BorderSizePixel = 0
    ExampleTabScroll.BackgroundTransparency = 1
    ExampleTabScroll.Size = UDim2.new(1, 0, 1, 0)
    ExampleTabScroll.Name = "Scroll"
    ExampleTabScroll.ScrollBarThickness = 0
    ExampleTabScroll.AutomaticCanvasSize = Enum.AutomaticSize.Y
    ExampleTabScroll.CanvasSize = UDim2.new(0, 0, 0, 0)
    ExampleTabScroll.Parent = ExampleTab
    
    local TabPadding = Instance.new("UIPadding")
    TabPadding.PaddingTop = UDim.new(0, 15)
    TabPadding.PaddingBottom = UDim.new(0, 15)
    TabPadding.PaddingLeft = UDim.new(0, 15)
    TabPadding.PaddingRight = UDim.new(0, 15)
    TabPadding.Parent = ExampleTabScroll
    
    local TabList = Instance.new("UIListLayout")
    TabList.Padding = UDim.new(0, 15)
    TabList.SortOrder = Enum.SortOrder.LayoutOrder
    TabList.Parent = ExampleTabScroll

    return ExampleTab
end

return SettignsTab