local Maintab = {}

function Maintab:Create(WindowTable)
    local screen = WindowTable.Content:FindFirstChild('screen')
    local home2 = Instance.new("ImageButton")
    home2.BorderSizePixel = 0
    home2.AutoButtonColor = false
    home2.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    home2.Selectable = false
    home2.Size = UDim2.new(1, 0, 1, 0)
    home2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    home2.Name = "home"
    home2.Position = UDim2.new(-0.01539, 0, 0, 0)
    home2.Parent = screen

    local scroll = Instance.new("ScrollingFrame")
    scroll.Active = true
    scroll.ScrollingDirection = Enum.ScrollingDirection.Y
    scroll.BorderSizePixel = 0
    scroll.CanvasSize = UDim2.new(0, 0, 0, 0)
    scroll.Name = "scroll"
    scroll.ScrollBarImageTransparency = 1
    scroll.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    scroll.AnchorPoint = Vector2.new(0.5, 0.5)
    scroll.AutomaticCanvasSize = Enum.AutomaticSize.Y
    scroll.Size = UDim2.new(1, 0, 1, 0)
    scroll.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
    scroll.Position = UDim2.new(0.5, 0, 0.5, 0)
    scroll.BorderColor3 = Color3.fromRGB(0, 0, 0)
    scroll.ScrollBarThickness = 0
    scroll.BackgroundTransparency = 1
    scroll.Parent = home2

    local padding12 = Instance.new("UIPadding")
    padding12.PaddingRight = UDim.new(0, 20)
    padding12.Name = "padding"
    padding12.PaddingLeft = UDim.new(0, 20)
    padding12.PaddingBottom = UDim.new(0, 5)
    padding12.Parent = scroll

    local list18 = Instance.new("UIListLayout")
    list18.HorizontalAlignment = Enum.HorizontalAlignment.Center
    list18.Padding = UDim.new(0, 15)
    list18.SortOrder = Enum.SortOrder.LayoutOrder
    list18.Name = "list"
    list18.Parent = scroll

    local people = Instance.new("Frame")
    people.BorderSizePixel = 0
    people.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    people.AutomaticSize = Enum.AutomaticSize.Y
    people.Size = UDim2.new(1, 0, 0, 0)
    people.BorderColor3 = Color3.fromRGB(0, 0, 0)
    people.Name = "people"
    people.LayoutOrder = 5
    people.BackgroundTransparency = 1
    people.Parent = scroll

    local padding13 = Instance.new("UIPadding")
    padding13.Name = "padding"
    padding13.PaddingBottom = UDim.new(0, 5)
    padding13.Parent = people

    local list19 = Instance.new("UIListLayout")
    list19.Wraps = true
    list19.Padding = UDim.new(0, 10)
    list19.SortOrder = Enum.SortOrder.LayoutOrder
    list19.Name = "list"
    list19.FillDirection = Enum.FillDirection.Horizontal
    list19.Parent = people

    local count = Instance.new("ImageButton")
    count.SliceScale = 0.05
    count.BorderSizePixel = 0
    count.SliceCenter = Rect.new(512, 512, 512, 512)
    count.ScaleType = Enum.ScaleType.Slice
    count.AutoButtonColor = false
    count.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
    count.ImageColor3 = Color3.fromRGB(28, 28, 28)
    count.Size = UDim2.new(0, 160, 0, 200)
    count.BorderColor3 = Color3.fromRGB(0, 0, 0)
    count.Name = "count"
    count.Parent = people

    local meter = Instance.new("Frame")
    meter.BorderSizePixel = 0
    meter.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    meter.Size = UDim2.new(1, 0, 0, 100)
    meter.BorderColor3 = Color3.fromRGB(0, 0, 0)
    meter.Name = "meter"
    meter.BackgroundTransparency = 1
    meter.Parent = count

    local bg = Instance.new("ImageLabel")
    bg.BorderSizePixel = 0
    bg.ScaleType = Enum.ScaleType.Fit
    bg.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    bg.ImageColor3 = Color3.fromRGB(36, 36, 36)
    bg.AnchorPoint = Vector2.new(0.5, 0)
    bg.Image = "rbxassetid://91532298213965"
    bg.Size = UDim2.new(0, 100, 0, 100)
    bg.BorderColor3 = Color3.fromRGB(0, 0, 0)
    bg.BackgroundTransparency = 1
    bg.Name = "bg"
    bg.Position = UDim2.new(0.5, 0, 0.5, 0)
    bg.Parent = meter

    local line = Instance.new("ImageLabel")
    line.BorderSizePixel = 0
    line.ScaleType = Enum.ScaleType.Fit
    line.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    line.ImageColor3 = Color3.fromRGB(0, 141, 255)
    line.AnchorPoint = Vector2.new(0.5, 0)
    line.Image = "rbxassetid://91532298213965"
    line.Size = UDim2.new(0, 100, 0, 100)
    line.BorderColor3 = Color3.fromRGB(0, 0, 0)
    line.BackgroundTransparency = 1
    line.Rotation = -180
    line.Name = "line"
    line.Position = UDim2.new(0.5, 0, 0.5, 0)
    line.Parent = meter

    local cover = Instance.new("Frame")
    cover.BorderSizePixel = 0
    cover.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
    cover.AnchorPoint = Vector2.new(0.5, 0)
    cover.Size = UDim2.new(1, 0, 0.5, 6)
    cover.Position = UDim2.new(0.5, 0, 1, -1)
    cover.BorderColor3 = Color3.fromRGB(0, 0, 0)
    cover.Name = "cover"
    cover.Parent = meter

    local icon9 = Instance.new("ImageLabel")
    icon9.BorderSizePixel = 0
    icon9.ScaleType = Enum.ScaleType.Fit
    icon9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    icon9.ImageTransparency = 0.2
    icon9.AnchorPoint = Vector2.new(0.5, 0.5)
    icon9.Image = "rbxassetid://123713243633092"
    icon9.Size = UDim2.new(0, 24, 0, 24)
    icon9.BorderColor3 = Color3.fromRGB(0, 0, 0)
    icon9.BackgroundTransparency = 1
    icon9.Name = "icon"
    icon9.Position = UDim2.new(0.5, 0, 0.5, 38)
    icon9.Parent = meter

    local scale5 = Instance.new("UIScale")
    scale5.Name = "scale"
    scale5.Parent = icon9

    local padding14 = Instance.new("UIPadding")
    padding14.PaddingTop = UDim.new(0, 12)
    padding14.PaddingRight = UDim.new(0, 14)
    padding14.Name = "padding"
    padding14.PaddingLeft = UDim.new(0, 14)
    padding14.PaddingBottom = UDim.new(0, 10)
    padding14.Parent = count

    local count2 = Instance.new("TextLabel")
    count2.BorderSizePixel = 0
    count2.AutoLocalize = false
    count2.TextSize = 18
    count2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    count2.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
    count2.TextColor3 = Color3.fromRGB(0, 141, 255)
    count2.BackgroundTransparency = 1
    count2.AnchorPoint = Vector2.new(0.5, 1)
    count2.Size = UDim2.new(1, 0, 0, 16)
    count2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    count2.Text = "0/20"
    count2.LayoutOrder = 1
    count2.Name = "count"
    count2.Position = UDim2.new(0.5, 0, 1, -30)
    count2.Parent = count

    local label6 = Instance.new("TextLabel")
    label6.BorderSizePixel = 0
    label6.AutoLocalize = false
    label6.TextSize = 12
    label6.TextTransparency = 0.8
    label6.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    label6.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    label6.TextColor3 = Color3.fromRGB(255, 255, 255)
    label6.BackgroundTransparency = 1
    label6.AnchorPoint = Vector2.new(0.5, 1)
    label6.Size = UDim2.new(1, 0, 0, 16)
    label6.BorderColor3 = Color3.fromRGB(0, 0, 0)
    label6.Text = "Players"
    label6.LayoutOrder = 1
    label6.Name = "label"
    label6.Position = UDim2.new(0.5, 0, 1, -10)
    label6.Parent = count

    local flex7 = Instance.new("UIFlexItem")
    flex7.ShrinkRatio = 1
    flex7.GrowRatio = 0.01
    flex7.Name = "flex"
    flex7.FlexMode = Enum.UIFlexMode.Custom
    flex7.Parent = count

    local scale6 = Instance.new("UIScale")
    scale6.Name = "scale"
    scale6.Parent = count

    local header = Instance.new("TextLabel")
    header.BorderSizePixel = 0
    header.AutoLocalize = false
    header.TextSize = 14
    header.TextXAlignment = Enum.TextXAlignment.Left
    header.TextTransparency = 0.8
    header.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    header.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    header.TextColor3 = Color3.fromRGB(255, 255, 255)
    header.BackgroundTransparency = 1
    header.AnchorPoint = Vector2.new(0.5, 0)
    header.Size = UDim2.new(1, 0, 0, 16)
    header.BorderColor3 = Color3.fromRGB(0, 0, 0)
    header.Text = "Count"
    header.LayoutOrder = 1
    header.Name = "header"
    header.Position = UDim2.new(0.5, 0, 0, 0)
    header.Parent = count

    local stroke = Instance.new("UIStroke")
    stroke.Color = Color3.fromRGB(255, 255, 255)
    stroke.Name = "stroke"
    stroke.Parent = count

    local gradient = Instance.new("UIGradient")
    gradient.Rotation = -90
    gradient.Name = "gradient"
    gradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(39, 39, 39)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(21, 21, 21))}
    gradient.Parent = stroke

    local corner14 = Instance.new("UICorner")
    corner14.Name = "corner"
    corner14.CornerRadius = UDim.new(0, 15)
    corner14.Parent = count

    local People = Instance.new("ImageButton")
    People.SliceScale = 0.05
    People.BorderSizePixel = 0
    People.SliceCenter = Rect.new(512, 512, 512, 512)
    People.ScaleType = Enum.ScaleType.Slice
    People.AutoButtonColor = false
    People.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
    People.ImageColor3 = Color3.fromRGB(28, 28, 28)
    People.Size = UDim2.new(0, 160, 0, 200)
    People.ClipsDescendants = true
    People.BorderColor3 = Color3.fromRGB(0, 0, 0)
    People.Name = "People"
    People.Position = UDim2.new(0.35433, 0, 0.1, 0)
    People.Parent = people

    local flex8 = Instance.new("UIFlexItem")
    flex8.Name = "flex"
    flex8.FlexMode = Enum.UIFlexMode.Fill
    flex8.Parent = People

    local scroll2 = Instance.new("ScrollingFrame")
    scroll2.ScrollingDirection = Enum.ScrollingDirection.Y
    scroll2.BorderSizePixel = 0
    scroll2.CanvasSize = UDim2.new(0, 0, 0, 0)
    scroll2.VerticalScrollBarInset = Enum.ScrollBarInset.ScrollBar
    scroll2.Name = "scroll"
    scroll2.ScrollBarImageTransparency = 1
    scroll2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    scroll2.AutomaticCanvasSize = Enum.AutomaticSize.Y
    scroll2.ClipsDescendants = false
    scroll2.Size = UDim2.new(1, 0, 1, -24)
    scroll2.ScrollBarImageColor3 = Color3.fromRGB(21, 21, 21)
    scroll2.Position = UDim2.new(0, 0, 0, 24)
    scroll2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    scroll2.ScrollBarThickness = 4
    scroll2.BackgroundTransparency = 1
    scroll2.Parent = People

    local list20 = Instance.new("UIListLayout")
    list20.Padding = UDim.new(0, 8)
    list20.SortOrder = Enum.SortOrder.LayoutOrder
    list20.Name = "list"
    list20.Parent = scroll2

    local padding15 = Instance.new("UIPadding")
    padding15.PaddingTop = UDim.new(0, 5)
    padding15.Name = "padding"
    padding15.Parent = scroll2

    local Player = Instance.new("Frame")
    Player.BorderSizePixel = 0
    Player.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
    Player.AnchorPoint = Vector2.new(0.5, 0.5)
    Player.Size = UDim2.new(1, 0, 0.19984, 0)
    Player.Position = UDim2.new(0.5, 0, 0.09992, 0)
    Player.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Player.Name = "Player"
    Player.Parent = scroll2

    local UICorner = Instance.new("UICorner")
    UICorner.CornerRadius = UDim.new(0, 15)
    UICorner.Parent = Player

    local UIListLayout3 = Instance.new("UIListLayout")
    UIListLayout3.Padding = UDim.new(0, 32)
    UIListLayout3.VerticalAlignment = Enum.VerticalAlignment.Center
    UIListLayout3.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout3.FillDirection = Enum.FillDirection.Horizontal
    UIListLayout3.Parent = Player

    local UIPadding2 = Instance.new("UIPadding")
    UIPadding2.PaddingLeft = UDim.new(0, 5)
    UIPadding2.Parent = Player

    local Informatiom = Instance.new("ImageButton")
    Informatiom.BorderSizePixel = 0
    Informatiom.BackgroundTransparency = 1
    Informatiom.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Informatiom.AnchorPoint = Vector2.new(0.5, 0.5)
    Informatiom.Size = UDim2.new(0, 133, 0, 30)
    Informatiom.ClipsDescendants = true
    Informatiom.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Informatiom.Name = "Informatiom"
    Informatiom.Position = UDim2.new(0.5, 0, 0.5, 0)
    Informatiom.Parent = Player

    local UIPadding3 = Instance.new("UIPadding")
    UIPadding3.PaddingLeft = UDim.new(0, 5)
    UIPadding3.Parent = Informatiom

    local UIListLayout4 = Instance.new("UIListLayout")
    UIListLayout4.Padding = UDim.new(0, 8)
    UIListLayout4.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout4.FillDirection = Enum.FillDirection.Horizontal
    UIListLayout4.Parent = Informatiom

    local Name = Instance.new("TextLabel")
    Name.BorderSizePixel = 0
    Name.TextSize = 13
    Name.TextXAlignment = Enum.TextXAlignment.Left
    Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Name.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
    Name.TextColor3 = Color3.fromRGB(255, 255, 255)
    Name.BackgroundTransparency = 1
    Name.Size = UDim2.new(0, 115, 0, 30)
    Name.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Name.Text = "Display"
    Name.LayoutOrder = 1
    Name.Name = "Name"
    Name.Position = UDim2.new(0.09531, 0, 0, 0)
    Name.Parent = Informatiom

    local Profile = Instance.new("ImageLabel")
    Profile.Active = true
    Profile.BorderSizePixel = 0
    Profile.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Profile.Image = "https://www.roblox.com/headshot-thumbnail/image?userId=3765399271&width=420&height=420&format=png"
    Profile.Size = UDim2.new(0, 30, 0, 30)
    Profile.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Profile.BackgroundTransparency = 1
    Profile.Selectable = true
    Profile.Name = "Profile"
    Profile.Parent = Informatiom

    local UICorner2 = Instance.new("UICorner")
    UICorner2.CornerRadius = UDim.new(1, 0)
    UICorner2.Parent = Profile

    local Teleport = Instance.new("TextButton")
    Teleport.BorderSizePixel = 0
    Teleport.AutoButtonColor = false
    Teleport.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    Teleport.AnchorPoint = Vector2.new(0.5, 0.5)
    Teleport.Size = UDim2.new(0, 83, 0, 20)
    Teleport.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Teleport.Name = "Teleport"
    Teleport.Position = UDim2.new(0.5, 0, 0.5, 0)
    Teleport.Parent = Player

    local UICorner3 = Instance.new("UICorner")
    UICorner3.CornerRadius = UDim.new(1, 0)
    UICorner3.Parent = Teleport

    local UIListLayout5 = Instance.new("UIListLayout")
    UIListLayout5.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UIListLayout5.VerticalAlignment = Enum.VerticalAlignment.Center
    UIListLayout5.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout5.Parent = Teleport

    local Teleport2 = Instance.new("TextLabel")
    Teleport2.Active = true
    Teleport2.BorderSizePixel = 0
    Teleport2.TextSize = 14
    Teleport2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Teleport2.FontFace = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
    Teleport2.TextColor3 = Color3.fromRGB(255, 255, 255)
    Teleport2.BackgroundTransparency = 1
    Teleport2.AnchorPoint = Vector2.new(0.5, 0.5)
    Teleport2.Size = UDim2.new(0, 60, 0, 15)
    Teleport2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Teleport2.Text = "Teleport To"
    Teleport2.Selectable = true
    Teleport2.Name = "Teleport"
    Teleport2.Position = UDim2.new(0.5, 0, 0.5, 0)
    Teleport2.Parent = Teleport

    local list21 = Instance.new("ImageLabel")
    list21.BorderSizePixel = 0
    list21.SliceCenter = Rect.new(512, 512, 512, 512)
    list21.SliceScale = 0.05
    list21.ScaleType = Enum.ScaleType.Slice
    list21.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    list21.ImageColor3 = Color3.fromRGB(28, 28, 28)
    list21.AnchorPoint = Vector2.new(0.5, 0)
    list21.Image = "rbxassetid://125088425775676"
    list21.Size = UDim2.new(1, 28, 0, 50)
    list21.ClipsDescendants = true
    list21.BorderColor3 = Color3.fromRGB(0, 0, 0)
    list21.BackgroundTransparency = 1
    list21.Selectable = true
    list21.Name = "list"
    list21.Position = UDim2.new(0.5, 0, -0.01124, -10)
    list21.Parent = People

    local gradient2 = Instance.new("UIGradient")
    gradient2.Rotation = 90
    gradient2.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(1.000, 1)}
    gradient2.Name = "gradient"
    gradient2.Parent = list21

    local header2 = Instance.new("TextLabel")
    header2.ZIndex = 2
    header2.BorderSizePixel = 0
    header2.AutoLocalize = false
    header2.TextSize = 14
    header2.TextXAlignment = Enum.TextXAlignment.Left
    header2.TextTransparency = 0.8
    header2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    header2.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    header2.TextColor3 = Color3.fromRGB(255, 255, 255)
    header2.BackgroundTransparency = 1
    header2.AnchorPoint = Vector2.new(0.5, 0)
    header2.Size = UDim2.new(1, 0, 0, 16)
    header2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    header2.Text = "People"
    header2.LayoutOrder = 1
    header2.Name = "header"
    header2.Position = UDim2.new(0.5, 0, 0, 0)
    header2.Parent = People

    local icon10 = Instance.new("ImageLabel")
    icon10.BorderSizePixel = 0
    icon10.ScaleType = Enum.ScaleType.Fit
    icon10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    icon10.ImageTransparency = 0.8
    icon10.AnchorPoint = Vector2.new(1, 0)
    icon10.Image = "rbxassetid://11419703997"
    icon10.Size = UDim2.new(0, 16, 0, 16)
    icon10.BorderColor3 = Color3.fromRGB(0, 0, 0)
    icon10.BackgroundTransparency = 1
    icon10.Name = "icon"
    icon10.Position = UDim2.new(1, 0, 0, 0)
    icon10.Parent = People

    local scale7 = Instance.new("UIScale")
    scale7.Name = "scale"
    scale7.Parent = icon10

    local scale8 = Instance.new("UIScale")
    scale8.Name = "scale"
    scale8.Parent = People

    local stroke2 = Instance.new("UIStroke")
    stroke2.Color = Color3.fromRGB(255, 255, 255)
    stroke2.Name = "stroke"
    stroke2.Parent = People

    local gradient3 = Instance.new("UIGradient")
    gradient3.Rotation = -90
    gradient3.Name = "gradient"
    gradient3.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(39, 39, 39)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(21, 21, 21))}
    gradient3.Parent = stroke2

    local corner15 = Instance.new("UICorner")
    corner15.Name = "corner"
    corner15.CornerRadius = UDim.new(0, 15)
    corner15.Parent = People

    local padding16 = Instance.new("UIPadding")
    padding16.PaddingTop = UDim.new(0, 12)
    padding16.PaddingRight = UDim.new(0, 14)
    padding16.Name = "padding"
    padding16.PaddingLeft = UDim.new(0, 14)
    padding16.PaddingBottom = UDim.new(0, 10)
    padding16.Parent = People

    local header3 = Instance.new("Frame")
    header3.BorderSizePixel = 0
    header3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    header3.Size = UDim2.new(1, 0, 0, 30)
    header3.BorderColor3 = Color3.fromRGB(0, 0, 0)
    header3.Name = "header"
    header3.LayoutOrder = -1
    header3.BackgroundTransparency = 1
    header3.Parent = people

    local list22 = Instance.new("UIListLayout")
    list22.Padding = UDim.new(0, 10)
    list22.VerticalAlignment = Enum.VerticalAlignment.Center
    list22.SortOrder = Enum.SortOrder.LayoutOrder
    list22.Name = "list"
    list22.FillDirection = Enum.FillDirection.Horizontal
    list22.Parent = header3

    local header4 = Instance.new("Frame")
    header4.BorderSizePixel = 0
    header4.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
    header4.AutomaticSize = Enum.AutomaticSize.X
    header4.Size = UDim2.new(0, 0, 0, 30)
    header4.BorderColor3 = Color3.fromRGB(0, 0, 0)
    header4.Name = "header"
    header4.LayoutOrder = -1
    header4.Parent = header3

    local list23 = Instance.new("UIListLayout")
    list23.Padding = UDim.new(0, 10)
    list23.VerticalAlignment = Enum.VerticalAlignment.Center
    list23.SortOrder = Enum.SortOrder.LayoutOrder
    list23.Name = "list"
    list23.FillDirection = Enum.FillDirection.Horizontal
    list23.Parent = header4

    local icon11 = Instance.new("ImageLabel")
    icon11.BorderSizePixel = 0
    icon11.ScaleType = Enum.ScaleType.Fit
    icon11.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    icon11.Image = "rbxassetid://100753787236053"
    icon11.Size = UDim2.new(0, 16, 0, 16)
    icon11.BorderColor3 = Color3.fromRGB(0, 0, 0)
    icon11.BackgroundTransparency = 1
    icon11.Name = "icon"
    icon11.Parent = header4

    local scale9 = Instance.new("UIScale")
    scale9.Name = "scale"
    scale9.Parent = icon11

    local padding17 = Instance.new("UIPadding")
    padding17.PaddingRight = UDim.new(0, 14)
    padding17.Name = "padding"
    padding17.PaddingLeft = UDim.new(0, 14)
    padding17.Parent = header4

    local corner16 = Instance.new("UICorner")
    corner16.Name = "corner"
    corner16.CornerRadius = UDim.new(1, 0)
    corner16.Parent = header4

    local stroke3 = Instance.new("UIStroke")
    stroke3.Color = Color3.fromRGB(255, 255, 255)
    stroke3.Name = "stroke"
    stroke3.Parent = header4

    local gradient4 = Instance.new("UIGradient")
    gradient4.Rotation = -101
    gradient4.Name = "gradient"
    gradient4.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(53, 53, 53)),ColorSequenceKeypoint.new(0.497, Color3.fromRGB(25, 25, 25)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(53, 53, 53))}
    gradient4.Parent = stroke3

    local label7 = Instance.new("TextLabel")
    label7.BorderSizePixel = 0
    label7.AutoLocalize = false
    label7.TextSize = 14
    label7.TextXAlignment = Enum.TextXAlignment.Left
    label7.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    label7.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    label7.TextColor3 = Color3.fromRGB(255, 255, 255)
    label7.BackgroundTransparency = 1
    label7.AnchorPoint = Vector2.new(0.5, 0)
    label7.Size = UDim2.new(0, 0, 1, 0)
    label7.BorderColor3 = Color3.fromRGB(0, 0, 0)
    label7.Text = "People"
    label7.LayoutOrder = 1
    label7.AutomaticSize = Enum.AutomaticSize.X
    label7.Name = "label"
    label7.Position = UDim2.new(0.5, 0, 0, 0)
    label7.Parent = header4

    local scale10 = Instance.new("UIScale")
    scale10.Name = "scale"
    scale10.Parent = label7

    local overview = Instance.new("Frame")
    overview.BorderSizePixel = 0
    overview.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    overview.AutomaticSize = Enum.AutomaticSize.Y
    overview.Size = UDim2.new(1, 0, 0, 0)
    overview.BorderColor3 = Color3.fromRGB(0, 0, 0)
    overview.Name = "overview"
    overview.LayoutOrder = 6
    overview.BackgroundTransparency = 1
    overview.Parent = scroll

    local padding18 = Instance.new("UIPadding")
    padding18.Name = "padding"
    padding18.PaddingBottom = UDim.new(0, 5)
    padding18.Parent = overview

    local list24 = Instance.new("UIListLayout")
    list24.Wraps = true
    list24.Padding = UDim.new(0, 10)
    list24.SortOrder = Enum.SortOrder.LayoutOrder
    list24.Name = "list"
    list24.FillDirection = Enum.FillDirection.Horizontal
    list24.Parent = overview

    local uptime = Instance.new("ImageButton")
    uptime.SliceScale = 0.05
    uptime.BorderSizePixel = 0
    uptime.SliceCenter = Rect.new(512, 512, 512, 512)
    uptime.ScaleType = Enum.ScaleType.Tile
    uptime.AutoButtonColor = false
    uptime.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
    uptime.ImageColor3 = Color3.fromRGB(28, 28, 28)
    uptime.Image = "rbxassetid://126487203254586"
    uptime.Size = UDim2.new(0, 250, 0, 130)
    uptime.BorderColor3 = Color3.fromRGB(0, 0, 0)
    uptime.Name = "uptime"
    uptime.Position = UDim2.new(-0.0023, 0, 0.26, 0)
    uptime.Parent = overview

    local padding19 = Instance.new("UIPadding")
    padding19.PaddingTop = UDim.new(0, 12)
    padding19.PaddingRight = UDim.new(0, 14)
    padding19.Name = "padding"
    padding19.PaddingLeft = UDim.new(0, 14)
    padding19.PaddingBottom = UDim.new(0, 12)
    padding19.Parent = uptime

    local header5 = Instance.new("TextLabel")
    header5.BorderSizePixel = 0
    header5.AutoLocalize = false
    header5.TextSize = 14
    header5.TextXAlignment = Enum.TextXAlignment.Left
    header5.TextTransparency = 0.8
    header5.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    header5.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    header5.TextColor3 = Color3.fromRGB(255, 255, 255)
    header5.BackgroundTransparency = 1
    header5.AnchorPoint = Vector2.new(0.5, 0)
    header5.Size = UDim2.new(1, 0, 0, 16)
    header5.BorderColor3 = Color3.fromRGB(0, 0, 0)
    header5.Text = "Uptime"
    header5.LayoutOrder = 1
    header5.Name = "header"
    header5.Position = UDim2.new(0.5, 0, 0, 0)
    header5.Parent = uptime

    local stopwatch = Instance.new("Frame")
    stopwatch.BorderSizePixel = 0
    stopwatch.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    stopwatch.AnchorPoint = Vector2.new(0.5, 0.5)
    stopwatch.Size = UDim2.new(1, 0, 0, 50)
    stopwatch.Position = UDim2.new(0.5, 0, 0.5, 0)
    stopwatch.BorderColor3 = Color3.fromRGB(0, 0, 0)
    stopwatch.Name = "stopwatch"
    stopwatch.LayoutOrder = 2
    stopwatch.BackgroundTransparency = 1
    stopwatch.Parent = uptime

    local list25 = Instance.new("UIListLayout")
    list25.HorizontalAlignment = Enum.HorizontalAlignment.Center
    list25.Padding = UDim.new(0, 4)
    list25.VerticalAlignment = Enum.VerticalAlignment.Center
    list25.SortOrder = Enum.SortOrder.LayoutOrder
    list25.Name = "list"
    list25.FillDirection = Enum.FillDirection.Horizontal
    list25.Parent = stopwatch

    local Days = Instance.new("TextLabel")
    Days.BorderSizePixel = 0
    Days.AutoLocalize = false
    Days.TextSize = 30
    Days.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
    Days.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
    Days.TextColor3 = Color3.fromRGB(255, 255, 255)
    Days.BackgroundTransparency = 1
    Days.AnchorPoint = Vector2.new(0.5, 1)
    Days.Size = UDim2.new(1, 0, 0, 40)
    Days.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Days.Text = "00"
    Days.LayoutOrder = 1
    Days.Name = "Days"
    Days.Position = UDim2.new(0.5, 0, 1, -30)
    Days.Parent = stopwatch

    local flex9 = Instance.new("UIFlexItem")
    flex9.Name = "flex"
    flex9.FlexMode = Enum.UIFlexMode.Fill
    flex9.Parent = Days

    local padding20 = Instance.new("UIPadding")
    padding20.Name = "padding"
    padding20.Parent = Days

    local corner17 = Instance.new("UICorner")
    corner17.Name = "corner"
    corner17.CornerRadius = UDim.new(1, 0)
    corner17.Parent = Days

    local divider2 = Instance.new("TextLabel")
    divider2.BorderSizePixel = 0
    divider2.AutoLocalize = false
    divider2.TextSize = 30
    divider2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    divider2.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    divider2.TextColor3 = Color3.fromRGB(77, 77, 77)
    divider2.BackgroundTransparency = 1
    divider2.AnchorPoint = Vector2.new(0.5, 1)
    divider2.Size = UDim2.new(0, 10, 0, 40)
    divider2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    divider2.Text = ":"
    divider2.LayoutOrder = 2
    divider2.Name = "divider"
    divider2.Position = UDim2.new(0.5, 0, 1, -30)
    divider2.Parent = stopwatch

    local Hours = Instance.new("TextLabel")
    Hours.BorderSizePixel = 0
    Hours.AutoLocalize = false
    Hours.TextSize = 30
    Hours.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
    Hours.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
    Hours.TextColor3 = Color3.fromRGB(255, 255, 255)
    Hours.BackgroundTransparency = 1
    Hours.AnchorPoint = Vector2.new(0.5, 1)
    Hours.Size = UDim2.new(1, 0, 0, 40)
    Hours.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Hours.Text = "00"
    Hours.LayoutOrder = 3
    Hours.Name = "Hours"
    Hours.Position = UDim2.new(0.5, 0, 1, -30)
    Hours.Parent = stopwatch

    local flex10 = Instance.new("UIFlexItem")
    flex10.Name = "flex"
    flex10.FlexMode = Enum.UIFlexMode.Fill
    flex10.Parent = Hours

    local padding21 = Instance.new("UIPadding")
    padding21.Name = "padding"
    padding21.Parent = Hours

    local corner18 = Instance.new("UICorner")
    corner18.Name = "corner"
    corner18.CornerRadius = UDim.new(1, 0)
    corner18.Parent = Hours

    local divider3 = Instance.new("TextLabel")
    divider3.BorderSizePixel = 0
    divider3.AutoLocalize = false
    divider3.TextSize = 30
    divider3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    divider3.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    divider3.TextColor3 = Color3.fromRGB(77, 77, 77)
    divider3.BackgroundTransparency = 1
    divider3.AnchorPoint = Vector2.new(0.5, 1)
    divider3.Size = UDim2.new(0, 10, 0, 40)
    divider3.BorderColor3 = Color3.fromRGB(0, 0, 0)
    divider3.Text = ":"
    divider3.LayoutOrder = 4
    divider3.Name = "divider"
    divider3.Position = UDim2.new(0.5, 0, 1, -30)
    divider3.Parent = stopwatch

    local Minutes = Instance.new("TextLabel")
    Minutes.BorderSizePixel = 0
    Minutes.AutoLocalize = false
    Minutes.TextSize = 30
    Minutes.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
    Minutes.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
    Minutes.TextColor3 = Color3.fromRGB(255, 255, 255)
    Minutes.BackgroundTransparency = 1
    Minutes.AnchorPoint = Vector2.new(0.5, 1)
    Minutes.Size = UDim2.new(1, 0, 0, 40)
    Minutes.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Minutes.Text = "00"
    Minutes.LayoutOrder = 5
    Minutes.Name = "Minutes"
    Minutes.Position = UDim2.new(0.5, 0, 1, -30)
    Minutes.Parent = stopwatch

    local flex11 = Instance.new("UIFlexItem")
    flex11.Name = "flex"
    flex11.FlexMode = Enum.UIFlexMode.Fill
    flex11.Parent = Minutes

    local padding22 = Instance.new("UIPadding")
    padding22.Name = "padding"
    padding22.Parent = Minutes

    local corner19 = Instance.new("UICorner")
    corner19.Name = "corner"
    corner19.CornerRadius = UDim.new(1, 0)
    corner19.Parent = Minutes

    local divider4 = Instance.new("TextLabel")
    divider4.BorderSizePixel = 0
    divider4.AutoLocalize = false
    divider4.TextSize = 30
    divider4.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    divider4.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    divider4.TextColor3 = Color3.fromRGB(77, 77, 77)
    divider4.BackgroundTransparency = 1
    divider4.AnchorPoint = Vector2.new(0.5, 1)
    divider4.Size = UDim2.new(0, 10, 0, 40)
    divider4.BorderColor3 = Color3.fromRGB(0, 0, 0)
    divider4.Text = ":"
    divider4.LayoutOrder = 6
    divider4.Name = "divider"
    divider4.Position = UDim2.new(0.5, 0, 1, -30)
    divider4.Parent = stopwatch

    local Seconds = Instance.new("TextLabel")
    Seconds.BorderSizePixel = 0
    Seconds.AutoLocalize = false
    Seconds.TextSize = 30
    Seconds.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
    Seconds.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Bold, Enum.FontStyle.Normal)
    Seconds.TextColor3 = Color3.fromRGB(255, 255, 255)
    Seconds.BackgroundTransparency = 1
    Seconds.AnchorPoint = Vector2.new(0.5, 1)
    Seconds.Size = UDim2.new(1, 0, 0, 40)
    Seconds.BorderColor3 = Color3.fromRGB(0, 0, 0)
    Seconds.Text = "00"
    Seconds.LayoutOrder = 7
    Seconds.Name = "Seconds"
    Seconds.Position = UDim2.new(0.5, 0, 1, -30)
    Seconds.Parent = stopwatch

    local flex12 = Instance.new("UIFlexItem")
    flex12.Name = "flex"
    flex12.FlexMode = Enum.UIFlexMode.Fill
    flex12.Parent = Seconds

    local padding23 = Instance.new("UIPadding")
    padding23.Name = "padding"
    padding23.Parent = Seconds

    local corner20 = Instance.new("UICorner")
    corner20.Name = "corner"
    corner20.CornerRadius = UDim.new(1, 0)
    corner20.Parent = Seconds

    local label8 = Instance.new("Frame")
    label8.BorderSizePixel = 0
    label8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    label8.AnchorPoint = Vector2.new(0.5, 0.5)
    label8.Size = UDim2.new(1, 0, 0, 16)
    label8.Position = UDim2.new(0.5, 0, 1, -20)
    label8.BorderColor3 = Color3.fromRGB(0, 0, 0)
    label8.Name = "label"
    label8.LayoutOrder = 3
    label8.BackgroundTransparency = 1
    label8.Parent = uptime

    local list26 = Instance.new("UIListLayout")
    list26.HorizontalAlignment = Enum.HorizontalAlignment.Center
    list26.HorizontalFlex = Enum.UIFlexAlignment.Fill
    list26.Padding = UDim.new(0, 20)
    list26.VerticalAlignment = Enum.VerticalAlignment.Center
    list26.SortOrder = Enum.SortOrder.LayoutOrder
    list26.Name = "list"
    list26.FillDirection = Enum.FillDirection.Horizontal
    list26.Parent = label8

    local days = Instance.new("TextLabel")
    days.BorderSizePixel = 0
    days.AutoLocalize = false
    days.TextSize = 12
    days.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    days.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    days.TextColor3 = Color3.fromRGB(162, 162, 162)
    days.BackgroundTransparency = 1
    days.AnchorPoint = Vector2.new(0.5, 1)
    days.Size = UDim2.new(0, 20, 0, 20)
    days.BorderColor3 = Color3.fromRGB(0, 0, 0)
    days.Text = "D"
    days.LayoutOrder = 1
    days.Name = "days"
    days.Position = UDim2.new(0.5, 0, 1, -30)
    days.Parent = label8

    local stroke4 = Instance.new("UIStroke")
    stroke4.Color = Color3.fromRGB(255, 255, 255)
    stroke4.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    stroke4.Name = "stroke"
    stroke4.Parent = days

    local gradient5 = Instance.new("UIGradient")
    gradient5.Rotation = -90
    gradient5.Name = "gradient"
    gradient5.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(44, 44, 44)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(17, 17, 17))}
    gradient5.Parent = stroke4

    local corner21 = Instance.new("UICorner")
    corner21.Name = "corner"
    corner21.CornerRadius = UDim.new(1, 0)
    corner21.Parent = days

    local hours = Instance.new("TextLabel")
    hours.BorderSizePixel = 0
    hours.AutoLocalize = false
    hours.TextSize = 12
    hours.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    hours.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    hours.TextColor3 = Color3.fromRGB(162, 162, 162)
    hours.BackgroundTransparency = 1
    hours.AnchorPoint = Vector2.new(0.5, 1)
    hours.Size = UDim2.new(0, 20, 0, 20)
    hours.BorderColor3 = Color3.fromRGB(0, 0, 0)
    hours.Text = "H"
    hours.LayoutOrder = 3
    hours.Name = "hours"
    hours.Position = UDim2.new(0.5, 0, 1, -30)
    hours.Parent = label8

    local corner22 = Instance.new("UICorner")
    corner22.Name = "corner"
    corner22.CornerRadius = UDim.new(1, 0)
    corner22.Parent = hours

    local stroke5 = Instance.new("UIStroke")
    stroke5.Color = Color3.fromRGB(255, 255, 255)
    stroke5.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    stroke5.Name = "stroke"
    stroke5.Parent = hours

    local gradient6 = Instance.new("UIGradient")
    gradient6.Rotation = -90
    gradient6.Name = "gradient"
    gradient6.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(44, 44, 44)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(17, 17, 17))}
    gradient6.Parent = stroke5

    local minutes = Instance.new("TextLabel")
    minutes.BorderSizePixel = 0
    minutes.AutoLocalize = false
    minutes.TextSize = 12
    minutes.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    minutes.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    minutes.TextColor3 = Color3.fromRGB(162, 162, 162)
    minutes.BackgroundTransparency = 1
    minutes.AnchorPoint = Vector2.new(0.5, 1)
    minutes.Size = UDim2.new(0, 20, 0, 20)
    minutes.BorderColor3 = Color3.fromRGB(0, 0, 0)
    minutes.Text = "M"
    minutes.LayoutOrder = 5
    minutes.Name = "minutes"
    minutes.Position = UDim2.new(0.5, 0, 1, -30)
    minutes.Parent = label8

    local stroke6 = Instance.new("UIStroke")
    stroke6.Color = Color3.fromRGB(255, 255, 255)
    stroke6.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    stroke6.Name = "stroke"
    stroke6.Parent = minutes

    local gradient7 = Instance.new("UIGradient")
    gradient7.Rotation = -90
    gradient7.Name = "gradient"
    gradient7.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(44, 44, 44)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(17, 17, 17))}
    gradient7.Parent = stroke6

    local corner23 = Instance.new("UICorner")
    corner23.Name = "corner"
    corner23.CornerRadius = UDim.new(1, 0)
    corner23.Parent = minutes

    local seconds = Instance.new("TextLabel")
    seconds.BorderSizePixel = 0
    seconds.AutoLocalize = false
    seconds.TextSize = 12
    seconds.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    seconds.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    seconds.TextColor3 = Color3.fromRGB(162, 162, 162)
    seconds.BackgroundTransparency = 1
    seconds.AnchorPoint = Vector2.new(0.5, 1)
    seconds.Size = UDim2.new(0, 20, 0, 20)
    seconds.BorderColor3 = Color3.fromRGB(0, 0, 0)
    seconds.Text = "S"
    seconds.LayoutOrder = 7
    seconds.Name = "seconds"
    seconds.Position = UDim2.new(0.5, 0, 1, -30)
    seconds.Parent = label8

    local stroke7 = Instance.new("UIStroke")
    stroke7.Color = Color3.fromRGB(255, 255, 255)
    stroke7.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    stroke7.Name = "stroke"
    stroke7.Parent = seconds

    local gradient8 = Instance.new("UIGradient")
    gradient8.Rotation = -90
    gradient8.Name = "gradient"
    gradient8.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(44, 44, 44)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(17, 17, 17))}
    gradient8.Parent = stroke7

    local corner24 = Instance.new("UICorner")
    corner24.Name = "corner"
    corner24.CornerRadius = UDim.new(1, 0)
    corner24.Parent = seconds

    local list27 = Instance.new("UIListLayout")
    list27.HorizontalAlignment = Enum.HorizontalAlignment.Center
    list27.Padding = UDim.new(0, 10)
    list27.SortOrder = Enum.SortOrder.LayoutOrder
    list27.Name = "list"
    list27.Parent = uptime

    local flex13 = Instance.new("UIFlexItem")
    flex13.ShrinkRatio = 1
    flex13.GrowRatio = 1
    flex13.Name = "flex"
    flex13.FlexMode = Enum.UIFlexMode.Custom
    flex13.Parent = uptime

    local scale11 = Instance.new("UIScale")
    scale11.Name = "scale"
    scale11.Parent = uptime

    local corner25 = Instance.new("UICorner")
    corner25.Name = "corner"
    corner25.CornerRadius = UDim.new(0, 15)
    corner25.Parent = uptime

    local stroke8 = Instance.new("UIStroke")
    stroke8.Color = Color3.fromRGB(255, 255, 255)
    stroke8.Name = "stroke"
    stroke8.Parent = uptime

    local gradient9 = Instance.new("UIGradient")
    gradient9.Rotation = -90
    gradient9.Name = "gradient"
    gradient9.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(39, 39, 39)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(21, 21, 21))}
    gradient9.Parent = stroke8

    local console = Instance.new("ImageButton")
    console.SliceScale = 0.05
    console.BorderSizePixel = 0
    console.SliceCenter = Rect.new(512, 512, 512, 512)
    console.ScaleType = Enum.ScaleType.Slice
    console.AutoButtonColor = false
    console.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
    console.ImageColor3 = Color3.fromRGB(28, 28, 28)
    console.Size = UDim2.new(0, 250, 0, 130)
    console.ClipsDescendants = true
    console.BorderColor3 = Color3.fromRGB(0, 0, 0)
    console.Name = "console"
    console.Parent = overview

    local padding24 = Instance.new("UIPadding")
    padding24.PaddingTop = UDim.new(0, 12)
    padding24.PaddingRight = UDim.new(0, 14)
    padding24.Name = "padding"
    padding24.PaddingLeft = UDim.new(0, 14)
    padding24.PaddingBottom = UDim.new(0, 10)
    padding24.Parent = console

    local logs = Instance.new("Frame")
    logs.BorderSizePixel = 0
    logs.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    logs.Selectable = true
    logs.Size = UDim2.new(1, 0, 1, -24)
    logs.Position = UDim2.new(0, 0, 0, 24)
    logs.BorderColor3 = Color3.fromRGB(0, 0, 0)
    logs.Name = "logs"
    logs.BackgroundTransparency = 1
    logs.SelectionGroup = true
    logs.Parent = console

    local list28 = Instance.new("UIListLayout")
    list28.Padding = UDim.new(0, 8)
    list28.SortOrder = Enum.SortOrder.LayoutOrder
    list28.Name = "list"
    list28.Parent = logs

    local log = Instance.new("TextLabel")
    log.TextWrapped = true
    log.BorderSizePixel = 0
    log.AutoLocalize = false
    log.TextSize = 14
    log.TextXAlignment = Enum.TextXAlignment.Left
    log.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    log.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    log.TextColor3 = Color3.fromRGB(215, 215, 215)
    log.AnchorPoint = Vector2.new(0.5, 1)
    log.Size = UDim2.new(1, 0, 0, 0)
    log.BorderColor3 = Color3.fromRGB(0, 0, 0)
    log.Text = "error log"
    log.Selectable = true
    log.AutomaticSize = Enum.AutomaticSize.Y
    log.Name = "log"
    log.Position = UDim2.new(0.5, 0, 1, 0)
    log.Parent = list28

    local padding25 = Instance.new("UIPadding")
    padding25.PaddingTop = UDim.new(0, 10)
    padding25.PaddingRight = UDim.new(0, 12)
    padding25.Name = "padding"
    padding25.PaddingLeft = UDim.new(0, 12)
    padding25.PaddingBottom = UDim.new(0, 10)
    padding25.Parent = log

    local list29 = Instance.new("UIListLayout")
    list29.Padding = UDim.new(0, 8)
    list29.VerticalAlignment = Enum.VerticalAlignment.Center
    list29.SortOrder = Enum.SortOrder.LayoutOrder
    list29.Name = "list"
    list29.FillDirection = Enum.FillDirection.Horizontal
    list29.Parent = log

    local corner26 = Instance.new("UICorner")
    corner26.Name = "corner"
    corner26.CornerRadius = UDim.new(0, 15)
    corner26.Parent = log

    local stroke9 = Instance.new("UIStroke")
    stroke9.Color = Color3.fromRGB(255, 255, 255)
    stroke9.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    stroke9.Name = "stroke"
    stroke9.Parent = log

    local gradient10 = Instance.new("UIGradient")
    gradient10.Rotation = 90
    gradient10.Name = "gradient"
    gradient10.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(53, 53, 53)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(21, 21, 21))}
    gradient10.Parent = stroke9

    local padding26 = Instance.new("UIPadding")
    padding26.PaddingTop = UDim.new(0, 5)
    padding26.Name = "padding"
    padding26.Parent = logs

    local fade = Instance.new("ImageLabel")
    fade.BorderSizePixel = 0
    fade.SliceCenter = Rect.new(512, 512, 512, 512)
    fade.SliceScale = 0.05
    fade.ScaleType = Enum.ScaleType.Slice
    fade.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    fade.ImageColor3 = Color3.fromRGB(28, 28, 28)
    fade.AnchorPoint = Vector2.new(0.5, 1)
    fade.Image = "rbxassetid://125088425775676"
    fade.Size = UDim2.new(1, 28, 0, 50)
    fade.ClipsDescendants = true
    fade.BorderColor3 = Color3.fromRGB(0, 0, 0)
    fade.BackgroundTransparency = 1
    fade.Selectable = true
    fade.Name = "fade"
    fade.Position = UDim2.new(0.5, 0, 1, 10)
    fade.Parent = console

    local gradient11 = Instance.new("UIGradient")
    gradient11.Rotation = -90
    gradient11.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(1.000, 1)}
    gradient11.Name = "gradient"
    gradient11.Parent = fade

    local scale12 = Instance.new("UIScale")
    scale12.Name = "scale"
    scale12.Parent = console

    local stroke10 = Instance.new("UIStroke")
    stroke10.Color = Color3.fromRGB(255, 255, 255)
    stroke10.Name = "stroke"
    stroke10.Parent = console

    local gradient12 = Instance.new("UIGradient")
    gradient12.Rotation = -90
    gradient12.Name = "gradient"
    gradient12.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(39, 39, 39)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(21, 21, 21))}
    gradient12.Parent = stroke10

    local corner27 = Instance.new("UICorner")
    corner27.Name = "corner"
    corner27.CornerRadius = UDim.new(0, 15)
    corner27.Parent = console

    local flex14 = Instance.new("UIFlexItem")
    flex14.ShrinkRatio = 1
    flex14.GrowRatio = 1
    flex14.Name = "flex"
    flex14.FlexMode = Enum.UIFlexMode.Custom
    flex14.Parent = console

    local header6 = Instance.new("TextLabel")
    header6.ZIndex = 2
    header6.BorderSizePixel = 0
    header6.AutoLocalize = false
    header6.TextSize = 14
    header6.TextXAlignment = Enum.TextXAlignment.Left
    header6.TextTransparency = 0.8
    header6.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    header6.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    header6.TextColor3 = Color3.fromRGB(255, 255, 255)
    header6.BackgroundTransparency = 1
    header6.AnchorPoint = Vector2.new(0.5, 0)
    header6.Size = UDim2.new(1, 0, 0, 16)
    header6.BorderColor3 = Color3.fromRGB(0, 0, 0)
    header6.Text = "Developer Console"
    header6.LayoutOrder = 1
    header6.Name = "header"
    header6.Position = UDim2.new(0.5, 0, 0, 0)
    header6.Parent = console

    local serverteleportation = Instance.new("ImageButton")
    serverteleportation.SliceScale = 0.05
    serverteleportation.BorderSizePixel = 0
    serverteleportation.SliceCenter = Rect.new(512, 512, 512, 512)
    serverteleportation.ScaleType = Enum.ScaleType.Slice
    serverteleportation.AutoButtonColor = false
    serverteleportation.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
    serverteleportation.ImageColor3 = Color3.fromRGB(28, 28, 28)
    serverteleportation.Size = UDim2.new(0, 250, 0, 130)
    serverteleportation.ClipsDescendants = true
    serverteleportation.BorderColor3 = Color3.fromRGB(0, 0, 0)
    serverteleportation.Name = "server_teleportation"
    serverteleportation.Parent = overview

    local padding27 = Instance.new("UIPadding")
    padding27.PaddingTop = UDim.new(0, 12)
    padding27.PaddingRight = UDim.new(0, 14)
    padding27.Name = "padding"
    padding27.PaddingLeft = UDim.new(0, 14)
    padding27.PaddingBottom = UDim.new(0, 10)
    padding27.Parent = serverteleportation

    local flex15 = Instance.new("UIFlexItem")
    flex15.ShrinkRatio = 1
    flex15.GrowRatio = 1
    flex15.Name = "flex"
    flex15.FlexMode = Enum.UIFlexMode.Custom
    flex15.Parent = serverteleportation

    local header7 = Instance.new("TextLabel")
    header7.ZIndex = 2
    header7.BorderSizePixel = 0
    header7.AutoLocalize = false
    header7.TextSize = 14
    header7.TextXAlignment = Enum.TextXAlignment.Left
    header7.TextTransparency = 0.8
    header7.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    header7.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
    header7.TextColor3 = Color3.fromRGB(255, 255, 255)
    header7.BackgroundTransparency = 1
    header7.AnchorPoint = Vector2.new(0.5, 0)
    header7.Size = UDim2.new(1, 0, 0, 16)
    header7.Visible = false
    header7.BorderColor3 = Color3.fromRGB(0, 0, 0)
    header7.Text = "Teleport"
    header7.LayoutOrder = 1
    header7.Name = "header"
    header7.Position = UDim2.new(0.5, 0, 0, 0)
    header7.Parent = serverteleportation

    local scale13 = Instance.new("UIScale")
    scale13.Name = "scale"
    scale13.Parent = serverteleportation

    local content2 = Instance.new("Frame")
    content2.BorderSizePixel = 0
    content2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    content2.AnchorPoint = Vector2.new(0.5, 0.5)
    content2.Size = UDim2.new(1, 0, 1, 0)
    content2.Position = UDim2.new(0.5, 0, 0.5, 0)
    content2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    content2.Name = "content"
    content2.BackgroundTransparency = 1
    content2.Parent = serverteleportation

    local icon12 = Instance.new("ImageLabel")
    icon12.BorderSizePixel = 0
    icon12.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    icon12.Image = "rbxassetid://81439029637522"
    icon12.Size = UDim2.new(0, 24, 0, 24)
    icon12.BorderColor3 = Color3.fromRGB(0, 0, 0)
    icon12.BackgroundTransparency = 1
    icon12.Name = "icon"
    icon12.Parent = content2

    local list30 = Instance.new("UIListLayout")
    list30.HorizontalAlignment = Enum.HorizontalAlignment.Center
    list30.Padding = UDim.new(0, 10)
    list30.VerticalAlignment = Enum.VerticalAlignment.Center
    list30.SortOrder = Enum.SortOrder.LayoutOrder
    list30.Name = "list"
    list30.Parent = content2

    local label9 = Instance.new("TextLabel")
    label9.BorderSizePixel = 0
    label9.AutoLocalize = false
    label9.TextSize = 14
    label9.TextTransparency = 0.2
    label9.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    label9.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    label9.TextColor3 = Color3.fromRGB(255, 255, 255)
    label9.BackgroundTransparency = 1
    label9.AnchorPoint = Vector2.new(0.5, 1)
    label9.Size = UDim2.new(1, 0, 0, 16)
    label9.BorderColor3 = Color3.fromRGB(0, 0, 0)
    label9.Text = "Server Teleportation"
    label9.LayoutOrder = 1
    label9.Name = "label"
    label9.Position = UDim2.new(0.5, 0, 1, -10)
    label9.Parent = content2

    local backgroundimage = Instance.new("ImageLabel")
    backgroundimage.ZIndex = -10
    backgroundimage.BorderSizePixel = 0
    backgroundimage.ScaleType = Enum.ScaleType.Crop
    backgroundimage.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    backgroundimage.ImageTransparency = 0.1
    backgroundimage.AnchorPoint = Vector2.new(0.5, 0)
    backgroundimage.Image = "rbxassetid://128174308673072"
    backgroundimage.Size = UDim2.new(1, 28, 1, 22)
    backgroundimage.BorderColor3 = Color3.fromRGB(0, 0, 0)
    backgroundimage.BackgroundTransparency = 1
    backgroundimage.Name = "background_image"
    backgroundimage.Position = UDim2.new(0.5, 0, 0, -12)
    backgroundimage.Parent = serverteleportation

    local UICorner4 = Instance.new("UICorner")
    UICorner4.CornerRadius = UDim.new(0, 15)
    UICorner4.Parent = backgroundimage

    local stroke11 = Instance.new("UIStroke")
    stroke11.Color = Color3.fromRGB(255, 255, 255)
    stroke11.Name = "stroke"
    stroke11.Parent = serverteleportation

    local gradient13 = Instance.new("UIGradient")
    gradient13.Rotation = -90
    gradient13.Name = "gradient"
    gradient13.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(39, 39, 39)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(21, 21, 21))}
    gradient13.Parent = stroke11

    local corner28 = Instance.new("UICorner")
    corner28.Name = "corner"
    corner28.CornerRadius = UDim.new(0, 15)
    corner28.Parent = serverteleportation

    local privacy = Instance.new("ImageButton")
    privacy.SliceScale = 0.05
    privacy.BorderSizePixel = 0
    privacy.SliceCenter = Rect.new(512, 512, 512, 512)
    privacy.ScaleType = Enum.ScaleType.Slice
    privacy.AutoButtonColor = false
    privacy.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
    privacy.ImageColor3 = Color3.fromRGB(28, 28, 28)
    privacy.Size = UDim2.new(0, 150, 0, 130)
    privacy.ClipsDescendants = true
    privacy.BorderColor3 = Color3.fromRGB(0, 0, 0)
    privacy.Name = "privacy"
    privacy.Parent = overview

    local padding28 = Instance.new("UIPadding")
    padding28.PaddingTop = UDim.new(0, 12)
    padding28.PaddingRight = UDim.new(0, 14)
    padding28.Name = "padding"
    padding28.PaddingLeft = UDim.new(0, 14)
    padding28.PaddingBottom = UDim.new(0, 10)
    padding28.Parent = privacy

    local flex16 = Instance.new("UIFlexItem")
    flex16.ShrinkRatio = 1
    flex16.GrowRatio = 0.5
    flex16.Name = "flex"
    flex16.FlexMode = Enum.UIFlexMode.Custom
    flex16.Parent = privacy

    local scale14 = Instance.new("UIScale")
    scale14.Name = "scale"
    scale14.Parent = privacy

    local content3 = Instance.new("Frame")
    content3.BorderSizePixel = 0
    content3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    content3.AnchorPoint = Vector2.new(0.5, 0.5)
    content3.Size = UDim2.new(1, 0, 1, 0)
    content3.Position = UDim2.new(0.5, 0, 0.5, 0)
    content3.BorderColor3 = Color3.fromRGB(0, 0, 0)
    content3.Name = "content"
    content3.BackgroundTransparency = 1
    content3.Parent = privacy

    local icon13 = Instance.new("ImageLabel")
    icon13.BorderSizePixel = 0
    icon13.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    icon13.Image = "rbxassetid://104512588477874"
    icon13.Size = UDim2.new(0, 24, 0, 24)
    icon13.BorderColor3 = Color3.fromRGB(0, 0, 0)
    icon13.BackgroundTransparency = 1
    icon13.Name = "icon"
    icon13.Parent = content3

    local list31 = Instance.new("UIListLayout")
    list31.HorizontalAlignment = Enum.HorizontalAlignment.Center
    list31.Padding = UDim.new(0, 10)
    list31.VerticalAlignment = Enum.VerticalAlignment.Center
    list31.SortOrder = Enum.SortOrder.LayoutOrder
    list31.Name = "list"
    list31.Parent = content3

    local label10 = Instance.new("TextLabel")
    label10.BorderSizePixel = 0
    label10.AutoLocalize = false
    label10.TextSize = 14
    label10.TextTransparency = 0.2
    label10.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    label10.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    label10.TextColor3 = Color3.fromRGB(255, 255, 255)
    label10.BackgroundTransparency = 1
    label10.AnchorPoint = Vector2.new(0.5, 1)
    label10.Size = UDim2.new(1, 0, 0, 16)
    label10.BorderColor3 = Color3.fromRGB(0, 0, 0)
    label10.Text = "Privacy"
    label10.LayoutOrder = 1
    label10.Name = "label"
    label10.Position = UDim2.new(0.5, 0, 1, -10)
    label10.Parent = content3

    local stroke12 = Instance.new("UIStroke")
    stroke12.Color = Color3.fromRGB(255, 255, 255)
    stroke12.Name = "stroke"
    stroke12.Parent = privacy

    local gradient14 = Instance.new("UIGradient")
    gradient14.Rotation = -90
    gradient14.Name = "gradient"
    gradient14.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(39, 39, 39)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(21, 21, 21))}
    gradient14.Parent = stroke12

    local corner29 = Instance.new("UICorner")
    corner29.Name = "corner"
    corner29.CornerRadius = UDim.new(0, 15)
    corner29.Parent = privacy

    local header8 = Instance.new("Frame")
    header8.BorderSizePixel = 0
    header8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    header8.Size = UDim2.new(1, 0, 0, 30)
    header8.BorderColor3 = Color3.fromRGB(0, 0, 0)
    header8.Name = "header"
    header8.LayoutOrder = -1
    header8.BackgroundTransparency = 1
    header8.Parent = overview

    local list32 = Instance.new("UIListLayout")
    list32.Padding = UDim.new(0, 10)
    list32.VerticalAlignment = Enum.VerticalAlignment.Center
    list32.SortOrder = Enum.SortOrder.LayoutOrder
    list32.Name = "list"
    list32.FillDirection = Enum.FillDirection.Horizontal
    list32.Parent = header8

    local header9 = Instance.new("Frame")
    header9.BorderSizePixel = 0
    header9.BackgroundColor3 = Color3.fromRGB(43, 43, 43)
    header9.AutomaticSize = Enum.AutomaticSize.X
    header9.Size = UDim2.new(0, 0, 0, 30)
    header9.BorderColor3 = Color3.fromRGB(0, 0, 0)
    header9.Name = "header"
    header9.LayoutOrder = -1
    header9.Parent = header8

    local list33 = Instance.new("UIListLayout")
    list33.Padding = UDim.new(0, 10)
    list33.VerticalAlignment = Enum.VerticalAlignment.Center
    list33.SortOrder = Enum.SortOrder.LayoutOrder
    list33.Name = "list"
    list33.FillDirection = Enum.FillDirection.Horizontal
    list33.Parent = header9

    local icon14 = Instance.new("ImageLabel")
    icon14.BorderSizePixel = 0
    icon14.ScaleType = Enum.ScaleType.Fit
    icon14.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    icon14.Image = "rbxassetid://100901569640683"
    icon14.Size = UDim2.new(0, 16, 0, 16)
    icon14.BorderColor3 = Color3.fromRGB(0, 0, 0)
    icon14.BackgroundTransparency = 1
    icon14.Name = "icon"
    icon14.Parent = header9

    local scale15 = Instance.new("UIScale")
    scale15.Name = "scale"
    scale15.Parent = icon14

    local padding29 = Instance.new("UIPadding")
    padding29.PaddingRight = UDim.new(0, 14)
    padding29.Name = "padding"
    padding29.PaddingLeft = UDim.new(0, 14)
    padding29.Parent = header9

    local corner30 = Instance.new("UICorner")
    corner30.Name = "corner"
    corner30.CornerRadius = UDim.new(1, 0)
    corner30.Parent = header9

    local stroke13 = Instance.new("UIStroke")
    stroke13.Color = Color3.fromRGB(255, 255, 255)
    stroke13.Name = "stroke"
    stroke13.Parent = header9

    local gradient15 = Instance.new("UIGradient")
    gradient15.Rotation = -101
    gradient15.Name = "gradient"
    gradient15.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(53, 53, 53)),ColorSequenceKeypoint.new(0.497, Color3.fromRGB(25, 25, 25)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(53, 53, 53))}
    gradient15.Parent = stroke13

    local label11 = Instance.new("TextLabel")
    label11.BorderSizePixel = 0
    label11.AutoLocalize = false
    label11.TextSize = 14
    label11.TextXAlignment = Enum.TextXAlignment.Left
    label11.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    label11.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    label11.TextColor3 = Color3.fromRGB(255, 255, 255)
    label11.BackgroundTransparency = 1
    label11.AnchorPoint = Vector2.new(0.5, 0)
    label11.Size = UDim2.new(0, 0, 1, 0)
    label11.BorderColor3 = Color3.fromRGB(0, 0, 0)
    label11.Text = "Overview"
    label11.LayoutOrder = 1
    label11.AutomaticSize = Enum.AutomaticSize.X
    label11.Name = "label"
    label11.Position = UDim2.new(0.5, 0, 0, 0)
    label11.Parent = header9

    local scale16 = Instance.new("UIScale")
    scale16.Name = "scale"
    scale16.Parent = label11

    local information = Instance.new("Frame")
    information.BorderSizePixel = 0
    information.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    information.AutomaticSize = Enum.AutomaticSize.Y
    information.Size = UDim2.new(1, 0, 0, 0)
    information.BorderColor3 = Color3.fromRGB(0, 0, 0)
    information.Name = "information"
    information.LayoutOrder = 3
    information.BackgroundTransparency = 1
    information.Parent = scroll

    local padding30 = Instance.new("UIPadding")
    padding30.Name = "padding"
    padding30.PaddingBottom = UDim.new(0, 5)
    padding30.Parent = information

    local list34 = Instance.new("UIListLayout")
    list34.HorizontalAlignment = Enum.HorizontalAlignment.Center
    list34.Wraps = true
    list34.Padding = UDim.new(0, 10)
    list34.SortOrder = Enum.SortOrder.LayoutOrder
    list34.Name = "list"
    list34.FillDirection = Enum.FillDirection.Horizontal
    list34.Parent = information

    local gamedisplay = Instance.new("Frame")
    gamedisplay.BorderSizePixel = 0
    gamedisplay.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
    gamedisplay.Selectable = true
    gamedisplay.AutomaticSize = Enum.AutomaticSize.Y
    gamedisplay.Size = UDim2.new(0, 160, 0, 200)
    gamedisplay.BorderColor3 = Color3.fromRGB(0, 0, 0)
    gamedisplay.Name = "game_display"
    gamedisplay.BackgroundTransparency = 1
    gamedisplay.Parent = information

    local flex17 = Instance.new("UIFlexItem")
    flex17.Name = "flex"
    flex17.FlexMode = Enum.UIFlexMode.Fill
    flex17.Parent = gamedisplay

    local scale17 = Instance.new("UIScale")
    scale17.Name = "scale"
    scale17.Parent = gamedisplay

    local corner31 = Instance.new("UICorner")
    corner31.Name = "corner"
    corner31.CornerRadius = UDim.new(0, 12)
    corner31.Parent = gamedisplay

    local content4 = Instance.new("Frame")
    content4.BorderSizePixel = 0
    content4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    content4.AnchorPoint = Vector2.new(0.5, 0)
    content4.AutomaticSize = Enum.AutomaticSize.Y
    content4.Size = UDim2.new(1, 0, 1, -100)
    content4.Position = UDim2.new(0.5, 0, 0, 0)
    content4.BorderColor3 = Color3.fromRGB(0, 0, 0)
    content4.Name = "content"
    content4.BackgroundTransparency = 1
    content4.SelectionGroup = true
    content4.Parent = gamedisplay

    local list35 = Instance.new("UIListLayout")
    list35.HorizontalAlignment = Enum.HorizontalAlignment.Center
    list35.Wraps = true
    list35.Padding = UDim.new(0, 10)
    list35.SortOrder = Enum.SortOrder.LayoutOrder
    list35.Name = "list"
    list35.FillDirection = Enum.FillDirection.Horizontal
    list35.Parent = content4

    local padding31 = Instance.new("UIPadding")
    padding31.PaddingTop = UDim.new(0, 10)
    padding31.PaddingRight = UDim.new(0, 10)
    padding31.Name = "padding"
    padding31.PaddingLeft = UDim.new(0, 10)
    padding31.PaddingBottom = UDim.new(0, 10)
    padding31.Parent = content4

    local info2 = Instance.new("Frame")
    info2.BorderSizePixel = 0
    info2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    info2.Size = UDim2.new(0, 100, 0, 120)
    info2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    info2.Name = "info"
    info2.LayoutOrder = 2
    info2.BackgroundTransparency = 1
    info2.Parent = content4

    local flex18 = Instance.new("UIFlexItem")
    flex18.Name = "flex"
    flex18.FlexMode = Enum.UIFlexMode.Fill
    flex18.Parent = info2

    local gamename = Instance.new("TextLabel")
    gamename.BorderSizePixel = 0
    gamename.AutoLocalize = false
    gamename.TextSize = 30
    gamename.TextXAlignment = Enum.TextXAlignment.Left
    gamename.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    gamename.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
    gamename.TextColor3 = Color3.fromRGB(255, 255, 255)
    gamename.BackgroundTransparency = 1
    gamename.Size = UDim2.new(1, 0, 0, 20)
    gamename.BorderColor3 = Color3.fromRGB(0, 0, 0)
    gamename.Text = "Name"
    gamename.AutomaticSize = Enum.AutomaticSize.Y
    gamename.Name = "game_name"
    gamename.Parent = info2

    local list36 = Instance.new("UIListLayout")
    list36.VerticalAlignment = Enum.VerticalAlignment.Center
    list36.SortOrder = Enum.SortOrder.LayoutOrder
    list36.Name = "list"
    list36.Parent = info2

    local creator = Instance.new("TextLabel")
    creator.TextWrapped = true
    creator.BorderSizePixel = 0
    creator.AutoLocalize = false
    creator.TextSize = 16
    creator.TextXAlignment = Enum.TextXAlignment.Left
    creator.TextTransparency = 0.5
    creator.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    creator.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    creator.TextColor3 = Color3.fromRGB(255, 255, 255)
    creator.BackgroundTransparency = 1
    creator.Size = UDim2.new(1, 0, 0, 20)
    creator.BorderColor3 = Color3.fromRGB(0, 0, 0)
    creator.Text = "Developer"
    creator.AutomaticSize = Enum.AutomaticSize.Y
    creator.Name = "creator"
    creator.Parent = info2

    local description = Instance.new("TextLabel")
    description.TextWrapped = true
    description.BorderSizePixel = 0
    description.AutoLocalize = false
    description.TextSize = 16
    description.TextXAlignment = Enum.TextXAlignment.Left
    description.TextTransparency = 0.5
    description.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    description.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    description.TextColor3 = Color3.fromRGB(255, 255, 255)
    description.BackgroundTransparency = 1
    description.Size = UDim2.new(1, 0, 0, 20)
    description.BorderColor3 = Color3.fromRGB(0, 0, 0)
    description.Text = "Description"
    description.LayoutOrder = 3
    description.AutomaticSize = Enum.AutomaticSize.Y
    description.Name = "description"
    description.Parent = content4

    local padding32 = Instance.new("UIPadding")
    padding32.Name = "padding"
    padding32.PaddingBottom = UDim.new(0, 20)
    padding32.Parent = description

    local icon15 = Instance.new("Frame")
    icon15.BorderSizePixel = 0
    icon15.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    icon15.Size = UDim2.new(0, 120, 0, 120)
    icon15.BorderColor3 = Color3.fromRGB(0, 0, 0)
    icon15.Name = "icon"
    icon15.LayoutOrder = 1
    icon15.BackgroundTransparency = 1
    icon15.Parent = content4

    local shadow = Instance.new("ImageLabel")
    shadow.ZIndex = 0
    shadow.BorderSizePixel = 0
    shadow.SliceCenter = Rect.new(300, 300, 300, 300)
    shadow.SliceScale = 0.1
    shadow.ScaleType = Enum.ScaleType.Slice
    shadow.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    shadow.ImageTransparency = 0.5
    shadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
    shadow.AnchorPoint = Vector2.new(0.5, 0.5)
    shadow.Image = "rbxassetid://72548733587158"
    shadow.Size = UDim2.new(1, 0, 1, 0)
    shadow.BorderColor3 = Color3.fromRGB(0, 0, 0)
    shadow.BackgroundTransparency = 1
    shadow.Name = "shadow"
    shadow.Position = UDim2.new(0.5, 0, 0.5, 0)
    shadow.Parent = icon15

    local scale18 = Instance.new("UIScale")
    scale18.Name = "scale"
    scale18.Parent = shadow

    local photo = Instance.new("ImageLabel")
    photo.BorderSizePixel = 0
    photo.ScaleType = Enum.ScaleType.Crop
    photo.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    photo.AnchorPoint = Vector2.new(0.5, 0.5)
    photo.Size = UDim2.new(0, 90, 0, 90)
    photo.BorderColor3 = Color3.fromRGB(0, 0, 0)
    photo.Name = "photo"
    photo.Position = UDim2.new(0.5, 0, 0.5, 0)
    photo.Parent = icon15

    local StrokeFrame = Instance.new("Frame")
    StrokeFrame.BorderSizePixel = 0
    StrokeFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    StrokeFrame.AnchorPoint = Vector2.new(0.5, 0.5)
    StrokeFrame.Size = UDim2.new(1, 0, 1, 0)
    StrokeFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
    StrokeFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
    StrokeFrame.Name = "StrokeFrame"
    StrokeFrame.BackgroundTransparency = 1
    StrokeFrame.Parent = photo

    local stroke14 = Instance.new("UIStroke")
    stroke14.Transparency = 0.8
    stroke14.Color = Color3.fromRGB(255, 255, 255)
    stroke14.Name = "stroke"
    stroke14.Parent = StrokeFrame

    local gradient16 = Instance.new("UIGradient")
    gradient16.Rotation = 50
    gradient16.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(0.500, 1),NumberSequenceKeypoint.new(1.000, 0)}
    gradient16.Name = "gradient"
    gradient16.Parent = stroke14

    local corner32 = Instance.new("UICorner")
    corner32.Name = "corner"
    corner32.CornerRadius = UDim.new(0, 5)
    corner32.Parent = StrokeFrame

    local scale19 = Instance.new("UIScale")
    scale19.Name = "scale"
    scale19.Parent = photo

    local stroke15 = Instance.new("UIStroke")
    stroke15.Transparency = 0.95
    stroke15.Color = Color3.fromRGB(255, 255, 255)
    stroke15.Name = "stroke"
    stroke15.Parent = photo

    local corner33 = Instance.new("UICorner")
    corner33.Name = "corner"
    corner33.CornerRadius = UDim.new(0, 6)
    corner33.Parent = photo

    local tech = Instance.new("Frame")
    tech.Active = true
    tech.BorderSizePixel = 0
    tech.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
    tech.Selectable = true
    tech.ClipsDescendants = true
    tech.AutomaticSize = Enum.AutomaticSize.Y
    tech.Size = UDim2.new(1, 60, 0, 0)
    tech.BorderColor3 = Color3.fromRGB(0, 0, 0)
    tech.Name = "tech"
    tech.LayoutOrder = 4
    tech.BackgroundTransparency = 1
    tech.Parent = content4

    local list37 = Instance.new("UIListLayout")
    list37.Padding = UDim.new(0, 10)
    list37.SortOrder = Enum.SortOrder.LayoutOrder
    list37.Name = "list"
    list37.Parent = tech

    local corner34 = Instance.new("UICorner")
    corner34.Name = "corner"
    corner34.CornerRadius = UDim.new(0, 20)
    corner34.Parent = tech

    local padding33 = Instance.new("UIPadding")
    padding33.PaddingTop = UDim.new(0, 10)
    padding33.PaddingRight = UDim.new(0, 10)
    padding33.Name = "padding"
    padding33.PaddingLeft = UDim.new(0, 10)
    padding33.PaddingBottom = UDim.new(0, 10)
    padding33.Parent = tech

    local jobid = Instance.new("ImageButton")
    jobid.BorderSizePixel = 0
    jobid.BackgroundColor3 = Color3.fromRGB(58, 58, 58)
    jobid.Selectable = false
    jobid.Size = UDim2.new(1, 0, 0, 40)
    jobid.BorderColor3 = Color3.fromRGB(0, 0, 0)
    jobid.Name = "jobid"
    jobid.Parent = tech

    local label12 = Instance.new("TextLabel")
    label12.BorderSizePixel = 0
    label12.AutoLocalize = false
    label12.TextSize = 15
    label12.TextXAlignment = Enum.TextXAlignment.Left
    label12.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    label12.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    label12.TextColor3 = Color3.fromRGB(255, 255, 255)
    label12.BackgroundTransparency = 1
    label12.Size = UDim2.new(0, 0, 1, 0)
    label12.BorderColor3 = Color3.fromRGB(0, 0, 0)
    label12.Text = "Job ID"
    label12.AutomaticSize = Enum.AutomaticSize.X
    label12.Name = "label"
    label12.Parent = jobid

    local flex19 = Instance.new("UIFlexItem")
    flex19.GrowRatio = 1
    flex19.Name = "flex"
    flex19.FlexMode = Enum.UIFlexMode.Custom
    flex19.Parent = label12

    local value5 = Instance.new("TextBox")
    value5.Interactable = false
    value5.Name = "value"
    value5.TextXAlignment = Enum.TextXAlignment.Right
    value5.PlaceholderColor3 = Color3.fromRGB(179, 179, 179)
    value5.BorderSizePixel = 0
    value5.TextEditable = false
    value5.AutoLocalize = false
    value5.TextTruncate = Enum.TextTruncate.AtEnd
    value5.TextSize = 15
    value5.TextColor3 = Color3.fromRGB(255, 255, 255)
    value5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    value5.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    value5.AutomaticSize = Enum.AutomaticSize.XY
    value5.Selectable = false
    value5.ClearTextOnFocus = false
    value5.Size = UDim2.new(0, 0, 1, 0)
    value5.BorderColor3 = Color3.fromRGB(0, 0, 0)
    value5.Text = "0000-0000-0000-0000"
    value5.BackgroundTransparency = 1
    value5.Parent = jobid

    local padding34 = Instance.new("UIPadding")
    padding34.PaddingRight = UDim.new(0, 20)
    padding34.Name = "padding"
    padding34.PaddingLeft = UDim.new(0, 20)
    padding34.Parent = jobid

    local corner35 = Instance.new("UICorner")
    corner35.Name = "corner"
    corner35.CornerRadius = UDim.new(1, 0)
    corner35.Parent = jobid

    local stroke16 = Instance.new("UIStroke")
    stroke16.Color = Color3.fromRGB(255, 255, 255)
    stroke16.Name = "stroke"
    stroke16.Parent = jobid

    local gradient17 = Instance.new("UIGradient")
    gradient17.Rotation = -92
    gradient17.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(0.500, 1),NumberSequenceKeypoint.new(1.000, 0)}
    gradient17.Name = "gradient"
    gradient17.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(67, 67, 67)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(67, 67, 67))}
    gradient17.Parent = stroke16

    local gradient18 = Instance.new("UIGradient")
    gradient18.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0.8),NumberSequenceKeypoint.new(1.000, 0.8)}
    gradient18.Name = "gradient"
    gradient18.Parent = jobid

    local list38 = Instance.new("UIListLayout")
    list38.Padding = UDim.new(0, 20)
    list38.VerticalAlignment = Enum.VerticalAlignment.Center
    list38.SortOrder = Enum.SortOrder.LayoutOrder
    list38.Name = "list"
    list38.FillDirection = Enum.FillDirection.Horizontal
    list38.Parent = jobid

    local placeid = Instance.new("ImageButton")
    placeid.BorderSizePixel = 0
    placeid.BackgroundColor3 = Color3.fromRGB(58, 58, 58)
    placeid.Selectable = false
    placeid.Size = UDim2.new(1, 0, 0, 40)
    placeid.BorderColor3 = Color3.fromRGB(0, 0, 0)
    placeid.Name = "placeid"
    placeid.Parent = tech

    local label13 = Instance.new("TextLabel")
    label13.BorderSizePixel = 0
    label13.AutoLocalize = false
    label13.TextSize = 15
    label13.TextXAlignment = Enum.TextXAlignment.Left
    label13.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    label13.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    label13.TextColor3 = Color3.fromRGB(255, 255, 255)
    label13.BackgroundTransparency = 1
    label13.Size = UDim2.new(0, 0, 1, 0)
    label13.BorderColor3 = Color3.fromRGB(0, 0, 0)
    label13.Text = "Place ID"
    label13.Name = "label"
    label13.Parent = placeid

    local flex20 = Instance.new("UIFlexItem")
    flex20.Name = "flex"
    flex20.FlexMode = Enum.UIFlexMode.Fill
    flex20.Parent = label13

    local list39 = Instance.new("UIListLayout")
    list39.Padding = UDim.new(0, 20)
    list39.VerticalAlignment = Enum.VerticalAlignment.Center
    list39.SortOrder = Enum.SortOrder.LayoutOrder
    list39.Name = "list"
    list39.FillDirection = Enum.FillDirection.Horizontal
    list39.Parent = placeid

    local padding35 = Instance.new("UIPadding")
    padding35.PaddingRight = UDim.new(0, 20)
    padding35.Name = "padding"
    padding35.PaddingLeft = UDim.new(0, 20)
    padding35.Parent = placeid

    local corner36 = Instance.new("UICorner")
    corner36.Name = "corner"
    corner36.CornerRadius = UDim.new(1, 0)
    corner36.Parent = placeid

    local value6 = Instance.new("TextBox")
    value6.Interactable = false
    value6.Name = "value"
    value6.TextXAlignment = Enum.TextXAlignment.Right
    value6.PlaceholderColor3 = Color3.fromRGB(179, 179, 179)
    value6.BorderSizePixel = 0
    value6.TextEditable = false
    value6.AutoLocalize = false
    value6.TextTruncate = Enum.TextTruncate.AtEnd
    value6.TextSize = 15
    value6.TextColor3 = Color3.fromRGB(255, 255, 255)
    value6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    value6.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    value6.AutomaticSize = Enum.AutomaticSize.X
    value6.Selectable = false
    value6.ClearTextOnFocus = false
    value6.Size = UDim2.new(0, 0, 1, 0)
    value6.BorderColor3 = Color3.fromRGB(0, 0, 0)
    value6.Text = "00000"
    value6.BackgroundTransparency = 1
    value6.Parent = placeid

    local gradient19 = Instance.new("UIGradient")
    gradient19.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0.8),NumberSequenceKeypoint.new(1.000, 0.8)}
    gradient19.Name = "gradient"
    gradient19.Parent = placeid

    local stroke17 = Instance.new("UIStroke")
    stroke17.Color = Color3.fromRGB(255, 255, 255)
    stroke17.Name = "stroke"
    stroke17.Parent = placeid

    local gradient20 = Instance.new("UIGradient")
    gradient20.Rotation = -92
    gradient20.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(0.500, 1),NumberSequenceKeypoint.new(1.000, 0)}
    gradient20.Name = "gradient"
    gradient20.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(67, 67, 67)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(67, 67, 67))}
    gradient20.Parent = stroke17

    local padding36 = Instance.new("UIPadding")
    padding36.PaddingTop = UDim.new(0, 10)
    padding36.PaddingRight = UDim.new(0, 10)
    padding36.Name = "padding"
    padding36.PaddingLeft = UDim.new(0, 10)
    padding36.PaddingBottom = UDim.new(0, 10)
    padding36.Parent = gamedisplay

    local thumbnail2 = Instance.new("ImageLabel")
    thumbnail2.ZIndex = 0
    thumbnail2.BorderSizePixel = 0
    thumbnail2.ScaleType = Enum.ScaleType.Crop
    thumbnail2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    thumbnail2.ImageColor3 = Color3.fromRGB(98, 98, 98)
    thumbnail2.AnchorPoint = Vector2.new(0.5, 1)
    thumbnail2.Image = "rbxassetid://109387847907592"
    thumbnail2.Size = UDim2.new(1, 20, 1, 20)
    thumbnail2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    thumbnail2.BackgroundTransparency = 1
    thumbnail2.Name = "thumbnail"
    thumbnail2.Position = UDim2.new(0.5, 0, 1, 10)
    thumbnail2.Parent = gamedisplay

    local gradient21 = Instance.new("UIGradient")
    gradient21.Rotation = 90
    gradient21.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(1.000, 1)}
    gradient21.Name = "gradient"
    gradient21.Parent = thumbnail2

    local corner37 = Instance.new("UICorner")
    corner37.Name = "corner"
    corner37.CornerRadius = UDim.new(0, 12)
    corner37.Parent = thumbnail2

    local scale20 = Instance.new("UIScale")
    scale20.Name = "scale"
    scale20.Scale = 1.87
    scale20.Parent = thumbnail2

    local noise = Instance.new("ImageLabel")
    noise.ZIndex = 0
    noise.BorderSizePixel = 0
    noise.ScaleType = Enum.ScaleType.Tile
    noise.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    noise.AnchorPoint = Vector2.new(0.5, 0.5)
    noise.Image = "rbxassetid://126487203254586"
    noise.TileSize = UDim2.new(0, 500, 0, 500)
    noise.Size = UDim2.new(1, 0, 0.78839, 0)
    noise.BorderColor3 = Color3.fromRGB(0, 0, 0)
    noise.BackgroundTransparency = 1
    noise.Name = "noise"
    noise.Position = UDim2.new(0.38635, 0, 0.6058, 0)
    noise.Parent = thumbnail2

    local corner38 = Instance.new("UICorner")
    corner38.Name = "corner"
    corner38.CornerRadius = UDim.new(0, 12)
    corner38.Parent = noise

    local gradient22 = Instance.new("UIGradient")
    gradient22.Rotation = 90
    gradient22.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0.85625),NumberSequenceKeypoint.new(1.000, 1)}
    gradient22.Name = "gradient"
    gradient22.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(0, 0, 0)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 0, 0))}
    gradient22.Parent = noise

    local header10 = Instance.new("Frame")
    header10.BorderSizePixel = 0
    header10.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    header10.AutomaticSize = Enum.AutomaticSize.Y
    header10.Size = UDim2.new(1, 40, 0, 0)
    header10.BorderColor3 = Color3.fromRGB(0, 0, 0)
    header10.Name = "header"
    header10.BackgroundTransparency = 1
    header10.Parent = scroll

    local greetings = Instance.new("TextLabel")
    greetings.BorderSizePixel = 0
    greetings.AutoLocalize = false
    greetings.TextSize = 20
    greetings.TextXAlignment = Enum.TextXAlignment.Left
    greetings.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    greetings.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
    greetings.TextColor3 = Color3.fromRGB(255, 255, 255)
    greetings.BackgroundTransparency = 1
    greetings.AnchorPoint = Vector2.new(0.5, 0)
    greetings.Size = UDim2.new(1, 0, 0, 30)
    greetings.BorderColor3 = Color3.fromRGB(0, 0, 0)
    greetings.Text = "Home"
    greetings.LayoutOrder = 1
    greetings.Name = "greetings"
    greetings.Position = UDim2.new(0.5, 0, 0, 0)
    greetings.Parent = header10

    local flex21 = Instance.new("UIFlexItem")
    flex21.Name = "flex"
    flex21.FlexMode = Enum.UIFlexMode.Fill
    flex21.Parent = greetings

    local list40 = Instance.new("UIListLayout")
    list40.SortOrder = Enum.SortOrder.LayoutOrder
    list40.Name = "list"
    list40.Parent = header10

    local padding37 = Instance.new("UIPadding")
    padding37.PaddingTop = UDim.new(0, 18)
    padding37.PaddingRight = UDim.new(0, 26)
    padding37.Name = "padding"
    padding37.PaddingLeft = UDim.new(0, 26)
    padding37.PaddingBottom = UDim.new(0, 18)
    padding37.Parent = header10

    local date = Instance.new("TextLabel")
    date.BorderSizePixel = 0
    date.AutoLocalize = false
    date.TextSize = 14
    date.TextXAlignment = Enum.TextXAlignment.Left
    date.TextTransparency = 0.5
    date.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    date.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    date.TextColor3 = Color3.fromRGB(255, 255, 255)
    date.BackgroundTransparency = 1
    date.AnchorPoint = Vector2.new(0.5, 0)
    date.Size = UDim2.new(1, 0, 0, 14)
    date.BorderColor3 = Color3.fromRGB(0, 0, 0)
    date.Text = "Month Day, Year"
    date.LayoutOrder = 1
    date.Name = "date"
    date.Position = UDim2.new(0.5, 0, 0, 0)
    date.Parent = header10

    local gradient23 = Instance.new("UIGradient")
    gradient23.Rotation = 90
    gradient23.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0),NumberSequenceKeypoint.new(1.000, 1)}
    gradient23.Name = "gradient"
    gradient23.Parent = header10

    return home2
end

return Maintab