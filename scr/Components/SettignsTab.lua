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

    UI.padding38 = Instance.new("UIPadding")
    UI.padding38.Name = "padding"
    UI.padding38.PaddingBottom = UDim.new(0, 20)
    UI.padding38.Parent = UI.ExampleTab2

    UI.list41 = Instance.new("UIListLayout")
    UI.list41.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UI.list41.Padding = UDim.new(0.01, 0)
    UI.list41.SortOrder = Enum.SortOrder.LayoutOrder
    UI.list41.Name = "list"
    UI.list41.FillDirection = Enum.FillDirection.Horizontal
    UI.list41.Parent = UI.ExampleTab2

    UI.rightColum = Instance.new("Frame")
    UI.rightColum.BorderSizePixel = 0
    UI.rightColum.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.rightColum.AnchorPoint = Vector2.new(0.5, 0.5)
    UI.rightColum.Size = UDim2.new(0.53, 0, 1.052, 0)
    UI.rightColum.Position = UDim2.new(0.74118, 0, 0.52863, 0)
    UI.rightColum.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.rightColum.Name = "rightColum"
    UI.rightColum.LayoutOrder = 1
    UI.rightColum.BackgroundTransparency = 1
    UI.rightColum.Parent = UI.ExampleTab2

    UI.padding39 = Instance.new("UIPadding")
    UI.padding39.PaddingTop = UDim.new(0, 8)
    UI.padding39.Name = "padding"
    UI.padding39.PaddingBottom = UDim.new(0, 8)
    UI.padding39.Parent = UI.rightColum

    UI.flex22 = Instance.new("UIFlexItem")
    UI.flex22.Name = "flex"
    UI.flex22.FlexMode = Enum.UIFlexMode.Fill
    UI.flex22.Parent = UI.rightColum

    UI.ScrollingFrame = Instance.new("ScrollingFrame")
    UI.ScrollingFrame.Active = true
    UI.ScrollingFrame.BorderSizePixel = 0
    UI.ScrollingFrame.ScrollBarImageTransparency = 1
    UI.ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.ScrollingFrame.AnchorPoint = Vector2.new(0.5, 0.5)
    UI.ScrollingFrame.Size = UDim2.new(1, 0, 1, 0)
    UI.ScrollingFrame.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
    UI.ScrollingFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
    UI.ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.ScrollingFrame.BackgroundTransparency = 1
    UI.ScrollingFrame.Parent = UI.rightColum

    UI.UICorner5 = Instance.new("UICorner")
    UI.UICorner5.CornerRadius = UDim.new(0, 15)
    UI.UICorner5.Parent = UI.ScrollingFrame

    UI.UIListLayout6 = Instance.new("UIListLayout")
    UI.UIListLayout6.SortOrder = Enum.SortOrder.LayoutOrder
    UI.UIListLayout6.Parent = UI.ScrollingFrame

    UI.leftColum = Instance.new("Frame")
    UI.leftColum.BorderSizePixel = 0
    UI.leftColum.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.leftColum.AnchorPoint = Vector2.new(0.5, 0.5)
    UI.leftColum.Size = UDim2.new(0.48364, 0, 1.053, 0)
    UI.leftColum.Position = UDim2.new(0.25682, 0, 0.5265, 0)
    UI.leftColum.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.leftColum.Name = "leftColum"
    UI.leftColum.BackgroundTransparency = 1
    UI.leftColum.Parent = UI.ExampleTab2

    UI.flex23 = Instance.new("UIFlexItem")
    UI.flex23.Name = "flex"
    UI.flex23.FlexMode = Enum.UIFlexMode.Fill
    UI.flex23.Parent = UI.leftColum

    UI.padding40 = Instance.new("UIPadding")
    UI.padding40.PaddingTop = UDim.new(0, 12)
    UI.padding40.Name = "padding"
    UI.padding40.PaddingLeft = UDim.new(0, 8)
    UI.padding40.PaddingBottom = UDim.new(0, 8)
    UI.padding40.Parent = UI.leftColum

    UI.ScrollingFrame2 = Instance.new("ScrollingFrame")
    UI.ScrollingFrame2.Active = true
    UI.ScrollingFrame2.BorderSizePixel = 0
    UI.ScrollingFrame2.ScrollBarImageTransparency = 1
    UI.ScrollingFrame2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.ScrollingFrame2.Size = UDim2.new(1, 0, 1, 0)
    UI.ScrollingFrame2.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
    UI.ScrollingFrame2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.ScrollingFrame2.BackgroundTransparency = 1
    UI.ScrollingFrame2.Parent = UI.leftColum

    UI.UIListLayout7 = Instance.new("UIListLayout")
    UI.UIListLayout7.Padding = UDim.new(0, 8)
    UI.UIListLayout7.SortOrder = Enum.SortOrder.LayoutOrder
    UI.UIListLayout7.Parent = UI.ScrollingFrame2

    UI.UICorner6 = Instance.new("UICorner")
    UI.UICorner6.CornerRadius = UDim.new(0, 15)
    UI.UICorner6.Parent = UI.ScrollingFrame2

    UI.Section = Instance.new("Frame")
    UI.Section.BorderSizePixel = 0
    UI.Section.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
    UI.Section.AnchorPoint = Vector2.new(0.5, 0.5)
    UI.Section.AutomaticSize = Enum.AutomaticSize.Y
    UI.Section.Size = UDim2.new(0, 222, 0, 275)
    UI.Section.Position = UDim2.new(1.2882, 0, 0.19532, 0)
    UI.Section.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.Section.Name = "Section"
    UI.Section.Parent = UI.ScrollingFrame2

    UI.Top = Instance.new("Frame")
    UI.Top.BorderSizePixel = 0
    UI.Top.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    UI.Top.AnchorPoint = Vector2.new(0.5, 0.5)
    UI.Top.Size = UDim2.new(0, 222, 0, 25)
    UI.Top.Position = UDim2.new(0.68018, 0, 0.07716, 0)
    UI.Top.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.Top.Name = "Top"
    UI.Top.BackgroundTransparency = 0.9
    UI.Top.Parent = UI.Section

    UI.UICorner7 = Instance.new("UICorner")
    UI.UICorner7.CornerRadius = UDim.new(0, 15)
    UI.UICorner7.Parent = UI.Top

    UI.UIListLayout8 = Instance.new("UIListLayout")
    UI.UIListLayout8.HorizontalFlex = Enum.UIFlexAlignment.SpaceBetween
    UI.UIListLayout8.VerticalAlignment = Enum.VerticalAlignment.Center
    UI.UIListLayout8.SortOrder = Enum.SortOrder.LayoutOrder
    UI.UIListLayout8.FillDirection = Enum.FillDirection.Horizontal
    UI.UIListLayout8.Parent = UI.Top

    UI.TextLabel = Instance.new("TextLabel")
    UI.TextLabel.BorderSizePixel = 0
    UI.TextLabel.TextSize = 13
    UI.TextLabel.TextTransparency = 0.4
    UI.TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.TextLabel.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
    UI.TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    UI.TextLabel.BackgroundTransparency = 1
    UI.TextLabel.Size = UDim2.new(0, 101, 0, 25)
    UI.TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.TextLabel.Text = "Example Name"
    UI.TextLabel.Parent = UI.Top

    UI.ImageButton = Instance.new("ImageButton")
    UI.ImageButton.BorderSizePixel = 0
    UI.ImageButton.ImageTransparency = 0.4
    UI.ImageButton.BackgroundTransparency = 1
    UI.ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.ImageButton.AnchorPoint = Vector2.new(0.5, 0.5)
    UI.ImageButton.Image = "rbxassetid://117018588794323"
    UI.ImageButton.Size = UDim2.new(0, 20, 0, 20)
    UI.ImageButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.ImageButton.Position = UDim2.new(0.94318, 0, 0.5, 0)
    UI.ImageButton.Parent = UI.Top

    UI.UICorner8 = Instance.new("UICorner")
    UI.UICorner8.CornerRadius = UDim.new(1, 0)
    UI.UICorner8.Parent = UI.ImageButton

    UI.UIPadding4 = Instance.new("UIPadding")
    UI.UIPadding4.PaddingRight = UDim.new(0, 2)
    UI.UIPadding4.Parent = UI.Top

    UI.UICorner9 = Instance.new("UICorner")
    UI.UICorner9.CornerRadius = UDim.new(0, 15)
    UI.UICorner9.Parent = UI.Section

    UI.Content = Instance.new("Frame")
    UI.Content.BorderSizePixel = 0
    UI.Content.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.Content.AnchorPoint = Vector2.new(0.5, 0.5)
    UI.Content.AutomaticSize = Enum.AutomaticSize.Y
    UI.Content.Size = UDim2.new(0, 222, 0, 254)
    UI.Content.Position = UDim2.new(0.5, 0, 0.54491, 0)
    UI.Content.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.Content.Name = "Content"
    UI.Content.BackgroundTransparency = 1
    UI.Content.Parent = UI.Section

    UI.UIListLayout9 = Instance.new("UIListLayout")
    UI.UIListLayout9.Padding = UDim.new(0, 4)
    UI.UIListLayout9.SortOrder = Enum.SortOrder.LayoutOrder
    UI.UIListLayout9.Parent = UI.Content

    UI.ExampleButton = Instance.new("TextButton")
    UI.ExampleButton.BorderSizePixel = 0
    UI.ExampleButton.TextSize = 14
    UI.ExampleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    UI.ExampleButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.ExampleButton.FontFace = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
    UI.ExampleButton.AnchorPoint = Vector2.new(0.5, 0.5)
    UI.ExampleButton.BackgroundTransparency = 0.9
    UI.ExampleButton.Size = UDim2.new(1, 0, 0.1355, 0)
    UI.ExampleButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.ExampleButton.Name = "ExampleButton"
    UI.ExampleButton.Position = UDim2.new(0.5, 0, 0.06775, 0)
    UI.ExampleButton.Parent = UI.Content

    UI.UICorner10 = Instance.new("UICorner")
    UI.UICorner10.Parent = UI.ExampleButton

    UI.UIPadding5 = Instance.new("UIPadding")
    UI.UIPadding5.PaddingTop = UDim.new(0, 5)
    UI.UIPadding5.PaddingRight = UDim.new(0, 5)
    UI.UIPadding5.PaddingLeft = UDim.new(0, 5)
    UI.UIPadding5.Parent = UI.Content

    UI.UIListLayout10 = Instance.new("UIListLayout")
    UI.UIListLayout10.SortOrder = Enum.SortOrder.LayoutOrder
    UI.UIListLayout10.Parent = UI.Section

    return UI.ExampleTab2
end

return SettignsTab