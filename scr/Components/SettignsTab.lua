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

    return UI.settings
end

local SettignsTab = {}
function SettignsTab:Create(WindowTable)
    local settingsFrame = CreateSettings(WindowTable)
end
return SettignsTab
