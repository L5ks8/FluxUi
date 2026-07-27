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
    UI.settings.Name = [[settings]]
    UI.settings.LayoutOrder = 9
    UI.settings.BackgroundTransparency = 0

    UI.uilistlayout = Instance.new("UIListLayout")
    UI.uilistlayout.Parent = UI.settings
    UI.uilistlayout.SortOrder = Enum.SortOrder.LayoutOrder
    UI.uilistlayout.Name = [[List]]

    UI.frame2 = Instance.new("Frame")
    UI.frame2.Parent = UI.settings
    UI.frame2.ZIndex = 99
    UI.frame2.BorderSizePixel = 0
    UI.frame2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.frame2.AutomaticSize = Enum.AutomaticSize.Y
    UI.frame2.Size = UDim2.new(1, 0, 0, 0)
    UI.frame2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.frame2.Name = [[header]]
    UI.frame2.LayoutOrder = -99
    UI.frame2.BackgroundTransparency = 1

    UI.uilistlayout2 = Instance.new("UIListLayout")
    UI.uilistlayout2.Parent = UI.frame2
    UI.uilistlayout2.Padding = UDim.new(0, 1)
    UI.uilistlayout2.VerticalAlignment = Enum.VerticalAlignment.Center
    UI.uilistlayout2.SortOrder = Enum.SortOrder.LayoutOrder
    UI.uilistlayout2.Name = [[list]]

    UI.uistroke = Instance.new("UIStroke")
    UI.uistroke.Parent = UI.frame2
    UI.uistroke.Transparency = 0.95
    UI.uistroke.Color = Color3.fromRGB(255, 255, 255)
    UI.uistroke.Name = [[stroke]]

    UI.textlabel = Instance.new("TextLabel")
    UI.textlabel.Parent = UI.frame2
    UI.textlabel.BorderSizePixel = 0
    UI.textlabel.AutoLocalize = false
    UI.textlabel.TextSize = 16
    UI.textlabel.TextXAlignment = Enum.TextXAlignment.Left
    UI.textlabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    UI.textlabel.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
    UI.textlabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    UI.textlabel.BackgroundTransparency = 1
    UI.textlabel.AnchorPoint = Vector2.new(0.5, 0)
    UI.textlabel.Size = UDim2.new(1, 0, 0, 0)
    UI.textlabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.textlabel.Text = [[Settings]]
    UI.textlabel.AutomaticSize = Enum.AutomaticSize.XY
    UI.textlabel.Name = [[name]]
    UI.textlabel.Position = UDim2.new(0.5, 0, 0, 0)

    UI.uiflexitem = Instance.new("UIFlexItem")
    UI.uiflexitem.Parent = UI.textlabel
    UI.uiflexitem.Name = [[flex]]
    UI.uiflexitem.FlexMode = Enum.UIFlexMode.Fill

    UI.textlabel2 = Instance.new("TextLabel")
    UI.textlabel2.Parent = UI.frame2
    UI.textlabel2.BorderSizePixel = 0
    UI.textlabel2.AutoLocalize = false
    UI.textlabel2.TextSize = 14
    UI.textlabel2.TextXAlignment = Enum.TextXAlignment.Left
    UI.textlabel2.TextTransparency = 0.5
    UI.textlabel2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    UI.textlabel2.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    UI.textlabel2.TextColor3 = Color3.fromRGB(255, 255, 255)
    UI.textlabel2.BackgroundTransparency = 1
    UI.textlabel2.AnchorPoint = Vector2.new(0.5, 0)
    UI.textlabel2.Size = UDim2.new(0, 0, 0, 14)
    UI.textlabel2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.textlabel2.Text = [[Personalize your panel without requiring any coding knowledge.]]
    UI.textlabel2.LayoutOrder = 1
    UI.textlabel2.AutomaticSize = Enum.AutomaticSize.X
    UI.textlabel2.Name = [[desc]]
    UI.textlabel2.Position = UDim2.new(0.5, 0, 0, 0)

    UI.uipadding = Instance.new("UIPadding")
    UI.uipadding.Parent = UI.frame2
    UI.uipadding.PaddingTop = UDim.new(0, 16)
    UI.uipadding.PaddingRight = UDim.new(0, 26)
    UI.uipadding.Name = [[padding]]
    UI.uipadding.PaddingLeft = UDim.new(0, 26)
    UI.uipadding.PaddingBottom = UDim.new(0, 16)

    UI.frame3 = Instance.new("Frame")
    UI.frame3.Parent = UI.settings
    UI.frame3.BorderSizePixel = 0
    UI.frame3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.frame3.Size = UDim2.new(1, 0, 0, 0)
    UI.frame3.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.frame3.Name = [[content]]
    UI.frame3.BackgroundTransparency = 1

    UI.uiflexitem2 = Instance.new("UIFlexItem")
    UI.uiflexitem2.Parent = UI.frame3
    UI.uiflexitem2.Name = [[Flex]]
    UI.uiflexitem2.FlexMode = Enum.UIFlexMode.Fill

    UI.frame4 = Instance.new("Frame")
    UI.frame4.Parent = UI.settings
    UI.frame4.BorderSizePixel = 0
    UI.frame4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.frame4.ClipsDescendants = true
    UI.frame4.Size = UDim2.new(1, 0, 1, 0)
    UI.frame4.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.frame4.Name = [[main]]
    UI.frame4.LayoutOrder = 2
    UI.frame4.BackgroundTransparency = 1

    UI.uiflexitem3 = Instance.new("UIFlexItem")
    UI.uiflexitem3.Parent = UI.frame4
    UI.uiflexitem3.Name = [[Flex]]
    UI.uiflexitem3.FlexMode = Enum.UIFlexMode.Fill

    UI.scrollingframe = Instance.new("ScrollingFrame")
    UI.scrollingframe.Parent = UI.frame4
    UI.scrollingframe.Active = true
    UI.scrollingframe.ScrollingDirection = Enum.ScrollingDirection.Y
    UI.scrollingframe.BorderSizePixel = 0
    UI.scrollingframe.CanvasSize = UDim2.new(0, 0, 0, 0)
    UI.scrollingframe.Name = [[item]]
    UI.scrollingframe.ScrollBarImageTransparency = 1
    UI.scrollingframe.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.scrollingframe.AnchorPoint = Vector2.new(0.5, 0.5)
    UI.scrollingframe.AutomaticCanvasSize = Enum.AutomaticSize.Y
    UI.scrollingframe.Size = UDim2.new(1, 0, 1, 0)
    UI.scrollingframe.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
    UI.scrollingframe.Position = UDim2.new(0.5, 0, 0.5, 0)
    UI.scrollingframe.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.scrollingframe.ScrollBarThickness = 0
    UI.scrollingframe.LayoutOrder = 3
    UI.scrollingframe.BackgroundTransparency = 1

    UI.frame5 = Instance.new("Frame")
    UI.frame5.Parent = UI.scrollingframe
    UI.frame5.BorderSizePixel = 0
    UI.frame5.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
    UI.frame5.Size = UDim2.new(1, 0, 1.0001, -85)
    UI.frame5.Position = UDim2.new(0, 0, 0.18333, 0)
    UI.frame5.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.frame5.Name = [[display]]
    UI.frame5.LayoutOrder = 2

    UI.uicorner = Instance.new("UICorner")
    UI.uicorner.Parent = UI.frame5
    UI.uicorner.Name = [[corner]]
    UI.uicorner.CornerRadius = UDim.new(0, 16)

    UI.scrollingframe2 = Instance.new("ScrollingFrame")
    UI.scrollingframe2.Parent = UI.frame5
    UI.scrollingframe2.Active = true
    UI.scrollingframe2.ScrollingDirection = Enum.ScrollingDirection.Y
    UI.scrollingframe2.BorderSizePixel = 0
    UI.scrollingframe2.CanvasSize = UDim2.new(0, 0, 0, 0)
    UI.scrollingframe2.VerticalScrollBarInset = Enum.ScrollBarInset.ScrollBar
    UI.scrollingframe2.Name = [[scroll]]
    UI.scrollingframe2.ScrollBarImageTransparency = 1
    UI.scrollingframe2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.scrollingframe2.AnchorPoint = Vector2.new(0.5, 0.5)
    UI.scrollingframe2.AutomaticCanvasSize = Enum.AutomaticSize.Y
    UI.scrollingframe2.Size = UDim2.new(1.01099, 0, 1.02066, 0)
    UI.scrollingframe2.ScrollBarImageColor3 = Color3.fromRGB(50, 50, 50)
    UI.scrollingframe2.Position = UDim2.new(0.5, 0, 0.5, 0)
    UI.scrollingframe2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.scrollingframe2.ScrollBarThickness = 4
    UI.scrollingframe2.LayoutOrder = 1
    UI.scrollingframe2.BackgroundTransparency = 1

    UI.frame6 = Instance.new("Frame")
    UI.frame6.Parent = UI.scrollingframe2
    UI.frame6.BorderSizePixel = 0
    UI.frame6.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    UI.frame6.AnchorPoint = Vector2.new(0.5, 0.5)
    UI.frame6.ClipsDescendants = true
    UI.frame6.AutomaticSize = Enum.AutomaticSize.Y
    UI.frame6.Size = UDim2.new(1, 0, 1.01201, 0)
    UI.frame6.Position = UDim2.new(0.49457, 0, 0.5, 0)
    UI.frame6.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.frame6.Name = [[item]]
    UI.frame6.LayoutOrder = 3

    UI.uicorner2 = Instance.new("UICorner")
    UI.uicorner2.Parent = UI.frame6
    UI.uicorner2.Name = [[Corner]]
    UI.uicorner2.CornerRadius = UDim.new(0, 14)

    UI.frame7 = Instance.new("Frame")
    UI.frame7.Parent = UI.frame6
    UI.frame7.BorderSizePixel = 0
    UI.frame7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.frame7.Size = UDim2.new(1.00217, 0, 0, 50)
    UI.frame7.Position = UDim2.new(0, 0, 0.09717, 0)
    UI.frame7.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.frame7.Name = [[Input]]
    UI.frame7.LayoutOrder = 0
    UI.frame7.BackgroundTransparency = 1

    UI.uipadding2 = Instance.new("UIPadding")
    UI.uipadding2.Parent = UI.frame7
    UI.uipadding2.PaddingRight = UDim.new(0, 12)
    UI.uipadding2.Name = [[Padding]]
    UI.uipadding2.PaddingLeft = UDim.new(0, 12)

    UI.imagelabel = Instance.new("ImageLabel")
    UI.imagelabel.Parent = UI.frame7
    UI.imagelabel.BorderSizePixel = 0
    UI.imagelabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    UI.imagelabel.ImageTransparency = 1
    UI.imagelabel.AnchorPoint = Vector2.new(0, 0.5)
    UI.imagelabel.Size = UDim2.new(0, 32, 0, 32)
    UI.imagelabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.imagelabel.BackgroundTransparency = 0.8
    UI.imagelabel.LayoutOrder = 1
    UI.imagelabel.Name = [[holder]]
    UI.imagelabel.Position = UDim2.new(0, 0, 0.5, 0)

    UI.imagelabel2 = Instance.new("ImageLabel")
    UI.imagelabel2.Parent = UI.imagelabel
    UI.imagelabel2.BorderSizePixel = 0
    UI.imagelabel2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.imagelabel2.ImageTransparency = 0.5
    UI.imagelabel2.AnchorPoint = Vector2.new(0.5, 0.5)
    UI.imagelabel2.Image = [[rbxassetid://95898765113869]]
    UI.imagelabel2.Size = UDim2.new(0, 20, 0, 20)
    UI.imagelabel2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.imagelabel2.BackgroundTransparency = 1
    UI.imagelabel2.LayoutOrder = 1
    UI.imagelabel2.Name = [[icon]]
    UI.imagelabel2.Position = UDim2.new(0.5, 0, 0.5, 0)

    UI.uicorner3 = Instance.new("UICorner")
    UI.uicorner3.Parent = UI.imagelabel
    UI.uicorner3.Name = [[Corner]]
    UI.uicorner3.CornerRadius = UDim.new(0, 6)

    UI.folder = Instance.new("Folder")
    UI.folder.Parent = UI.frame7
    UI.folder.Name = [[Extra]]

    UI.frame8 = Instance.new("Frame")
    UI.frame8.Parent = UI.folder
    UI.frame8.BorderSizePixel = 0
    UI.frame8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.frame8.AnchorPoint = Vector2.new(0.5, 1)
    UI.frame8.Size = UDim2.new(2, 0, 0, 1)
    UI.frame8.Position = UDim2.new(0.5, 0, 1, 1)
    UI.frame8.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.frame8.Name = [[Separator]]
    UI.frame8.BackgroundTransparency = 0.98

    UI.uilistlayout3 = Instance.new("UIListLayout")
    UI.uilistlayout3.Parent = UI.frame7
    UI.uilistlayout3.Padding = UDim.new(0, 10)
    UI.uilistlayout3.VerticalAlignment = Enum.VerticalAlignment.Center
    UI.uilistlayout3.SortOrder = Enum.SortOrder.LayoutOrder
    UI.uilistlayout3.Name = [[List]]
    UI.uilistlayout3.FillDirection = Enum.FillDirection.Horizontal

    UI.frame9 = Instance.new("Frame")
    UI.frame9.Parent = UI.frame7
    UI.frame9.BorderSizePixel = 0
    UI.frame9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.frame9.Size = UDim2.new(0, 0, 0, 28)
    UI.frame9.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.frame9.Name = [[info]]
    UI.frame9.LayoutOrder = 2
    UI.frame9.BackgroundTransparency = 1

    local sizeConstraint1 = Instance.new("UISizeConstraint")
    sizeConstraint1.Parent = UI.frame9
    sizeConstraint1.MinSize = Vector2.new(0, 0)

    UI.uiflexitem4 = Instance.new("UIFlexItem")
    UI.uiflexitem4.Parent = UI.frame9
    UI.uiflexitem4.Name = [[Flex]]
    UI.uiflexitem4.FlexMode = Enum.UIFlexMode.Fill

    UI.textlabel3 = Instance.new("TextLabel")
    UI.textlabel3.Parent = UI.frame9
    UI.textlabel3.TextTruncate = Enum.TextTruncate.AtEnd
    UI.textlabel3.BorderSizePixel = 0
    UI.textlabel3.TextSize = 14
    UI.textlabel3.TextXAlignment = Enum.TextXAlignment.Left
    UI.textlabel3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.textlabel3.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    UI.textlabel3.TextColor3 = Color3.fromRGB(255, 255, 255)
    UI.textlabel3.BackgroundTransparency = 1
    UI.textlabel3.Size = UDim2.new(1, 0, 0, 0)
    UI.textlabel3.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.textlabel3.Text = [[Ui Toggle]]
    UI.textlabel3.AutomaticSize = Enum.AutomaticSize.Y
    UI.textlabel3.Name = [[Header]]

    UI.textlabel4 = Instance.new("TextLabel")
    UI.textlabel4.Parent = UI.frame9
    UI.textlabel4.TextTruncate = Enum.TextTruncate.AtEnd
    UI.textlabel4.BorderSizePixel = 0
    UI.textlabel4.TextSize = 12
    UI.textlabel4.TextXAlignment = Enum.TextXAlignment.Left
    UI.textlabel4.TextTransparency = 0.7
    UI.textlabel4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.textlabel4.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    UI.textlabel4.TextColor3 = Color3.fromRGB(255, 255, 255)
    UI.textlabel4.BackgroundTransparency = 1
    UI.textlabel4.AnchorPoint = Vector2.new(0, 1)
    UI.textlabel4.Size = UDim2.new(1, 0, 0, 0)
    UI.textlabel4.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.textlabel4.Text = [[Set the toggel for the ui ]]
    UI.textlabel4.AutomaticSize = Enum.AutomaticSize.Y
    UI.textlabel4.Name = [[Description]]
    UI.textlabel4.Position = UDim2.new(0, 0, 1, 0)

    UI.imagebutton = Instance.new("ImageButton")
    UI.imagebutton.Parent = UI.frame7
    UI.imagebutton.Active = false
    UI.imagebutton.BorderSizePixel = 0
    UI.imagebutton.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
    UI.imagebutton.Selectable = false
    UI.imagebutton.Size = UDim2.new(0.6, 0, 0.6, 0)
    UI.imagebutton.LayoutOrder = 3
    UI.imagebutton.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.imagebutton.Name = [[reset]]
    UI.imagebutton.Position = UDim2.new(0.82152, 0, 0, 0)

    UI.uicorner4 = Instance.new("UICorner")
    UI.uicorner4.Parent = UI.imagebutton
    UI.uicorner4.Name = [[Corner]]
    UI.uicorner4.CornerRadius = UDim.new(1, 0)

    UI.uiaspectratioconstraint = Instance.new("UIAspectRatioConstraint")
    UI.uiaspectratioconstraint.Parent = UI.imagebutton

    UI.imagelabel3 = Instance.new("ImageLabel")
    UI.imagelabel3.Parent = UI.imagebutton
    UI.imagelabel3.Active = true
    UI.imagelabel3.BorderSizePixel = 0
    UI.imagelabel3.AutoLocalize = false
    UI.imagelabel3.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
    UI.imagelabel3.AnchorPoint = Vector2.new(0.5, 0.5)
    UI.imagelabel3.Image = [[rbxassetid://134331790412100]]
    UI.imagelabel3.Size = UDim2.new(0.8, 0, 0.8, 0)
    UI.imagelabel3.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.imagelabel3.BackgroundTransparency = 1
    UI.imagelabel3.LayoutOrder = 1
    UI.imagelabel3.Selectable = true
    UI.imagelabel3.Name = [[button]]
    UI.imagelabel3.Position = UDim2.new(0.5, 0, 0.5, 0)

    UI.frame10 = Instance.new("Frame")
    UI.frame10.Parent = UI.frame7
    UI.frame10.BorderSizePixel = 0
    UI.frame10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.frame10.Size = UDim2.new(0.15, 0, 1, 0)
    UI.frame10.Position = UDim2.new(0.68504, 0, 0, 0)
    UI.frame10.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.frame10.Name = [[key]]
    UI.frame10.LayoutOrder = 4
    UI.frame10.BackgroundTransparency = 1

    UI.textbutton = Instance.new("TextButton")
    UI.textbutton.Parent = UI.frame10
    UI.textbutton.BorderSizePixel = 0
    UI.textbutton.AutoLocalize = false
    UI.textbutton.TextSize = 16
    UI.textbutton.TextColor3 = Color3.fromRGB(255, 255, 255)
    UI.textbutton.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
    UI.textbutton.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    UI.textbutton.AnchorPoint = Vector2.new(0, 0.5)
    UI.textbutton.Size = UDim2.new(0.99, 0, -0.76, 79)
    UI.textbutton.LayoutOrder = 1
    UI.textbutton.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.textbutton.Text = [[...]]
    UI.textbutton.Name = [[box]]
    UI.textbutton.Position = UDim2.new(0, 0, 0.5, 0)

    UI.uicorner5 = Instance.new("UICorner")
    UI.uicorner5.Parent = UI.textbutton
    UI.uicorner5.Name = [[Corner]]
    UI.uicorner5.CornerRadius = UDim.new(0, 18)

    UI.uiflexitem5 = Instance.new("UIFlexItem")
    UI.uiflexitem5.Parent = UI.textbutton
    UI.uiflexitem5.Name = [[Flex]]
    UI.uiflexitem5.FlexMode = Enum.UIFlexMode.Fill

    UI.uilistlayout4 = Instance.new("UIListLayout")
    UI.uilistlayout4.Parent = UI.frame6
    UI.uilistlayout4.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UI.uilistlayout4.SortOrder = Enum.SortOrder.LayoutOrder
    UI.uilistlayout4.Name = [[List]]

    UI.imagebutton2 = Instance.new("ImageButton")
    UI.imagebutton2.Parent = UI.frame6
    UI.imagebutton2.Active = false
    UI.imagebutton2.BorderSizePixel = 0
    UI.imagebutton2.BackgroundTransparency = 1
    UI.imagebutton2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    UI.imagebutton2.Selectable = false
    UI.imagebutton2.Size = UDim2.new(1, 0, 0, 50)
    UI.imagebutton2.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.imagebutton2.Name = [[Selection]]
    UI.imagebutton2.LayoutOrder = 1

    UI.uipadding3 = Instance.new("UIPadding")
    UI.uipadding3.Parent = UI.imagebutton2
    UI.uipadding3.PaddingRight = UDim.new(0, 12)
    UI.uipadding3.Name = [[Padding]]
    UI.uipadding3.PaddingLeft = UDim.new(0, 12)

    UI.imagelabel4 = Instance.new("ImageLabel")
    UI.imagelabel4.Parent = UI.imagebutton2
    UI.imagelabel4.BorderSizePixel = 0
    UI.imagelabel4.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    UI.imagelabel4.ImageTransparency = 1
    UI.imagelabel4.AnchorPoint = Vector2.new(0, 0.5)
    UI.imagelabel4.Size = UDim2.new(0, 32, 0, 32)
    UI.imagelabel4.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.imagelabel4.BackgroundTransparency = 0.8
    UI.imagelabel4.LayoutOrder = 1
    UI.imagelabel4.Name = [[holder]]
    UI.imagelabel4.Position = UDim2.new(0, 0, 0.5, 0)

    UI.imagelabel5 = Instance.new("ImageLabel")
    UI.imagelabel5.Parent = UI.imagelabel4
    UI.imagelabel5.BorderSizePixel = 0
    UI.imagelabel5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.imagelabel5.ImageTransparency = 0.5
    UI.imagelabel5.AnchorPoint = Vector2.new(0.5, 0.5)
    UI.imagelabel5.Image = [[rbxassetid://95898765113869]]
    UI.imagelabel5.Size = UDim2.new(0, 20, 0, 20)
    UI.imagelabel5.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.imagelabel5.BackgroundTransparency = 1
    UI.imagelabel5.LayoutOrder = 1
    UI.imagelabel5.Name = [[icon]]
    UI.imagelabel5.Position = UDim2.new(0.5, 0, 0.5, 0)

    UI.uicorner6 = Instance.new("UICorner")
    UI.uicorner6.Parent = UI.imagelabel4
    UI.uicorner6.Name = [[Corner]]
    UI.uicorner6.CornerRadius = UDim.new(0, 6)

    UI.folder2 = Instance.new("Folder")
    UI.folder2.Parent = UI.imagebutton2
    UI.folder2.Name = [[Extra]]

    UI.frame11 = Instance.new("Frame")
    UI.frame11.Parent = UI.folder2
    UI.frame11.BorderSizePixel = 0
    UI.frame11.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.frame11.AnchorPoint = Vector2.new(0.5, 1)
    UI.frame11.Size = UDim2.new(2, 0, 0, 1)
    UI.frame11.Position = UDim2.new(0.5, 0, 1, 1)
    UI.frame11.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.frame11.Name = [[Separator]]
    UI.frame11.BackgroundTransparency = 0.98

    UI.uilistlayout5 = Instance.new("UIListLayout")
    UI.uilistlayout5.Parent = UI.imagebutton2
    UI.uilistlayout5.Padding = UDim.new(0, 10)
    UI.uilistlayout5.VerticalAlignment = Enum.VerticalAlignment.Center
    UI.uilistlayout5.SortOrder = Enum.SortOrder.LayoutOrder
    UI.uilistlayout5.Name = [[List]]
    UI.uilistlayout5.FillDirection = Enum.FillDirection.Horizontal

    UI.frame12 = Instance.new("Frame")
    UI.frame12.Parent = UI.imagebutton2
    UI.frame12.BorderSizePixel = 0
    UI.frame12.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.frame12.Size = UDim2.new(0, 0, 0, 28)
    UI.frame12.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.frame12.Name = [[info]]
    UI.frame12.LayoutOrder = 2
    UI.frame12.BackgroundTransparency = 1

    local sizeConstraint2 = Instance.new("UISizeConstraint")
    sizeConstraint2.Parent = UI.frame12
    sizeConstraint2.MinSize = Vector2.new(0, 0)

    UI.uiflexitem6 = Instance.new("UIFlexItem")
    UI.uiflexitem6.Parent = UI.frame12
    UI.uiflexitem6.Name = [[Flex]]
    UI.uiflexitem6.FlexMode = Enum.UIFlexMode.Fill

    UI.textlabel5 = Instance.new("TextLabel")
    UI.textlabel5.Parent = UI.frame12
    UI.textlabel5.TextTruncate = Enum.TextTruncate.AtEnd
    UI.textlabel5.BorderSizePixel = 0
    UI.textlabel5.TextSize = 14
    UI.textlabel5.TextXAlignment = Enum.TextXAlignment.Left
    UI.textlabel5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.textlabel5.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    UI.textlabel5.TextColor3 = Color3.fromRGB(255, 255, 255)
    UI.textlabel5.BackgroundTransparency = 1
    UI.textlabel5.Size = UDim2.new(1, 0, 0, 0)
    UI.textlabel5.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.textlabel5.Text = [[Tab Layout]]
    UI.textlabel5.AutomaticSize = Enum.AutomaticSize.Y
    UI.textlabel5.Name = [[Header]]

    UI.textlabel6 = Instance.new("TextLabel")
    UI.textlabel6.Parent = UI.frame12
    UI.textlabel6.TextTruncate = Enum.TextTruncate.AtEnd
    UI.textlabel6.BorderSizePixel = 0
    UI.textlabel6.TextSize = 12
    UI.textlabel6.TextXAlignment = Enum.TextXAlignment.Left
    UI.textlabel6.TextTransparency = 0.7
    UI.textlabel6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.textlabel6.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    UI.textlabel6.TextColor3 = Color3.fromRGB(255, 255, 255)
    UI.textlabel6.BackgroundTransparency = 1
    UI.textlabel6.AnchorPoint = Vector2.new(0, 1)
    UI.textlabel6.Size = UDim2.new(1, 0, 0, 0)
    UI.textlabel6.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.textlabel6.Text = [[Short description]]
    UI.textlabel6.AutomaticSize = Enum.AutomaticSize.Y
    UI.textlabel6.Name = [[Description]]
    UI.textlabel6.Position = UDim2.new(0, 0, 1, 0)

    UI.imagelabel6 = Instance.new("ImageLabel")
    UI.imagelabel6.Parent = UI.imagebutton2
    UI.imagelabel6.BorderSizePixel = 0
    UI.imagelabel6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.imagelabel6.Image = [[rbxassetid://95898765113869]]
    UI.imagelabel6.Size = UDim2.new(0, 24, 0, 24)
    UI.imagelabel6.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.imagelabel6.BackgroundTransparency = 1
    UI.imagelabel6.LayoutOrder = 99
    UI.imagelabel6.Name = [[icon]]

    UI.uiaspectratioconstraint2 = Instance.new("UIAspectRatioConstraint")
    UI.uiaspectratioconstraint2.Parent = UI.imagelabel6
    UI.uiaspectratioconstraint2.Name = [[aspect]]

    UI.textlabel7 = Instance.new("TextLabel")
    UI.textlabel7.Parent = UI.imagebutton2
    UI.textlabel7.BorderSizePixel = 0
    UI.textlabel7.TextSize = 14
    UI.textlabel7.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
    UI.textlabel7.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    UI.textlabel7.TextColor3 = Color3.fromRGB(255, 255, 255)
    UI.textlabel7.Size = UDim2.new(0, 125, 0, 30)
    UI.textlabel7.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.textlabel7.Text = [[Left]]
    UI.textlabel7.LayoutOrder = 98
    UI.textlabel7.AutomaticSize = Enum.AutomaticSize.X
    UI.textlabel7.Name = [[value]]
    UI.textlabel7.Position = UDim2.new(0.62658, 0, 0.3, 0)

    UI.uicorner7 = Instance.new("UICorner")
    UI.uicorner7.Parent = UI.textlabel7
    UI.uicorner7.Name = [[Corner]]
    UI.uicorner7.CornerRadius = UDim.new(0, 18)

    UI.imagebutton3 = Instance.new("ImageButton")
    UI.imagebutton3.Parent = UI.frame6
    UI.imagebutton3.Active = false
    UI.imagebutton3.BorderSizePixel = 0
    UI.imagebutton3.ImageTransparency = 1
    UI.imagebutton3.BackgroundTransparency = 1
    UI.imagebutton3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.imagebutton3.Selectable = false
    UI.imagebutton3.Size = UDim2.new(1, 0, 0, 50)
    UI.imagebutton3.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.imagebutton3.Name = [[Button]]
    UI.imagebutton3.LayoutOrder = 3

    UI.uipadding4 = Instance.new("UIPadding")
    UI.uipadding4.Parent = UI.imagebutton3
    UI.uipadding4.PaddingRight = UDim.new(0, 12)
    UI.uipadding4.Name = [[Padding]]
    UI.uipadding4.PaddingLeft = UDim.new(0, 12)

    UI.imagelabel7 = Instance.new("ImageLabel")
    UI.imagelabel7.Parent = UI.imagebutton3
    UI.imagelabel7.BorderSizePixel = 0
    UI.imagelabel7.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    UI.imagelabel7.ImageTransparency = 1
    UI.imagelabel7.AnchorPoint = Vector2.new(0, 0.5)
    UI.imagelabel7.Size = UDim2.new(0, 32, 0, 32)
    UI.imagelabel7.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.imagelabel7.BackgroundTransparency = 0.8
    UI.imagelabel7.LayoutOrder = 1
    UI.imagelabel7.Name = [[holder]]
    UI.imagelabel7.Position = UDim2.new(0, 0, 0.5, 0)

    UI.imagelabel8 = Instance.new("ImageLabel")
    UI.imagelabel8.Parent = UI.imagelabel7
    UI.imagelabel8.BorderSizePixel = 0
    UI.imagelabel8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.imagelabel8.ImageTransparency = 0.5
    UI.imagelabel8.AnchorPoint = Vector2.new(0.5, 0.5)
    UI.imagelabel8.Image = [[rbxassetid://95898765113869]]
    UI.imagelabel8.Size = UDim2.new(0, 20, 0, 20)
    UI.imagelabel8.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.imagelabel8.BackgroundTransparency = 1
    UI.imagelabel8.LayoutOrder = 1
    UI.imagelabel8.Name = [[icon]]
    UI.imagelabel8.Position = UDim2.new(0.5, 0, 0.5, 0)

    UI.uicorner8 = Instance.new("UICorner")
    UI.uicorner8.Parent = UI.imagelabel7
    UI.uicorner8.Name = [[Corner]]
    UI.uicorner8.CornerRadius = UDim.new(0, 6)

    UI.folder3 = Instance.new("Folder")
    UI.folder3.Parent = UI.imagebutton3
    UI.folder3.Name = [[Extra]]

    UI.frame13 = Instance.new("Frame")
    UI.frame13.Parent = UI.folder3
    UI.frame13.BorderSizePixel = 0
    UI.frame13.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.frame13.AnchorPoint = Vector2.new(0.5, 1)
    UI.frame13.Size = UDim2.new(2, 0, 0, 1)
    UI.frame13.Position = UDim2.new(0.5, 0, 1, 1)
    UI.frame13.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.frame13.Name = [[Separator]]
    UI.frame13.BackgroundTransparency = 0.98

    UI.uilistlayout6 = Instance.new("UIListLayout")
    UI.uilistlayout6.Parent = UI.imagebutton3
    UI.uilistlayout6.Padding = UDim.new(0, 10)
    UI.uilistlayout6.VerticalAlignment = Enum.VerticalAlignment.Center
    UI.uilistlayout6.SortOrder = Enum.SortOrder.LayoutOrder
    UI.uilistlayout6.Name = [[List]]
    UI.uilistlayout6.FillDirection = Enum.FillDirection.Horizontal

    UI.frame14 = Instance.new("Frame")
    UI.frame14.Parent = UI.imagebutton3
    UI.frame14.BorderSizePixel = 0
    UI.frame14.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.frame14.Size = UDim2.new(0, 0, 0, 28)
    UI.frame14.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.frame14.Name = [[info]]
    UI.frame14.LayoutOrder = 2
    UI.frame14.BackgroundTransparency = 1

    local sizeConstraint3 = Instance.new("UISizeConstraint")
    sizeConstraint3.Parent = UI.frame14
    sizeConstraint3.MinSize = Vector2.new(0, 0)

    UI.uiflexitem7 = Instance.new("UIFlexItem")
    UI.uiflexitem7.Parent = UI.frame14
    UI.uiflexitem7.Name = [[Flex]]
    UI.uiflexitem7.FlexMode = Enum.UIFlexMode.Fill

    UI.textlabel8 = Instance.new("TextLabel")
    UI.textlabel8.Parent = UI.frame14
    UI.textlabel8.TextTruncate = Enum.TextTruncate.AtEnd
    UI.textlabel8.BorderSizePixel = 0
    UI.textlabel8.TextSize = 14
    UI.textlabel8.TextXAlignment = Enum.TextXAlignment.Left
    UI.textlabel8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.textlabel8.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    UI.textlabel8.TextColor3 = Color3.fromRGB(255, 255, 255)
    UI.textlabel8.BackgroundTransparency = 1
    UI.textlabel8.Size = UDim2.new(1, 0, 0, 0)
    UI.textlabel8.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.textlabel8.Text = [[Unload script]]
    UI.textlabel8.AutomaticSize = Enum.AutomaticSize.Y
    UI.textlabel8.Name = [[Header]]

    UI.textlabel9 = Instance.new("TextLabel")
    UI.textlabel9.Parent = UI.frame14
    UI.textlabel9.TextTruncate = Enum.TextTruncate.AtEnd
    UI.textlabel9.BorderSizePixel = 0
    UI.textlabel9.TextSize = 12
    UI.textlabel9.TextXAlignment = Enum.TextXAlignment.Left
    UI.textlabel9.TextTransparency = 0.7
    UI.textlabel9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.textlabel9.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    UI.textlabel9.TextColor3 = Color3.fromRGB(255, 255, 255)
    UI.textlabel9.BackgroundTransparency = 1
    UI.textlabel9.AnchorPoint = Vector2.new(0, 1)
    UI.textlabel9.Size = UDim2.new(1, 0, 0, 0)
    UI.textlabel9.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.textlabel9.Text = [[Short description]]
    UI.textlabel9.AutomaticSize = Enum.AutomaticSize.Y
    UI.textlabel9.Name = [[Description]]
    UI.textlabel9.Position = UDim2.new(0, 0, 1.39286, 0)

    UI.frame15 = Instance.new("Frame")
    UI.frame15.Parent = UI.frame6
    UI.frame15.BorderSizePixel = 0
    UI.frame15.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.frame15.Size = UDim2.new(1, 0, 0, 50)
    UI.frame15.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.frame15.Name = [[Switch]]
    UI.frame15.LayoutOrder = 2
    UI.frame15.BackgroundTransparency = 1

    UI.imagebutton4 = Instance.new("ImageButton")
    UI.imagebutton4.Parent = UI.frame15
    UI.imagebutton4.BorderSizePixel = 0
    UI.imagebutton4.AutoButtonColor = false
    UI.imagebutton4.ImageTransparency = 1
    UI.imagebutton4.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
    UI.imagebutton4.AnchorPoint = Vector2.new(1, 0.5)
    UI.imagebutton4.Size = UDim2.new(0, 45, 0, 27)
    UI.imagebutton4.LayoutOrder = 99
    UI.imagebutton4.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.imagebutton4.Name = [[switch]]
    UI.imagebutton4.Position = UDim2.new(1, 0, 0.5, 0)

    UI.uicorner9 = Instance.new("UICorner")
    UI.uicorner9.Parent = UI.imagebutton4
    UI.uicorner9.Name = [[Corner]]
    UI.uicorner9.CornerRadius = UDim.new(1, 0)

    UI.uipadding5 = Instance.new("UIPadding")
    UI.uipadding5.Parent = UI.imagebutton4
    UI.uipadding5.PaddingRight = UDim.new(0, 5)
    UI.uipadding5.PaddingLeft = UDim.new(0, 5)

    UI.frame16 = Instance.new("Frame")
    UI.frame16.Parent = UI.imagebutton4
    UI.frame16.BorderSizePixel = 0
    UI.frame16.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.frame16.AnchorPoint = Vector2.new(0, 0.5)
    UI.frame16.Size = UDim2.new(0, 19, 0, 19)
    UI.frame16.Position = UDim2.new(0, 0, 0.5, 0)
    UI.frame16.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.frame16.Name = [[circle]]
    UI.frame16.BackgroundTransparency = 0.95

    UI.uicorner10 = Instance.new("UICorner")
    UI.uicorner10.Parent = UI.frame16
    UI.uicorner10.Name = [[Corner]]
    UI.uicorner10.CornerRadius = UDim.new(1, 0)

    UI.uipadding6 = Instance.new("UIPadding")
    UI.uipadding6.Parent = UI.frame15
    UI.uipadding6.PaddingRight = UDim.new(0, 12)
    UI.uipadding6.Name = [[Padding]]
    UI.uipadding6.PaddingLeft = UDim.new(0, 12)

    UI.imagelabel9 = Instance.new("ImageLabel")
    UI.imagelabel9.Parent = UI.frame15
    UI.imagelabel9.BorderSizePixel = 0
    UI.imagelabel9.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    UI.imagelabel9.ImageTransparency = 1
    UI.imagelabel9.AnchorPoint = Vector2.new(0, 0.5)
    UI.imagelabel9.Size = UDim2.new(0, 32, 0, 32)
    UI.imagelabel9.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.imagelabel9.BackgroundTransparency = 0.8
    UI.imagelabel9.LayoutOrder = 1
    UI.imagelabel9.Name = [[holder]]
    UI.imagelabel9.Position = UDim2.new(0, 0, 0.5, 0)

    UI.imagelabel10 = Instance.new("ImageLabel")
    UI.imagelabel10.Parent = UI.imagelabel9
    UI.imagelabel10.BorderSizePixel = 0
    UI.imagelabel10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.imagelabel10.ImageTransparency = 0.5
    UI.imagelabel10.AnchorPoint = Vector2.new(0.5, 0.5)
    UI.imagelabel10.Image = [[rbxassetid://95898765113869]]
    UI.imagelabel10.Size = UDim2.new(0, 20, 0, 20)
    UI.imagelabel10.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.imagelabel10.BackgroundTransparency = 1
    UI.imagelabel10.LayoutOrder = 1
    UI.imagelabel10.Name = [[icon]]
    UI.imagelabel10.Position = UDim2.new(0.5, 0, 0.5, 0)

    UI.uicorner11 = Instance.new("UICorner")
    UI.uicorner11.Parent = UI.imagelabel9
    UI.uicorner11.Name = [[Corner]]
    UI.uicorner11.CornerRadius = UDim.new(0, 6)

    UI.folder4 = Instance.new("Folder")
    UI.folder4.Parent = UI.frame15
    UI.folder4.Name = [[Extra]]

    UI.frame17 = Instance.new("Frame")
    UI.frame17.Parent = UI.folder4
    UI.frame17.BorderSizePixel = 0
    UI.frame17.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.frame17.AnchorPoint = Vector2.new(0.5, 1)
    UI.frame17.Size = UDim2.new(2, 0, 0, 1)
    UI.frame17.Position = UDim2.new(0.5, 0, 1, 1)
    UI.frame17.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.frame17.Name = [[Separator]]
    UI.frame17.BackgroundTransparency = 0.98

    UI.uilistlayout7 = Instance.new("UIListLayout")
    UI.uilistlayout7.Parent = UI.frame15
    UI.uilistlayout7.Padding = UDim.new(0, 10)
    UI.uilistlayout7.VerticalAlignment = Enum.VerticalAlignment.Center
    UI.uilistlayout7.SortOrder = Enum.SortOrder.LayoutOrder
    UI.uilistlayout7.Name = [[List]]
    UI.uilistlayout7.FillDirection = Enum.FillDirection.Horizontal

    UI.frame18 = Instance.new("Frame")
    UI.frame18.Parent = UI.frame15
    UI.frame18.BorderSizePixel = 0
    UI.frame18.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.frame18.Size = UDim2.new(0, 0, 0, 28)
    UI.frame18.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.frame18.Name = [[info]]
    UI.frame18.LayoutOrder = 2
    UI.frame18.BackgroundTransparency = 1

    local sizeConstraint4 = Instance.new("UISizeConstraint")
    sizeConstraint4.Parent = UI.frame18
    sizeConstraint4.MinSize = Vector2.new(0, 0)

    UI.uiflexitem8 = Instance.new("UIFlexItem")
    UI.uiflexitem8.Parent = UI.frame18
    UI.uiflexitem8.Name = [[Flex]]
    UI.uiflexitem8.FlexMode = Enum.UIFlexMode.Fill

    UI.textlabel10 = Instance.new("TextLabel")
    UI.textlabel10.Parent = UI.frame18
    UI.textlabel10.TextTruncate = Enum.TextTruncate.AtEnd
    UI.textlabel10.BorderSizePixel = 0
    UI.textlabel10.TextSize = 14
    UI.textlabel10.TextXAlignment = Enum.TextXAlignment.Left
    UI.textlabel10.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.textlabel10.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    UI.textlabel10.TextColor3 = Color3.fromRGB(255, 255, 255)
    UI.textlabel10.BackgroundTransparency = 1
    UI.textlabel10.Size = UDim2.new(1, 0, 0, 0)
    UI.textlabel10.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.textlabel10.Text = [[Show Debugbar]]
    UI.textlabel10.AutomaticSize = Enum.AutomaticSize.Y
    UI.textlabel10.Name = [[Header]]

    UI.textlabel11 = Instance.new("TextLabel")
    UI.textlabel11.Parent = UI.frame18
    UI.textlabel11.TextTruncate = Enum.TextTruncate.AtEnd
    UI.textlabel11.BorderSizePixel = 0
    UI.textlabel11.TextSize = 12
    UI.textlabel11.TextXAlignment = Enum.TextXAlignment.Left
    UI.textlabel11.TextTransparency = 0.7
    UI.textlabel11.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.textlabel11.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    UI.textlabel11.TextColor3 = Color3.fromRGB(255, 255, 255)
    UI.textlabel11.BackgroundTransparency = 1
    UI.textlabel11.AnchorPoint = Vector2.new(0, 1)
    UI.textlabel11.Size = UDim2.new(1, 0, 0, 0)
    UI.textlabel11.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.textlabel11.Text = [[Enables/Disables the Debugbar]]
    UI.textlabel11.AutomaticSize = Enum.AutomaticSize.Y
    UI.textlabel11.Name = [[Description]]
    UI.textlabel11.Position = UDim2.new(0, 0, 1, 0)

    UI.frame19 = Instance.new("Frame")
    UI.frame19.Parent = UI.frame6
    UI.frame19.BorderSizePixel = 0
    UI.frame19.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.frame19.Size = UDim2.new(1, 0, 0, 50)
    UI.frame19.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.frame19.Name = [[Filler]]
    UI.frame19.LayoutOrder = 1
    UI.frame19.BackgroundTransparency = 1

    UI.uipadding7 = Instance.new("UIPadding")
    UI.uipadding7.Parent = UI.frame5

    UI.frame20 = Instance.new("Frame")
    UI.frame20.Parent = UI.scrollingframe
    UI.frame20.ZIndex = 12
    UI.frame20.BorderSizePixel = 0
    UI.frame20.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.frame20.Size = UDim2.new(1, 0, 0, 40)
    UI.frame20.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.frame20.Name = [[topbar]]
    UI.frame20.LayoutOrder = 1
    UI.frame20.BackgroundTransparency = 1

    UI.imagebutton5 = Instance.new("ImageButton")
    UI.imagebutton5.Parent = UI.frame20
    UI.imagebutton5.BorderSizePixel = 0
    UI.imagebutton5.SliceCenter = Rect.new(512, 512, 512, 512)
    UI.imagebutton5.ScaleType = Enum.ScaleType.Slice
    UI.imagebutton5.AutoButtonColor = false
    UI.imagebutton5.ImageTransparency = 1
    UI.imagebutton5.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
    UI.imagebutton5.AutomaticSize = Enum.AutomaticSize.X
    UI.imagebutton5.Size = UDim2.new(0.5, 0, 1, 0)
    UI.imagebutton5.LayoutOrder = 2
    UI.imagebutton5.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.imagebutton5.Name = [[reset]]

    UI.imagelabel11 = Instance.new("ImageLabel")
    UI.imagelabel11.Parent = UI.imagebutton5
    UI.imagelabel11.BorderSizePixel = 0
    UI.imagelabel11.ScaleType = Enum.ScaleType.Fit
    UI.imagelabel11.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.imagelabel11.ImageTransparency = 0.5
    UI.imagelabel11.AnchorPoint = Vector2.new(0.5, 0.5)
    UI.imagelabel11.Image = [[rbxassetid://113582432019999]]
    UI.imagelabel11.Size = UDim2.new(0, 25, 0, 25)
    UI.imagelabel11.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.imagelabel11.BackgroundTransparency = 1
    UI.imagelabel11.Name = [[icon]]
    UI.imagelabel11.Position = UDim2.new(0.5, 0, 0.5, 0)

    UI.uicorner12 = Instance.new("UICorner")
    UI.uicorner12.Parent = UI.imagebutton5
    UI.uicorner12.Name = [[Corner]]
    UI.uicorner12.CornerRadius = UDim.new(0, 12)

    UI.uiscale = Instance.new("UIScale")
    UI.uiscale.Parent = UI.imagebutton5
    UI.uiscale.Name = [[Scale]]

    UI.uipadding8 = Instance.new("UIPadding")
    UI.uipadding8.Parent = UI.imagebutton5
    UI.uipadding8.PaddingTop = UDim.new(0, 4)
    UI.uipadding8.PaddingRight = UDim.new(0, 14)
    UI.uipadding8.Name = [[Padding]]
    UI.uipadding8.PaddingLeft = UDim.new(0, 14)
    UI.uipadding8.PaddingBottom = UDim.new(0, 4)

    UI.uilistlayout8 = Instance.new("UIListLayout")
    UI.uilistlayout8.Parent = UI.imagebutton5
    UI.uilistlayout8.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UI.uilistlayout8.Padding = UDim.new(0, 12)
    UI.uilistlayout8.VerticalAlignment = Enum.VerticalAlignment.Center
    UI.uilistlayout8.SortOrder = Enum.SortOrder.LayoutOrder
    UI.uilistlayout8.Name = [[List]]
    UI.uilistlayout8.FillDirection = Enum.FillDirection.Horizontal

    UI.textlabel12 = Instance.new("TextLabel")
    UI.textlabel12.Parent = UI.imagebutton5
    UI.textlabel12.BorderSizePixel = 0
    UI.textlabel12.TextSize = 14
    UI.textlabel12.TextTransparency = 0.6
    UI.textlabel12.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.textlabel12.FontFace = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    UI.textlabel12.TextColor3 = Color3.fromRGB(255, 255, 255)
    UI.textlabel12.BackgroundTransparency = 1
    UI.textlabel12.Size = UDim2.new(0, 0, 1, 0)
    UI.textlabel12.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.textlabel12.Text = [[Reset Settings]]
    UI.textlabel12.LayoutOrder = 1
    UI.textlabel12.AutomaticSize = Enum.AutomaticSize.X
    UI.textlabel12.Name = [[name]]

    UI.uiflexitem9 = Instance.new("UIFlexItem")
    UI.uiflexitem9.Parent = UI.imagebutton5
    UI.uiflexitem9.Name = [[Flex]]
    UI.uiflexitem9.FlexMode = Enum.UIFlexMode.Fill

    UI.uilistlayout9 = Instance.new("UIListLayout")
    UI.uilistlayout9.Parent = UI.frame20
    UI.uilistlayout9.Padding = UDim.new(0, 10)
    UI.uilistlayout9.VerticalAlignment = Enum.VerticalAlignment.Center
    UI.uilistlayout9.SortOrder = Enum.SortOrder.LayoutOrder
    UI.uilistlayout9.Name = [[list]]
    UI.uilistlayout9.FillDirection = Enum.FillDirection.Horizontal

    UI.uilistlayout10 = Instance.new("UIListLayout")
    UI.uilistlayout10.Parent = UI.scrollingframe
    UI.uilistlayout10.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UI.uilistlayout10.Padding = UDim.new(0, 15)
    UI.uilistlayout10.SortOrder = Enum.SortOrder.LayoutOrder
    UI.uilistlayout10.Name = [[Layout]]

    UI.uipadding9 = Instance.new("UIPadding")
    UI.uipadding9.Parent = UI.scrollingframe
    UI.uipadding9.PaddingTop = UDim.new(0, 12)
    UI.uipadding9.PaddingRight = UDim.new(0, 20)
    UI.uipadding9.Name = [[padding]]
    UI.uipadding9.PaddingLeft = UDim.new(0, 20)
    UI.uipadding9.PaddingBottom = UDim.new(0, 20)

    return UI.settings
end

local SettignsTab = {}
function SettignsTab:Create(WindowTable)
    return CreateSettings(WindowTable)
end
return SettignsTab
