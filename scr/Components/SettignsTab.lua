local function CreateSettings(WindowTable)
    local UI = {}
    local CollectionService = game:GetService("CollectionService")
    local ScreenGui = WindowTable.Content:FindFirstChild("screen") or WindowTable.Content


    UI.settings = Instance.new("Frame")
    UI.settings.Parent = ScreenGui
    UI.settings.BorderSizePixel = 0
    UI.settings.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.settings.AnchorPoint = Vector2.new(0.5, 0.5)
    UI.settings.ClipsDescendants = true
    UI.settings.Size = UDim2.new(1, 0, 1, 0)
    UI.settings.Position = UDim2.new(0.5, 0, 0.5, 0)
    UI.settings.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.settings.Name = [[settings]]
    UI.settings.LayoutOrder = 9
    UI.settings.BackgroundTransparency = 1

    UI.List = Instance.new("UIListLayout")
    UI.List.Parent = UI.settings
    UI.List.SortOrder = Enum.SortOrder.LayoutOrder
    UI.List.Name = [[List]]

    UI.header = Instance.new("Frame")
    UI.header.Parent = UI.settings
    UI.header.ZIndex = 99
    UI.header.BorderSizePixel = 0
    UI.header.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.header.AutomaticSize = Enum.AutomaticSize.Y
    UI.header.Size = UDim2.new(1, 0, 0, 0)
    UI.header.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.header.Name = [[header]]
    UI.header.LayoutOrder = -99
    UI.header.BackgroundTransparency = 1

    UI.list = Instance.new("UIListLayout")
    UI.list.Parent = UI.header
    UI.list.Padding = UDim.new(0, 1)
    UI.list.VerticalAlignment = Enum.VerticalAlignment.Center
    UI.list.SortOrder = Enum.SortOrder.LayoutOrder
    UI.list.Name = [[list]]

    UI.stroke = Instance.new("UIStroke")
    UI.stroke.Parent = UI.header
    UI.stroke.Transparency = 0.95
    UI.stroke.Color = Color3.fromRGB(255, 255, 255)
    UI.stroke.Name = [[stroke]]

    UI.name = Instance.new("TextLabel")
    UI.name.Parent = UI.header
    UI.name.BorderSizePixel = 0
    UI.name.AutoLocalize = false
    UI.name.TextSize = 16
    UI.name.TextXAlignment = Enum.TextXAlignment.Left
    UI.name.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    UI.name.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
    UI.name.TextColor3 = Color3.fromRGB(255, 255, 255)
    UI.name.BackgroundTransparency = 1
    UI.name.AnchorPoint = Vector2.new(0.5, 0)
    UI.name.Size = UDim2.new(1, 0, 0, 0)
    UI.name.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.name.Text = [[Settings]]
    UI.name.AutomaticSize = Enum.AutomaticSize.XY
    UI.name.Name = [[name]]
    UI.name.Position = UDim2.new(0.5, 0, 0, 0)
    UI.name:SetAttribute([[Key]], [[orbit.settings.header]])
    CollectionService:AddTag(UI.name, [[OrbitTranslation]])

    UI.flex = Instance.new("UIFlexItem")
    UI.flex.Parent = UI.name
    UI.flex.Name = [[flex]]
    UI.flex.FlexMode = Enum.UIFlexMode.Fill

    UI.desc = Instance.new("TextLabel")
    UI.desc.Parent = UI.header
    UI.desc.BorderSizePixel = 0
    UI.desc.AutoLocalize = false
    UI.desc.TextSize = 14
    UI.desc.TextXAlignment = Enum.TextXAlignment.Left
    UI.desc.TextTransparency = 0.5
    UI.desc.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    UI.desc.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    UI.desc.TextColor3 = Color3.fromRGB(255, 255, 255)
    UI.desc.BackgroundTransparency = 1
    UI.desc.AnchorPoint = Vector2.new(0.5, 0)
    UI.desc.Size = UDim2.new(0, 0, 0, 14)
    UI.desc.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.desc.Text = [[Personalize your panel without requiring any coding knowledge.]]
    UI.desc.LayoutOrder = 1
    UI.desc.AutomaticSize = Enum.AutomaticSize.X
    UI.desc.Name = [[desc]]
    UI.desc.Position = UDim2.new(0.5, 0, 0, 0)
    UI.desc:SetAttribute([[Key]], [[orbit.settings.description]])
    CollectionService:AddTag(UI.desc, [[OrbitTranslation]])

    UI.padding = Instance.new("UIPadding")
    UI.padding.Parent = UI.header
    UI.padding.PaddingTop = UDim.new(0, 16)
    UI.padding.PaddingRight = UDim.new(0, 26)
    UI.padding.Name = [[padding]]
    UI.padding.PaddingLeft = UDim.new(0, 26)
    UI.padding.PaddingBottom = UDim.new(0, 16)

    UI.content = Instance.new("Frame")
    UI.content.Parent = UI.settings
    UI.content.BorderSizePixel = 0
    UI.content.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.content.Size = UDim2.new(1, 0, 0, 0)
    UI.content.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.content.Name = [[content]]
    UI.content.BackgroundTransparency = 1

    UI.Flex = Instance.new("UIFlexItem")
    UI.Flex.Parent = UI.content
    UI.Flex.Name = [[Flex]]
    UI.Flex.FlexMode = Enum.UIFlexMode.Fill

    UI.main = Instance.new("Frame")
    UI.main.Parent = UI.content
    UI.main.BorderSizePixel = 0
    UI.main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.main.ClipsDescendants = true
    UI.main.Size = UDim2.new(1, 0, 1, 0)
    UI.main.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.main.Name = [[main]]
    UI.main.LayoutOrder = 2
    UI.main.BackgroundTransparency = 1

    UI.Flex2 = Instance.new("UIFlexItem")
    UI.Flex2.Parent = UI.main
    UI.Flex2.Name = [[Flex]]
    UI.Flex2.FlexMode = Enum.UIFlexMode.Fill

    UI.Page = Instance.new("UIPageLayout")
    UI.Page.Parent = UI.main
    UI.Page.EasingStyle = Enum.EasingStyle.Exponential
    UI.Page.GamepadInputEnabled = false
    UI.Page.FillDirection = Enum.FillDirection.Vertical
    UI.Page.TouchInputEnabled = false
    UI.Page.Animated = false
    UI.Page.SortOrder = Enum.SortOrder.LayoutOrder
    UI.Page.Name = [[Page]]
    UI.Page.ScrollWheelInputEnabled = false
    UI.Page.TweenTime = 0.15

    UI.item = Instance.new("ScrollingFrame")
    UI.item.Parent = UI.Page
    UI.item.Active = true
    UI.item.ScrollingDirection = Enum.ScrollingDirection.Y
    UI.item.BorderSizePixel = 0
    UI.item.CanvasSize = UDim2.new(0, 0, 0, 0)
    UI.item.Name = [[item]]
    UI.item.ScrollBarImageTransparency = 1
    UI.item.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.item.AnchorPoint = Vector2.new(0.5, 0.5)
    UI.item.AutomaticCanvasSize = Enum.AutomaticSize.Y
    UI.item.Size = UDim2.new(1, 0, 1, 0)
    UI.item.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
    UI.item.Position = UDim2.new(0.5, 0, 0.5, 0)
    UI.item.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.item.ScrollBarThickness = 0
    UI.item.LayoutOrder = 3
    UI.item.BackgroundTransparency = 1

    UI.display = Instance.new("Frame")
    UI.display.Parent = UI.item
    UI.display.BorderSizePixel = 0
    UI.display.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
    UI.display.Size = UDim2.new(1, 0, 1, -85)
    UI.display.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.display.Name = [[display]]
    UI.display.LayoutOrder = 2

    UI.fade = Instance.new("Frame")
    UI.fade.Parent = UI.display
    UI.fade.BorderSizePixel = 0
    UI.fade.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
    UI.fade.AnchorPoint = Vector2.new(0.5, 1)
    UI.fade.Size = UDim2.new(1, -25, 0, 60)
    UI.fade.Position = UDim2.new(0.5, 0, 1, 0)
    UI.fade.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.fade.Name = [[fade]]

    UI.UIGradient = Instance.new("UIGradient")
    UI.UIGradient.Parent = UI.fade
    UI.UIGradient.Rotation = 90
    UI.UIGradient.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 1),NumberSequenceKeypoint.new(1.000, 0)}

    UI.corner = Instance.new("UICorner")
    UI.corner.Parent = UI.display
    UI.corner.Name = [[corner]]
    UI.corner.CornerRadius = UDim.new(0, 16)

    UI.scroll = Instance.new("ScrollingFrame")
    UI.scroll.Parent = UI.display
    UI.scroll.Active = true
    UI.scroll.ScrollingDirection = Enum.ScrollingDirection.Y
    UI.scroll.BorderSizePixel = 0
    UI.scroll.CanvasSize = UDim2.new(0, 0, 0, 0)
    UI.scroll.VerticalScrollBarInset = Enum.ScrollBarInset.ScrollBar
    UI.scroll.Name = [[scroll]]
    UI.scroll.ScrollBarImageTransparency = 1
    UI.scroll.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.scroll.AnchorPoint = Vector2.new(0.5, 0.5)
    UI.scroll.AutomaticCanvasSize = Enum.AutomaticSize.Y
    UI.scroll.Size = UDim2.new(1, 0, 1, 0)
    UI.scroll.ScrollBarImageColor3 = Color3.fromRGB(50, 50, 50)
    UI.scroll.Position = UDim2.new(0.5, 0, 0.5, 0)
    UI.scroll.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.scroll.ScrollBarThickness = 4
    UI.scroll.LayoutOrder = 2
    UI.scroll.BackgroundTransparency = 1

    UI.List2 = Instance.new("UIListLayout")
    UI.List2.Parent = UI.scroll
    UI.List2.HorizontalFlex = Enum.UIFlexAlignment.SpaceAround
    UI.List2.Padding = UDim.new(0, 12)
    UI.List2.SortOrder = Enum.SortOrder.LayoutOrder
    UI.List2.Name = [[List]]

    UI.item2 = Instance.new("CanvasGroup")
    UI.item2.Parent = UI.List2
    UI.item2.BorderSizePixel = 0
    UI.item2.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    UI.item2.AutomaticSize = Enum.AutomaticSize.Y
    UI.item2.Size = UDim2.new(1, 0, 0, 0)
    UI.item2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.item2.Name = [[item]]
    CollectionService:AddTag(UI.item2, [[OrbitSettingsCategory]])
    CollectionService:AddTag(UI.item2, [[OrbitSettingsThemes]])

    UI.Corner = Instance.new("UICorner")
    UI.Corner.Parent = UI.item2
    UI.Corner.Name = [[Corner]]
    UI.Corner.CornerRadius = UDim.new(0, 14)

    UI.List3 = Instance.new("UIListLayout")
    UI.List3.Parent = UI.item2
    UI.List3.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UI.List3.SortOrder = Enum.SortOrder.LayoutOrder
    UI.List3.Name = [[List]]

    UI.Button = Instance.new("ImageButton")
    UI.Button.Parent = UI.List3
    UI.Button.Active = false
    UI.Button.BorderSizePixel = 0
    UI.Button.ImageTransparency = 1
    UI.Button.BackgroundTransparency = 1
    UI.Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.Button.Selectable = false
    UI.Button.Size = UDim2.new(1, 0, 0, 50)
    UI.Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.Button.Name = [[Button]]
    CollectionService:AddTag(UI.Button, [[SettingObject]])

    UI.Padding = Instance.new("UIPadding")
    UI.Padding.Parent = UI.Button
    UI.Padding.PaddingRight = UDim.new(0, 12)
    UI.Padding.Name = [[Padding]]
    UI.Padding.PaddingLeft = UDim.new(0, 12)

    UI.holder = Instance.new("ImageLabel")
    UI.holder.Parent = UI.Button
    UI.holder.BorderSizePixel = 0
    UI.holder.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    UI.holder.ImageTransparency = 1
    UI.holder.AnchorPoint = Vector2.new(0, 0.5)
    UI.holder.Size = UDim2.new(0, 32, 0, 32)
    UI.holder.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.holder.BackgroundTransparency = 0.8
    UI.holder.LayoutOrder = 1
    UI.holder.Name = [[holder]]
    UI.holder.Position = UDim2.new(0, 0, 0.5, 0)

    UI.icon = Instance.new("ImageLabel")
    UI.icon.Parent = UI.holder
    UI.icon.BorderSizePixel = 0
    UI.icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.icon.ImageTransparency = 0.5
    UI.icon.AnchorPoint = Vector2.new(0.5, 0.5)
    UI.icon.Image = [[rbxassetid://11293977610]]
    UI.icon.Size = UDim2.new(0, 20, 0, 20)
    UI.icon.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.icon.BackgroundTransparency = 1
    UI.icon.LayoutOrder = 1
    UI.icon.Name = [[icon]]
    UI.icon.Position = UDim2.new(0.5, 0, 0.5, 0)

    UI.Corner2 = Instance.new("UICorner")
    UI.Corner2.Parent = UI.holder
    UI.Corner2.Name = [[Corner]]
    UI.Corner2.CornerRadius = UDim.new(0, 6)

    UI.Extra = Instance.new("Folder")
    UI.Extra.Parent = UI.Button
    UI.Extra.Name = [[Extra]]

    UI.Separator = Instance.new("Frame")
    UI.Separator.Parent = UI.Extra
    UI.Separator.BorderSizePixel = 0
    UI.Separator.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.Separator.AnchorPoint = Vector2.new(0.5, 1)
    UI.Separator.Size = UDim2.new(2, 0, 0, 1)
    UI.Separator.Position = UDim2.new(0.5, 0, 1, 1)
    UI.Separator.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.Separator.Name = [[Separator]]
    UI.Separator.BackgroundTransparency = 0.98

    UI.List4 = Instance.new("UIListLayout")
    UI.List4.Parent = UI.Button
    UI.List4.Padding = UDim.new(0, 10)
    UI.List4.VerticalAlignment = Enum.VerticalAlignment.Center
    UI.List4.SortOrder = Enum.SortOrder.LayoutOrder
    UI.List4.Name = [[List]]
    UI.List4.FillDirection = Enum.FillDirection.Horizontal

    UI.info = Instance.new("Frame")
    UI.info.Parent = UI.Button
    UI.info.BorderSizePixel = 0
    UI.info.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.info.Size = UDim2.new(0, 0, 0, 28)
    UI.info.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.info.Name = [[info]]
    UI.info.LayoutOrder = 2
    UI.info.BackgroundTransparency = 1

    UI.Flex3 = Instance.new("UIFlexItem")
    UI.Flex3.Parent = UI.info
    UI.Flex3.Name = [[Flex]]
    UI.Flex3.FlexMode = Enum.UIFlexMode.Fill

    UI.Header = Instance.new("TextLabel")
    UI.Header.Parent = UI.info
    UI.Header.TextTruncate = Enum.TextTruncate.AtEnd
    UI.Header.BorderSizePixel = 0
    UI.Header.TextSize = 14
    UI.Header.TextXAlignment = Enum.TextXAlignment.Left
    UI.Header.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.Header.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    UI.Header.TextColor3 = Color3.fromRGB(255, 255, 255)
    UI.Header.BackgroundTransparency = 1
    UI.Header.Size = UDim2.new(1, 0, 0, 0)
    UI.Header.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.Header.Text = [[Name]]
    UI.Header.AutomaticSize = Enum.AutomaticSize.Y
    UI.Header.Name = [[Header]]

    UI.Description = Instance.new("TextLabel")
    UI.Description.Parent = UI.info
    UI.Description.TextTruncate = Enum.TextTruncate.AtEnd
    UI.Description.BorderSizePixel = 0
    UI.Description.TextSize = 12
    UI.Description.TextXAlignment = Enum.TextXAlignment.Left
    UI.Description.TextTransparency = 0.7
    UI.Description.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.Description.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    UI.Description.TextColor3 = Color3.fromRGB(255, 255, 255)
    UI.Description.BackgroundTransparency = 1
    UI.Description.AnchorPoint = Vector2.new(0, 1)
    UI.Description.Size = UDim2.new(1, 0, 0, 0)
    UI.Description.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.Description.Text = [[Short description]]
    UI.Description.AutomaticSize = Enum.AutomaticSize.Y
    UI.Description.Name = [[Description]]
    UI.Description.Position = UDim2.new(0, 0, 1, 0)

    UI.Text = Instance.new("Frame")
    UI.Text.Parent = UI.List3
    UI.Text.BorderSizePixel = 0
    UI.Text.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.Text.Size = UDim2.new(1, 0, 0, 50)
    UI.Text.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.Text.Name = [[Text]]
    UI.Text.BackgroundTransparency = 1
    CollectionService:AddTag(UI.Text, [[SettingObject]])

    UI.Padding2 = Instance.new("UIPadding")
    UI.Padding2.Parent = UI.Text
    UI.Padding2.PaddingRight = UDim.new(0, 12)
    UI.Padding2.Name = [[Padding]]
    UI.Padding2.PaddingLeft = UDim.new(0, 12)

    UI.holder2 = Instance.new("ImageLabel")
    UI.holder2.Parent = UI.Text
    UI.holder2.BorderSizePixel = 0
    UI.holder2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    UI.holder2.ImageTransparency = 1
    UI.holder2.AnchorPoint = Vector2.new(0, 0.5)
    UI.holder2.Size = UDim2.new(0, 32, 0, 32)
    UI.holder2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.holder2.BackgroundTransparency = 0.8
    UI.holder2.LayoutOrder = 1
    UI.holder2.Name = [[holder]]
    UI.holder2.Position = UDim2.new(0, 0, 0.5, 0)

    UI.icon2 = Instance.new("ImageLabel")
    UI.icon2.Parent = UI.holder2
    UI.icon2.BorderSizePixel = 0
    UI.icon2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.icon2.ImageTransparency = 0.5
    UI.icon2.AnchorPoint = Vector2.new(0.5, 0.5)
    UI.icon2.Image = [[rbxassetid://11293977610]]
    UI.icon2.Size = UDim2.new(0, 20, 0, 20)
    UI.icon2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.icon2.BackgroundTransparency = 1
    UI.icon2.LayoutOrder = 1
    UI.icon2.Name = [[icon]]
    UI.icon2.Position = UDim2.new(0.5, 0, 0.5, 0)

    UI.Corner3 = Instance.new("UICorner")
    UI.Corner3.Parent = UI.holder2
    UI.Corner3.Name = [[Corner]]
    UI.Corner3.CornerRadius = UDim.new(0, 6)

    UI.Extra2 = Instance.new("Folder")
    UI.Extra2.Parent = UI.Text
    UI.Extra2.Name = [[Extra]]

    UI.Separator2 = Instance.new("Frame")
    UI.Separator2.Parent = UI.Extra2
    UI.Separator2.BorderSizePixel = 0
    UI.Separator2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.Separator2.AnchorPoint = Vector2.new(0.5, 1)
    UI.Separator2.Size = UDim2.new(2, 0, 0, 1)
    UI.Separator2.Position = UDim2.new(0.5, 0, 1, 1)
    UI.Separator2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.Separator2.Name = [[Separator]]
    UI.Separator2.BackgroundTransparency = 0.98

    UI.List5 = Instance.new("UIListLayout")
    UI.List5.Parent = UI.Text
    UI.List5.Padding = UDim.new(0, 10)
    UI.List5.VerticalAlignment = Enum.VerticalAlignment.Center
    UI.List5.SortOrder = Enum.SortOrder.LayoutOrder
    UI.List5.Name = [[List]]
    UI.List5.FillDirection = Enum.FillDirection.Horizontal

    UI.info2 = Instance.new("Frame")
    UI.info2.Parent = UI.Text
    UI.info2.BorderSizePixel = 0
    UI.info2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.info2.Size = UDim2.new(0, 0, 0, 28)
    UI.info2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.info2.Name = [[info]]
    UI.info2.LayoutOrder = 2
    UI.info2.BackgroundTransparency = 1

    UI.Flex4 = Instance.new("UIFlexItem")
    UI.Flex4.Parent = UI.info2
    UI.Flex4.Name = [[Flex]]
    UI.Flex4.FlexMode = Enum.UIFlexMode.Fill

    UI.Header2 = Instance.new("TextLabel")
    UI.Header2.Parent = UI.info2
    UI.Header2.TextTruncate = Enum.TextTruncate.AtEnd
    UI.Header2.BorderSizePixel = 0
    UI.Header2.TextSize = 14
    UI.Header2.TextXAlignment = Enum.TextXAlignment.Left
    UI.Header2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.Header2.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    UI.Header2.TextColor3 = Color3.fromRGB(255, 255, 255)
    UI.Header2.BackgroundTransparency = 1
    UI.Header2.Size = UDim2.new(1, 0, 0, 0)
    UI.Header2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.Header2.Text = [[Name]]
    UI.Header2.AutomaticSize = Enum.AutomaticSize.Y
    UI.Header2.Name = [[Header]]

    UI.Description2 = Instance.new("TextLabel")
    UI.Description2.Parent = UI.info2
    UI.Description2.TextTruncate = Enum.TextTruncate.AtEnd
    UI.Description2.BorderSizePixel = 0
    UI.Description2.TextSize = 12
    UI.Description2.TextXAlignment = Enum.TextXAlignment.Left
    UI.Description2.TextTransparency = 0.7
    UI.Description2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.Description2.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    UI.Description2.TextColor3 = Color3.fromRGB(255, 255, 255)
    UI.Description2.BackgroundTransparency = 1
    UI.Description2.AnchorPoint = Vector2.new(0, 1)
    UI.Description2.Size = UDim2.new(1, 0, 0, 0)
    UI.Description2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.Description2.Text = [[Short description]]
    UI.Description2.AutomaticSize = Enum.AutomaticSize.Y
    UI.Description2.Name = [[Description]]
    UI.Description2.Position = UDim2.new(0, 0, 1, 0)

    UI.input = Instance.new("Frame")
    UI.input.Parent = UI.Text
    UI.input.BorderSizePixel = 0
    UI.input.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.input.Size = UDim2.new(0.31496, 0, 1, 0)
    UI.input.Position = UDim2.new(0.68504, 0, 0, 0)
    UI.input.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.input.Name = [[input]]
    UI.input.LayoutOrder = 2
    UI.input.BackgroundTransparency = 1

    UI.box = Instance.new("TextBox")
    UI.box.Parent = UI.input
    UI.box.Name = [[box]]
    UI.box.PlaceholderColor3 = Color3.fromRGB(57, 57, 57)
    UI.box.BorderSizePixel = 0
    UI.box.TextWrapped = true
    UI.box.AutoLocalize = false
    UI.box.TextSize = 15
    UI.box.TextColor3 = Color3.fromRGB(255, 255, 255)
    UI.box.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
    UI.box.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    UI.box.PlaceholderText = [[Type...]]
    UI.box.Size = UDim2.new(0.9895, 0, -0.76, 73)
    UI.box.Position = UDim2.new(0, 0, 0.14, 0)
    UI.box.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.box.Text = [[]]
    UI.box.LayoutOrder = 1

    UI.Corner4 = Instance.new("UICorner")
    UI.Corner4.Parent = UI.box
    UI.Corner4.Name = [[Corner]]
    UI.Corner4.CornerRadius = UDim.new(0, 18)

    UI.Flex5 = Instance.new("UIFlexItem")
    UI.Flex5.Parent = UI.box
    UI.Flex5.Name = [[Flex]]
    UI.Flex5.FlexMode = Enum.UIFlexMode.Fill

    UI.apply = Instance.new("Frame")
    UI.apply.Parent = UI.Text
    UI.apply.BorderSizePixel = 0
    UI.apply.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.apply.Size = UDim2.new(0.17848, 0, 1, 0)
    UI.apply.Position = UDim2.new(0.82152, 0, 0, 0)
    UI.apply.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.apply.Name = [[apply]]
    UI.apply.LayoutOrder = 2
    UI.apply.BackgroundTransparency = 1

    UI.button = Instance.new("TextButton")
    UI.button.Parent = UI.apply
    UI.button.TextWrapped = true
    UI.button.BorderSizePixel = 0
    UI.button.AutoLocalize = false
    UI.button.TextSize = 15
    UI.button.AutoButtonColor = false
    UI.button.TextColor3 = Color3.fromRGB(255, 255, 255)
    UI.button.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
    UI.button.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    UI.button.Size = UDim2.new(0.9895, 0, -0.76, 73)
    UI.button.LayoutOrder = 1
    UI.button.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.button.Text = [[Apply]]
    UI.button.Name = [[button]]
    UI.button.Position = UDim2.new(0, 0, 0.14, 0)

    UI.Corner5 = Instance.new("UICorner")
    UI.Corner5.Parent = UI.button
    UI.Corner5.Name = [[Corner]]
    UI.Corner5.CornerRadius = UDim.new(0, 18)

    UI.Flex6 = Instance.new("UIFlexItem")
    UI.Flex6.Parent = UI.button
    UI.Flex6.Name = [[Flex]]
    UI.Flex6.FlexMode = Enum.UIFlexMode.Fill

    UI.Switch = Instance.new("Frame")
    UI.Switch.Parent = UI.List3
    UI.Switch.BorderSizePixel = 0
    UI.Switch.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.Switch.Size = UDim2.new(1, 0, 0, 50)
    UI.Switch.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.Switch.Name = [[Switch]]
    UI.Switch.BackgroundTransparency = 1
    CollectionService:AddTag(UI.Switch, [[SettingObject]])

    UI.switch = Instance.new("ImageButton")
    UI.switch.Parent = UI.Switch
    UI.switch.BorderSizePixel = 0
    UI.switch.AutoButtonColor = false
    UI.switch.ImageTransparency = 1
    UI.switch.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
    UI.switch.AnchorPoint = Vector2.new(1, 0.5)
    UI.switch.Size = UDim2.new(0, 45, 0, 27)
    UI.switch.LayoutOrder = 99
    UI.switch.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.switch.Name = [[switch]]
    UI.switch.Position = UDim2.new(1, 0, 0.5, 0)
    UI.switch:SetAttribute([[Enabled]], true)
    UI.switch:SetAttribute([[State]], false)
    CollectionService:AddTag(UI.switch, [[OrbitBooleanSwitch]])

    UI.Corner6 = Instance.new("UICorner")
    UI.Corner6.Parent = UI.switch
    UI.Corner6.Name = [[Corner]]
    UI.Corner6.CornerRadius = UDim.new(1, 0)

    UI.UIPadding = Instance.new("UIPadding")
    UI.UIPadding.Parent = UI.switch
    UI.UIPadding.PaddingRight = UDim.new(0, 5)
    UI.UIPadding.PaddingLeft = UDim.new(0, 5)

    UI.circle = Instance.new("Frame")
    UI.circle.Parent = UI.switch
    UI.circle.BorderSizePixel = 0
    UI.circle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.circle.AnchorPoint = Vector2.new(0, 0.5)
    UI.circle.Size = UDim2.new(0, 19, 0, 19)
    UI.circle.Position = UDim2.new(0, 0, 0.5, 0)
    UI.circle.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.circle.Name = [[circle]]
    UI.circle.BackgroundTransparency = 0.95

    UI.Corner7 = Instance.new("UICorner")
    UI.Corner7.Parent = UI.circle
    UI.Corner7.Name = [[Corner]]
    UI.Corner7.CornerRadius = UDim.new(1, 0)

    UI.Padding3 = Instance.new("UIPadding")
    UI.Padding3.Parent = UI.Switch
    UI.Padding3.PaddingRight = UDim.new(0, 12)
    UI.Padding3.Name = [[Padding]]
    UI.Padding3.PaddingLeft = UDim.new(0, 12)

    UI.holder3 = Instance.new("ImageLabel")
    UI.holder3.Parent = UI.Switch
    UI.holder3.BorderSizePixel = 0
    UI.holder3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    UI.holder3.ImageTransparency = 1
    UI.holder3.AnchorPoint = Vector2.new(0, 0.5)
    UI.holder3.Size = UDim2.new(0, 32, 0, 32)
    UI.holder3.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.holder3.BackgroundTransparency = 0.8
    UI.holder3.LayoutOrder = 1
    UI.holder3.Name = [[holder]]
    UI.holder3.Position = UDim2.new(0, 0, 0.5, 0)

    UI.icon3 = Instance.new("ImageLabel")
    UI.icon3.Parent = UI.holder3
    UI.icon3.BorderSizePixel = 0
    UI.icon3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.icon3.ImageTransparency = 0.5
    UI.icon3.AnchorPoint = Vector2.new(0.5, 0.5)
    UI.icon3.Image = [[rbxassetid://11293977610]]
    UI.icon3.Size = UDim2.new(0, 20, 0, 20)
    UI.icon3.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.icon3.BackgroundTransparency = 1
    UI.icon3.LayoutOrder = 1
    UI.icon3.Name = [[icon]]
    UI.icon3.Position = UDim2.new(0.5, 0, 0.5, 0)

    UI.Corner8 = Instance.new("UICorner")
    UI.Corner8.Parent = UI.holder3
    UI.Corner8.Name = [[Corner]]
    UI.Corner8.CornerRadius = UDim.new(0, 6)

    UI.Extra3 = Instance.new("Folder")
    UI.Extra3.Parent = UI.Switch
    UI.Extra3.Name = [[Extra]]

    UI.Separator3 = Instance.new("Frame")
    UI.Separator3.Parent = UI.Extra3
    UI.Separator3.BorderSizePixel = 0
    UI.Separator3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.Separator3.AnchorPoint = Vector2.new(0.5, 1)
    UI.Separator3.Size = UDim2.new(2, 0, 0, 1)
    UI.Separator3.Position = UDim2.new(0.5, 0, 1, 1)
    UI.Separator3.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.Separator3.Name = [[Separator]]
    UI.Separator3.BackgroundTransparency = 0.98

    UI.List6 = Instance.new("UIListLayout")
    UI.List6.Parent = UI.Switch
    UI.List6.Padding = UDim.new(0, 10)
    UI.List6.VerticalAlignment = Enum.VerticalAlignment.Center
    UI.List6.SortOrder = Enum.SortOrder.LayoutOrder
    UI.List6.Name = [[List]]
    UI.List6.FillDirection = Enum.FillDirection.Horizontal

    UI.info3 = Instance.new("Frame")
    UI.info3.Parent = UI.Switch
    UI.info3.BorderSizePixel = 0
    UI.info3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.info3.Size = UDim2.new(0, 0, 0, 28)
    UI.info3.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.info3.Name = [[info]]
    UI.info3.LayoutOrder = 2
    UI.info3.BackgroundTransparency = 1

    UI.Flex7 = Instance.new("UIFlexItem")
    UI.Flex7.Parent = UI.info3
    UI.Flex7.Name = [[Flex]]
    UI.Flex7.FlexMode = Enum.UIFlexMode.Fill

    UI.Header3 = Instance.new("TextLabel")
    UI.Header3.Parent = UI.info3
    UI.Header3.TextTruncate = Enum.TextTruncate.AtEnd
    UI.Header3.BorderSizePixel = 0
    UI.Header3.TextSize = 14
    UI.Header3.TextXAlignment = Enum.TextXAlignment.Left
    UI.Header3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.Header3.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    UI.Header3.TextColor3 = Color3.fromRGB(255, 255, 255)
    UI.Header3.BackgroundTransparency = 1
    UI.Header3.Size = UDim2.new(1, 0, 0, 0)
    UI.Header3.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.Header3.Text = [[Name]]
    UI.Header3.AutomaticSize = Enum.AutomaticSize.Y
    UI.Header3.Name = [[Header]]

    UI.Description3 = Instance.new("TextLabel")
    UI.Description3.Parent = UI.info3
    UI.Description3.TextTruncate = Enum.TextTruncate.AtEnd
    UI.Description3.BorderSizePixel = 0
    UI.Description3.TextSize = 12
    UI.Description3.TextXAlignment = Enum.TextXAlignment.Left
    UI.Description3.TextTransparency = 0.7
    UI.Description3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.Description3.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    UI.Description3.TextColor3 = Color3.fromRGB(255, 255, 255)
    UI.Description3.BackgroundTransparency = 1
    UI.Description3.AnchorPoint = Vector2.new(0, 1)
    UI.Description3.Size = UDim2.new(1, 0, 0, 0)
    UI.Description3.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.Description3.Text = [[Short description]]
    UI.Description3.AutomaticSize = Enum.AutomaticSize.Y
    UI.Description3.Name = [[Description]]
    UI.Description3.Position = UDim2.new(0, 0, 1, 0)

    UI.Input = Instance.new("Frame")
    UI.Input.Parent = UI.List3
    UI.Input.BorderSizePixel = 0
    UI.Input.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.Input.Size = UDim2.new(1, 0, 0, 50)
    UI.Input.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.Input.Name = [[Input]]
    UI.Input.BackgroundTransparency = 1
    CollectionService:AddTag(UI.Input, [[SettingObject]])

    UI.Padding4 = Instance.new("UIPadding")
    UI.Padding4.Parent = UI.Input
    UI.Padding4.PaddingRight = UDim.new(0, 12)
    UI.Padding4.Name = [[Padding]]
    UI.Padding4.PaddingLeft = UDim.new(0, 12)

    UI.holder4 = Instance.new("ImageLabel")
    UI.holder4.Parent = UI.Input
    UI.holder4.BorderSizePixel = 0
    UI.holder4.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    UI.holder4.ImageTransparency = 1
    UI.holder4.AnchorPoint = Vector2.new(0, 0.5)
    UI.holder4.Size = UDim2.new(0, 32, 0, 32)
    UI.holder4.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.holder4.BackgroundTransparency = 0.8
    UI.holder4.LayoutOrder = 1
    UI.holder4.Name = [[holder]]
    UI.holder4.Position = UDim2.new(0, 0, 0.5, 0)

    UI.icon4 = Instance.new("ImageLabel")
    UI.icon4.Parent = UI.holder4
    UI.icon4.BorderSizePixel = 0
    UI.icon4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.icon4.ImageTransparency = 0.5
    UI.icon4.AnchorPoint = Vector2.new(0.5, 0.5)
    UI.icon4.Image = [[rbxassetid://11293977610]]
    UI.icon4.Size = UDim2.new(0, 20, 0, 20)
    UI.icon4.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.icon4.BackgroundTransparency = 1
    UI.icon4.LayoutOrder = 1
    UI.icon4.Name = [[icon]]
    UI.icon4.Position = UDim2.new(0.5, 0, 0.5, 0)

    UI.Corner9 = Instance.new("UICorner")
    UI.Corner9.Parent = UI.holder4
    UI.Corner9.Name = [[Corner]]
    UI.Corner9.CornerRadius = UDim.new(0, 6)

    UI.Extra4 = Instance.new("Folder")
    UI.Extra4.Parent = UI.Input
    UI.Extra4.Name = [[Extra]]

    UI.Separator4 = Instance.new("Frame")
    UI.Separator4.Parent = UI.Extra4
    UI.Separator4.BorderSizePixel = 0
    UI.Separator4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.Separator4.AnchorPoint = Vector2.new(0.5, 1)
    UI.Separator4.Size = UDim2.new(2, 0, 0, 1)
    UI.Separator4.Position = UDim2.new(0.5, 0, 1, 1)
    UI.Separator4.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.Separator4.Name = [[Separator]]
    UI.Separator4.BackgroundTransparency = 0.98

    UI.List7 = Instance.new("UIListLayout")
    UI.List7.Parent = UI.Input
    UI.List7.Padding = UDim.new(0, 10)
    UI.List7.VerticalAlignment = Enum.VerticalAlignment.Center
    UI.List7.SortOrder = Enum.SortOrder.LayoutOrder
    UI.List7.Name = [[List]]
    UI.List7.FillDirection = Enum.FillDirection.Horizontal

    UI.info4 = Instance.new("Frame")
    UI.info4.Parent = UI.Input
    UI.info4.BorderSizePixel = 0
    UI.info4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.info4.Size = UDim2.new(0, 0, 0, 28)
    UI.info4.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.info4.Name = [[info]]
    UI.info4.LayoutOrder = 2
    UI.info4.BackgroundTransparency = 1

    UI.Flex8 = Instance.new("UIFlexItem")
    UI.Flex8.Parent = UI.info4
    UI.Flex8.Name = [[Flex]]
    UI.Flex8.FlexMode = Enum.UIFlexMode.Fill

    UI.Header4 = Instance.new("TextLabel")
    UI.Header4.Parent = UI.info4
    UI.Header4.TextTruncate = Enum.TextTruncate.AtEnd
    UI.Header4.BorderSizePixel = 0
    UI.Header4.TextSize = 14
    UI.Header4.TextXAlignment = Enum.TextXAlignment.Left
    UI.Header4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.Header4.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    UI.Header4.TextColor3 = Color3.fromRGB(255, 255, 255)
    UI.Header4.BackgroundTransparency = 1
    UI.Header4.Size = UDim2.new(1, 0, 0, 0)
    UI.Header4.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.Header4.Text = [[Name]]
    UI.Header4.AutomaticSize = Enum.AutomaticSize.Y
    UI.Header4.Name = [[Header]]

    UI.Description4 = Instance.new("TextLabel")
    UI.Description4.Parent = UI.info4
    UI.Description4.TextTruncate = Enum.TextTruncate.AtEnd
    UI.Description4.BorderSizePixel = 0
    UI.Description4.TextSize = 12
    UI.Description4.TextXAlignment = Enum.TextXAlignment.Left
    UI.Description4.TextTransparency = 0.7
    UI.Description4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.Description4.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    UI.Description4.TextColor3 = Color3.fromRGB(255, 255, 255)
    UI.Description4.BackgroundTransparency = 1
    UI.Description4.AnchorPoint = Vector2.new(0, 1)
    UI.Description4.Size = UDim2.new(1, 0, 0, 0)
    UI.Description4.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.Description4.Text = [[Short description]]
    UI.Description4.AutomaticSize = Enum.AutomaticSize.Y
    UI.Description4.Name = [[Description]]
    UI.Description4.Position = UDim2.new(0, 0, 1, 0)

    UI.reset = Instance.new("ImageButton")
    UI.reset.Parent = UI.Input
    UI.reset.Active = false
    UI.reset.BorderSizePixel = 0
    UI.reset.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
    UI.reset.Selectable = false
    UI.reset.Size = UDim2.new(0.6, 0, 0.6, 0)
    UI.reset.LayoutOrder = 3
    UI.reset.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.reset.Name = [[reset]]
    UI.reset.Position = UDim2.new(0.82152, 0, 0, 0)

    UI.Corner10 = Instance.new("UICorner")
    UI.Corner10.Parent = UI.reset
    UI.Corner10.Name = [[Corner]]
    UI.Corner10.CornerRadius = UDim.new(1, 0)

    UI.UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
    UI.UIAspectRatioConstraint.Parent = UI.reset

    UI.button2 = Instance.new("ImageLabel")
    UI.button2.Parent = UI.reset
    UI.button2.Active = true
    UI.button2.BorderSizePixel = 0
    UI.button2.AutoLocalize = false
    UI.button2.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
    UI.button2.AnchorPoint = Vector2.new(0.5, 0.5)
    UI.button2.Image = [[rbxassetid://11963357970]]
    UI.button2.Size = UDim2.new(0.8, 0, 0.8, 0)
    UI.button2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.button2.BackgroundTransparency = 1
    UI.button2.LayoutOrder = 1
    UI.button2.Selectable = true
    UI.button2.Name = [[button]]
    UI.button2.Position = UDim2.new(0.5, 0, 0.5, 0)

    UI.key = Instance.new("Frame")
    UI.key.Parent = UI.Input
    UI.key.BorderSizePixel = 0
    UI.key.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.key.Size = UDim2.new(0.15, 0, 1, 0)
    UI.key.Position = UDim2.new(0.68504, 0, 0, 0)
    UI.key.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.key.Name = [[key]]
    UI.key.LayoutOrder = 4
    UI.key.BackgroundTransparency = 1

    UI.box2 = Instance.new("TextButton")
    UI.box2.Parent = UI.key
    UI.box2.BorderSizePixel = 0
    UI.box2.AutoLocalize = false
    UI.box2.TextSize = 16
    UI.box2.TextColor3 = Color3.fromRGB(255, 255, 255)
    UI.box2.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
    UI.box2.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    UI.box2.AnchorPoint = Vector2.new(0, 0.5)
    UI.box2.Size = UDim2.new(0.99, 0, -0.76, 79)
    UI.box2.LayoutOrder = 1
    UI.box2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.box2.Text = [[...]]
    UI.box2.Name = [[box]]
    UI.box2.Position = UDim2.new(0, 0, 0.5, 0)

    UI.Corner11 = Instance.new("UICorner")
    UI.Corner11.Parent = UI.box2
    UI.Corner11.Name = [[Corner]]
    UI.Corner11.CornerRadius = UDim.new(0, 18)

    UI.Flex9 = Instance.new("UIFlexItem")
    UI.Flex9.Parent = UI.box2
    UI.Flex9.Name = [[Flex]]
    UI.Flex9.FlexMode = Enum.UIFlexMode.Fill

    UI.Selection = Instance.new("ImageButton")
    UI.Selection.Parent = UI.List3
    UI.Selection.Active = false
    UI.Selection.BorderSizePixel = 0
    UI.Selection.BackgroundTransparency = 1
    UI.Selection.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    UI.Selection.Selectable = false
    UI.Selection.Size = UDim2.new(1, 0, 0, 50)
    UI.Selection.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.Selection.Name = [[Selection]]
    CollectionService:AddTag(UI.Selection, [[SettingObject]])

    UI.Padding5 = Instance.new("UIPadding")
    UI.Padding5.Parent = UI.Selection
    UI.Padding5.PaddingRight = UDim.new(0, 12)
    UI.Padding5.Name = [[Padding]]
    UI.Padding5.PaddingLeft = UDim.new(0, 12)

    UI.holder5 = Instance.new("ImageLabel")
    UI.holder5.Parent = UI.Selection
    UI.holder5.BorderSizePixel = 0
    UI.holder5.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    UI.holder5.ImageTransparency = 1
    UI.holder5.AnchorPoint = Vector2.new(0, 0.5)
    UI.holder5.Size = UDim2.new(0, 32, 0, 32)
    UI.holder5.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.holder5.BackgroundTransparency = 0.8
    UI.holder5.LayoutOrder = 1
    UI.holder5.Name = [[holder]]
    UI.holder5.Position = UDim2.new(0, 0, 0.5, 0)

    UI.icon5 = Instance.new("ImageLabel")
    UI.icon5.Parent = UI.holder5
    UI.icon5.BorderSizePixel = 0
    UI.icon5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.icon5.ImageTransparency = 0.5
    UI.icon5.AnchorPoint = Vector2.new(0.5, 0.5)
    UI.icon5.Image = [[rbxassetid://11293977610]]
    UI.icon5.Size = UDim2.new(0, 20, 0, 20)
    UI.icon5.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.icon5.BackgroundTransparency = 1
    UI.icon5.LayoutOrder = 1
    UI.icon5.Name = [[icon]]
    UI.icon5.Position = UDim2.new(0.5, 0, 0.5, 0)

    UI.Corner12 = Instance.new("UICorner")
    UI.Corner12.Parent = UI.holder5
    UI.Corner12.Name = [[Corner]]
    UI.Corner12.CornerRadius = UDim.new(0, 6)

    UI.Extra5 = Instance.new("Folder")
    UI.Extra5.Parent = UI.Selection
    UI.Extra5.Name = [[Extra]]

    UI.Separator5 = Instance.new("Frame")
    UI.Separator5.Parent = UI.Extra5
    UI.Separator5.BorderSizePixel = 0
    UI.Separator5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.Separator5.AnchorPoint = Vector2.new(0.5, 1)
    UI.Separator5.Size = UDim2.new(2, 0, 0, 1)
    UI.Separator5.Position = UDim2.new(0.5, 0, 1, 1)
    UI.Separator5.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.Separator5.Name = [[Separator]]
    UI.Separator5.BackgroundTransparency = 0.98

    UI.List8 = Instance.new("UIListLayout")
    UI.List8.Parent = UI.Selection
    UI.List8.Padding = UDim.new(0, 10)
    UI.List8.VerticalAlignment = Enum.VerticalAlignment.Center
    UI.List8.SortOrder = Enum.SortOrder.LayoutOrder
    UI.List8.Name = [[List]]
    UI.List8.FillDirection = Enum.FillDirection.Horizontal

    UI.info5 = Instance.new("Frame")
    UI.info5.Parent = UI.Selection
    UI.info5.BorderSizePixel = 0
    UI.info5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.info5.Size = UDim2.new(0, 0, 0, 28)
    UI.info5.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.info5.Name = [[info]]
    UI.info5.LayoutOrder = 2
    UI.info5.BackgroundTransparency = 1

    UI.Flex10 = Instance.new("UIFlexItem")
    UI.Flex10.Parent = UI.info5
    UI.Flex10.Name = [[Flex]]
    UI.Flex10.FlexMode = Enum.UIFlexMode.Fill

    UI.Header5 = Instance.new("TextLabel")
    UI.Header5.Parent = UI.info5
    UI.Header5.TextTruncate = Enum.TextTruncate.AtEnd
    UI.Header5.BorderSizePixel = 0
    UI.Header5.TextSize = 14
    UI.Header5.TextXAlignment = Enum.TextXAlignment.Left
    UI.Header5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.Header5.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    UI.Header5.TextColor3 = Color3.fromRGB(255, 255, 255)
    UI.Header5.BackgroundTransparency = 1
    UI.Header5.Size = UDim2.new(1, 0, 0, 0)
    UI.Header5.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.Header5.Text = [[Name]]
    UI.Header5.AutomaticSize = Enum.AutomaticSize.Y
    UI.Header5.Name = [[Header]]

    UI.Description5 = Instance.new("TextLabel")
    UI.Description5.Parent = UI.info5
    UI.Description5.TextTruncate = Enum.TextTruncate.AtEnd
    UI.Description5.BorderSizePixel = 0
    UI.Description5.TextSize = 12
    UI.Description5.TextXAlignment = Enum.TextXAlignment.Left
    UI.Description5.TextTransparency = 0.7
    UI.Description5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.Description5.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    UI.Description5.TextColor3 = Color3.fromRGB(255, 255, 255)
    UI.Description5.BackgroundTransparency = 1
    UI.Description5.AnchorPoint = Vector2.new(0, 1)
    UI.Description5.Size = UDim2.new(1, 0, 0, 0)
    UI.Description5.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.Description5.Text = [[Short description]]
    UI.Description5.AutomaticSize = Enum.AutomaticSize.Y
    UI.Description5.Name = [[Description]]
    UI.Description5.Position = UDim2.new(0, 0, 1, 0)

    UI.icon6 = Instance.new("ImageLabel")
    UI.icon6.Parent = UI.Selection
    UI.icon6.BorderSizePixel = 0
    UI.icon6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.icon6.Image = [[rbxassetid://11293977610]]
    UI.icon6.Size = UDim2.new(0.5, 0, 0.5, 0)
    UI.icon6.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.icon6.BackgroundTransparency = 1
    UI.icon6.LayoutOrder = 99
    UI.icon6.Name = [[icon]]

    UI.aspect = Instance.new("UIAspectRatioConstraint")
    UI.aspect.Parent = UI.icon6
    UI.aspect.Name = [[aspect]]

    UI.value = Instance.new("TextLabel")
    UI.value.Parent = UI.Selection
    UI.value.BorderSizePixel = 0
    UI.value.TextSize = 14
    UI.value.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
    UI.value.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    UI.value.TextColor3 = Color3.fromRGB(255, 255, 255)
    UI.value.Size = UDim2.new(0, 125, 0, 30)
    UI.value.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.value.Text = [[Left]]
    UI.value.LayoutOrder = 98
    UI.value.AutomaticSize = Enum.AutomaticSize.X
    UI.value.Name = [[value]]

    UI.Corner13 = Instance.new("UICorner")
    UI.Corner13.Parent = UI.value
    UI.Corner13.Name = [[Corner]]
    UI.Corner13.CornerRadius = UDim.new(0, 18)

    UI.Header6 = Instance.new("TextLabel")
    UI.Header6.Parent = UI.item2
    UI.Header6.BorderSizePixel = 0
    UI.Header6.TextSize = 14
    UI.Header6.TextXAlignment = Enum.TextXAlignment.Left
    UI.Header6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.Header6.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    UI.Header6.TextColor3 = Color3.fromRGB(176, 176, 176)
    UI.Header6.BackgroundTransparency = 1
    UI.Header6.Size = UDim2.new(1, 0, 0, 0)
    UI.Header6.Visible = false
    UI.Header6.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.Header6.Text = [[Header]]
    UI.Header6.AutomaticSize = Enum.AutomaticSize.Y
    UI.Header6.Name = [[Header]]

    UI.Padding6 = Instance.new("UIPadding")
    UI.Padding6.Parent = UI.Header6
    UI.Padding6.PaddingTop = UDim.new(0, 10)
    UI.Padding6.Name = [[Padding]]
    UI.Padding6.PaddingLeft = UDim.new(0, 15)

    UI.Scale = Instance.new("UIScale")
    UI.Scale.Parent = UI.scroll
    UI.Scale.Name = [[Scale]]

    UI.Padding7 = Instance.new("UIPadding")
    UI.Padding7.Parent = UI.scroll
    UI.Padding7.PaddingTop = UDim.new(0, 10)
    UI.Padding7.PaddingRight = UDim.new(0, 10)
    UI.Padding7.Name = [[Padding]]
    UI.Padding7.PaddingLeft = UDim.new(0, 10)
    UI.Padding7.PaddingBottom = UDim.new(0, 10)

    UI.Loading = Instance.new("Frame")
    UI.Loading.Parent = UI.display
    UI.Loading.Visible = false
    UI.Loading.ZIndex = 999999999
    UI.Loading.BorderSizePixel = 0
    UI.Loading.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
    UI.Loading.AnchorPoint = Vector2.new(0.5, 0.5)
    UI.Loading.Size = UDim2.new(1, 0, 1, 0)
    UI.Loading.Position = UDim2.new(0.5, 0, 0.5, 0)
    UI.Loading.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.Loading.Name = [[Loading]]

    UI.Proccess = Instance.new("TextLabel")
    UI.Proccess.Parent = UI.Loading
    UI.Proccess.BorderSizePixel = 0
    UI.Proccess.AutoLocalize = false
    UI.Proccess.TextSize = 15
    UI.Proccess.TextTransparency = 0.9
    UI.Proccess.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.Proccess.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    UI.Proccess.TextColor3 = Color3.fromRGB(255, 255, 255)
    UI.Proccess.BackgroundTransparency = 1
    UI.Proccess.AnchorPoint = Vector2.new(0.5, 0.5)
    UI.Proccess.Size = UDim2.new(1, 0, 0, 20)
    UI.Proccess.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.Proccess.Text = [[Loading]]
    UI.Proccess.Name = [[Proccess]]
    UI.Proccess.Position = UDim2.new(0.5, 0, 0.5, 0)

    UI.corner2 = Instance.new("UICorner")
    UI.corner2.Parent = UI.Loading
    UI.corner2.Name = [[corner]]
    UI.corner2.CornerRadius = UDim.new(0, 16)

    UI.topbar = Instance.new("Frame")
    UI.topbar.Parent = UI.item
    UI.topbar.ZIndex = 12
    UI.topbar.BorderSizePixel = 0
    UI.topbar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.topbar.Size = UDim2.new(1, 0, 0, 40)
    UI.topbar.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.topbar.Name = [[topbar]]
    UI.topbar.LayoutOrder = 1
    UI.topbar.BackgroundTransparency = 1

    UI.reset2 = Instance.new("ImageButton")
    UI.reset2.Parent = UI.topbar
    UI.reset2.BorderSizePixel = 0
    UI.reset2.SliceCenter = Rect.new(512, 512, 512, 512)
    UI.reset2.ScaleType = Enum.ScaleType.Slice
    UI.reset2.AutoButtonColor = false
    UI.reset2.ImageTransparency = 1
    UI.reset2.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
    UI.reset2.AutomaticSize = Enum.AutomaticSize.X
    UI.reset2.Size = UDim2.new(0.5, 0, 1, 0)
    UI.reset2.LayoutOrder = 2
    UI.reset2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.reset2.Name = [[reset]]
    CollectionService:AddTag(UI.reset2, [[OrbitActionButton]])

    UI.icon7 = Instance.new("ImageLabel")
    UI.icon7.Parent = UI.reset2
    UI.icon7.BorderSizePixel = 0
    UI.icon7.ScaleType = Enum.ScaleType.Fit
    UI.icon7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.icon7.ImageTransparency = 0.5
    UI.icon7.AnchorPoint = Vector2.new(0.5, 0.5)
    UI.icon7.Image = [[rbxassetid://11432856422]]
    UI.icon7.Size = UDim2.new(0, 20, 0, 20)
    UI.icon7.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.icon7.BackgroundTransparency = 1
    UI.icon7.Name = [[icon]]
    UI.icon7.Position = UDim2.new(0.5, 0, 0.5, 0)

    UI.Corner14 = Instance.new("UICorner")
    UI.Corner14.Parent = UI.reset2
    UI.Corner14.Name = [[Corner]]
    UI.Corner14.CornerRadius = UDim.new(0, 12)

    UI.Scale2 = Instance.new("UIScale")
    UI.Scale2.Parent = UI.reset2
    UI.Scale2.Name = [[Scale]]

    UI.Padding8 = Instance.new("UIPadding")
    UI.Padding8.Parent = UI.reset2
    UI.Padding8.PaddingTop = UDim.new(0, 4)
    UI.Padding8.PaddingRight = UDim.new(0, 14)
    UI.Padding8.Name = [[Padding]]
    UI.Padding8.PaddingLeft = UDim.new(0, 14)
    UI.Padding8.PaddingBottom = UDim.new(0, 4)

    UI.List9 = Instance.new("UIListLayout")
    UI.List9.Parent = UI.reset2
    UI.List9.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UI.List9.Padding = UDim.new(0, 12)
    UI.List9.VerticalAlignment = Enum.VerticalAlignment.Center
    UI.List9.SortOrder = Enum.SortOrder.LayoutOrder
    UI.List9.Name = [[List]]
    UI.List9.FillDirection = Enum.FillDirection.Horizontal

    UI.name2 = Instance.new("TextLabel")
    UI.name2.Parent = UI.reset2
    UI.name2.BorderSizePixel = 0
    UI.name2.TextSize = 14
    UI.name2.TextTransparency = 0.6
    UI.name2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.name2.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    UI.name2.TextColor3 = Color3.fromRGB(255, 255, 255)
    UI.name2.BackgroundTransparency = 1
    UI.name2.Size = UDim2.new(0, 0, 1, 0)
    UI.name2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.name2.Text = [[Reset Settings]]
    UI.name2.LayoutOrder = 1
    UI.name2.AutomaticSize = Enum.AutomaticSize.X
    UI.name2.Name = [[name]]

    UI.Flex11 = Instance.new("UIFlexItem")
    UI.Flex11.Parent = UI.reset2
    UI.Flex11.Name = [[Flex]]
    UI.Flex11.FlexMode = Enum.UIFlexMode.Fill

    UI.list2 = Instance.new("UIListLayout")
    UI.list2.Parent = UI.topbar
    UI.list2.Padding = UDim.new(0, 10)
    UI.list2.VerticalAlignment = Enum.VerticalAlignment.Center
    UI.list2.SortOrder = Enum.SortOrder.LayoutOrder
    UI.list2.Name = [[list]]
    UI.list2.FillDirection = Enum.FillDirection.Horizontal

    UI.back = Instance.new("ImageButton")
    UI.back.Parent = UI.topbar
    UI.back.BorderSizePixel = 0
    UI.back.SliceCenter = Rect.new(512, 512, 512, 512)
    UI.back.ScaleType = Enum.ScaleType.Slice
    UI.back.AutoButtonColor = false
    UI.back.ImageTransparency = 1
    UI.back.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
    UI.back.Size = UDim2.new(0, 48, 1, 0)
    UI.back.LayoutOrder = 3
    UI.back.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.back.Name = [[back]]
    CollectionService:AddTag(UI.back, [[OrbitActionButton]])
    CollectionService:AddTag(UI.back, [[OrbitSettingCloseButton]])

    UI.Corner15 = Instance.new("UICorner")
    UI.Corner15.Parent = UI.back
    UI.Corner15.Name = [[Corner]]
    UI.Corner15.CornerRadius = UDim.new(0, 12)

    UI.Scale3 = Instance.new("UIScale")
    UI.Scale3.Parent = UI.back
    UI.Scale3.Name = [[Scale]]

    UI.Padding9 = Instance.new("UIPadding")
    UI.Padding9.Parent = UI.back
    UI.Padding9.PaddingTop = UDim.new(0, 4)
    UI.Padding9.PaddingRight = UDim.new(0, 14)
    UI.Padding9.Name = [[Padding]]
    UI.Padding9.PaddingLeft = UDim.new(0, 14)
    UI.Padding9.PaddingBottom = UDim.new(0, 4)

    UI.List10 = Instance.new("UIListLayout")
    UI.List10.Parent = UI.back
    UI.List10.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UI.List10.Padding = UDim.new(0, 12)
    UI.List10.VerticalAlignment = Enum.VerticalAlignment.Center
    UI.List10.SortOrder = Enum.SortOrder.LayoutOrder
    UI.List10.Name = [[List]]
    UI.List10.FillDirection = Enum.FillDirection.Horizontal

    UI.icon8 = Instance.new("ImageLabel")
    UI.icon8.Parent = UI.back
    UI.icon8.BorderSizePixel = 0
    UI.icon8.ScaleType = Enum.ScaleType.Fit
    UI.icon8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.icon8.ImageTransparency = 0.5
    UI.icon8.AnchorPoint = Vector2.new(0.5, 0.5)
    UI.icon8.Image = [[rbxassetid://11293981586]]
    UI.icon8.Size = UDim2.new(0, 20, 0, 20)
    UI.icon8.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.icon8.BackgroundTransparency = 1
    UI.icon8.Name = [[icon]]
    UI.icon8.Position = UDim2.new(0.5, 0, 0.5, 0)

    UI.Layout = Instance.new("UIListLayout")
    UI.Layout.Parent = UI.item
    UI.Layout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UI.Layout.Padding = UDim.new(0, 15)
    UI.Layout.SortOrder = Enum.SortOrder.LayoutOrder
    UI.Layout.Name = [[Layout]]

    UI.padding2 = Instance.new("UIPadding")
    UI.padding2.Parent = UI.item
    UI.padding2.PaddingTop = UDim.new(0, 12)
    UI.padding2.PaddingRight = UDim.new(0, 20)
    UI.padding2.Name = [[padding]]
    UI.padding2.PaddingLeft = UDim.new(0, 20)
    UI.padding2.PaddingBottom = UDim.new(0, 20)

    UI.selection = Instance.new("ScrollingFrame")
    UI.selection.Parent = UI.content
    UI.selection.Active = true
    UI.selection.ScrollingDirection = Enum.ScrollingDirection.Y
    UI.selection.BorderSizePixel = 0
    UI.selection.CanvasSize = UDim2.new(0, 0, 0, 0)
    UI.selection.Name = [[selection]]
    UI.selection.ScrollBarImageTransparency = 1
    UI.selection.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.selection.AnchorPoint = Vector2.new(0.5, 0.5)
    UI.selection.AutomaticCanvasSize = Enum.AutomaticSize.Y
    UI.selection.Size = UDim2.new(1, 0, 1, 0)
    UI.selection.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
    UI.selection.Position = UDim2.new(0.5, 0, 0.5, 0)
    UI.selection.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.selection.ScrollBarThickness = 0
    UI.selection.BackgroundTransparency = 1

    UI.Layout2 = Instance.new("UIListLayout")
    UI.Layout2.Parent = UI.selection
    UI.Layout2.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UI.Layout2.Padding = UDim.new(0, 6)
    UI.Layout2.SortOrder = Enum.SortOrder.LayoutOrder
    UI.Layout2.Name = [[Layout]]

    UI.item3 = Instance.new("ImageButton")
    UI.item3.Parent = UI.Layout2
    UI.item3.BorderSizePixel = 0
    UI.item3.AutoButtonColor = false
    UI.item3.ImageTransparency = 1
    UI.item3.BackgroundTransparency = 0.4
    UI.item3.BackgroundColor3 = Color3.fromRGB(21, 21, 21)
    UI.item3.Size = UDim2.new(1, 0, 0, 75)
    UI.item3.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.item3.Name = [[item]]
    UI.item3.Position = UDim2.new(0, 0, 0.76415, 0)
    CollectionService:AddTag(UI.item3, [[OrbitSettingNavigationButton]])

    UI.Padding10 = Instance.new("UIPadding")
    UI.Padding10.Parent = UI.item3
    UI.Padding10.PaddingTop = UDim.new(0, 15)
    UI.Padding10.PaddingRight = UDim.new(0, 18)
    UI.Padding10.Name = [[Padding]]
    UI.Padding10.PaddingLeft = UDim.new(0, 15)
    UI.Padding10.PaddingBottom = UDim.new(0, 15)

    UI.Layout3 = Instance.new("UIListLayout")
    UI.Layout3.Parent = UI.item3
    UI.Layout3.Padding = UDim.new(0, 12)
    UI.Layout3.VerticalAlignment = Enum.VerticalAlignment.Center
    UI.Layout3.SortOrder = Enum.SortOrder.LayoutOrder
    UI.Layout3.Name = [[Layout]]
    UI.Layout3.FillDirection = Enum.FillDirection.Horizontal

    UI.Corner16 = Instance.new("UICorner")
    UI.Corner16.Parent = UI.item3
    UI.Corner16.Name = [[Corner]]
    UI.Corner16.CornerRadius = UDim.new(0, 20)

    UI.holder6 = Instance.new("ImageLabel")
    UI.holder6.Parent = UI.item3
    UI.holder6.BorderSizePixel = 0
    UI.holder6.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    UI.holder6.ImageTransparency = 1
    UI.holder6.AnchorPoint = Vector2.new(0.5, 0.5)
    UI.holder6.Size = UDim2.new(0, 45, 0, 45)
    UI.holder6.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.holder6.BackgroundTransparency = 0.8
    UI.holder6.LayoutOrder = 1
    UI.holder6.Name = [[holder]]

    UI.icon9 = Instance.new("ImageLabel")
    UI.icon9.Parent = UI.holder6
    UI.icon9.BorderSizePixel = 0
    UI.icon9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.icon9.ImageTransparency = 0.25
    UI.icon9.AnchorPoint = Vector2.new(0.5, 0.5)
    UI.icon9.Image = [[rbxassetid://12974354535]]
    UI.icon9.Size = UDim2.new(0, 26, 0, 26)
    UI.icon9.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.icon9.BackgroundTransparency = 1
    UI.icon9.LayoutOrder = 1
    UI.icon9.Name = [[icon]]
    UI.icon9.Position = UDim2.new(0.5, 0, 0.5, 0)

    UI.Corner17 = Instance.new("UICorner")
    UI.Corner17.Parent = UI.holder6
    UI.Corner17.Name = [[Corner]]
    UI.Corner17.CornerRadius = UDim.new(0, 14)

    UI.enter = Instance.new("ImageLabel")
    UI.enter.Parent = UI.item3
    UI.enter.BorderSizePixel = 0
    UI.enter.ScaleType = Enum.ScaleType.Fit
    UI.enter.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.enter.ImageTransparency = 0.5
    UI.enter.AnchorPoint = Vector2.new(0.5, 0.5)
    UI.enter.Image = [[rbxassetid://11419703997]]
    UI.enter.Size = UDim2.new(0, 15, 0, 15)
    UI.enter.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.enter.BackgroundTransparency = 1
    UI.enter.LayoutOrder = 5
    UI.enter.Name = [[enter]]
    UI.enter.Position = UDim2.new(0.5, 0, 0.5, 0)

    UI.Directory = Instance.new("ObjectValue")
    UI.Directory.Parent = UI.item3
    UI.Directory.Name = [[Directory]]

    UI.topbar2 = Instance.new("Frame")
    UI.topbar2.Parent = UI.item3
    UI.topbar2.BorderSizePixel = 0
    UI.topbar2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.topbar2.AnchorPoint = Vector2.new(0.5, 0)
    UI.topbar2.AutomaticSize = Enum.AutomaticSize.XY
    UI.topbar2.Position = UDim2.new(0.5, 0, 0, 0)
    UI.topbar2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.topbar2.Name = [[topbar]]
    UI.topbar2.LayoutOrder = 2
    UI.topbar2.BackgroundTransparency = 1

    UI.title = Instance.new("TextLabel")
    UI.title.Parent = UI.topbar2
    UI.title.BorderSizePixel = 0
    UI.title.AutoLocalize = false
    UI.title.TextSize = 16
    UI.title.TextXAlignment = Enum.TextXAlignment.Left
    UI.title.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    UI.title.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    UI.title.TextColor3 = Color3.fromRGB(255, 255, 255)
    UI.title.BackgroundTransparency = 1
    UI.title.AnchorPoint = Vector2.new(0.5, 1)
    UI.title.Size = UDim2.new(1, 0, 0, 0)
    UI.title.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.title.Text = [[Advanced Settings]]
    UI.title.LayoutOrder = 1
    UI.title.AutomaticSize = Enum.AutomaticSize.XY
    UI.title.Name = [[title]]
    UI.title.Position = UDim2.new(0.5, 0, 1, -10)

    UI.Layout4 = Instance.new("UIListLayout")
    UI.Layout4.Parent = UI.topbar2
    UI.Layout4.SortOrder = Enum.SortOrder.LayoutOrder
    UI.Layout4.Name = [[Layout]]

    UI.description = Instance.new("TextLabel")
    UI.description.Parent = UI.topbar2
    UI.description.TextWrapped = true
    UI.description.BorderSizePixel = 0
    UI.description.AutoLocalize = false
    UI.description.TextSize = 14
    UI.description.TextXAlignment = Enum.TextXAlignment.Left
    UI.description.TextTransparency = 0.6
    UI.description.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    UI.description.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    UI.description.TextColor3 = Color3.fromRGB(255, 255, 255)
    UI.description.BackgroundTransparency = 1
    UI.description.AnchorPoint = Vector2.new(0.5, 1)
    UI.description.Size = UDim2.new(1, 0, 0, 0)
    UI.description.ClipsDescendants = true
    UI.description.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.description.Text = [[Make your experience better with advanced changes]]
    UI.description.LayoutOrder = 1
    UI.description.AutomaticSize = Enum.AutomaticSize.XY
    UI.description.Name = [[description]]
    UI.description.Position = UDim2.new(0.5, 0, 1, -10)

    UI.Flex12 = Instance.new("UIFlexItem")
    UI.Flex12.Parent = UI.topbar2
    UI.Flex12.Name = [[Flex]]
    UI.Flex12.FlexMode = Enum.UIFlexMode.Fill

    UI.Flex13 = Instance.new("UIFlexItem")
    UI.Flex13.Parent = UI.selection
    UI.Flex13.Name = [[Flex]]
    UI.Flex13.FlexMode = Enum.UIFlexMode.Fill

    UI.padding3 = Instance.new("UIPadding")
    UI.padding3.Parent = UI.selection
    UI.padding3.PaddingTop = UDim.new(0, 12)
    UI.padding3.PaddingRight = UDim.new(0, 16)
    UI.padding3.Name = [[padding]]
    UI.padding3.PaddingLeft = UDim.new(0, 16)
    UI.padding3.PaddingBottom = UDim.new(0, 12)

    UI.Layout5 = Instance.new("UIPageLayout")
    UI.Layout5.Parent = UI.content
    UI.Layout5.EasingStyle = Enum.EasingStyle.Exponential
    UI.Layout5.SortOrder = Enum.SortOrder.LayoutOrder
    UI.Layout5.Name = [[Layout]]
    UI.Layout5.TweenTime = 0.3
    return UI.settings
end

local SettignsTab = {}
function SettignsTab:Create(WindowTable)
    local settingsFrame = CreateSettings(WindowTable)
end
return SettignsTab