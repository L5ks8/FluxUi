local SettignsTab = {}

function SettignsTab:Create(WindowTable)
    local UI = {}
    local screen = WindowTable.Content:FindFirstChild('screen')
    if not screen then return end
    UI.ExampleTab2 = Instance.new("ImageButton")
    UI.ExampleTab2.BorderSizePixel = 0
    UI.ExampleTab2.BackgroundTransparency = 1
    UI.ExampleTab2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.ExampleTab2.AnchorPoint = Vector2.new(0.5, 0.5)
    UI.ExampleTab2.Size = UDim2.new(1, 0, 1, 0)
    UI.ExampleTab2.LayoutOrder = 1
    UI.ExampleTab2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.ExampleTab2.Name = "ExampleTab"
    UI.ExampleTab2.Position = UDim2.new(0.5, 0, 0.5, 0)
    UI.ExampleTab2.Parent = screen

    return UI.ExampleTab2
end

return SettignsTab