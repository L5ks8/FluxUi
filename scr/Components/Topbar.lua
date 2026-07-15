local CollectionService = game:GetService("CollectionService")

local Topbar = {}

function Topbar:Create(parentPanel)
    local topbar = Instance.new("ImageButton")
    topbar.Name = "topbar"
    topbar.BorderSizePixel = 0
    topbar.AutoButtonColor = false
    topbar.ImageTransparency = 1
    topbar.BackgroundTransparency = 0.9
    topbar.BackgroundColor3 = Color3.fromRGB(0,0,0)
    topbar.ZIndex = 2
    topbar.AnchorPoint = Vector2.new(0.5,0.5)
    topbar.Size = UDim2.new(1,0,0,35)
    topbar.BorderColor3 = Color3.fromRGB(0,0,0)
    topbar.Position = UDim2.new(0.5,0,0.03763,0)
    topbar.Parent = script.Parent

    local list = Instance.new("UIListLayout")
    list.Name = "List"
    list.HorizontalAlignment = Enum.HorizontalAlignment.Center
    list.Padding = UDim.new(0,10)
    list.VerticalAlignment = Enum.VerticalAlignment.Center
    list.SortOrder = Enum.SortOrder.LayoutOrder
    list.FillDirection = Enum.FillDirection.Horizontal
    list.Parent = topbar

    local space = Instance.new("Frame")
    space.Name = "space"
    space.BorderSizePixel = 0
    space.BackgroundColor3 = Color3.fromRGB(255,255,255)
    space.Size = UDim2.new(0.64179,0,1,0)
    space.Position = UDim2.new(0.23134,0,0,0)
    space.BorderColor3 = Color3.fromRGB(0,0,0)
    space.LayoutOrder = 2
    space.BackgroundTransparency = 1
    space.Parent = topbar

    local flex = Instance.new("UIFlexItem")
    flex.Name = "Flex"
    flex.FlexMode = Enum.UIFlexMode.Fill
    flex.Parent = space

    local padding = Instance.new("UIPadding")
    padding.Name = "Padding"
    padding.PaddingRight = UDim.new(0,15)
    padding.Parent = topbar

    local actions = Instance.new("Frame")
    actions.Name = "actions"
    actions.BorderSizePixel = 0
    actions.BackgroundColor3 = Color3.fromRGB(255,255,255)
    actions.AnchorPoint = Vector2.new(0.5,0.5)
    actions.AutomaticSize = Enum.AutomaticSize.XY
    actions.Size = UDim2.new(0.21045,0,1.07143,0)
    actions.Position = UDim2.new(0.5,0,0.5,0)
    actions.BorderColor3 = Color3.fromRGB(0,0,0)
    actions.LayoutOrder = 3
    actions.BackgroundTransparency = 1
    actions.Parent = topbar

    local actionList = Instance.new("UIListLayout")
    actionList.Name = "list"
    actionList.HorizontalAlignment = Enum.HorizontalAlignment.Center
    actionList.Padding = UDim.new(0,4)
    actionList.VerticalAlignment = Enum.VerticalAlignment.Center
    actionList.SortOrder = Enum.SortOrder.LayoutOrder
    actionList.FillDirection = Enum.FillDirection.Horizontal
    actionList.Parent = actions

    local main = Instance.new("Frame")
    main.Name = "main"
    main.BorderSizePixel = 0
    main.BackgroundColor3 = Color3.fromRGB(25,25,25)
    main.AnchorPoint = Vector2.new(0.5,0.5)
    main.AutomaticSize = Enum.AutomaticSize.X
    main.Size = UDim2.new(0,0,0,27)
    main.Position = UDim2.new(0.5,0,0.5,0)
    main.BorderColor3 = Color3.fromRGB(0,0,0)
    main.Parent = actions

    local mainList = Instance.new("UIListLayout")
    mainList.Name = "list"
    mainList.HorizontalAlignment = Enum.HorizontalAlignment.Center
    mainList.VerticalAlignment = Enum.VerticalAlignment.Center
    mainList.SortOrder = Enum.SortOrder.LayoutOrder
    mainList.FillDirection = Enum.FillDirection.Horizontal
    mainList.Parent = main

    local close = Instance.new("ImageButton")
    close.Name = "close"
    close.BorderSizePixel = 0
    close.ImageTransparency = 1
    close.BackgroundTransparency = 1
    close.BackgroundColor3 = Color3.fromRGB(255,0,0)
    close.AnchorPoint = Vector2.new(0.5,0.5)
    close.Size = UDim2.new(0,22,0,22)
    close.LayoutOrder = 5
    close.BorderColor3 = Color3.fromRGB(0,0,0)
    close.Position = UDim2.new(0.5,0,0.5,0)
    close:SetAttribute("ID","close")
    CollectionService:AddTag(close,"OrbitTopbarButton")
    close.Parent = main

    local closeScale = Instance.new("UIScale")
    closeScale.Name = "scale"
    closeScale.Parent = close

    local closeCorner = Instance.new("UICorner")
    closeCorner.Name = "corner"
    closeCorner.CornerRadius = UDim.new(0,5)
    closeCorner.Parent = close

    local closeIcon = Instance.new("ImageLabel")
    closeIcon.Name = "icon"
    closeIcon.ZIndex = 2
    closeIcon.BorderSizePixel = 0
    closeIcon.BackgroundColor3 = Color3.fromRGB(255,255,255)
    closeIcon.ImageTransparency = 0.5
    closeIcon.AnchorPoint = Vector2.new(0.5,0.5)
    closeIcon.Image = "rbxassetid://74765928839458"
    closeIcon.Size = UDim2.new(0,17,0,17)
    closeIcon.BorderColor3 = Color3.fromRGB(255,255,255)
    closeIcon.BackgroundTransparency = 1
    closeIcon.Position = UDim2.new(0.5,0,0.5,0)
    closeIcon.Parent = close

    local returnBtn = Instance.new("ImageButton")
    returnBtn.Name = "return"
    returnBtn.BorderSizePixel = 0
    returnBtn.ImageTransparency = 1
    returnBtn.BackgroundTransparency = 1
    returnBtn.BackgroundColor3 = Color3.fromRGB(0,0,0)
    returnBtn.AnchorPoint = Vector2.new(0.5,0.5)
    returnBtn.Size = UDim2.new(0,22,0,22)
    returnBtn.LayoutOrder = 2
    returnBtn.BorderColor3 = Color3.fromRGB(0,0,0)
    returnBtn.Position = UDim2.new(0.5,0,0.5,0)
    returnBtn:SetAttribute("ID","fullscreen")
    CollectionService:AddTag(returnBtn,"OrbitTopbarButton")
    returnBtn.Parent = main

    local returnCorner = Instance.new("UICorner")
    returnCorner.Name = "corner"
    returnCorner.CornerRadius = UDim.new(0,5)
    returnCorner.Parent = returnBtn

    local returnScale = Instance.new("UIScale")
    returnScale.Name = "scale"
    returnScale.Parent = returnBtn

    local returnIcon = Instance.new("ImageLabel")
    returnIcon.Name = "icon"
    returnIcon.ZIndex = 2
    returnIcon.BorderSizePixel = 0
    returnIcon.BackgroundColor3 = Color3.fromRGB(0,0,0)
    returnIcon.ImageTransparency = 0.5
    returnIcon.AnchorPoint = Vector2.new(0.5,0.5)
    returnIcon.Image = "rbxassetid://140708438269602"
    returnIcon.Size = UDim2.new(0,25,0,25)
    returnIcon.BorderColor3 = Color3.fromRGB(0,0,0)
    returnIcon.BackgroundTransparency = 1
    returnIcon.Position = UDim2.new(0.5,0,0.5,0)
    returnIcon.Parent = returnBtn

    local nav = Instance.new("ImageButton")
    nav.Name = "nav"
    nav.BorderSizePixel = 0
    nav.ImageTransparency = 1
    nav.BackgroundTransparency = 1
    nav.BackgroundColor3 = Color3.fromRGB(255,255,0)
    nav.AnchorPoint = Vector2.new(0.5,0.5)
    nav.Size = UDim2.new(0,22,0,22)
    nav.LayoutOrder = 3
    nav.BorderColor3 = Color3.fromRGB(0,0,0)
    nav.Position = UDim2.new(0.5,0,0.5,0)
    nav:SetAttribute("ID","nav")
    CollectionService:AddTag(nav,"OrbitTopbarButton")
    nav.Parent = main

    local navScale = Instance.new("UIScale")
    navScale.Name = "scale"
    navScale.Parent = nav

    local navCorner = Instance.new("UICorner")
    navCorner.Name = "corner"
    navCorner.CornerRadius = UDim.new(0,5)
    navCorner.Parent = nav

    local navIcon = Instance.new("ImageLabel")
    navIcon.Name = "icon"
    navIcon.ZIndex = 2
    navIcon.BorderSizePixel = 0
    navIcon.BackgroundColor3 = Color3.fromRGB(0,0,0)
    navIcon.ImageTransparency = 0.5
    navIcon.AnchorPoint = Vector2.new(0.5,0.5)
    navIcon.Image = "rbxassetid://73940415633339"
    navIcon.Size = UDim2.new(0,18,0,18)
    navIcon.BorderColor3 = Color3.fromRGB(0,0,0)
    navIcon.BackgroundTransparency = 1
    navIcon.Position = UDim2.new(0.5,0,0.5,0)
    navIcon.Parent = nav

    local fullscreen = Instance.new("ImageButton")
    fullscreen.Name = "fullscreen"
    fullscreen.BorderSizePixel = 0
    fullscreen.ImageTransparency = 1
    fullscreen.BackgroundTransparency = 1
    fullscreen.BackgroundColor3 = Color3.fromRGB(0,255,0)
    fullscreen.AnchorPoint = Vector2.new(0.5,0.5)
    fullscreen.Size = UDim2.new(0,22,0,22)
    fullscreen.LayoutOrder = 4
    fullscreen.BorderColor3 = Color3.fromRGB(0,0,0)
    fullscreen.Position = UDim2.new(0.5,0,0.5,0)
    fullscreen:SetAttribute("ID","fullscreen")
    CollectionService:AddTag(fullscreen,"OrbitTopbarButton")
    fullscreen.Parent = main

    local fullscreenScale = Instance.new("UIScale")
    fullscreenScale.Name = "scale"
    fullscreenScale.Parent = fullscreen

    local fullscreenCorner = Instance.new("UICorner")
    fullscreenCorner.Name = "corner"
    fullscreenCorner.CornerRadius = UDim.new(0,5)
    fullscreenCorner.Parent = fullscreen

    local icons = Instance.new("Frame")
    icons.Name = "Icons"
    icons.BorderSizePixel = 0
    icons.BackgroundColor3 = Color3.fromRGB(255,255,255)
    icons.Size = UDim2.new(0,16,0,16)
    icons.BorderColor3 = Color3.fromRGB(0,0,0)
    icons.BackgroundTransparency = 1
    icons.Parent = fullscreen

    local fullscreenIcon = Instance.new("ImageLabel")
    fullscreenIcon.Name = "Fullscreen"
    fullscreenIcon.ZIndex = 2
    fullscreenIcon.BorderSizePixel = 0
    fullscreenIcon.BackgroundColor3 = Color3.fromRGB(255,255,255)
    fullscreenIcon.ImageTransparency = 0.5
    fullscreenIcon.AnchorPoint = Vector2.new(0.5,0.5)
    fullscreenIcon.Image = "rbxassetid://78102729792278"
    fullscreenIcon.Size = UDim2.new(0,16,0,16)
    fullscreenIcon.BorderColor3 = Color3.fromRGB(255,255,255)
    fullscreenIcon.BackgroundTransparency = 1
    fullscreenIcon.Position = UDim2.new(0.85795,0,0.6875,0)
    fullscreenIcon.Parent = icons

    local minimizeIcon = Instance.new("ImageLabel")
    minimizeIcon.Name = "Minimize"
    minimizeIcon.BorderSizePixel = 0
    minimizeIcon.BackgroundColor3 = Color3.fromRGB(255,255,255)
    minimizeIcon.ImageTransparency = 0.3
    minimizeIcon.AnchorPoint = Vector2.new(0.5,0.5)
    minimizeIcon.Image = "rbxassetid://89086957535910"
    minimizeIcon.Size = UDim2.new(0,20,0,20)
    minimizeIcon.Visible = false
    minimizeIcon.BorderColor3 = Color3.fromRGB(255,255,255)
    minimizeIcon.BackgroundTransparency = 1
    minimizeIcon.Position = UDim2.new(0.858,0,0.688,0)
    minimizeIcon.Parent = icons

    local mainPadding = Instance.new("UIPadding")
    mainPadding.Name = "padding"
    mainPadding.PaddingTop = UDim.new(0,5)
    mainPadding.PaddingRight = UDim.new(0,6)
    mainPadding.PaddingLeft = UDim.new(0,10)
    mainPadding.PaddingBottom = UDim.new(0,5)
    mainPadding.Parent = main

    local mainCorner = Instance.new("UICorner")
    mainCorner.Name = "corner"
    mainCorner.CornerRadius = UDim.new(1,0)
    mainCorner.Parent = main

    local time = Instance.new("ImageButton")
    time.Name = "time"
    time.BorderSizePixel = 0
    time.BackgroundTransparency = 1
    time.BackgroundColor3 = Color3.fromRGB(0,0,0)
    time.AutomaticSize = Enum.AutomaticSize.X
    time.Size = UDim2.new(0,40,0,30)
    time.LayoutOrder = 1
    time.BorderColor3 = Color3.fromRGB(0,0,0)
    time.Position = UDim2.new(0.70165,0,0.34375,0)
    time.Parent = main

    local timeText = Instance.new("TextLabel")
    timeText.Name = "text"
    timeText.TextWrapped = true
    timeText.BorderSizePixel = 0
    timeText.TextSize = 12
    timeText.TextTransparency = 0.2
    timeText.BackgroundColor3 = Color3.fromRGB(255,255,255)
    timeText.FontFace = Font.new(
	    "rbxassetid://12187365364",
	    Enum.FontWeight.Regular,
	    Enum.FontStyle.Normal
    )
    timeText.TextColor3 = Color3.fromRGB(255,255,255)
    timeText.BackgroundTransparency = 1
    timeText.AnchorPoint = Vector2.new(0.5,0.5)
    timeText.Size = UDim2.new(1.46425,0,0.525,0)
    timeText.BorderColor3 = Color3.fromRGB(0,0,0)
    timeText.Text = "1:38 PM"
    timeText.AutomaticSize = Enum.AutomaticSize.X
    timeText.Position = UDim2.new(0.6327,0,0.5375,0)
    timeText.Parent = time

    local timePadding = Instance.new("UIPadding")
    timePadding.Name = "padding"
    timePadding.PaddingTop = UDim.new(0,5)
    timePadding.PaddingRight = UDim.new(0,4)
    timePadding.PaddingLeft = UDim.new(0,4)
    timePadding.PaddingBottom = UDim.new(0,5)
    timePadding.Parent = time

    local timeCorner = Instance.new("UICorner")
    timeCorner.Name = "corner"
    timeCorner.CornerRadius = UDim.new(1,0)
    timeCorner.Parent = time

    local logo = Instance.new("Frame")
    logo.Name = "logo"
    logo.BorderSizePixel = 0
    logo.BackgroundColor3 = Color3.fromRGB(255,255,255)
    logo.AnchorPoint = Vector2.new(0.5,0.5)
    logo.AutomaticSize = Enum.AutomaticSize.X
    logo.Size = UDim2.new(0.01081,80,1,0)
    logo.Position = UDim2.new(0.5,0,0.5,0)
    logo.BorderColor3 = Color3.fromRGB(0,0,0)
    logo.LayoutOrder = 1
    logo.BackgroundTransparency = 1
    logo.Parent = topbar

    local logoText = Instance.new("TextLabel")
    logoText.Name = "logo"
    logoText.TextStrokeTransparency = 0
    logoText.BorderSizePixel = 0
    logoText.TextSize = 20
    logoText.TextXAlignment = Enum.TextXAlignment.Left
    logoText.TextTransparency = 0.2
    logoText.BackgroundColor3 = Color3.fromRGB(255,255,255)
    logoText.FontFace = Font.new(
	    "rbxassetid://12187365364",
	    Enum.FontWeight.Bold,
	    Enum.FontStyle.Normal
    )
    logoText.TextColor3 = Color3.fromRGB(255,255,255)
    logoText.BackgroundTransparency = 1
    logoText.AnchorPoint = Vector2.new(0.5,0.5)
    logoText.Size = UDim2.new(0,187,0,34)
    logoText.BorderColor3 = Color3.fromRGB(0,0,0)
    logoText.Text = "Example"
    logoText.Position = UDim2.new(1.0506,0,0.49643,0)
    logoText.Parent = logo

    local logoPadding = Instance.new("UIPadding")
    logoPadding.Name = "UIPadding"
    logoPadding.PaddingLeft = UDim.new(0,8)
    logoPadding.Parent = logo
    
    return topbar
end

return Topbar