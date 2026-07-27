return function(parent)
    local search = Instance.new("ImageButton")
    search.BorderSizePixel = 0
    search.SliceCenter = Rect.new(512, 512, 512, 512)
    search.ScaleType = Enum.ScaleType.Crop
    search.AutoButtonColor = false
    search.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
    search.ImageColor3 = Color3.fromRGB(28, 28, 28)
    search.Size = UDim2.new(1, 0, 0, 35)
    search.LayoutOrder = -999
    search.BorderColor3 = Color3.fromRGB(0, 0, 0)
    search.Name = "SearchBar"
    search.Parent = parent

    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(1, 0)
    corner.Parent = search

    local stroke = Instance.new("UIStroke")
    stroke.Color = Color3.fromRGB(255, 255, 255)
    stroke.Parent = search

    local gradient = Instance.new("UIGradient")
    gradient.Rotation = -90
    gradient.Color = ColorSequence.new{
        ColorSequenceKeypoint.new(0.000, Color3.fromRGB(39, 39, 39)),
        ColorSequenceKeypoint.new(1.000, Color3.fromRGB(21, 21, 21))
    }
    gradient.Parent = stroke

    local list = Instance.new("UIListLayout")
    list.Padding = UDim.new(0, 5)
    list.VerticalAlignment = Enum.VerticalAlignment.Center
    list.SortOrder = Enum.SortOrder.LayoutOrder
    list.FillDirection = Enum.FillDirection.Horizontal
    list.Parent = search

    local pad = Instance.new("UIPadding")
    pad.PaddingRight = UDim.new(0, 20)
    pad.PaddingLeft = UDim.new(0, 15)
    pad.Parent = search

    local icon2 = Instance.new("ImageLabel")
    icon2.BorderSizePixel = 0
    icon2.ScaleType = Enum.ScaleType.Fit
    icon2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    icon2.ImageColor3 = Color3.fromRGB(150, 150, 150)
    icon2.Image = "rbxassetid://11293977875"
    icon2.Size = UDim2.new(0, 18, 0, 18)
    icon2.BackgroundTransparency = 1
    icon2.LayoutOrder = 1
    icon2.Parent = search

    local textbox = Instance.new("TextBox")
    textbox.TextXAlignment = Enum.TextXAlignment.Left
    textbox.PlaceholderColor3 = Color3.fromRGB(120, 120, 120)
    textbox.BorderSizePixel = 0
    textbox.TextSize = 14
    textbox.TextColor3 = Color3.fromRGB(255, 255, 255)
    textbox.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
    textbox.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    textbox.PlaceholderText = "Search..."
    textbox.Size = UDim2.new(1, -25, 1, 0)
    textbox.Text = ""
    textbox.LayoutOrder = 2
    textbox.BackgroundTransparency = 1
    textbox.Parent = search

    textbox:GetPropertyChangedSignal("Text"):Connect(function()
        local searchText = string.lower(textbox.Text)
        
        local function searchContainer(container)
            local anyVisible = false
            for _, element in ipairs(container:GetChildren()) do
                if element:IsA("Frame") then
                    local match = false
                    if searchText == "" then
                        match = true
                    else
                        for _, desc in ipairs(element:GetDescendants()) do
                            if desc:IsA("TextLabel") or desc:IsA("TextButton") then
                                if string.find(string.lower(desc.Text), searchText) then
                                    match = true
                                    break
                                end
                            end
                        end
                    end
                    element.Visible = match
                    if match then anyVisible = true end
                end
            end
            return anyVisible
        end

        for _, sectionOrCol in ipairs(parent:GetChildren()) do
            if sectionOrCol:IsA("Frame") and sectionOrCol.Name == "Section" then
                local container = sectionOrCol:FindFirstChild("container")
                if container then
                    sectionOrCol.Visible = searchContainer(container)
                end
            elseif sectionOrCol:IsA("Frame") and sectionOrCol.Name == "Columns" then
                local anyColVisible = false
                for _, col in ipairs(sectionOrCol:GetChildren()) do
                    if col:IsA("Frame") and (col.Name == "Left" or col.Name == "Right") then
                        for _, section in ipairs(col:GetChildren()) do
                            if section:IsA("Frame") and section.Name == "Section" then
                                local container = section:FindFirstChild("container")
                                if container then
                                    local hasVis = searchContainer(container)
                                    section.Visible = hasVis
                                    if hasVis then anyColVisible = true end
                                end
                            end
                        end
                    end
                end
                sectionOrCol.Visible = anyColVisible
            end
        end
    end)
    
    return search
end
