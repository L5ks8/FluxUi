local SettignsTab = {}

function SettignsTab:Create(WindowTable)
    local screen = WindowTable.Content:FindFirstChild('screen')
    local ExampleTab2 = Instance.new("ImageButton")
    ExampleTab2.BorderSizePixel = 0
    ExampleTab2.BackgroundTransparency = 1
    ExampleTab2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ExampleTab2.AnchorPoint = Vector2.new(0.5, 0.5)
    ExampleTab2.Size = UDim2.new(1, 0, 1, 0)
    ExampleTab2.LayoutOrder = 1
    ExampleTab2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ExampleTab2.Name = "ExampleTab"
    ExampleTab2.Position = UDim2.new(0.5, 0, 0.5, 0)
    ExampleTab2.Parent = screen

    local padding38 = Instance.new("UIPadding")
    padding38.Name = "padding"
    padding38.PaddingBottom = UDim.new(0, 20)
    padding38.Parent = ExampleTab2

    local list41 = Instance.new("UIListLayout")
    list41.HorizontalAlignment = Enum.HorizontalAlignment.Center
    list41.Padding = UDim.new(0.01, 0)
    list41.SortOrder = Enum.SortOrder.LayoutOrder
    list41.Name = "list"
    list41.FillDirection = Enum.FillDirection.Horizontal
    list41.Parent = ExampleTab2

    local rightColum = Instance.new("Frame")
    rightColum.BorderSizePixel = 0
    rightColum.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    rightColum.AnchorPoint = Vector2.new(0.5, 0.5)
    rightColum.Size = UDim2.new(0.53, 0, 1.052, 0)
    rightColum.Position = UDim2.new(0.74118, 0, 0.52863, 0)
    rightColum.BorderColor3 = Color3.fromRGB(0, 0, 0)
    rightColum.Name = "rightColum"
    rightColum.LayoutOrder = 1
    rightColum.BackgroundTransparency = 1
    rightColum.Parent = ExampleTab2

    local padding39 = Instance.new("UIPadding")
    padding39.PaddingTop = UDim.new(0, 8)
    padding39.Name = "padding"
    padding39.PaddingBottom = UDim.new(0, 8)
    padding39.Parent = rightColum

    local flex22 = Instance.new("UIFlexItem")
    flex22.Name = "flex"
    flex22.FlexMode = Enum.UIFlexMode.Fill
    flex22.Parent = rightColum

    local ScrollingFrame = Instance.new("ScrollingFrame")
    ScrollingFrame.Active = true
    ScrollingFrame.BorderSizePixel = 0
    ScrollingFrame.ScrollBarImageTransparency = 1
    ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ScrollingFrame.AnchorPoint = Vector2.new(0.5, 0.5)
    ScrollingFrame.Size = UDim2.new(1, 0, 1, 0)
    ScrollingFrame.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
    ScrollingFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
    ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ScrollingFrame.BackgroundTransparency = 1
    ScrollingFrame.Parent = rightColum

    local UICorner5 = Instance.new("UICorner")
    UICorner5.CornerRadius = UDim.new(0, 15)
    UICorner5.Parent = ScrollingFrame

    local UIListLayout6 = Instance.new("UIListLayout")
    UIListLayout6.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout6.Parent = ScrollingFrame

    local leftColum = Instance.new("Frame")
    leftColum.BorderSizePixel = 0
    leftColum.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    leftColum.AnchorPoint = Vector2.new(0.5, 0.5)
    leftColum.Size = UDim2.new(0.48364, 0, 1.053, 0)
    leftColum.Position = UDim2.new(0.25682, 0, 0.5265, 0)
    leftColum.BorderColor3 = Color3.fromRGB(0, 0, 0)
    leftColum.Name = "leftColum"
    leftColum.BackgroundTransparency = 1
    leftColum.Parent = ExampleTab2

    local flex23 = Instance.new("UIFlexItem")
    flex23.Name = "flex"
    flex23.FlexMode = Enum.UIFlexMode.Fill
    flex23.Parent = leftColum

    local padding40 = Instance.new("UIPadding")
    padding40.PaddingTop = UDim.new(0, 12)
    padding40.Name = "padding"
    padding40.PaddingLeft = UDim.new(0, 8)
    padding40.PaddingBottom = UDim.new(0, 8)
    padding40.Parent = leftColum

    local ScrollingFrame2 = Instance.new("ScrollingFrame")
    ScrollingFrame2.Active = true
    ScrollingFrame2.BorderSizePixel = 0
    ScrollingFrame2.ScrollBarImageTransparency = 1
    ScrollingFrame2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ScrollingFrame2.Size = UDim2.new(1, 0, 1, 0)
    ScrollingFrame2.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
    ScrollingFrame2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ScrollingFrame2.BackgroundTransparency = 1
    ScrollingFrame2.Parent = leftColum

    local UIListLayout7 = Instance.new("UIListLayout")
    UIListLayout7.Padding = UDim.new(0, 8)
    UIListLayout7.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout7.Parent = ScrollingFrame2

    local UICorner6 = Instance.new("UICorner")
    UICorner6.CornerRadius = UDim.new(0, 15)
    UICorner6.Parent = ScrollingFrame2

    local Section = Instance.new("Frame")
    Section.BorderSizePixel = 0
    Section.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
    Section.AnchorPoint = Vector2.new(0.5, 0.5)
    Section.AutomaticSize = Enum.AutomaticSize.Y
    Section.Size = UDim2.new(0, 222, 0, 275)
    Section.Position = UDim2.new(1.2882, 0, 0.19532, 0)
    Section.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Section.Name = "Section"
    Section.Parent = ScrollingFrame2

    local Top = Instance.new("Frame")
    Top.BorderSizePixel = 0
    Top.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    Top.AnchorPoint = Vector2.new(0.5, 0.5)
    Top.Size = UDim2.new(0, 222, 0, 25)
    Top.Position = UDim2.new(0.68018, 0, 0.07716, 0)
    Top.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Top.Name = "Top"
    Top.BackgroundTransparency = 0.9
    Top.Parent = Section

    local UICorner7 = Instance.new("UICorner")
    UICorner7.CornerRadius = UDim.new(0, 15)
    UICorner7.Parent = Top

    local UIListLayout8 = Instance.new("UIListLayout")
    UIListLayout8.HorizontalFlex = Enum.UIFlexAlignment.SpaceBetween
    UIListLayout8.VerticalAlignment = Enum.VerticalAlignment.Center
    UIListLayout8.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout8.FillDirection = Enum.FillDirection.Horizontal
    UIListLayout8.Parent = Top

    local TextLabel = Instance.new("TextLabel")
    TextLabel.BorderSizePixel = 0
    TextLabel.TextSize = 13
    TextLabel.TextTransparency = 0.4
    TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
    TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.BackgroundTransparency = 1
    TextLabel.Size = UDim2.new(0, 101, 0, 25)
    TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
    TextLabel.Text = "Example Name"
    TextLabel.Parent = Top

    local ImageButton = Instance.new("ImageButton")
    ImageButton.BorderSizePixel = 0
    ImageButton.ImageTransparency = 0.4
    ImageButton.BackgroundTransparency = 1
    ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ImageButton.AnchorPoint = Vector2.new(0.5, 0.5)
    ImageButton.Image = "rbxassetid://117018588794323"
    ImageButton.Size = UDim2.new(0, 20, 0, 20)
    ImageButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ImageButton.Position = UDim2.new(0.94318, 0, 0.5, 0)
    ImageButton.Parent = Top

    local UICorner8 = Instance.new("UICorner")
    UICorner8.CornerRadius = UDim.new(1, 0)
    UICorner8.Parent = ImageButton

    local UIPadding4 = Instance.new("UIPadding")
    UIPadding4.PaddingRight = UDim.new(0, 2)
    UIPadding4.Parent = Top

    local UICorner9 = Instance.new("UICorner")
    UICorner9.CornerRadius = UDim.new(0, 15)
    UICorner9.Parent = Section

    local Content = Instance.new("Frame")
    Content.BorderSizePixel = 0
    Content.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Content.AnchorPoint = Vector2.new(0.5, 0.5)
    Content.AutomaticSize = Enum.AutomaticSize.Y
    Content.Size = UDim2.new(0, 222, 0, 254)
    Content.Position = UDim2.new(0.5, 0, 0.54491, 0)
    Content.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Content.Name = "Content"
    Content.BackgroundTransparency = 1
    Content.Parent = Section

    local UIListLayout9 = Instance.new("UIListLayout")
    UIListLayout9.Padding = UDim.new(0, 4)
    UIListLayout9.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout9.Parent = Content

    local ExampleButton = Instance.new("TextButton")
    ExampleButton.BorderSizePixel = 0
    ExampleButton.TextSize = 14
    ExampleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
    ExampleButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ExampleButton.FontFace = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
    ExampleButton.AnchorPoint = Vector2.new(0.5, 0.5)
    ExampleButton.BackgroundTransparency = 0.9
    ExampleButton.Size = UDim2.new(1, 0, 0.1355, 0)
    ExampleButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ExampleButton.Name = "ExampleButton"
    ExampleButton.Position = UDim2.new(0.5, 0, 0.06775, 0)
    ExampleButton.Parent = Content

    local UICorner10 = Instance.new("UICorner")
    UICorner10.Parent = ExampleButton

    local UIPadding5 = Instance.new("UIPadding")
    UIPadding5.PaddingTop = UDim.new(0, 5)
    UIPadding5.PaddingRight = UDim.new(0, 5)
    UIPadding5.PaddingLeft = UDim.new(0, 5)
    UIPadding5.Parent = Content

    local UIListLayout10 = Instance.new("UIListLayout")
    UIListLayout10.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout10.Parent = Section

    return ExampleTab2
end

return SettignsTab