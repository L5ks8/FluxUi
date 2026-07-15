local Maintab = {}

function Maintab:Create(WindowTable)
    local UI = {}
    local screen = WindowTable.Content:FindFirstChild('screen')
    if not screen then return end
    UI.home2 = Instance.new("ImageButton")
    UI.home2.BorderSizePixel = 0
    UI.home2.AutoButtonColor = false
    UI.home2.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    UI.home2.Selectable = false
    UI.home2.Size = UDim2.new(1, 0, 1, 0)
    UI.home2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.home2.Name = "home"
    UI.home2.Position = UDim2.new(-0.01539, 0, 0, 0)
    UI.home2.Parent = screen

    UI.scroll = Instance.new("ScrollingFrame")
    UI.scroll.Active = true
    UI.scroll.ScrollingDirection = Enum.ScrollingDirection.Y
    UI.scroll.BorderSizePixel = 0
    UI.scroll.CanvasSize = UDim2.new(0, 0, 0, 0)
    UI.scroll.Name = "scroll"
    UI.scroll.ScrollBarImageTransparency = 1
    UI.scroll.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.scroll.AnchorPoint = Vector2.new(0.5, 0.5)
    UI.scroll.AutomaticCanvasSize = Enum.AutomaticSize.Y
    UI.scroll.Size = UDim2.new(1, 0, 1, 0)
    UI.scroll.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
    UI.scroll.Position = UDim2.new(0.5, 0, 0.5, 0)
    UI.scroll.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.scroll.ScrollBarThickness = 0
    UI.scroll.BackgroundTransparency = 1
    UI.scroll.Parent = UI.home2

    UI.padding12 = Instance.new("UIPadding")
    UI.padding12.PaddingRight = UDim.new(0, 20)
    UI.padding12.Name = "padding"
    UI.padding12.PaddingLeft = UDim.new(0, 20)
    UI.padding12.PaddingBottom = UDim.new(0, 5)
    UI.padding12.Parent = UI.scroll

    UI.list18 = Instance.new("UIListLayout")
    UI.list18.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UI.list18.Padding = UDim.new(0, 15)
    UI.list18.SortOrder = Enum.SortOrder.LayoutOrder
    UI.list18.Name = "list"
    UI.list18.Parent = UI.scroll

    UI.people = Instance.new("Frame")
    UI.people.BorderSizePixel = 0
    UI.people.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.people.AutomaticSize = Enum.AutomaticSize.Y
    UI.people.Size = UDim2.new(1, 0, 0, 0)
    UI.people.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.people.Name = "people"
    UI.people.LayoutOrder = 5
    UI.people.BackgroundTransparency = 1
    UI.people.Parent = UI.scroll

    UI.padding13 = Instance.new("UIPadding")
    UI.padding13.Name = "padding"
    UI.padding13.PaddingBottom = UDim.new(0, 5)
    UI.padding13.Parent = UI.people

    UI.list19 = Instance.new("UIListLayout")
    UI.list19.Wraps = true
    UI.list19.Padding = UDim.new(0, 10)
    UI.list19.SortOrder = Enum.SortOrder.LayoutOrder
    UI.list19.Name = "list"
    UI.list19.FillDirection = Enum.FillDirection.Horizontal
    UI.list19.Parent = UI.people

    UI.count = Instance.new("ImageButton")
    UI.count.SliceScale = 0.05
    UI.count.BorderSizePixel = 0
    UI.count.SliceCenter = Rect.new(512, 512, 512, 512)
    UI.count.ScaleType = Enum.ScaleType.Slice
    UI.count.AutoButtonColor = false
    UI.count.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
    UI.count.ImageColor3 = Color3.fromRGB(28, 28, 28)
    UI.count.Size = UDim2.new(0, 160, 0, 200)
    UI.count.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.count.Name = "count"
    UI.count.Parent = UI.people

    UI.meter = Instance.new("Frame")
    UI.meter.BorderSizePixel = 0
    UI.meter.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.meter.Size = UDim2.new(1, 0, 0, 100)
    UI.meter.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.meter.Name = "meter"
    UI.meter.BackgroundTransparency = 1
    UI.meter.Parent = UI.count

    UI.bg = Instance.new("ImageLabel")
    UI.bg.BorderSizePixel = 0
    UI.bg.ScaleType = Enum.ScaleType.Fit
    UI.bg.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.bg.ImageColor3 = Color3.fromRGB(36, 36, 36)
    UI.bg.AnchorPoint = Vector2.new(0.5, 0)
    UI.bg.Image = "rbxassetid://91532298213965"
    UI.bg.Size = UDim2.new(0, 100, 0, 100)
    UI.bg.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.bg.BackgroundTransparency = 1
    UI.bg.Name = "bg"
    UI.bg.Position = UDim2.new(0.5, 0, 0.5, 0)
    UI.bg.Parent = UI.meter

    UI.line = Instance.new("ImageLabel")
    UI.line.BorderSizePixel = 0
    UI.line.ScaleType = Enum.ScaleType.Fit
    UI.line.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    UI.line.ImageColor3 = Color3.fromRGB(0, 141, 255)
    UI.line.AnchorPoint = Vector2.new(0.5, 0)
    UI.line.Image = "rbxassetid://91532298213965"
    UI.line.Size = UDim2.new(0, 100, 0, 100)
    UI.line.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.line.BackgroundTransparency = 1
    UI.line.Rotation = -180
    UI.line.Name = "line"
    UI.line.Position = UDim2.new(0.5, 0, 0.5, 0)
    UI.line.Parent = UI.meter

    UI.cover = Instance.new("Frame")
    UI.cover.BorderSizePixel = 0
    UI.cover.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
    UI.cover.AnchorPoint = Vector2.new(0.5, 0)
    UI.cover.Size = UDim2.new(1, 0, 0.5, 6)
    UI.cover.Position = UDim2.new(0.5, 0, 1, -1)
    UI.cover.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.cover.Name = "cover"
    UI.cover.Parent = UI.meter

    UI.icon9 = Instance.new("ImageLabel")
    UI.icon9.BorderSizePixel = 0
    UI.icon9.ScaleType = Enum.ScaleType.Fit
    UI.icon9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.icon9.ImageTransparency = 0.2
    UI.icon9.AnchorPoint = Vector2.new(0.5, 0.5)
    UI.icon9.Image = "rbxassetid://123713243633092"
    UI.icon9.Size = UDim2.new(0, 24, 0, 24)
    UI.icon9.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.icon9.BackgroundTransparency = 1
    UI.icon9.Name = "icon"
    UI.icon9.Position = UDim2.new(0.5, 0, 0.5, 38)
    UI.icon9.Parent = UI.meter

    UI.scale5 = Instance.new("UIScale")
    UI.scale5.Name = "scale"
    UI.scale5.Parent = UI.icon9

    UI.padding14 = Instance.new("UIPadding")
    UI.padding14.PaddingTop = UDim.new(0, 12)
    UI.padding14.PaddingRight = UDim.new(0, 14)
    UI.padding14.Name = "padding"
    UI.padding14.PaddingLeft = UDim.new(0, 14)
    UI.padding14.PaddingBottom = UDim.new(0, 10)
    UI.padding14.Parent = UI.count

    UI.count2 = Instance.new("TextLabel")
    UI.count2.BorderSizePixel = 0
    UI.count2.AutoLocalize = false
    UI.count2.TextSize = 18
    UI.count2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    UI.count2.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
    UI.count2.TextColor3 = Color3.fromRGB(0, 141, 255)
    UI.count2.BackgroundTransparency = 1
    UI.count2.AnchorPoint = Vector2.new(0.5, 1)
    UI.count2.Size = UDim2.new(1, 0, 0, 16)
    UI.count2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.count2.Text = "0/20"
    UI.count2.LayoutOrder = 1
    UI.count2.Name = "count"
    UI.count2.Position = UDim2.new(0.5, 0, 1, -30)
    UI.count2.Parent = UI.count

    UI.label6 = Instance.new("TextLabel")
    UI.label6.BorderSizePixel = 0
    UI.label6.AutoLocalize = false
    UI.label6.TextSize = 12
    UI.label6.TextTransparency = 0.8
    UI.label6.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    UI.label6.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    UI.label6.TextColor3 = Color3.fromRGB(255, 255, 255)
    UI.label6.BackgroundTransparency = 1
    UI.label6.AnchorPoint = Vector2.new(0.5, 1)
    UI.label6.Size = UDim2.new(1, 0, 0, 16)
    UI.label6.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.label6.Text = "Players"
    UI.label6.LayoutOrder = 1
    UI.label6.Name = "label"
    UI.label6.Position = UDim2.new(0.5, 0, 1, -10)
    UI.label6.Parent = UI.count

    UI.flex7 = Instance.new("UIFlexItem")
    UI.flex7.ShrinkRatio = 1
    UI.flex7.GrowRatio = 0.01
    UI.flex7.Name = "flex"
    UI.flex7.FlexMode = Enum.UIFlexMode.Custom
    UI.flex7.Parent = UI.count

    UI.scale6 = Instance.new("UIScale")
    UI.scale6.Name = "scale"
    UI.scale6.Parent = UI.count

    UI.header = Instance.new("TextLabel")
    UI.header.BorderSizePixel = 0
    UI.header.AutoLocalize = false
    UI.header.TextSize = 14
    UI.header.TextXAlignment = Enum.TextXAlignment.Left
    UI.header.TextTransparency = 0.8
    UI.header.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    UI.header.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    UI.header.TextColor3 = Color3.fromRGB(255, 255, 255)
    UI.header.BackgroundTransparency = 1
    UI.header.AnchorPoint = Vector2.new(0.5, 0)
    UI.header.Size = UDim2.new(1, 0, 0, 16)
    UI.header.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.header.Text = "Count"
    UI.header.LayoutOrder = 1
    UI.header.Name = "header"
    UI.header.Position = UDim2.new(0.5, 0, 0, 0)
    UI.header.Parent = UI.count

    UI.stroke = Instance.new("UIStroke")
    UI.stroke.Color = Color3.fromRGB(255, 255, 255)
    UI.stroke.Name = "stroke"
    UI.stroke.Parent = UI.count

    UI.gradient = Instance.new("UIGradient")
    UI.gradient.Rotation = -90
    UI.gradient.Name = "gradient"
    UI.gradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(39, 39, 39)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(21, 21, 21))}
    UI.gradient.Parent = UI.stroke

    UI.corner14 = Instance.new("UICorner")
    UI.corner14.Name = "corner"
    UI.corner14.CornerRadius = UDim.new(0, 15)
    UI.corner14.Parent = UI.count

    UI.People = Instance.new("ImageButton")
    UI.People.SliceScale = 0.05
    UI.People.BorderSizePixel = 0
    UI.People.SliceCenter = Rect.new(512, 512, 512, 512)
    UI.People.ScaleType = Enum.ScaleType.Slice
    UI.People.AutoButtonColor = false
    UI.People.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
    UI.People.ImageColor3 = Color3.fromRGB(28, 28, 28)
    UI.People.Size = UDim2.new(0, 160, 0, 200)
    UI.People.ClipsDescendants = true
    UI.People.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.People.Name = "People"
    UI.People.Position = UDim2.new(0.35433, 0, 0.1, 0)
    UI.People.Parent = UI.people

    UI.flex8 = Instance.new("UIFlexItem")
    UI.flex8.Name = "flex"
    UI.flex8.FlexMode = Enum.UIFlexMode.Fill
    UI.flex8.Parent = UI.People

    UI.scroll2 = Instance.new("ScrollingFrame")
    UI.scroll2.ScrollingDirection = Enum.ScrollingDirection.Y
    UI.scroll2.BorderSizePixel = 0
    UI.scroll2.CanvasSize = UDim2.new(0, 0, 0, 0)
    UI.scroll2.VerticalScrollBarInset = Enum.ScrollBarInset.ScrollBar
    UI.scroll2.Name = "scroll"
    UI.scroll2.ScrollBarImageTransparency = 1
    UI.scroll2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.scroll2.AutomaticCanvasSize = Enum.AutomaticSize.Y
    UI.scroll2.ClipsDescendants = false
    UI.scroll2.Size = UDim2.new(1, 0, 1, -24)
    UI.scroll2.ScrollBarImageColor3 = Color3.fromRGB(21, 21, 21)
    UI.scroll2.Position = UDim2.new(0, 0, 0, 24)
    UI.scroll2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.scroll2.ScrollBarThickness = 4
    UI.scroll2.BackgroundTransparency = 1
    UI.scroll2.Parent = UI.People

    UI.list20 = Instance.new("UIListLayout")
    UI.list20.Padding = UDim.new(0, 8)
    UI.list20.SortOrder = Enum.SortOrder.LayoutOrder
    UI.list20.Name = "list"
    UI.list20.Parent = UI.scroll2

    UI.padding15 = Instance.new("UIPadding")
    UI.padding15.PaddingTop = UDim.new(0, 5)
    UI.padding15.PaddingBottom = UDim.new(0, 5)
    UI.padding15.Name = "padding"
    UI.padding15.Parent = UI.scroll2

    UI.Player = Instance.new("Frame")
    UI.Player.BorderSizePixel = 0
    UI.Player.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
    UI.Player.AnchorPoint = Vector2.new(0.5, 0.5)
    UI.Player.Size = UDim2.new(1, 0, 0.19984, 0)
    UI.Player.Position = UDim2.new(0.5, 0, 0.09992, 0)
    UI.Player.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.Player.Name = "Player"
    UI.Player.Parent = UI.scroll2

    UI.UICorner = Instance.new("UICorner")
    UI.UICorner.CornerRadius = UDim.new(0, 15)
    UI.UICorner.Parent = UI.Player

    UI.UIListLayout3 = Instance.new("UIListLayout")
    UI.UIListLayout3.Padding = UDim.new(0, 32)
    UI.UIListLayout3.VerticalAlignment = Enum.VerticalAlignment.Center
    UI.UIListLayout3.SortOrder = Enum.SortOrder.LayoutOrder
    UI.UIListLayout3.FillDirection = Enum.FillDirection.Horizontal
    UI.UIListLayout3.Parent = UI.Player

    UI.UIPadding2 = Instance.new("UIPadding")
    UI.UIPadding2.PaddingLeft = UDim.new(0, 5)
    UI.UIPadding2.Parent = UI.Player

    UI.Informatiom = Instance.new("ImageButton")
    UI.Informatiom.BorderSizePixel = 0
    UI.Informatiom.BackgroundTransparency = 1
    UI.Informatiom.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.Informatiom.AnchorPoint = Vector2.new(0.5, 0.5)
    UI.Informatiom.Size = UDim2.new(0, 133, 0, 30)
    UI.Informatiom.ClipsDescendants = true
    UI.Informatiom.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.Informatiom.Name = "Informatiom"
    UI.Informatiom.Position = UDim2.new(0.5, 0, 0.5, 0)
    UI.Informatiom.Parent = UI.Player

    UI.UIPadding3 = Instance.new("UIPadding")
    UI.UIPadding3.PaddingLeft = UDim.new(0, 5)
    UI.UIPadding3.Parent = UI.Informatiom

    UI.UIListLayout4 = Instance.new("UIListLayout")
    UI.UIListLayout4.Padding = UDim.new(0, 8)
    UI.UIListLayout4.SortOrder = Enum.SortOrder.LayoutOrder
    UI.UIListLayout4.FillDirection = Enum.FillDirection.Horizontal
    UI.UIListLayout4.Parent = UI.Informatiom

    UI.Name = Instance.new("TextLabel")
    UI.Name.BorderSizePixel = 0
    UI.Name.TextSize = 13
    UI.Name.TextXAlignment = Enum.TextXAlignment.Left
    UI.Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.Name.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
    UI.Name.TextColor3 = Color3.fromRGB(255, 255, 255)
    UI.Name.BackgroundTransparency = 1
    UI.Name.Size = UDim2.new(0, 115, 0, 30)
    UI.Name.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.Name.Text = "Display"
    UI.Name.LayoutOrder = 1
    UI.Name.Name = "Name"
    UI.Name.Position = UDim2.new(0.09531, 0, 0, 0)
    UI.Name.Parent = UI.Informatiom

    UI.Profile = Instance.new("ImageLabel")
    UI.Profile.Active = true
    UI.Profile.BorderSizePixel = 0
    UI.Profile.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.Profile.Image = "https://www.roblox.com/headshot-thumbnail/image?userId=3765399271&width=420&height=420&format=png"
    UI.Profile.Size = UDim2.new(0, 30, 0, 30)
    UI.Profile.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.Profile.BackgroundTransparency = 1
    UI.Profile.Selectable = true
    UI.Profile.Name = "Profile"
    UI.Profile.Parent = UI.Informatiom

    UI.UICorner2 = Instance.new("UICorner")
    UI.UICorner2.CornerRadius = UDim.new(1, 0)
    UI.UICorner2.Parent = UI.Profile

    UI.Teleport = Instance.new("TextButton")
    UI.Teleport.BorderSizePixel = 0
    UI.Teleport.AutoButtonColor = false
    UI.Teleport.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    UI.Teleport.AnchorPoint = Vector2.new(0.5, 0.5)
    UI.Teleport.Size = UDim2.new(0, 83, 0, 20)
    UI.Teleport.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.Teleport.Name = "Teleport"
    UI.Teleport.Position = UDim2.new(0.5, 0, 0.5, 0)
    UI.Teleport.Parent = UI.Player

    UI.UICorner3 = Instance.new("UICorner")
    UI.UICorner3.CornerRadius = UDim.new(1, 0)
    UI.UICorner3.Parent = UI.Teleport

    UI.UIListLayout5 = Instance.new("UIListLayout")
    UI.UIListLayout5.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UI.UIListLayout5.VerticalAlignment = Enum.VerticalAlignment.Center
    UI.UIListLayout5.SortOrder = Enum.SortOrder.LayoutOrder
    UI.UIListLayout5.Parent = UI.Teleport

    UI.Teleport2 = Instance.new("TextLabel")
    UI.Teleport2.Active = true
    UI.Teleport2.BorderSizePixel = 0
    UI.Teleport2.TextSize = 14
    UI.Teleport2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.Teleport2.FontFace = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
    UI.Teleport2.TextColor3 = Color3.fromRGB(255, 255, 255)
    UI.Teleport2.BackgroundTransparency = 1
    UI.Teleport2.AnchorPoint = Vector2.new(0.5, 0.5)
    UI.Teleport2.Size = UDim2.new(0, 60, 0, 15)
    UI.Teleport2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.Teleport2.Text = "Teleport To"
    UI.Teleport2.Selectable = true
    UI.Teleport2.Name = "Teleport"
    UI.Teleport2.Position = UDim2.new(0.5, 0, 0.5, 0)
    UI.Teleport2.Parent = UI.Teleport

    UI.list21 = Instance.new("ImageLabel")
    UI.list21.BorderSizePixel = 0
    UI.list21.SliceCenter = Rect.new(512, 512, 512, 512)
    UI.list21.SliceScale = 0.05
    UI.list21.ScaleType = Enum.ScaleType.Slice
    UI.list21.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    UI.list21.ImageColor3 = Color3.fromRGB(28, 28, 28)
    UI.list21.AnchorPoint = Vector2.new(0.5, 0)
    UI.list21.Image = "rbxassetid://125088425775676"
    UI.list21.Size = UDim2.new(1, 28, 0, 50)
    UI.list21.ClipsDescendants = true
    UI.list21.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.list21.BackgroundTransparency = 1
    UI.list21.Selectable = true
    UI.list21.Name = "list"
    UI.list21.Position = UDim2.new(0.5, 0, -0.01124, -10)
    UI.list21.Parent = UI.People

    UI.gradient2 = Instance.new("UIGradient")
    UI.gradient2.Rotation = 90
    UI.gradient2.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(1.000, 1)}
    UI.gradient2.Name = "gradient"
    UI.gradient2.Parent = UI.list21

    UI.header2 = Instance.new("TextLabel")
    UI.header2.ZIndex = 2
    UI.header2.BorderSizePixel = 0
    UI.header2.AutoLocalize = false
    UI.header2.TextSize = 14
    UI.header2.TextXAlignment = Enum.TextXAlignment.Left
    UI.header2.TextTransparency = 0.8
    UI.header2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    UI.header2.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    UI.header2.TextColor3 = Color3.fromRGB(255, 255, 255)
    UI.header2.BackgroundTransparency = 1
    UI.header2.AnchorPoint = Vector2.new(0.5, 0)
    UI.header2.Size = UDim2.new(1, 0, 0, 16)
    UI.header2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.header2.Text = "People"
    UI.header2.LayoutOrder = 1
    UI.header2.Name = "header"
    UI.header2.Position = UDim2.new(0.5, 0, 0, 0)
    UI.header2.Parent = UI.People

    UI.icon10 = Instance.new("ImageLabel")
    UI.icon10.BorderSizePixel = 0
    UI.icon10.ScaleType = Enum.ScaleType.Fit
    UI.icon10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.icon10.ImageTransparency = 0.8
    UI.icon10.AnchorPoint = Vector2.new(1, 0)
    UI.icon10.Image = "rbxassetid://11419703997"
    UI.icon10.Size = UDim2.new(0, 16, 0, 16)
    UI.icon10.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.icon10.BackgroundTransparency = 1
    UI.icon10.Name = "icon"
    UI.icon10.Position = UDim2.new(1, 0, 0, 0)
    UI.icon10.Parent = UI.People

    UI.scale7 = Instance.new("UIScale")
    UI.scale7.Name = "scale"
    UI.scale7.Parent = UI.icon10

    UI.scale8 = Instance.new("UIScale")
    UI.scale8.Name = "scale"
    UI.scale8.Parent = UI.People

    UI.stroke2 = Instance.new("UIStroke")
    UI.stroke2.Color = Color3.fromRGB(255, 255, 255)
    UI.stroke2.Name = "stroke"
    UI.stroke2.Parent = UI.People

    UI.gradient3 = Instance.new("UIGradient")
    UI.gradient3.Rotation = -90
    UI.gradient3.Name = "gradient"
    UI.gradient3.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(39, 39, 39)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(21, 21, 21))}
    UI.gradient3.Parent = UI.stroke2

    UI.corner15 = Instance.new("UICorner")
    UI.corner15.Name = "corner"
    UI.corner15.CornerRadius = UDim.new(0, 15)
    UI.corner15.Parent = UI.People

    UI.padding16 = Instance.new("UIPadding")
    UI.padding16.PaddingTop = UDim.new(0, 12)
    UI.padding16.PaddingRight = UDim.new(0, 14)
    UI.padding16.Name = "padding"
    UI.padding16.PaddingLeft = UDim.new(0, 14)
    UI.padding16.PaddingBottom = UDim.new(0, 10)
    UI.padding16.Parent = UI.People

    UI.header3 = Instance.new("Frame")
    UI.header3.BorderSizePixel = 0
    UI.header3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.header3.Size = UDim2.new(1, 0, 0, 30)
    UI.header3.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.header3.Name = "header"
    UI.header3.LayoutOrder = -1
    UI.header3.BackgroundTransparency = 1
    UI.header3.Parent = UI.people

    UI.list22 = Instance.new("UIListLayout")
    UI.list22.Padding = UDim.new(0, 10)
    UI.list22.VerticalAlignment = Enum.VerticalAlignment.Center
    UI.list22.SortOrder = Enum.SortOrder.LayoutOrder
    UI.list22.Name = "list"
    UI.list22.FillDirection = Enum.FillDirection.Horizontal
    UI.list22.Parent = UI.header3

    UI.header4 = Instance.new("Frame")
    UI.header4.BorderSizePixel = 0
    UI.header4.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
    UI.header4.AutomaticSize = Enum.AutomaticSize.X
    UI.header4.Size = UDim2.new(0, 0, 0, 30)
    UI.header4.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.header4.Name = "header"
    UI.header4.LayoutOrder = -1
    UI.header4.Parent = UI.header3

    UI.list23 = Instance.new("UIListLayout")
    UI.list23.Padding = UDim.new(0, 10)
    UI.list23.VerticalAlignment = Enum.VerticalAlignment.Center
    UI.list23.SortOrder = Enum.SortOrder.LayoutOrder
    UI.list23.Name = "list"
    UI.list23.FillDirection = Enum.FillDirection.Horizontal
    UI.list23.Parent = UI.header4

    UI.icon11 = Instance.new("ImageLabel")
    UI.icon11.BorderSizePixel = 0
    UI.icon11.ScaleType = Enum.ScaleType.Fit
    UI.icon11.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.icon11.Image = "rbxassetid://100753787236053"
    UI.icon11.Size = UDim2.new(0, 16, 0, 16)
    UI.icon11.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.icon11.BackgroundTransparency = 1
    UI.icon11.Name = "icon"
    UI.icon11.Parent = UI.header4

    UI.scale9 = Instance.new("UIScale")
    UI.scale9.Name = "scale"
    UI.scale9.Parent = UI.icon11

    UI.padding17 = Instance.new("UIPadding")
    UI.padding17.PaddingRight = UDim.new(0, 14)
    UI.padding17.Name = "padding"
    UI.padding17.PaddingLeft = UDim.new(0, 14)
    UI.padding17.Parent = UI.header4

    UI.corner16 = Instance.new("UICorner")
    UI.corner16.Name = "corner"
    UI.corner16.CornerRadius = UDim.new(1, 0)
    UI.corner16.Parent = UI.header4

    UI.stroke3 = Instance.new("UIStroke")
    UI.stroke3.Color = Color3.fromRGB(255, 255, 255)
    UI.stroke3.Name = "stroke"
    UI.stroke3.Parent = UI.header4

    UI.gradient4 = Instance.new("UIGradient")
    UI.gradient4.Rotation = -101
    UI.gradient4.Name = "gradient"
    UI.gradient4.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(53, 53, 53)),ColorSequenceKeypoint.new(0.497, Color3.fromRGB(25, 25, 25)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(53, 53, 53))}
    UI.gradient4.Parent = UI.stroke3

    UI.label7 = Instance.new("TextLabel")
    UI.label7.BorderSizePixel = 0
    UI.label7.AutoLocalize = false
    UI.label7.TextSize = 14
    UI.label7.TextXAlignment = Enum.TextXAlignment.Left
    UI.label7.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    UI.label7.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    UI.label7.TextColor3 = Color3.fromRGB(255, 255, 255)
    UI.label7.BackgroundTransparency = 1
    UI.label7.AnchorPoint = Vector2.new(0.5, 0)
    UI.label7.Size = UDim2.new(0, 0, 1, 0)
    UI.label7.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.label7.Text = "People"
    UI.label7.LayoutOrder = 1
    UI.label7.AutomaticSize = Enum.AutomaticSize.X
    UI.label7.Name = "label"
    UI.label7.Position = UDim2.new(0.5, 0, 0, 0)
    UI.label7.Parent = UI.header4

    UI.scale10 = Instance.new("UIScale")
    UI.scale10.Name = "scale"
    UI.scale10.Parent = UI.label7

    UI.overview = Instance.new("Frame")
    UI.overview.BorderSizePixel = 0
    UI.overview.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.overview.AutomaticSize = Enum.AutomaticSize.Y
    UI.overview.Size = UDim2.new(1, 0, 0, 0)
    UI.overview.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.overview.Name = "overview"
    UI.overview.LayoutOrder = 6
    UI.overview.BackgroundTransparency = 1
    UI.overview.Parent = UI.scroll

    UI.padding18 = Instance.new("UIPadding")
    UI.padding18.Name = "padding"
    UI.padding18.PaddingBottom = UDim.new(0, 5)
    UI.padding18.Parent = UI.overview

    UI.list24 = Instance.new("UIListLayout")
    UI.list24.Wraps = true
    UI.list24.Padding = UDim.new(0, 10)
    UI.list24.SortOrder = Enum.SortOrder.LayoutOrder
    UI.list24.Name = "list"
    UI.list24.FillDirection = Enum.FillDirection.Horizontal
    UI.list24.Parent = UI.overview

    UI.uptime = Instance.new("ImageButton")
    UI.uptime.SliceScale = 0.05
    UI.uptime.BorderSizePixel = 0
    UI.uptime.SliceCenter = Rect.new(512, 512, 512, 512)
    UI.uptime.ScaleType = Enum.ScaleType.Tile
    UI.uptime.AutoButtonColor = false
    UI.uptime.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
    UI.uptime.ImageColor3 = Color3.fromRGB(28, 28, 28)
    UI.uptime.Image = "rbxassetid://126487203254586"
    UI.uptime.Size = UDim2.new(0, 250, 0, 130)
    UI.uptime.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.uptime.Name = "uptime"
    UI.uptime.Position = UDim2.new(-0.0023, 0, 0.26, 0)
    UI.uptime.Parent = UI.overview

    UI.padding19 = Instance.new("UIPadding")
    UI.padding19.PaddingTop = UDim.new(0, 12)
    UI.padding19.PaddingRight = UDim.new(0, 14)
    UI.padding19.Name = "padding"
    UI.padding19.PaddingLeft = UDim.new(0, 14)
    UI.padding19.PaddingBottom = UDim.new(0, 12)
    UI.padding19.Parent = UI.uptime

    UI.header5 = Instance.new("TextLabel")
    UI.header5.BorderSizePixel = 0
    UI.header5.AutoLocalize = false
    UI.header5.TextSize = 14
    UI.header5.TextXAlignment = Enum.TextXAlignment.Left
    UI.header5.TextTransparency = 0.8
    UI.header5.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    UI.header5.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    UI.header5.TextColor3 = Color3.fromRGB(255, 255, 255)
    UI.header5.BackgroundTransparency = 1
    UI.header5.AnchorPoint = Vector2.new(0.5, 0)
    UI.header5.Size = UDim2.new(1, 0, 0, 16)
    UI.header5.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.header5.Text = "Uptime"
    UI.header5.LayoutOrder = 1
    UI.header5.Name = "header"
    UI.header5.Position = UDim2.new(0.5, 0, 0, 0)
    UI.header5.Parent = UI.uptime

    UI.stopwatch = Instance.new("Frame")
    UI.stopwatch.BorderSizePixel = 0
    UI.stopwatch.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.stopwatch.AnchorPoint = Vector2.new(0.5, 0.5)
    UI.stopwatch.Size = UDim2.new(1, 0, 0, 50)
    UI.stopwatch.Position = UDim2.new(0.5, 0, 0.5, 0)
    UI.stopwatch.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.stopwatch.Name = "stopwatch"
    UI.stopwatch.LayoutOrder = 2
    UI.stopwatch.BackgroundTransparency = 1
    UI.stopwatch.Parent = UI.uptime

    UI.list25 = Instance.new("UIListLayout")
    UI.list25.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UI.list25.Padding = UDim.new(0, 4)
    UI.list25.VerticalAlignment = Enum.VerticalAlignment.Center
    UI.list25.SortOrder = Enum.SortOrder.LayoutOrder
    UI.list25.Name = "list"
    UI.list25.FillDirection = Enum.FillDirection.Horizontal
    UI.list25.Parent = UI.stopwatch

    UI.Days = Instance.new("TextLabel")
    UI.Days.BorderSizePixel = 0
    UI.Days.AutoLocalize = false
    UI.Days.TextSize = 30
    UI.Days.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
    UI.Days.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
    UI.Days.TextColor3 = Color3.fromRGB(255, 255, 255)
    UI.Days.BackgroundTransparency = 1
    UI.Days.AnchorPoint = Vector2.new(0.5, 1)
    UI.Days.Size = UDim2.new(1, 0, 0, 40)
    UI.Days.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.Days.Text = "00"
    UI.Days.LayoutOrder = 1
    UI.Days.Name = "Days"
    UI.Days.Position = UDim2.new(0.5, 0, 1, -30)
    UI.Days.Parent = UI.stopwatch

    UI.flex9 = Instance.new("UIFlexItem")
    UI.flex9.Name = "flex"
    UI.flex9.FlexMode = Enum.UIFlexMode.Fill
    UI.flex9.Parent = UI.Days

    UI.padding20 = Instance.new("UIPadding")
    UI.padding20.Name = "padding"
    UI.padding20.Parent = UI.Days

    UI.corner17 = Instance.new("UICorner")
    UI.corner17.Name = "corner"
    UI.corner17.CornerRadius = UDim.new(1, 0)
    UI.corner17.Parent = UI.Days

    UI.divider2 = Instance.new("TextLabel")
    UI.divider2.BorderSizePixel = 0
    UI.divider2.AutoLocalize = false
    UI.divider2.TextSize = 30
    UI.divider2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    UI.divider2.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    UI.divider2.TextColor3 = Color3.fromRGB(77, 77, 77)
    UI.divider2.BackgroundTransparency = 1
    UI.divider2.AnchorPoint = Vector2.new(0.5, 1)
    UI.divider2.Size = UDim2.new(0, 10, 0, 40)
    UI.divider2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.divider2.Text = ":"
    UI.divider2.LayoutOrder = 2
    UI.divider2.Name = "divider"
    UI.divider2.Position = UDim2.new(0.5, 0, 1, -30)
    UI.divider2.Parent = UI.stopwatch

    UI.Hours = Instance.new("TextLabel")
    UI.Hours.BorderSizePixel = 0
    UI.Hours.AutoLocalize = false
    UI.Hours.TextSize = 30
    UI.Hours.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
    UI.Hours.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
    UI.Hours.TextColor3 = Color3.fromRGB(255, 255, 255)
    UI.Hours.BackgroundTransparency = 1
    UI.Hours.AnchorPoint = Vector2.new(0.5, 1)
    UI.Hours.Size = UDim2.new(1, 0, 0, 40)
    UI.Hours.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.Hours.Text = "00"
    UI.Hours.LayoutOrder = 3
    UI.Hours.Name = "Hours"
    UI.Hours.Position = UDim2.new(0.5, 0, 1, -30)
    UI.Hours.Parent = UI.stopwatch

    UI.flex10 = Instance.new("UIFlexItem")
    UI.flex10.Name = "flex"
    UI.flex10.FlexMode = Enum.UIFlexMode.Fill
    UI.flex10.Parent = UI.Hours

    UI.padding21 = Instance.new("UIPadding")
    UI.padding21.Name = "padding"
    UI.padding21.Parent = UI.Hours

    UI.corner18 = Instance.new("UICorner")
    UI.corner18.Name = "corner"
    UI.corner18.CornerRadius = UDim.new(1, 0)
    UI.corner18.Parent = UI.Hours

    UI.divider3 = Instance.new("TextLabel")
    UI.divider3.BorderSizePixel = 0
    UI.divider3.AutoLocalize = false
    UI.divider3.TextSize = 30
    UI.divider3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    UI.divider3.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    UI.divider3.TextColor3 = Color3.fromRGB(77, 77, 77)
    UI.divider3.BackgroundTransparency = 1
    UI.divider3.AnchorPoint = Vector2.new(0.5, 1)
    UI.divider3.Size = UDim2.new(0, 10, 0, 40)
    UI.divider3.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.divider3.Text = ":"
    UI.divider3.LayoutOrder = 4
    UI.divider3.Name = "divider"
    UI.divider3.Position = UDim2.new(0.5, 0, 1, -30)
    UI.divider3.Parent = UI.stopwatch

    UI.Minutes = Instance.new("TextLabel")
    UI.Minutes.BorderSizePixel = 0
    UI.Minutes.AutoLocalize = false
    UI.Minutes.TextSize = 30
    UI.Minutes.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
    UI.Minutes.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
    UI.Minutes.TextColor3 = Color3.fromRGB(255, 255, 255)
    UI.Minutes.BackgroundTransparency = 1
    UI.Minutes.AnchorPoint = Vector2.new(0.5, 1)
    UI.Minutes.Size = UDim2.new(1, 0, 0, 40)
    UI.Minutes.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.Minutes.Text = "00"
    UI.Minutes.LayoutOrder = 5
    UI.Minutes.Name = "Minutes"
    UI.Minutes.Position = UDim2.new(0.5, 0, 1, -30)
    UI.Minutes.Parent = UI.stopwatch

    UI.flex11 = Instance.new("UIFlexItem")
    UI.flex11.Name = "flex"
    UI.flex11.FlexMode = Enum.UIFlexMode.Fill
    UI.flex11.Parent = UI.Minutes

    UI.padding22 = Instance.new("UIPadding")
    UI.padding22.Name = "padding"
    UI.padding22.Parent = UI.Minutes

    UI.corner19 = Instance.new("UICorner")
    UI.corner19.Name = "corner"
    UI.corner19.CornerRadius = UDim.new(1, 0)
    UI.corner19.Parent = UI.Minutes

    UI.divider4 = Instance.new("TextLabel")
    UI.divider4.BorderSizePixel = 0
    UI.divider4.AutoLocalize = false
    UI.divider4.TextSize = 30
    UI.divider4.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    UI.divider4.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    UI.divider4.TextColor3 = Color3.fromRGB(77, 77, 77)
    UI.divider4.BackgroundTransparency = 1
    UI.divider4.AnchorPoint = Vector2.new(0.5, 1)
    UI.divider4.Size = UDim2.new(0, 10, 0, 40)
    UI.divider4.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.divider4.Text = ":"
    UI.divider4.LayoutOrder = 6
    UI.divider4.Name = "divider"
    UI.divider4.Position = UDim2.new(0.5, 0, 1, -30)
    UI.divider4.Parent = UI.stopwatch

    UI.Seconds = Instance.new("TextLabel")
    UI.Seconds.BorderSizePixel = 0
    UI.Seconds.AutoLocalize = false
    UI.Seconds.TextSize = 30
    UI.Seconds.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
    UI.Seconds.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
    UI.Seconds.TextColor3 = Color3.fromRGB(255, 255, 255)
    UI.Seconds.BackgroundTransparency = 1
    UI.Seconds.AnchorPoint = Vector2.new(0.5, 1)
    UI.Seconds.Size = UDim2.new(1, 0, 0, 40)
    UI.Seconds.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.Seconds.Text = "00"
    UI.Seconds.LayoutOrder = 7
    UI.Seconds.Name = "Seconds"
    UI.Seconds.Position = UDim2.new(0.5, 0, 1, -30)
    UI.Seconds.Parent = UI.stopwatch

    UI.flex12 = Instance.new("UIFlexItem")
    UI.flex12.Name = "flex"
    UI.flex12.FlexMode = Enum.UIFlexMode.Fill
    UI.flex12.Parent = UI.Seconds

    UI.padding23 = Instance.new("UIPadding")
    UI.padding23.Name = "padding"
    UI.padding23.Parent = UI.Seconds

    UI.corner20 = Instance.new("UICorner")
    UI.corner20.Name = "corner"
    UI.corner20.CornerRadius = UDim.new(1, 0)
    UI.corner20.Parent = UI.Seconds

    UI.label8 = Instance.new("Frame")
    UI.label8.BorderSizePixel = 0
    UI.label8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.label8.AnchorPoint = Vector2.new(0.5, 0.5)
    UI.label8.Size = UDim2.new(1, 0, 0, 16)
    UI.label8.Position = UDim2.new(0.5, 0, 1, -20)
    UI.label8.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.label8.Name = "label"
    UI.label8.LayoutOrder = 3
    UI.label8.BackgroundTransparency = 1
    UI.label8.Parent = UI.uptime

    UI.list26 = Instance.new("UIListLayout")
    UI.list26.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UI.list26.HorizontalFlex = Enum.UIFlexAlignment.Fill
    UI.list26.Padding = UDim.new(0, 20)
    UI.list26.VerticalAlignment = Enum.VerticalAlignment.Center
    UI.list26.SortOrder = Enum.SortOrder.LayoutOrder
    UI.list26.Name = "list"
    UI.list26.FillDirection = Enum.FillDirection.Horizontal
    UI.list26.Parent = UI.label8

    UI.days = Instance.new("TextLabel")
    UI.days.BorderSizePixel = 0
    UI.days.AutoLocalize = false
    UI.days.TextSize = 12
    UI.days.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    UI.days.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    UI.days.TextColor3 = Color3.fromRGB(162, 162, 162)
    UI.days.BackgroundTransparency = 1
    UI.days.AnchorPoint = Vector2.new(0.5, 1)
    UI.days.Size = UDim2.new(0, 20, 0, 20)
    UI.days.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.days.Text = "D"
    UI.days.LayoutOrder = 1
    UI.days.Name = "days"
    UI.days.Position = UDim2.new(0.5, 0, 1, -30)
    UI.days.Parent = UI.label8

    UI.stroke4 = Instance.new("UIStroke")
    UI.stroke4.Color = Color3.fromRGB(255, 255, 255)
    UI.stroke4.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    UI.stroke4.Name = "stroke"
    UI.stroke4.Parent = UI.days

    UI.gradient5 = Instance.new("UIGradient")
    UI.gradient5.Rotation = -90
    UI.gradient5.Name = "gradient"
    UI.gradient5.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(44, 44, 44)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(17, 17, 17))}
    UI.gradient5.Parent = UI.stroke4

    UI.corner21 = Instance.new("UICorner")
    UI.corner21.Name = "corner"
    UI.corner21.CornerRadius = UDim.new(1, 0)
    UI.corner21.Parent = UI.days

    UI.hours = Instance.new("TextLabel")
    UI.hours.BorderSizePixel = 0
    UI.hours.AutoLocalize = false
    UI.hours.TextSize = 12
    UI.hours.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    UI.hours.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    UI.hours.TextColor3 = Color3.fromRGB(162, 162, 162)
    UI.hours.BackgroundTransparency = 1
    UI.hours.AnchorPoint = Vector2.new(0.5, 1)
    UI.hours.Size = UDim2.new(0, 20, 0, 20)
    UI.hours.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.hours.Text = "H"
    UI.hours.LayoutOrder = 3
    UI.hours.Name = "hours"
    UI.hours.Position = UDim2.new(0.5, 0, 1, -30)
    UI.hours.Parent = UI.label8

    UI.corner22 = Instance.new("UICorner")
    UI.corner22.Name = "corner"
    UI.corner22.CornerRadius = UDim.new(1, 0)
    UI.corner22.Parent = UI.hours

    UI.stroke5 = Instance.new("UIStroke")
    UI.stroke5.Color = Color3.fromRGB(255, 255, 255)
    UI.stroke5.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    UI.stroke5.Name = "stroke"
    UI.stroke5.Parent = UI.hours

    UI.gradient6 = Instance.new("UIGradient")
    UI.gradient6.Rotation = -90
    UI.gradient6.Name = "gradient"
    UI.gradient6.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(44, 44, 44)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(17, 17, 17))}
    UI.gradient6.Parent = UI.stroke5

    UI.minutes = Instance.new("TextLabel")
    UI.minutes.BorderSizePixel = 0
    UI.minutes.AutoLocalize = false
    UI.minutes.TextSize = 12
    UI.minutes.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    UI.minutes.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    UI.minutes.TextColor3 = Color3.fromRGB(162, 162, 162)
    UI.minutes.BackgroundTransparency = 1
    UI.minutes.AnchorPoint = Vector2.new(0.5, 1)
    UI.minutes.Size = UDim2.new(0, 20, 0, 20)
    UI.minutes.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.minutes.Text = "M"
    UI.minutes.LayoutOrder = 5
    UI.minutes.Name = "minutes"
    UI.minutes.Position = UDim2.new(0.5, 0, 1, -30)
    UI.minutes.Parent = UI.label8

    UI.stroke6 = Instance.new("UIStroke")
    UI.stroke6.Color = Color3.fromRGB(255, 255, 255)
    UI.stroke6.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    UI.stroke6.Name = "stroke"
    UI.stroke6.Parent = UI.minutes

    UI.gradient7 = Instance.new("UIGradient")
    UI.gradient7.Rotation = -90
    UI.gradient7.Name = "gradient"
    UI.gradient7.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(44, 44, 44)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(17, 17, 17))}
    UI.gradient7.Parent = UI.stroke6

    UI.corner23 = Instance.new("UICorner")
    UI.corner23.Name = "corner"
    UI.corner23.CornerRadius = UDim.new(1, 0)
    UI.corner23.Parent = UI.minutes

    UI.seconds = Instance.new("TextLabel")
    UI.seconds.BorderSizePixel = 0
    UI.seconds.AutoLocalize = false
    UI.seconds.TextSize = 12
    UI.seconds.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    UI.seconds.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    UI.seconds.TextColor3 = Color3.fromRGB(162, 162, 162)
    UI.seconds.BackgroundTransparency = 1
    UI.seconds.AnchorPoint = Vector2.new(0.5, 1)
    UI.seconds.Size = UDim2.new(0, 20, 0, 20)
    UI.seconds.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.seconds.Text = "S"
    UI.seconds.LayoutOrder = 7
    UI.seconds.Name = "seconds"
    UI.seconds.Position = UDim2.new(0.5, 0, 1, -30)
    UI.seconds.Parent = UI.label8

    UI.stroke7 = Instance.new("UIStroke")
    UI.stroke7.Color = Color3.fromRGB(255, 255, 255)
    UI.stroke7.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    UI.stroke7.Name = "stroke"
    UI.stroke7.Parent = UI.seconds

    UI.gradient8 = Instance.new("UIGradient")
    UI.gradient8.Rotation = -90
    UI.gradient8.Name = "gradient"
    UI.gradient8.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(44, 44, 44)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(17, 17, 17))}
    UI.gradient8.Parent = UI.stroke7

    UI.corner24 = Instance.new("UICorner")
    UI.corner24.Name = "corner"
    UI.corner24.CornerRadius = UDim.new(1, 0)
    UI.corner24.Parent = UI.seconds

    UI.list27 = Instance.new("UIListLayout")
    UI.list27.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UI.list27.Padding = UDim.new(0, 10)
    UI.list27.SortOrder = Enum.SortOrder.LayoutOrder
    UI.list27.Name = "list"
    UI.list27.Parent = UI.uptime

    UI.flex13 = Instance.new("UIFlexItem")
    UI.flex13.ShrinkRatio = 1
    UI.flex13.GrowRatio = 1
    UI.flex13.Name = "flex"
    UI.flex13.FlexMode = Enum.UIFlexMode.Custom
    UI.flex13.Parent = UI.uptime

    UI.scale11 = Instance.new("UIScale")
    UI.scale11.Name = "scale"
    UI.scale11.Parent = UI.uptime

    UI.corner25 = Instance.new("UICorner")
    UI.corner25.Name = "corner"
    UI.corner25.CornerRadius = UDim.new(0, 15)
    UI.corner25.Parent = UI.uptime

    UI.stroke8 = Instance.new("UIStroke")
    UI.stroke8.Color = Color3.fromRGB(255, 255, 255)
    UI.stroke8.Name = "stroke"
    UI.stroke8.Parent = UI.uptime

    UI.gradient9 = Instance.new("UIGradient")
    UI.gradient9.Rotation = -90
    UI.gradient9.Name = "gradient"
    UI.gradient9.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(39, 39, 39)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(21, 21, 21))}
    UI.gradient9.Parent = UI.stroke8

    UI.console = Instance.new("ImageButton")
    UI.console.SliceScale = 0.05
    UI.console.BorderSizePixel = 0
    UI.console.SliceCenter = Rect.new(512, 512, 512, 512)
    UI.console.ScaleType = Enum.ScaleType.Slice
    UI.console.AutoButtonColor = false
    UI.console.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
    UI.console.ImageColor3 = Color3.fromRGB(28, 28, 28)
    UI.console.Size = UDim2.new(0, 250, 0, 130)
    UI.console.ClipsDescendants = true
    UI.console.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.console.Name = "console"
    UI.console.Parent = UI.overview

    UI.padding24 = Instance.new("UIPadding")
    UI.padding24.PaddingTop = UDim.new(0, 12)
    UI.padding24.PaddingRight = UDim.new(0, 14)
    UI.padding24.Name = "padding"
    UI.padding24.PaddingLeft = UDim.new(0, 14)
    UI.padding24.PaddingBottom = UDim.new(0, 10)
    UI.padding24.Parent = UI.console

    UI.logs = Instance.new("Frame")
    UI.logs.BorderSizePixel = 0
    UI.logs.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.logs.Selectable = true
    UI.logs.Size = UDim2.new(1, 0, 1, -24)
    UI.logs.Position = UDim2.new(0, 0, 0, 24)
    UI.logs.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.logs.Name = "logs"
    UI.logs.BackgroundTransparency = 1
    UI.logs.SelectionGroup = true
    UI.logs.Parent = UI.console

    UI.list28 = Instance.new("UIListLayout")
    UI.list28.Padding = UDim.new(0, 8)
    UI.list28.SortOrder = Enum.SortOrder.LayoutOrder
    UI.list28.Name = "list"
    UI.list28.Parent = UI.logs

    UI.log = Instance.new("TextLabel")
    UI.log.TextWrapped = true
    UI.log.BorderSizePixel = 0
    UI.log.AutoLocalize = false
    UI.log.TextSize = 14
    UI.log.TextXAlignment = Enum.TextXAlignment.Left
    UI.log.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    UI.log.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    UI.log.TextColor3 = Color3.fromRGB(215, 215, 215)
    UI.log.AnchorPoint = Vector2.new(0.5, 1)
    UI.log.Size = UDim2.new(1, 0, 0, 0)
    UI.log.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.log.Text = "error log"
    UI.log.Selectable = true
    UI.log.AutomaticSize = Enum.AutomaticSize.Y
    UI.log.Name = "log"
    UI.log.Position = UDim2.new(0.5, 0, 1, 0)
    UI.log.Parent = UI.list28

    UI.padding25 = Instance.new("UIPadding")
    UI.padding25.PaddingTop = UDim.new(0, 10)
    UI.padding25.PaddingRight = UDim.new(0, 12)
    UI.padding25.Name = "padding"
    UI.padding25.PaddingLeft = UDim.new(0, 12)
    UI.padding25.PaddingBottom = UDim.new(0, 10)
    UI.padding25.Parent = UI.log

    UI.list29 = Instance.new("UIListLayout")
    UI.list29.Padding = UDim.new(0, 8)
    UI.list29.VerticalAlignment = Enum.VerticalAlignment.Center
    UI.list29.SortOrder = Enum.SortOrder.LayoutOrder
    UI.list29.Name = "list"
    UI.list29.FillDirection = Enum.FillDirection.Horizontal
    UI.list29.Parent = UI.log

    UI.corner26 = Instance.new("UICorner")
    UI.corner26.Name = "corner"
    UI.corner26.CornerRadius = UDim.new(0, 15)
    UI.corner26.Parent = UI.log

    UI.stroke9 = Instance.new("UIStroke")
    UI.stroke9.Color = Color3.fromRGB(255, 255, 255)
    UI.stroke9.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    UI.stroke9.Name = "stroke"
    UI.stroke9.Parent = UI.log

    UI.gradient10 = Instance.new("UIGradient")
    UI.gradient10.Rotation = 90
    UI.gradient10.Name = "gradient"
    UI.gradient10.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(53, 53, 53)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(21, 21, 21))}
    UI.gradient10.Parent = UI.stroke9

    UI.padding26 = Instance.new("UIPadding")
    UI.padding26.PaddingTop = UDim.new(0, 5)
    UI.padding26.Name = "padding"
    UI.padding26.Parent = UI.logs

    UI.fade = Instance.new("ImageLabel")
    UI.fade.BorderSizePixel = 0
    UI.fade.SliceCenter = Rect.new(512, 512, 512, 512)
    UI.fade.SliceScale = 0.05
    UI.fade.ScaleType = Enum.ScaleType.Slice
    UI.fade.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    UI.fade.ImageColor3 = Color3.fromRGB(28, 28, 28)
    UI.fade.AnchorPoint = Vector2.new(0.5, 1)
    UI.fade.Image = "rbxassetid://125088425775676"
    UI.fade.Size = UDim2.new(1, 28, 0, 50)
    UI.fade.ClipsDescendants = true
    UI.fade.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.fade.BackgroundTransparency = 1
    UI.fade.Selectable = true
    UI.fade.Name = "fade"
    UI.fade.Position = UDim2.new(0.5, 0, 1, 10)
    UI.fade.Parent = UI.console

    UI.gradient11 = Instance.new("UIGradient")
    UI.gradient11.Rotation = -90
    UI.gradient11.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(1.000, 1)}
    UI.gradient11.Name = "gradient"
    UI.gradient11.Parent = UI.fade

    UI.scale12 = Instance.new("UIScale")
    UI.scale12.Name = "scale"
    UI.scale12.Parent = UI.console

    UI.stroke10 = Instance.new("UIStroke")
    UI.stroke10.Color = Color3.fromRGB(255, 255, 255)
    UI.stroke10.Name = "stroke"
    UI.stroke10.Parent = UI.console

    UI.gradient12 = Instance.new("UIGradient")
    UI.gradient12.Rotation = -90
    UI.gradient12.Name = "gradient"
    UI.gradient12.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(39, 39, 39)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(21, 21, 21))}
    UI.gradient12.Parent = UI.stroke10

    UI.corner27 = Instance.new("UICorner")
    UI.corner27.Name = "corner"
    UI.corner27.CornerRadius = UDim.new(0, 15)
    UI.corner27.Parent = UI.console

    UI.flex14 = Instance.new("UIFlexItem")
    UI.flex14.ShrinkRatio = 1
    UI.flex14.GrowRatio = 1
    UI.flex14.Name = "flex"
    UI.flex14.FlexMode = Enum.UIFlexMode.Custom
    UI.flex14.Parent = UI.console

    UI.header6 = Instance.new("TextLabel")
    UI.header6.ZIndex = 2
    UI.header6.BorderSizePixel = 0
    UI.header6.AutoLocalize = false
    UI.header6.TextSize = 14
    UI.header6.TextXAlignment = Enum.TextXAlignment.Left
    UI.header6.TextTransparency = 0.8
    UI.header6.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    UI.header6.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    UI.header6.TextColor3 = Color3.fromRGB(255, 255, 255)
    UI.header6.BackgroundTransparency = 1
    UI.header6.AnchorPoint = Vector2.new(0.5, 0)
    UI.header6.Size = UDim2.new(1, 0, 0, 16)
    UI.header6.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.header6.Text = "Developer Console"
    UI.header6.LayoutOrder = 1
    UI.header6.Name = "header"
    UI.header6.Position = UDim2.new(0.5, 0, 0, 0)
    UI.header6.Parent = UI.console

    UI.serverteleportation = Instance.new("ImageButton")
    UI.serverteleportation.SliceScale = 0.05
    UI.serverteleportation.BorderSizePixel = 0
    UI.serverteleportation.SliceCenter = Rect.new(512, 512, 512, 512)
    UI.serverteleportation.ScaleType = Enum.ScaleType.Slice
    UI.serverteleportation.AutoButtonColor = false
    UI.serverteleportation.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
    UI.serverteleportation.ImageColor3 = Color3.fromRGB(28, 28, 28)
    UI.serverteleportation.Size = UDim2.new(0, 250, 0, 130)
    UI.serverteleportation.ClipsDescendants = true
    UI.serverteleportation.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.serverteleportation.Name = "server_teleportation"
    UI.serverteleportation.Parent = UI.overview

    UI.padding27 = Instance.new("UIPadding")
    UI.padding27.PaddingTop = UDim.new(0, 12)
    UI.padding27.PaddingRight = UDim.new(0, 14)
    UI.padding27.Name = "padding"
    UI.padding27.PaddingLeft = UDim.new(0, 14)
    UI.padding27.PaddingBottom = UDim.new(0, 10)
    UI.padding27.Parent = UI.serverteleportation

    UI.flex15 = Instance.new("UIFlexItem")
    UI.flex15.ShrinkRatio = 1
    UI.flex15.GrowRatio = 1
    UI.flex15.Name = "flex"
    UI.flex15.FlexMode = Enum.UIFlexMode.Custom
    UI.flex15.Parent = UI.serverteleportation

    UI.header7 = Instance.new("TextLabel")
    UI.header7.ZIndex = 2
    UI.header7.BorderSizePixel = 0
    UI.header7.AutoLocalize = false
    UI.header7.TextSize = 14
    UI.header7.TextXAlignment = Enum.TextXAlignment.Left
    UI.header7.TextTransparency = 0.8
    UI.header7.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    UI.header7.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
    UI.header7.TextColor3 = Color3.fromRGB(255, 255, 255)
    UI.header7.BackgroundTransparency = 1
    UI.header7.AnchorPoint = Vector2.new(0.5, 0)
    UI.header7.Size = UDim2.new(1, 0, 0, 16)
    UI.header7.Visible = false
    UI.header7.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.header7.Text = "Teleport"
    UI.header7.LayoutOrder = 1
    UI.header7.Name = "header"
    UI.header7.Position = UDim2.new(0.5, 0, 0, 0)
    UI.header7.Parent = UI.serverteleportation

    UI.scale13 = Instance.new("UIScale")
    UI.scale13.Name = "scale"
    UI.scale13.Parent = UI.serverteleportation

    UI.content2 = Instance.new("Frame")
    UI.content2.BorderSizePixel = 0
    UI.content2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.content2.AnchorPoint = Vector2.new(0.5, 0.5)
    UI.content2.Size = UDim2.new(1, 0, 1, 0)
    UI.content2.Position = UDim2.new(0.5, 0, 0.5, 0)
    UI.content2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.content2.Name = "content"
    UI.content2.BackgroundTransparency = 1
    UI.content2.Parent = UI.serverteleportation

    UI.icon12 = Instance.new("ImageLabel")
    UI.icon12.BorderSizePixel = 0
    UI.icon12.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.icon12.Image = "rbxassetid://81439029637522"
    UI.icon12.Size = UDim2.new(0, 24, 0, 24)
    UI.icon12.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.icon12.BackgroundTransparency = 1
    UI.icon12.Name = "icon"
    UI.icon12.Parent = UI.content2

    UI.list30 = Instance.new("UIListLayout")
    UI.list30.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UI.list30.Padding = UDim.new(0, 10)
    UI.list30.VerticalAlignment = Enum.VerticalAlignment.Center
    UI.list30.SortOrder = Enum.SortOrder.LayoutOrder
    UI.list30.Name = "list"
    UI.list30.Parent = UI.content2

    UI.label9 = Instance.new("TextLabel")
    UI.label9.BorderSizePixel = 0
    UI.label9.AutoLocalize = false
    UI.label9.TextSize = 14
    UI.label9.TextTransparency = 0.2
    UI.label9.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    UI.label9.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    UI.label9.TextColor3 = Color3.fromRGB(255, 255, 255)
    UI.label9.BackgroundTransparency = 1
    UI.label9.AnchorPoint = Vector2.new(0.5, 1)
    UI.label9.Size = UDim2.new(1, 0, 0, 16)
    UI.label9.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.label9.Text = "Server Teleportation"
    UI.label9.LayoutOrder = 1
    UI.label9.Name = "label"
    UI.label9.Position = UDim2.new(0.5, 0, 1, -10)
    UI.label9.Parent = UI.content2

    UI.backgroundimage = Instance.new("ImageLabel")
    UI.backgroundimage.ZIndex = -10
    UI.backgroundimage.BorderSizePixel = 0
    UI.backgroundimage.ScaleType = Enum.ScaleType.Crop
    UI.backgroundimage.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    UI.backgroundimage.ImageTransparency = 0.1
    UI.backgroundimage.AnchorPoint = Vector2.new(0.5, 0)
    UI.backgroundimage.Image = "rbxassetid://128174308673072"
    UI.backgroundimage.Size = UDim2.new(1, 28, 1, 22)
    UI.backgroundimage.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.backgroundimage.BackgroundTransparency = 1
    UI.backgroundimage.Name = "background_image"
    UI.backgroundimage.Position = UDim2.new(0.5, 0, 0, -12)
    UI.backgroundimage.Parent = UI.serverteleportation

    UI.UICorner4 = Instance.new("UICorner")
    UI.UICorner4.CornerRadius = UDim.new(0, 15)
    UI.UICorner4.Parent = UI.backgroundimage

    UI.stroke11 = Instance.new("UIStroke")
    UI.stroke11.Color = Color3.fromRGB(255, 255, 255)
    UI.stroke11.Name = "stroke"
    UI.stroke11.Parent = UI.serverteleportation

    UI.gradient13 = Instance.new("UIGradient")
    UI.gradient13.Rotation = -90
    UI.gradient13.Name = "gradient"
    UI.gradient13.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(39, 39, 39)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(21, 21, 21))}
    UI.gradient13.Parent = UI.stroke11

    UI.corner28 = Instance.new("UICorner")
    UI.corner28.Name = "corner"
    UI.corner28.CornerRadius = UDim.new(0, 15)
    UI.corner28.Parent = UI.serverteleportation

    UI.privacy = Instance.new("ImageButton")
    UI.privacy.SliceScale = 0.05
    UI.privacy.BorderSizePixel = 0
    UI.privacy.SliceCenter = Rect.new(512, 512, 512, 512)
    UI.privacy.ScaleType = Enum.ScaleType.Slice
    UI.privacy.AutoButtonColor = false
    UI.privacy.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
    UI.privacy.ImageColor3 = Color3.fromRGB(28, 28, 28)
    UI.privacy.Size = UDim2.new(0, 150, 0, 130)
    UI.privacy.ClipsDescendants = true
    UI.privacy.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.privacy.Name = "privacy"
    UI.privacy.Parent = UI.overview

    UI.padding28 = Instance.new("UIPadding")
    UI.padding28.PaddingTop = UDim.new(0, 12)
    UI.padding28.PaddingRight = UDim.new(0, 14)
    UI.padding28.Name = "padding"
    UI.padding28.PaddingLeft = UDim.new(0, 14)
    UI.padding28.PaddingBottom = UDim.new(0, 10)
    UI.padding28.Parent = UI.privacy

    UI.flex16 = Instance.new("UIFlexItem")
    UI.flex16.ShrinkRatio = 1
    UI.flex16.GrowRatio = 0.5
    UI.flex16.Name = "flex"
    UI.flex16.FlexMode = Enum.UIFlexMode.Custom
    UI.flex16.Parent = UI.privacy

    UI.scale14 = Instance.new("UIScale")
    UI.scale14.Name = "scale"
    UI.scale14.Parent = UI.privacy

    UI.content3 = Instance.new("Frame")
    UI.content3.BorderSizePixel = 0
    UI.content3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.content3.AnchorPoint = Vector2.new(0.5, 0.5)
    UI.content3.Size = UDim2.new(1, 0, 1, 0)
    UI.content3.Position = UDim2.new(0.5, 0, 0.5, 0)
    UI.content3.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.content3.Name = "content"
    UI.content3.BackgroundTransparency = 1
    UI.content3.Parent = UI.privacy

    UI.icon13 = Instance.new("ImageLabel")
    UI.icon13.BorderSizePixel = 0
    UI.icon13.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.icon13.Image = "rbxassetid://104512588477874"
    UI.icon13.Size = UDim2.new(0, 24, 0, 24)
    UI.icon13.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.icon13.BackgroundTransparency = 1
    UI.icon13.Name = "icon"
    UI.icon13.Parent = UI.content3

    UI.list31 = Instance.new("UIListLayout")
    UI.list31.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UI.list31.Padding = UDim.new(0, 10)
    UI.list31.VerticalAlignment = Enum.VerticalAlignment.Center
    UI.list31.SortOrder = Enum.SortOrder.LayoutOrder
    UI.list31.Name = "list"
    UI.list31.Parent = UI.content3

    UI.label10 = Instance.new("TextLabel")
    UI.label10.BorderSizePixel = 0
    UI.label10.AutoLocalize = false
    UI.label10.TextSize = 14
    UI.label10.TextTransparency = 0.2
    UI.label10.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    UI.label10.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    UI.label10.TextColor3 = Color3.fromRGB(255, 255, 255)
    UI.label10.BackgroundTransparency = 1
    UI.label10.AnchorPoint = Vector2.new(0.5, 1)
    UI.label10.Size = UDim2.new(1, 0, 0, 16)
    UI.label10.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.label10.Text = "Privacy"
    UI.label10.LayoutOrder = 1
    UI.label10.Name = "label"
    UI.label10.Position = UDim2.new(0.5, 0, 1, -10)
    UI.label10.Parent = UI.content3

    UI.stroke12 = Instance.new("UIStroke")
    UI.stroke12.Color = Color3.fromRGB(255, 255, 255)
    UI.stroke12.Name = "stroke"
    UI.stroke12.Parent = UI.privacy

    UI.gradient14 = Instance.new("UIGradient")
    UI.gradient14.Rotation = -90
    UI.gradient14.Name = "gradient"
    UI.gradient14.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(39, 39, 39)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(21, 21, 21))}
    UI.gradient14.Parent = UI.stroke12

    UI.corner29 = Instance.new("UICorner")
    UI.corner29.Name = "corner"
    UI.corner29.CornerRadius = UDim.new(0, 15)
    UI.corner29.Parent = UI.privacy

    UI.header8 = Instance.new("Frame")
    UI.header8.BorderSizePixel = 0
    UI.header8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.header8.Size = UDim2.new(1, 0, 0, 30)
    UI.header8.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.header8.Name = "header"
    UI.header8.LayoutOrder = -1
    UI.header8.BackgroundTransparency = 1
    UI.header8.Parent = UI.overview

    UI.list32 = Instance.new("UIListLayout")
    UI.list32.Padding = UDim.new(0, 10)
    UI.list32.VerticalAlignment = Enum.VerticalAlignment.Center
    UI.list32.SortOrder = Enum.SortOrder.LayoutOrder
    UI.list32.Name = "list"
    UI.list32.FillDirection = Enum.FillDirection.Horizontal
    UI.list32.Parent = UI.header8

    UI.header9 = Instance.new("Frame")
    UI.header9.BorderSizePixel = 0
    UI.header9.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
    UI.header9.AutomaticSize = Enum.AutomaticSize.X
    UI.header9.Size = UDim2.new(0, 0, 0, 30)
    UI.header9.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.header9.Name = "header"
    UI.header9.LayoutOrder = -1
    UI.header9.Parent = UI.header8

    UI.list33 = Instance.new("UIListLayout")
    UI.list33.Padding = UDim.new(0, 10)
    UI.list33.VerticalAlignment = Enum.VerticalAlignment.Center
    UI.list33.SortOrder = Enum.SortOrder.LayoutOrder
    UI.list33.Name = "list"
    UI.list33.FillDirection = Enum.FillDirection.Horizontal
    UI.list33.Parent = UI.header9

    UI.icon14 = Instance.new("ImageLabel")
    UI.icon14.BorderSizePixel = 0
    UI.icon14.ScaleType = Enum.ScaleType.Fit
    UI.icon14.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.icon14.Image = "rbxassetid://100901569640683"
    UI.icon14.Size = UDim2.new(0, 16, 0, 16)
    UI.icon14.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.icon14.BackgroundTransparency = 1
    UI.icon14.Name = "icon"
    UI.icon14.Parent = UI.header9

    UI.scale15 = Instance.new("UIScale")
    UI.scale15.Name = "scale"
    UI.scale15.Parent = UI.icon14

    UI.padding29 = Instance.new("UIPadding")
    UI.padding29.PaddingRight = UDim.new(0, 14)
    UI.padding29.Name = "padding"
    UI.padding29.PaddingLeft = UDim.new(0, 14)
    UI.padding29.Parent = UI.header9

    UI.corner30 = Instance.new("UICorner")
    UI.corner30.Name = "corner"
    UI.corner30.CornerRadius = UDim.new(1, 0)
    UI.corner30.Parent = UI.header9

    UI.stroke13 = Instance.new("UIStroke")
    UI.stroke13.Color = Color3.fromRGB(255, 255, 255)
    UI.stroke13.Name = "stroke"
    UI.stroke13.Parent = UI.header9

    UI.gradient15 = Instance.new("UIGradient")
    UI.gradient15.Rotation = -101
    UI.gradient15.Name = "gradient"
    UI.gradient15.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(53, 53, 53)),ColorSequenceKeypoint.new(0.497, Color3.fromRGB(25, 25, 25)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(53, 53, 53))}
    UI.gradient15.Parent = UI.stroke13

    UI.label11 = Instance.new("TextLabel")
    UI.label11.BorderSizePixel = 0
    UI.label11.AutoLocalize = false
    UI.label11.TextSize = 14
    UI.label11.TextXAlignment = Enum.TextXAlignment.Left
    UI.label11.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    UI.label11.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    UI.label11.TextColor3 = Color3.fromRGB(255, 255, 255)
    UI.label11.BackgroundTransparency = 1
    UI.label11.AnchorPoint = Vector2.new(0.5, 0)
    UI.label11.Size = UDim2.new(0, 0, 1, 0)
    UI.label11.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.label11.Text = "Overview"
    UI.label11.LayoutOrder = 1
    UI.label11.AutomaticSize = Enum.AutomaticSize.X
    UI.label11.Name = "label"
    UI.label11.Position = UDim2.new(0.5, 0, 0, 0)
    UI.label11.Parent = UI.header9

    UI.scale16 = Instance.new("UIScale")
    UI.scale16.Name = "scale"
    UI.scale16.Parent = UI.label11

    UI.information = Instance.new("Frame")
    UI.information.BorderSizePixel = 0
    UI.information.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.information.AutomaticSize = Enum.AutomaticSize.Y
    UI.information.Size = UDim2.new(1, 0, 0, 0)
    UI.information.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.information.Name = "information"
    UI.information.LayoutOrder = 3
    UI.information.BackgroundTransparency = 1
    UI.information.Parent = UI.scroll

    UI.padding30 = Instance.new("UIPadding")
    UI.padding30.Name = "padding"
    UI.padding30.PaddingBottom = UDim.new(0, 5)
    UI.padding30.Parent = UI.information

    UI.list34 = Instance.new("UIListLayout")
    UI.list34.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UI.list34.Wraps = true
    UI.list34.Padding = UDim.new(0, 10)
    UI.list34.SortOrder = Enum.SortOrder.LayoutOrder
    UI.list34.Name = "list"
    UI.list34.FillDirection = Enum.FillDirection.Horizontal
    UI.list34.Parent = UI.information

    UI.gamedisplay = Instance.new("Frame")
    UI.gamedisplay.BorderSizePixel = 0
    UI.gamedisplay.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
    UI.gamedisplay.Selectable = true
    UI.gamedisplay.AutomaticSize = Enum.AutomaticSize.Y
    UI.gamedisplay.Size = UDim2.new(0, 160, 0, 200)
    UI.gamedisplay.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.gamedisplay.Name = "game_display"
    UI.gamedisplay.BackgroundTransparency = 1
    UI.gamedisplay.Parent = UI.information

    UI.flex17 = Instance.new("UIFlexItem")
    UI.flex17.Name = "flex"
    UI.flex17.FlexMode = Enum.UIFlexMode.Fill
    UI.flex17.Parent = UI.gamedisplay

    UI.scale17 = Instance.new("UIScale")
    UI.scale17.Name = "scale"
    UI.scale17.Parent = UI.gamedisplay

    UI.corner31 = Instance.new("UICorner")
    UI.corner31.Name = "corner"
    UI.corner31.CornerRadius = UDim.new(0, 12)
    UI.corner31.Parent = UI.gamedisplay

    UI.content4 = Instance.new("Frame")
    UI.content4.BorderSizePixel = 0
    UI.content4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.content4.AnchorPoint = Vector2.new(0.5, 0)
    UI.content4.AutomaticSize = Enum.AutomaticSize.Y
    UI.content4.Size = UDim2.new(1, 0, 1, -100)
    UI.content4.Position = UDim2.new(0.5, 0, 0, 0)
    UI.content4.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.content4.Name = "content"
    UI.content4.BackgroundTransparency = 1
    UI.content4.SelectionGroup = true
    UI.content4.Parent = UI.gamedisplay

    UI.list35 = Instance.new("UIListLayout")
    UI.list35.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UI.list35.Wraps = true
    UI.list35.Padding = UDim.new(0, 10)
    UI.list35.SortOrder = Enum.SortOrder.LayoutOrder
    UI.list35.Name = "list"
    UI.list35.FillDirection = Enum.FillDirection.Horizontal
    UI.list35.Parent = UI.content4

    UI.padding31 = Instance.new("UIPadding")
    UI.padding31.PaddingTop = UDim.new(0, 10)
    UI.padding31.PaddingRight = UDim.new(0, 10)
    UI.padding31.Name = "padding"
    UI.padding31.PaddingLeft = UDim.new(0, 10)
    UI.padding31.PaddingBottom = UDim.new(0, 10)
    UI.padding31.Parent = UI.content4

    UI.info2 = Instance.new("Frame")
    UI.info2.BorderSizePixel = 0
    UI.info2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.info2.Size = UDim2.new(0, 100, 0, 120)
    UI.info2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.info2.Name = "info"
    UI.info2.LayoutOrder = 2
    UI.info2.BackgroundTransparency = 1
    UI.info2.Parent = UI.content4

    UI.flex18 = Instance.new("UIFlexItem")
    UI.flex18.Name = "flex"
    UI.flex18.FlexMode = Enum.UIFlexMode.Fill
    UI.flex18.Parent = UI.info2

    UI.gamename = Instance.new("TextLabel")
    UI.gamename.BorderSizePixel = 0
    UI.gamename.AutoLocalize = false
    UI.gamename.TextSize = 30
    UI.gamename.TextXAlignment = Enum.TextXAlignment.Left
    UI.gamename.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.gamename.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
    UI.gamename.TextColor3 = Color3.fromRGB(255, 255, 255)
    UI.gamename.BackgroundTransparency = 1
    UI.gamename.Size = UDim2.new(1, 0, 0, 20)
    UI.gamename.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.gamename.Text = "Name"
    UI.gamename.AutomaticSize = Enum.AutomaticSize.Y
    UI.gamename.Name = "game_name"
    UI.gamename.Parent = UI.info2

    UI.list36 = Instance.new("UIListLayout")
    UI.list36.VerticalAlignment = Enum.VerticalAlignment.Center
    UI.list36.SortOrder = Enum.SortOrder.LayoutOrder
    UI.list36.Name = "list"
    UI.list36.Parent = UI.info2

    UI.creator = Instance.new("TextLabel")
    UI.creator.TextWrapped = true
    UI.creator.BorderSizePixel = 0
    UI.creator.AutoLocalize = false
    UI.creator.TextSize = 16
    UI.creator.TextXAlignment = Enum.TextXAlignment.Left
    UI.creator.TextTransparency = 0.5
    UI.creator.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.creator.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    UI.creator.TextColor3 = Color3.fromRGB(255, 255, 255)
    UI.creator.BackgroundTransparency = 1
    UI.creator.Size = UDim2.new(1, 0, 0, 20)
    UI.creator.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.creator.Text = "Developer"
    UI.creator.AutomaticSize = Enum.AutomaticSize.Y
    UI.creator.Name = "creator"
    UI.creator.Parent = UI.info2

    UI.description = Instance.new("TextLabel")
    UI.description.TextWrapped = true
    UI.description.BorderSizePixel = 0
    UI.description.AutoLocalize = false
    UI.description.TextSize = 16
    UI.description.TextXAlignment = Enum.TextXAlignment.Left
    UI.description.TextTransparency = 0.5
    UI.description.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.description.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    UI.description.TextColor3 = Color3.fromRGB(255, 255, 255)
    UI.description.BackgroundTransparency = 1
    UI.description.Size = UDim2.new(1, 0, 0, 20)
    UI.description.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.description.Text = "Description"
    UI.description.LayoutOrder = 3
    UI.description.AutomaticSize = Enum.AutomaticSize.Y
    UI.description.Name = "description"
    UI.description.Parent = UI.content4

    UI.padding32 = Instance.new("UIPadding")
    UI.padding32.Name = "padding"
    UI.padding32.PaddingBottom = UDim.new(0, 20)
    UI.padding32.Parent = UI.description

    UI.icon15 = Instance.new("Frame")
    UI.icon15.BorderSizePixel = 0
    UI.icon15.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.icon15.Size = UDim2.new(0, 120, 0, 120)
    UI.icon15.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.icon15.Name = "icon"
    UI.icon15.LayoutOrder = 1
    UI.icon15.BackgroundTransparency = 1
    UI.icon15.Parent = UI.content4

    UI.shadow = Instance.new("ImageLabel")
    UI.shadow.ZIndex = 0
    UI.shadow.BorderSizePixel = 0
    UI.shadow.SliceCenter = Rect.new(300, 300, 300, 300)
    UI.shadow.SliceScale = 0.1
    UI.shadow.ScaleType = Enum.ScaleType.Slice
    UI.shadow.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    UI.shadow.ImageTransparency = 0.5
    UI.shadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
    UI.shadow.AnchorPoint = Vector2.new(0.5, 0.5)
    UI.shadow.Image = "rbxassetid://72548733587158"
    UI.shadow.Size = UDim2.new(1, 0, 1, 0)
    UI.shadow.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.shadow.BackgroundTransparency = 1
    UI.shadow.Name = "shadow"
    UI.shadow.Position = UDim2.new(0.5, 0, 0.5, 0)
    UI.shadow.Parent = UI.icon15

    UI.scale18 = Instance.new("UIScale")
    UI.scale18.Name = "scale"
    UI.scale18.Parent = UI.shadow

    UI.photo = Instance.new("ImageLabel")
    UI.photo.BorderSizePixel = 0
    UI.photo.ScaleType = Enum.ScaleType.Crop
    UI.photo.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    UI.photo.AnchorPoint = Vector2.new(0.5, 0.5)
    UI.photo.Size = UDim2.new(0, 90, 0, 90)
    UI.photo.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.photo.Name = "photo"
    UI.photo.Position = UDim2.new(0.5, 0, 0.5, 0)
    UI.photo.Parent = UI.icon15

    UI.StrokeFrame = Instance.new("Frame")
    UI.StrokeFrame.BorderSizePixel = 0
    UI.StrokeFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.StrokeFrame.AnchorPoint = Vector2.new(0.5, 0.5)
    UI.StrokeFrame.Size = UDim2.new(1, 0, 1, 0)
    UI.StrokeFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
    UI.StrokeFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.StrokeFrame.Name = "StrokeFrame"
    UI.StrokeFrame.BackgroundTransparency = 1
    UI.StrokeFrame.Parent = UI.photo

    UI.stroke14 = Instance.new("UIStroke")
    UI.stroke14.Transparency = 0.8
    UI.stroke14.Color = Color3.fromRGB(255, 255, 255)
    UI.stroke14.Name = "stroke"
    UI.stroke14.Parent = UI.StrokeFrame

    UI.gradient16 = Instance.new("UIGradient")
    UI.gradient16.Rotation = 50
    UI.gradient16.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(0.500, 1),NumberSequenceKeypoint.new(1.000, 0)}
    UI.gradient16.Name = "gradient"
    UI.gradient16.Parent = UI.stroke14

    UI.corner32 = Instance.new("UICorner")
    UI.corner32.Name = "corner"
    UI.corner32.CornerRadius = UDim.new(0, 5)
    UI.corner32.Parent = UI.StrokeFrame

    UI.scale19 = Instance.new("UIScale")
    UI.scale19.Name = "scale"
    UI.scale19.Parent = UI.photo

    UI.stroke15 = Instance.new("UIStroke")
    UI.stroke15.Transparency = 0.95
    UI.stroke15.Color = Color3.fromRGB(255, 255, 255)
    UI.stroke15.Name = "stroke"
    UI.stroke15.Parent = UI.photo

    UI.corner33 = Instance.new("UICorner")
    UI.corner33.Name = "corner"
    UI.corner33.CornerRadius = UDim.new(0, 6)
    UI.corner33.Parent = UI.photo

    UI.tech = Instance.new("Frame")
    UI.tech.Active = true
    UI.tech.BorderSizePixel = 0
    UI.tech.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
    UI.tech.Selectable = true
    UI.tech.ClipsDescendants = true
    UI.tech.AutomaticSize = Enum.AutomaticSize.Y
    UI.tech.Size = UDim2.new(1, 60, 0, 0)
    UI.tech.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.tech.Name = "tech"
    UI.tech.LayoutOrder = 4
    UI.tech.BackgroundTransparency = 1
    UI.tech.Parent = UI.content4

    UI.list37 = Instance.new("UIListLayout")
    UI.list37.Padding = UDim.new(0, 10)
    UI.list37.SortOrder = Enum.SortOrder.LayoutOrder
    UI.list37.Name = "list"
    UI.list37.Parent = UI.tech

    UI.corner34 = Instance.new("UICorner")
    UI.corner34.Name = "corner"
    UI.corner34.CornerRadius = UDim.new(0, 20)
    UI.corner34.Parent = UI.tech

    UI.padding33 = Instance.new("UIPadding")
    UI.padding33.PaddingTop = UDim.new(0, 10)
    UI.padding33.PaddingRight = UDim.new(0, 10)
    UI.padding33.Name = "padding"
    UI.padding33.PaddingLeft = UDim.new(0, 10)
    UI.padding33.PaddingBottom = UDim.new(0, 10)
    UI.padding33.Parent = UI.tech

    UI.jobid = Instance.new("ImageButton")
    UI.jobid.BorderSizePixel = 0
    UI.jobid.BackgroundColor3 = Color3.fromRGB(58, 58, 58)
    UI.jobid.Selectable = false
    UI.jobid.Size = UDim2.new(1, 0, 0, 40)
    UI.jobid.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.jobid.Name = "jobid"
    UI.jobid.Parent = UI.tech

    UI.label12 = Instance.new("TextLabel")
    UI.label12.BorderSizePixel = 0
    UI.label12.AutoLocalize = false
    UI.label12.TextSize = 15
    UI.label12.TextXAlignment = Enum.TextXAlignment.Left
    UI.label12.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.label12.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    UI.label12.TextColor3 = Color3.fromRGB(255, 255, 255)
    UI.label12.BackgroundTransparency = 1
    UI.label12.Size = UDim2.new(0, 0, 1, 0)
    UI.label12.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.label12.Text = "Job ID"
    UI.label12.AutomaticSize = Enum.AutomaticSize.X
    UI.label12.Name = "label"
    UI.label12.Parent = UI.jobid

    UI.flex19 = Instance.new("UIFlexItem")
    UI.flex19.GrowRatio = 1
    UI.flex19.Name = "flex"
    UI.flex19.FlexMode = Enum.UIFlexMode.Custom
    UI.flex19.Parent = UI.label12

    UI.value5 = Instance.new("TextBox")
    UI.value5.Interactable = false
    UI.value5.Name = "value"
    UI.value5.TextXAlignment = Enum.TextXAlignment.Right
    UI.value5.PlaceholderColor3 = Color3.fromRGB(179, 179, 179)
    UI.value5.BorderSizePixel = 0
    UI.value5.TextEditable = false
    UI.value5.AutoLocalize = false
    UI.value5.TextTruncate = Enum.TextTruncate.AtEnd
    UI.value5.TextSize = 15
    UI.value5.TextColor3 = Color3.fromRGB(255, 255, 255)
    UI.value5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.value5.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    UI.value5.AutomaticSize = Enum.AutomaticSize.XY
    UI.value5.Selectable = false
    UI.value5.ClearTextOnFocus = false
    UI.value5.Size = UDim2.new(0, 0, 1, 0)
    UI.value5.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.value5.Text = "0000-0000-0000-0000"
    UI.value5.BackgroundTransparency = 1
    UI.value5.Parent = UI.jobid

    UI.padding34 = Instance.new("UIPadding")
    UI.padding34.PaddingRight = UDim.new(0, 20)
    UI.padding34.Name = "padding"
    UI.padding34.PaddingLeft = UDim.new(0, 20)
    UI.padding34.Parent = UI.jobid

    UI.corner35 = Instance.new("UICorner")
    UI.corner35.Name = "corner"
    UI.corner35.CornerRadius = UDim.new(1, 0)
    UI.corner35.Parent = UI.jobid

    UI.stroke16 = Instance.new("UIStroke")
    UI.stroke16.Color = Color3.fromRGB(255, 255, 255)
    UI.stroke16.Name = "stroke"
    UI.stroke16.Parent = UI.jobid

    UI.gradient17 = Instance.new("UIGradient")
    UI.gradient17.Rotation = -92
    UI.gradient17.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(0.500, 1),NumberSequenceKeypoint.new(1.000, 0)}
    UI.gradient17.Name = "gradient"
    UI.gradient17.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(67, 67, 67)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(67, 67, 67))}
    UI.gradient17.Parent = UI.stroke16

    UI.gradient18 = Instance.new("UIGradient")
    UI.gradient18.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0.8),NumberSequenceKeypoint.new(1.000, 0.8)}
    UI.gradient18.Name = "gradient"
    UI.gradient18.Parent = UI.jobid

    UI.list38 = Instance.new("UIListLayout")
    UI.list38.Padding = UDim.new(0, 20)
    UI.list38.VerticalAlignment = Enum.VerticalAlignment.Center
    UI.list38.SortOrder = Enum.SortOrder.LayoutOrder
    UI.list38.Name = "list"
    UI.list38.FillDirection = Enum.FillDirection.Horizontal
    UI.list38.Parent = UI.jobid

    UI.placeid = Instance.new("ImageButton")
    UI.placeid.BorderSizePixel = 0
    UI.placeid.BackgroundColor3 = Color3.fromRGB(58, 58, 58)
    UI.placeid.Selectable = false
    UI.placeid.Size = UDim2.new(1, 0, 0, 40)
    UI.placeid.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.placeid.Name = "placeid"
    UI.placeid.Parent = UI.tech

    UI.label13 = Instance.new("TextLabel")
    UI.label13.BorderSizePixel = 0
    UI.label13.AutoLocalize = false
    UI.label13.TextSize = 15
    UI.label13.TextXAlignment = Enum.TextXAlignment.Left
    UI.label13.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.label13.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    UI.label13.TextColor3 = Color3.fromRGB(255, 255, 255)
    UI.label13.BackgroundTransparency = 1
    UI.label13.Size = UDim2.new(0, 0, 1, 0)
    UI.label13.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.label13.Text = "Place ID"
    UI.label13.Name = "label"
    UI.label13.Parent = UI.placeid

    UI.flex20 = Instance.new("UIFlexItem")
    UI.flex20.Name = "flex"
    UI.flex20.FlexMode = Enum.UIFlexMode.Fill
    UI.flex20.Parent = UI.label13

    UI.list39 = Instance.new("UIListLayout")
    UI.list39.Padding = UDim.new(0, 20)
    UI.list39.VerticalAlignment = Enum.VerticalAlignment.Center
    UI.list39.SortOrder = Enum.SortOrder.LayoutOrder
    UI.list39.Name = "list"
    UI.list39.FillDirection = Enum.FillDirection.Horizontal
    UI.list39.Parent = UI.placeid

    UI.padding35 = Instance.new("UIPadding")
    UI.padding35.PaddingRight = UDim.new(0, 20)
    UI.padding35.Name = "padding"
    UI.padding35.PaddingLeft = UDim.new(0, 20)
    UI.padding35.Parent = UI.placeid

    UI.corner36 = Instance.new("UICorner")
    UI.corner36.Name = "corner"
    UI.corner36.CornerRadius = UDim.new(1, 0)
    UI.corner36.Parent = UI.placeid

    UI.value6 = Instance.new("TextBox")
    UI.value6.Interactable = false
    UI.value6.Name = "value"
    UI.value6.TextXAlignment = Enum.TextXAlignment.Right
    UI.value6.PlaceholderColor3 = Color3.fromRGB(179, 179, 179)
    UI.value6.BorderSizePixel = 0
    UI.value6.TextEditable = false
    UI.value6.AutoLocalize = false
    UI.value6.TextTruncate = Enum.TextTruncate.AtEnd
    UI.value6.TextSize = 15
    UI.value6.TextColor3 = Color3.fromRGB(255, 255, 255)
    UI.value6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.value6.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    UI.value6.AutomaticSize = Enum.AutomaticSize.X
    UI.value6.Selectable = false
    UI.value6.ClearTextOnFocus = false
    UI.value6.Size = UDim2.new(0, 0, 1, 0)
    UI.value6.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.value6.Text = "00000"
    UI.value6.BackgroundTransparency = 1
    UI.value6.Parent = UI.placeid

    UI.gradient19 = Instance.new("UIGradient")
    UI.gradient19.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0.8),NumberSequenceKeypoint.new(1.000, 0.8)}
    UI.gradient19.Name = "gradient"
    UI.gradient19.Parent = UI.placeid

    UI.stroke17 = Instance.new("UIStroke")
    UI.stroke17.Color = Color3.fromRGB(255, 255, 255)
    UI.stroke17.Name = "stroke"
    UI.stroke17.Parent = UI.placeid

    UI.gradient20 = Instance.new("UIGradient")
    UI.gradient20.Rotation = -92
    UI.gradient20.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(0.500, 1),NumberSequenceKeypoint.new(1.000, 0)}
    UI.gradient20.Name = "gradient"
    UI.gradient20.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(67, 67, 67)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(67, 67, 67))}
    UI.gradient20.Parent = UI.stroke17

    UI.padding36 = Instance.new("UIPadding")
    UI.padding36.PaddingTop = UDim.new(0, 10)
    UI.padding36.PaddingRight = UDim.new(0, 10)
    UI.padding36.Name = "padding"
    UI.padding36.PaddingLeft = UDim.new(0, 10)
    UI.padding36.PaddingBottom = UDim.new(0, 10)
    UI.padding36.Parent = UI.gamedisplay

    UI.thumbnail2 = Instance.new("ImageLabel")
    UI.thumbnail2.ZIndex = 0
    UI.thumbnail2.BorderSizePixel = 0
    UI.thumbnail2.ScaleType = Enum.ScaleType.Crop
    UI.thumbnail2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.thumbnail2.ImageColor3 = Color3.fromRGB(98, 98, 98)
    UI.thumbnail2.AnchorPoint = Vector2.new(0.5, 1)
    UI.thumbnail2.Image = "rbxassetid://109387847907592"
    UI.thumbnail2.Size = UDim2.new(1, 20, 1, 20)
    UI.thumbnail2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.thumbnail2.BackgroundTransparency = 1
    UI.thumbnail2.Name = "thumbnail"
    UI.thumbnail2.Position = UDim2.new(0.5, 0, 1, 10)
    UI.thumbnail2.Parent = UI.gamedisplay

    UI.gradient21 = Instance.new("UIGradient")
    UI.gradient21.Rotation = 90
    UI.gradient21.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(1.000, 1)}
    UI.gradient21.Name = "gradient"
    UI.gradient21.Parent = UI.thumbnail2

    UI.corner37 = Instance.new("UICorner")
    UI.corner37.Name = "corner"
    UI.corner37.CornerRadius = UDim.new(0, 12)
    UI.corner37.Parent = UI.thumbnail2

    UI.scale20 = Instance.new("UIScale")
    UI.scale20.Name = "scale"
    UI.scale20.Scale = 1.87
    UI.scale20.Parent = UI.thumbnail2

    UI.noise = Instance.new("ImageLabel")
    UI.noise.ZIndex = 0
    UI.noise.BorderSizePixel = 0
    UI.noise.ScaleType = Enum.ScaleType.Tile
    UI.noise.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.noise.AnchorPoint = Vector2.new(0.5, 0.5)
    UI.noise.Image = "rbxassetid://126487203254586"
    UI.noise.TileSize = UDim2.new(0, 500, 0, 500)
    UI.noise.Size = UDim2.new(1, 0, 0.78839, 0)
    UI.noise.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.noise.BackgroundTransparency = 1
    UI.noise.Name = "noise"
    UI.noise.Position = UDim2.new(0.38635, 0, 0.6058, 0)
    UI.noise.Parent = UI.thumbnail2

    UI.corner38 = Instance.new("UICorner")
    UI.corner38.Name = "corner"
    UI.corner38.CornerRadius = UDim.new(0, 12)
    UI.corner38.Parent = UI.noise

    UI.gradient22 = Instance.new("UIGradient")
    UI.gradient22.Rotation = 90
    UI.gradient22.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0.85625),NumberSequenceKeypoint.new(1.000, 1)}
    UI.gradient22.Name = "gradient"
    UI.gradient22.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(0, 0, 0)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 0, 0))}
    UI.gradient22.Parent = UI.noise

    UI.header10 = Instance.new("Frame")
    UI.header10.BorderSizePixel = 0
    UI.header10.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    UI.header10.AutomaticSize = Enum.AutomaticSize.Y
    UI.header10.Size = UDim2.new(1, 40, 0, 0)
    UI.header10.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.header10.Name = "header"
    UI.header10.BackgroundTransparency = 1
    UI.header10.Parent = UI.scroll

    UI.greetings = Instance.new("TextLabel")
    UI.greetings.BorderSizePixel = 0
    UI.greetings.AutoLocalize = false
    UI.greetings.TextSize = 20
    UI.greetings.TextXAlignment = Enum.TextXAlignment.Left
    UI.greetings.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    UI.greetings.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
    UI.greetings.TextColor3 = Color3.fromRGB(255, 255, 255)
    UI.greetings.BackgroundTransparency = 1
    UI.greetings.AnchorPoint = Vector2.new(0.5, 0)
    UI.greetings.Size = UDim2.new(1, 0, 0, 30)
    UI.greetings.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.greetings.Text = "Home"
    UI.greetings.LayoutOrder = 1
    UI.greetings.Name = "greetings"
    UI.greetings.Position = UDim2.new(0.5, 0, 0, 0)
    UI.greetings.Parent = UI.header10

    UI.flex21 = Instance.new("UIFlexItem")
    UI.flex21.Name = "flex"
    UI.flex21.FlexMode = Enum.UIFlexMode.Fill
    UI.flex21.Parent = UI.greetings

    UI.list40 = Instance.new("UIListLayout")
    UI.list40.SortOrder = Enum.SortOrder.LayoutOrder
    UI.list40.Name = "list"
    UI.list40.Parent = UI.header10

    UI.padding37 = Instance.new("UIPadding")
    UI.padding37.PaddingTop = UDim.new(0, 18)
    UI.padding37.PaddingRight = UDim.new(0, 26)
    UI.padding37.Name = "padding"
    UI.padding37.PaddingLeft = UDim.new(0, 26)
    UI.padding37.PaddingBottom = UDim.new(0, 18)
    UI.padding37.Parent = UI.header10

    UI.date = Instance.new("TextLabel")
    UI.date.BorderSizePixel = 0
    UI.date.AutoLocalize = false
    UI.date.TextSize = 14
    UI.date.TextXAlignment = Enum.TextXAlignment.Left
    UI.date.TextTransparency = 0.5
    UI.date.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    UI.date.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    UI.date.TextColor3 = Color3.fromRGB(255, 255, 255)
    UI.date.BackgroundTransparency = 1
    UI.date.AnchorPoint = Vector2.new(0.5, 0)
    UI.date.Size = UDim2.new(1, 0, 0, 14)
    UI.date.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.date.Text = "Month Day, Year"
    UI.date.LayoutOrder = 1
    UI.date.Name = "date"
    UI.date.Position = UDim2.new(0.5, 0, 0, 0)
    UI.date.Parent = UI.header10

    UI.gradient23 = Instance.new("UIGradient")
    UI.gradient23.Rotation = 90
    UI.gradient23.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(1.000, 1)}
    UI.gradient23.Name = "gradient"
    UI.gradient23.Parent = UI.header10

    return UI.home2
end

return Maintab