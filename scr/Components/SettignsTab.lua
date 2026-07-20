local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")

local SettignsTab = {}

local Animations = {
    Fast = TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
    Smooth = TweenInfo.new(0.35, Enum.EasingStyle.Quart, Enum.EasingDirection.Out)
}

function SettignsTab:Create(WindowTable)
    local screen = WindowTable.Content:FindFirstChild('screen')
    if not screen then return end
    
    local ExampleTab = Instance.new("ImageButton")
    ExampleTab.BorderSizePixel = 0
    ExampleTab.BackgroundTransparency = 1
    ExampleTab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ExampleTab.AnchorPoint = Vector2.new(0.5, 0.5)
    ExampleTab.Size = UDim2.new(1, 0, 1, 0)
    ExampleTab.LayoutOrder = 1
    ExampleTab.BorderColor3 = Color3.fromRGB(0, 0, 0)
    ExampleTab.Name = "ExampleTab"
    ExampleTab.Position = UDim2.new(0.5, 0, 0.5, 0)
    ExampleTab.Parent = screen

    local ExampleTabScroll = Instance.new("ScrollingFrame")
    ExampleTabScroll.BorderSizePixel = 0
    ExampleTabScroll.BackgroundTransparency = 1
    ExampleTabScroll.Size = UDim2.new(1, 0, 1, 0)
    ExampleTabScroll.Name = "Scroll"
    ExampleTabScroll.ScrollBarThickness = 0
    ExampleTabScroll.AutomaticCanvasSize = Enum.AutomaticSize.Y
    ExampleTabScroll.CanvasSize = UDim2.new(0, 0, 0, 0)
    ExampleTabScroll.Parent = ExampleTab
    
    local TabPadding = Instance.new("UIPadding")
    TabPadding.PaddingTop = UDim.new(0, 15)
    TabPadding.PaddingBottom = UDim.new(0, 15)
    TabPadding.PaddingLeft = UDim.new(0, 15)
    TabPadding.PaddingRight = UDim.new(0, 15)
    TabPadding.Parent = ExampleTabScroll
    
    local TabList = Instance.new("UIListLayout")
    TabList.Padding = UDim.new(0, 15)
    TabList.SortOrder = Enum.SortOrder.LayoutOrder
    TabList.Parent = ExampleTabScroll

    local Elements = {}
    
    function Elements:CreateColumns(parent)
        local Columns = Instance.new("Frame")
        Columns.BackgroundTransparency = 1
        Columns.Size = UDim2.new(1, 0, 0, 0)
        Columns.AutomaticSize = Enum.AutomaticSize.Y
        Columns.Parent = parent
        
        local ColList = Instance.new("UIListLayout")
        ColList.FillDirection = Enum.FillDirection.Horizontal
        ColList.Padding = UDim.new(0, 15)
        ColList.Parent = Columns
        
        local Left = Instance.new("Frame")
        Left.BackgroundTransparency = 1
        Left.Size = UDim2.new(0.5, -7, 0, 0)
        Left.AutomaticSize = Enum.AutomaticSize.Y
        Left.Parent = Columns
        
        local LeftList = Instance.new("UIListLayout")
        LeftList.Padding = UDim.new(0, 10)
        LeftList.Parent = Left
        
        local Right = Instance.new("Frame")
        Right.BackgroundTransparency = 1
        Right.Size = UDim2.new(0.5, -8, 0, 0)
        Right.AutomaticSize = Enum.AutomaticSize.Y
        Right.Parent = Columns
        
        local RightList = Instance.new("UIListLayout")
        RightList.Padding = UDim.new(0, 10)
        RightList.Parent = Right
        
        return Left, Right
    end

    function Elements:CreateSection(parent, titleText)
        local Section = Instance.new("Frame")
        Section.BackgroundTransparency = 1
        Section.Size = UDim2.new(1, 0, 0, 0)
        Section.AutomaticSize = Enum.AutomaticSize.Y
        Section.Parent = parent
        
        local UICorner = Instance.new("UICorner")
        UICorner.CornerRadius = UDim.new(0, 6)
        UICorner.Parent = Section
        
        local TopBtn = Instance.new("TextButton")
        TopBtn.BackgroundTransparency = 1
        TopBtn.Size = UDim2.new(1, 0, 0, 35)
        TopBtn.Text = ""
        TopBtn.Parent = Section
        
        local Title = Instance.new("TextLabel")
        Title.BackgroundTransparency = 1
        Title.Size = UDim2.new(1, -30, 1, 0)
        Title.Position = UDim2.new(0, 15, 0, 0)
        Title.Text = titleText
        Title.TextColor3 = Color3.fromRGB(255, 255, 255)
        Title.TextTransparency = 0.5
        Title.Font = Enum.Font.GothamMedium
        Title.TextSize = 14
        Title.TextXAlignment = Enum.TextXAlignment.Left
        Title.Parent = TopBtn
        
        local Icon = Instance.new("ImageLabel")
        Icon.BackgroundTransparency = 1
        Icon.AnchorPoint = Vector2.new(1, 0.5)
        Icon.Position = UDim2.new(1, -15, 0.5, 0)
        Icon.Size = UDim2.new(0, 16, 0, 16)
        Icon.Image = "rbxassetid://10002167683" -- Down arrow
        Icon.ImageColor3 = Color3.fromRGB(255, 255, 255)
        Icon.ImageTransparency = 0.5
        Icon.Parent = TopBtn
        
        local Content = Instance.new("Frame")
        Content.BackgroundTransparency = 1
        Content.Size = UDim2.new(1, 0, 0, 0)
        Content.AutomaticSize = Enum.AutomaticSize.Y
        Content.ClipsDescendants = true
        Content.Parent = Section
        
        local ContentPadding = Instance.new("UIPadding")
        ContentPadding.PaddingTop = UDim.new(0, 0)
        ContentPadding.PaddingBottom = UDim.new(0, 10)
        ContentPadding.PaddingLeft = UDim.new(0, 10)
        ContentPadding.PaddingRight = UDim.new(0, 10)
        ContentPadding.Parent = Content
        
        local ContentList = Instance.new("UIListLayout")
        ContentList.Padding = UDim.new(0, 6)
        ContentList.Parent = Content
        
        local open = true
        TopBtn.MouseButton1Click:Connect(function()
            open = not open
            TweenService:Create(Icon, Animations.Fast, {Rotation = open and 0 or -90}):Play()
            Content.Visible = open
        end)
        
        return Content
    end
    
    function Elements:CreateToggle(parent, titleText, callback)
        local ToggleFrame = Instance.new("Frame")
        ToggleFrame.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
        ToggleFrame.Size = UDim2.new(1, 0, 0, 35)
        ToggleFrame.Parent = parent
        
        local UICorner = Instance.new("UICorner")
        UICorner.CornerRadius = UDim.new(0, 4)
        UICorner.Parent = ToggleFrame
        
        local Title = Instance.new("TextLabel")
        Title.BackgroundTransparency = 1
        Title.Size = UDim2.new(1, -60, 1, 0)
        Title.Position = UDim2.new(0, 10, 0, 0)
        Title.Text = titleText
        Title.TextColor3 = Color3.fromRGB(255, 255, 255)
        Title.Font = Enum.Font.Gotham
        Title.TextSize = 13
        Title.TextXAlignment = Enum.TextXAlignment.Left
        Title.Parent = ToggleFrame
        
        local Switch = Instance.new("Frame")
        Switch.AnchorPoint = Vector2.new(1, 0.5)
        Switch.Position = UDim2.new(1, -10, 0.5, 0)
        Switch.Size = UDim2.new(0, 36, 0, 20)
        Switch.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
        Switch.Parent = ToggleFrame
        
        local SwitchCorner = Instance.new("UICorner")
        SwitchCorner.CornerRadius = UDim.new(1, 0)
        SwitchCorner.Parent = Switch
        
        local Knob = Instance.new("Frame")
        Knob.AnchorPoint = Vector2.new(0, 0.5)
        Knob.Position = UDim2.new(0, 2, 0.5, 0)
        Knob.Size = UDim2.new(0, 16, 0, 16)
        Knob.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Knob.Parent = Switch
        
        local KnobCorner = Instance.new("UICorner")
        KnobCorner.CornerRadius = UDim.new(1, 0)
        KnobCorner.Parent = Knob
        
        local Btn = Instance.new("TextButton")
        Btn.BackgroundTransparency = 1
        Btn.Size = UDim2.new(1, 0, 1, 0)
        Btn.Text = ""
        Btn.Parent = ToggleFrame
        
        local state = false
        Btn.MouseButton1Click:Connect(function()
            state = not state
            TweenService:Create(Knob, Animations.Fast, {Position = state and UDim2.new(1, -18, 0.5, 0) or UDim2.new(0, 2, 0.5, 0)}):Play()
            TweenService:Create(Switch, Animations.Fast, {BackgroundColor3 = state and Color3.fromRGB(255, 255, 255) or Color3.fromRGB(40, 40, 40)}):Play()
            TweenService:Create(Knob, Animations.Fast, {BackgroundColor3 = state and Color3.fromRGB(0, 0, 0) or Color3.fromRGB(255, 255, 255)}):Play()
            if callback then callback(state) end
        end)
    end
    
    function Elements:CreateSlider(parent, titleText, min, max, default, callback)
        local SliderFrame = Instance.new("Frame")
        SliderFrame.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
        SliderFrame.Size = UDim2.new(1, 0, 0, 50)
        SliderFrame.Parent = parent
        
        local UICorner = Instance.new("UICorner")
        UICorner.CornerRadius = UDim.new(0, 4)
        UICorner.Parent = SliderFrame
        
        local Title = Instance.new("TextLabel")
        Title.BackgroundTransparency = 1
        Title.Size = UDim2.new(1, -20, 0, 25)
        Title.Position = UDim2.new(0, 10, 0, 0)
        Title.Text = titleText
        Title.TextColor3 = Color3.fromRGB(255, 255, 255)
        Title.Font = Enum.Font.Gotham
        Title.TextSize = 13
        Title.TextXAlignment = Enum.TextXAlignment.Left
        Title.Parent = SliderFrame
        
        local ValueLabel = Instance.new("TextLabel")
        ValueLabel.BackgroundTransparency = 1
        ValueLabel.Size = UDim2.new(0, 50, 0, 25)
        ValueLabel.AnchorPoint = Vector2.new(1, 0)
        ValueLabel.Position = UDim2.new(1, -10, 0, 0)
        ValueLabel.Text = tostring(default)
        ValueLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        ValueLabel.TextTransparency = 0.5
        ValueLabel.Font = Enum.Font.Gotham
        ValueLabel.TextSize = 13
        ValueLabel.TextXAlignment = Enum.TextXAlignment.Right
        ValueLabel.Parent = SliderFrame
        
        local BarBG = Instance.new("Frame")
        BarBG.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
        BarBG.Size = UDim2.new(1, -20, 0, 6)
        BarBG.Position = UDim2.new(0, 10, 0, 33)
        BarBG.Parent = SliderFrame
        
        local BarCorner = Instance.new("UICorner")
        BarCorner.CornerRadius = UDim.new(1, 0)
        BarCorner.Parent = BarBG
        
        local BarFill = Instance.new("Frame")
        BarFill.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        local initialScale = (default - min) / (max - min)
        BarFill.Size = UDim2.new(initialScale, 0, 1, 0)
        BarFill.Parent = BarBG
        
        local FillCorner = Instance.new("UICorner")
        FillCorner.CornerRadius = UDim.new(1, 0)
        FillCorner.Parent = BarFill
        
        local Btn = Instance.new("TextButton")
        Btn.BackgroundTransparency = 1
        Btn.Size = UDim2.new(1, 0, 1, 0)
        Btn.Text = ""
        Btn.Parent = SliderFrame
        
        local dragging = false
        Btn.InputBegan:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                dragging = true
            end
        end)
        
        UserInputService.InputEnded:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                dragging = false
            end
        end)
        
        UserInputService.InputChanged:Connect(function(input)
            if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
                local mousePos = UserInputService:GetMouseLocation().X
                local barPos = BarBG.AbsolutePosition.X
                local barSize = BarBG.AbsoluteSize.X
                local scale = math.clamp((mousePos - barPos) / barSize, 0, 1)
                
                local value = math.floor(min + ((max - min) * scale))
                ValueLabel.Text = tostring(value)
                TweenService:Create(BarFill, Animations.Fast, {Size = UDim2.new(scale, 0, 1, 0)}):Play()
                
                if callback then callback(value) end
            end
        end)
    end
    
    function Elements:CreateDropdown(parent, titleText, options, callback)
        local DropdownFrame = Instance.new("Frame")
        DropdownFrame.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
        DropdownFrame.Size = UDim2.new(1, 0, 0, 35)
        DropdownFrame.ClipsDescendants = true
        DropdownFrame.Parent = parent
        
        local UICorner = Instance.new("UICorner")
        UICorner.CornerRadius = UDim.new(0, 4)
        UICorner.Parent = DropdownFrame
        
        local TopBtn = Instance.new("TextButton")
        TopBtn.BackgroundTransparency = 1
        TopBtn.Size = UDim2.new(1, 0, 0, 35)
        TopBtn.Text = ""
        TopBtn.Parent = DropdownFrame
        
        local Title = Instance.new("TextLabel")
        Title.BackgroundTransparency = 1
        Title.Size = UDim2.new(1, -40, 1, 0)
        Title.Position = UDim2.new(0, 10, 0, 0)
        Title.Text = titleText
        Title.TextColor3 = Color3.fromRGB(255, 255, 255)
        Title.Font = Enum.Font.Gotham
        Title.TextSize = 13
        Title.TextXAlignment = Enum.TextXAlignment.Left
        Title.Parent = TopBtn
        
        local Icon = Instance.new("ImageLabel")
        Icon.BackgroundTransparency = 1
        Icon.AnchorPoint = Vector2.new(1, 0.5)
        Icon.Position = UDim2.new(1, -10, 0.5, 0)
        Icon.Size = UDim2.new(0, 14, 0, 14)
        Icon.Image = "rbxassetid://10002167683"
        Icon.ImageColor3 = Color3.fromRGB(255, 255, 255)
        Icon.ImageTransparency = 0.5
        Icon.Parent = TopBtn
        
        local OptionsContainer = Instance.new("Frame")
        OptionsContainer.BackgroundTransparency = 1
        OptionsContainer.Size = UDim2.new(1, 0, 0, 0)
        OptionsContainer.Position = UDim2.new(0, 0, 0, 35)
        OptionsContainer.Parent = DropdownFrame
        
        local List = Instance.new("UIListLayout")
        List.Padding = UDim.new(0, 2)
        List.Parent = OptionsContainer
        
        local open = false
        TopBtn.MouseButton1Click:Connect(function()
            open = not open
            local targetHeight = open and (35 + (#options * 30) + 5) or 35
            TweenService:Create(DropdownFrame, Animations.Smooth, {Size = UDim2.new(1, 0, 0, targetHeight)}):Play()
            TweenService:Create(Icon, Animations.Fast, {Rotation = open and 180 or 0}):Play()
        end)
        
        for _, opt in ipairs(options) do
            local OptBtn = Instance.new("TextButton")
            OptBtn.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
            OptBtn.Size = UDim2.new(1, -20, 0, 28)
            OptBtn.Position = UDim2.new(0, 10, 0, 0)
            OptBtn.Text = opt
            OptBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
            OptBtn.TextTransparency = 0.4
            OptBtn.Font = Enum.Font.Gotham
            OptBtn.TextSize = 13
            OptBtn.Parent = OptionsContainer
            
            local OptCorner = Instance.new("UICorner")
            OptCorner.CornerRadius = UDim.new(0, 4)
            OptCorner.Parent = OptBtn
            
            OptBtn.MouseButton1Click:Connect(function()
                Title.Text = titleText .. ": " .. opt
                open = false
                TweenService:Create(DropdownFrame, Animations.Smooth, {Size = UDim2.new(1, 0, 0, 35)}):Play()
                TweenService:Create(Icon, Animations.Fast, {Rotation = 0}):Play()
                if callback then callback(opt) end
            end)
        end
    end
    
    function Elements:CreateInput(parent, titleText, placeholder, callback)
        local InputFrame = Instance.new("Frame")
        InputFrame.BackgroundColor3 = Color3.fromRGB(23, 23, 23)
        InputFrame.Size = UDim2.new(1, 0, 0, 35)
        InputFrame.Parent = parent
        
        local UICorner = Instance.new("UICorner")
        UICorner.CornerRadius = UDim.new(0, 4)
        UICorner.Parent = InputFrame
        
        local Title = Instance.new("TextLabel")
        Title.BackgroundTransparency = 1
        Title.Size = UDim2.new(0.5, -10, 1, 0)
        Title.Position = UDim2.new(0, 10, 0, 0)
        Title.Text = titleText
        Title.TextColor3 = Color3.fromRGB(255, 255, 255)
        Title.Font = Enum.Font.Gotham
        Title.TextSize = 13
        Title.TextXAlignment = Enum.TextXAlignment.Left
        Title.Parent = InputFrame
        
        local TextBox = Instance.new("TextBox")
        TextBox.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
        TextBox.Size = UDim2.new(0.5, -10, 0, 25)
        TextBox.AnchorPoint = Vector2.new(1, 0.5)
        TextBox.Position = UDim2.new(1, -5, 0.5, 0)
        TextBox.Text = ""
        TextBox.PlaceholderText = placeholder
        TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextBox.PlaceholderColor3 = Color3.fromRGB(150, 150, 150)
        TextBox.Font = Enum.Font.Gotham
        TextBox.TextSize = 12
        TextBox.Parent = InputFrame
        
        local BoxCorner = Instance.new("UICorner")
        BoxCorner.CornerRadius = UDim.new(0, 4)
        BoxCorner.Parent = TextBox
        
        TextBox.FocusLost:Connect(function()
            if callback then callback(TextBox.Text) end
        end)
    end
    
    function Elements:CreateSearchBar(parent, placeholder, callback)
        local SearchFrame = Instance.new("Frame")
        SearchFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
        SearchFrame.Size = UDim2.new(1, 0, 0, 35)
        SearchFrame.Parent = parent
        
        local UICorner = Instance.new("UICorner")
        UICorner.CornerRadius = UDim.new(0, 6)
        UICorner.Parent = SearchFrame
        
        local Icon = Instance.new("ImageLabel")
        Icon.BackgroundTransparency = 1
        Icon.AnchorPoint = Vector2.new(0, 0.5)
        Icon.Position = UDim2.new(0, 10, 0.5, 0)
        Icon.Size = UDim2.new(0, 16, 0, 16)
        Icon.Image = "rbxassetid://10266014496" -- Search icon
        Icon.ImageColor3 = Color3.fromRGB(255, 255, 255)
        Icon.ImageTransparency = 0.5
        Icon.Parent = SearchFrame
        
        local TextBox = Instance.new("TextBox")
        TextBox.BackgroundTransparency = 1
        TextBox.Size = UDim2.new(1, -40, 1, 0)
        TextBox.Position = UDim2.new(0, 35, 0, 0)
        TextBox.Text = ""
        TextBox.PlaceholderText = placeholder
        TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextBox.PlaceholderColor3 = Color3.fromRGB(150, 150, 150)
        TextBox.Font = Enum.Font.Gotham
        TextBox.TextSize = 13
        TextBox.TextXAlignment = Enum.TextXAlignment.Left
        TextBox.Parent = SearchFrame
        
        TextBox.Changed:Connect(function(prop)
            if prop == "Text" and callback then
                callback(TextBox.Text)
            end
        end)
    end

    -- Create Demo UI Structure
    Elements:CreateSearchBar(ExampleTabScroll, "Search settings...", function(text)
        print("Searching for: ", text)
    end)
    
    local LeftCol, RightCol = Elements:CreateColumns(ExampleTabScroll)
    
    local MainSection = Elements:CreateSection(LeftCol, "Main Settings")
    Elements:CreateToggle(MainSection, "Auto Farm", function(state) print("Auto farm: ", state) end)
    Elements:CreateToggle(MainSection, "Auto Attack", function(state) print("Auto Attack: ", state) end)
    Elements:CreateSlider(MainSection, "Farm Speed", 1, 100, 50, function(val) print("Speed: ", val) end)
    
    local CombatSection = Elements:CreateSection(LeftCol, "Combat Aimbot")
    Elements:CreateToggle(CombatSection, "Enable Aimbot", function(state) print("Aimbot: ", state) end)
    Elements:CreateDropdown(CombatSection, "Target Part", {"Head", "Torso", "HumanoidRootPart"}, function(sel) print("Target: ", sel) end)
    
    local VisualSection = Elements:CreateSection(RightCol, "Visuals ESP")
    Elements:CreateToggle(VisualSection, "Player ESP", function(state) print("ESP: ", state) end)
    Elements:CreateToggle(VisualSection, "Box ESP", function(state) print("Box ESP: ", state) end)
    Elements:CreateSlider(VisualSection, "ESP Distance", 100, 5000, 1000, function(val) print("Dist: ", val) end)
    
    local MiscSection = Elements:CreateSection(RightCol, "Miscellaneous")
    Elements:CreateInput(MiscSection, "Custom Walkspeed", "Number", function(val) print("Speed set to: ", val) end)
    Elements:CreateInput(MiscSection, "Teleport To Player", "Username", function(val) print("TP to: ", val) end)
    Elements:CreateDropdown(MiscSection, "Theme Selector", {"Dark Mode", "Light Mode", "Midnight"}, function(sel) print("Theme: ", sel) end)

    return ExampleTab
end

return SettignsTab