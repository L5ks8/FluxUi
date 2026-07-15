local Topbar = {}

function Topbar:Init(Window)
    local Main   = Window.Main
    local Panel  = Window.Panel

    -- ── Topbar bar ──────────────────────────────────────────────
    local Bar = Instance.new("ImageButton")
    Bar.Name                = "topbar"
    Bar.AutoButtonColor     = false
    Bar.ImageTransparency   = 1
    Bar.BackgroundTransparency = 0.9
    Bar.BackgroundColor3    = Color3.fromRGB(0, 0, 0)
    Bar.ZIndex              = 2
    Bar.AnchorPoint         = Vector2.new(0.5, 0.5)
    Bar.Size                = UDim2.new(1, 0, 0, 35)
    Bar.Position            = UDim2.new(0.5, 0, 0.03763, 0)
    Bar.Parent              = Panel

    local BarList = Instance.new("UIListLayout")
    BarList.HorizontalAlignment = Enum.HorizontalAlignment.Center
    BarList.Padding             = UDim.new(0, 10)
    BarList.VerticalAlignment   = Enum.VerticalAlignment.Center
    BarList.SortOrder           = Enum.SortOrder.LayoutOrder
    BarList.FillDirection       = Enum.FillDirection.Horizontal
    BarList.Parent              = Bar

    -- ── Logo / Title ─────────────────────────────────────────────
    local LogoFrame = Instance.new("Frame")
    LogoFrame.Name              = "logo"
    LogoFrame.BackgroundTransparency = 1
    LogoFrame.AnchorPoint       = Vector2.new(0.5, 0.5)
    LogoFrame.AutomaticSize     = Enum.AutomaticSize.X
    LogoFrame.Size              = UDim2.new(0.01081, 80, 1, 0)
    LogoFrame.Position          = UDim2.new(0.5, 0, 0.5, 0)
    LogoFrame.LayoutOrder       = 1
    LogoFrame.Parent            = Bar

    local LogoPad = Instance.new("UIPadding")
    LogoPad.PaddingLeft = UDim.new(0, 8)
    LogoPad.Parent      = LogoFrame

    local LogoLabel = Instance.new("TextLabel")
    LogoLabel.Name                  = "logo"
    LogoLabel.TextStrokeTransparency = 0
    LogoLabel.TextSize              = 20
    LogoLabel.TextXAlignment        = Enum.TextXAlignment.Left
    LogoLabel.TextTransparency      = 0.2
    LogoLabel.BackgroundTransparency = 1
    LogoLabel.FontFace              = Font.new("rbxassetid://12187365364", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
    LogoLabel.TextColor3            = Color3.fromRGB(255, 255, 255)
    LogoLabel.AnchorPoint           = Vector2.new(0.5, 0.5)
    LogoLabel.Size                  = UDim2.new(0, 187, 0, 34)
    LogoLabel.Text                  = Window.Title or "FluxUI"
    LogoLabel.Position              = UDim2.new(1.0506, 0, 0.49643, 0)
    LogoLabel.Parent                = LogoFrame

    -- ── Spacer ───────────────────────────────────────────────────
    local Space = Instance.new("Frame")
    Space.Name              = "space"
    Space.BackgroundTransparency = 1
    Space.Size              = UDim2.new(0.64179, 0, 1, 0)
    Space.LayoutOrder       = 2
    Space.Parent            = Bar

    local SpaceFlex = Instance.new("UIFlexItem")
    SpaceFlex.FlexMode = Enum.UIFlexMode.Fill
    SpaceFlex.Parent   = Space

    -- ── Actions (close / fullscreen / nav buttons) ───────────────
    local Actions = Instance.new("Frame")
    Actions.Name              = "actions"
    Actions.BackgroundTransparency = 1
    Actions.AnchorPoint       = Vector2.new(0.5, 0.5)
    Actions.AutomaticSize     = Enum.AutomaticSize.XY
    Actions.Size              = UDim2.new(0.21045, 0, 1.07143, 0)
    Actions.Position          = UDim2.new(0.5, 0, 0.5, 0)
    Actions.LayoutOrder       = 3
    Actions.Parent            = Bar

    local ActList = Instance.new("UIListLayout")
    ActList.HorizontalAlignment = Enum.HorizontalAlignment.Center
    ActList.Padding             = UDim.new(0, 4)
    ActList.VerticalAlignment   = Enum.VerticalAlignment.Center
    ActList.SortOrder           = Enum.SortOrder.LayoutOrder
    ActList.FillDirection       = Enum.FillDirection.Horizontal
    ActList.Parent              = Actions

    -- Inner pill that holds the buttons
    local Pill = Instance.new("Frame")
    Pill.Name              = "main"
    Pill.BackgroundColor3  = Color3.fromRGB(25, 25, 25)
    Pill.AnchorPoint       = Vector2.new(0.5, 0.5)
    Pill.AutomaticSize     = Enum.AutomaticSize.X
    Pill.Size              = UDim2.new(0, 0, 0, 27)
    Pill.Position          = UDim2.new(0.5, 0, 0.5, 0)
    Pill.Parent            = Actions

    local PillList = Instance.new("UIListLayout")
    PillList.HorizontalAlignment = Enum.HorizontalAlignment.Center
    PillList.VerticalAlignment   = Enum.VerticalAlignment.Center
    PillList.SortOrder           = Enum.SortOrder.LayoutOrder
    PillList.FillDirection       = Enum.FillDirection.Horizontal
    PillList.Parent              = Pill

    local PillPad = Instance.new("UIPadding")
    PillPad.PaddingTop    = UDim.new(0, 5)
    PillPad.PaddingRight  = UDim.new(0, 6)
    PillPad.PaddingLeft   = UDim.new(0, 10)
    PillPad.PaddingBottom = UDim.new(0, 5)
    PillPad.Parent        = Pill

    local PillCorner = Instance.new("UICorner")
    PillCorner.CornerRadius = UDim.new(1, 0)
    PillCorner.Parent       = Pill

    -- Helper: create a small icon button inside the pill
    local function MakePillButton(order, bgColor)
        local Btn = Instance.new("ImageButton")
        Btn.BorderSizePixel      = 0
        Btn.ImageTransparency    = 1
        Btn.BackgroundTransparency = 1
        Btn.BackgroundColor3     = bgColor
        Btn.AnchorPoint          = Vector2.new(0.5, 0.5)
        Btn.Size                 = UDim2.new(0, 22, 0, 22)
        Btn.LayoutOrder          = order
        Btn.Position             = UDim2.new(0.5, 0, 0.5, 0)
        Btn.Parent               = Pill

        local Corner = Instance.new("UICorner")
        Corner.CornerRadius = UDim.new(0, 5)
        Corner.Parent       = Btn

        local Scale = Instance.new("UIScale")
        Scale.Parent = Btn

        return Btn, Scale
    end

    -- Close button
    local CloseBtn = MakePillButton(5, Color3.fromRGB(255, 0, 0))
    CloseBtn.Name = "close"

    local CloseIcon = Instance.new("ImageLabel")
    CloseIcon.ZIndex              = 2
    CloseIcon.BackgroundTransparency = 1
    CloseIcon.ImageTransparency   = 0.5
    CloseIcon.AnchorPoint         = Vector2.new(0.5, 0.5)
    CloseIcon.Image               = "rbxassetid://74765928839458"
    CloseIcon.Size                = UDim2.new(0, 17, 0, 17)
    CloseIcon.Position            = UDim2.new(0.5, 0, 0.5, 0)
    CloseIcon.Parent              = CloseBtn

    -- Fullscreen button
    local FullBtn = MakePillButton(4, Color3.fromRGB(0, 255, 0))
    FullBtn.Name = "fullscreen"

    local FullIcon = Instance.new("ImageLabel")
    FullIcon.ZIndex              = 2
    FullIcon.BackgroundTransparency = 1
    FullIcon.ImageTransparency   = 0.5
    FullIcon.AnchorPoint         = Vector2.new(0.5, 0.5)
    FullIcon.Image               = "rbxassetid://78102729792278"
    FullIcon.Size                = UDim2.new(0, 16, 0, 16)
    FullIcon.Position            = UDim2.new(0.5, 0, 0.5, 0)
    FullIcon.Parent              = FullBtn

    -- Nav button
    local NavBtn = MakePillButton(3, Color3.fromRGB(255, 255, 0))
    NavBtn.Name = "nav"

    local NavIcon = Instance.new("ImageLabel")
    NavIcon.ZIndex              = 2
    NavIcon.BackgroundTransparency = 1
    NavIcon.ImageTransparency   = 0.5
    NavIcon.AnchorPoint         = Vector2.new(0.5, 0.5)
    NavIcon.Image               = "rbxassetid://73940415633339"
    NavIcon.Size                = UDim2.new(0, 18, 0, 18)
    NavIcon.Position            = UDim2.new(0.5, 0, 0.5, 0)
    NavIcon.Parent              = NavBtn

    -- ── Bar right-padding ─────────────────────────────────────────
    local BarPad = Instance.new("UIPadding")
    BarPad.PaddingRight = UDim.new(0, 15)
    BarPad.Parent       = Bar

    -- ── Drag the window via the topbar ───────────────────────────
    local UIS = game:GetService("UserInputService")
    local dragging, dragInput, dragStart, startPos

    Bar.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging  = true
            dragStart = input.Position
            startPos  = Main.Position
        end
    end)

    Bar.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement then
            dragInput = input
        end
    end)

    UIS.InputChanged:Connect(function(input)
        if dragging and input == dragInput then
            local delta = input.Position - dragStart
            Main.Position = UDim2.new(
                startPos.X.Scale, startPos.X.Offset + delta.X,
                startPos.Y.Scale, startPos.Y.Offset + delta.Y
            )
        end
    end)

    UIS.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 then
            dragging = false
        end
    end)

    -- ── Close button logic ────────────────────────────────────────
    CloseBtn.MouseButton1Click:Connect(function()
        Window.Gui:Destroy()
    end)

    -- ── Parent the GUI to CoreGui ─────────────────────────────────
    Window.Gui.Parent = game:GetService("CoreGui")

    Window.Topbar = Bar
end

return Topbar
