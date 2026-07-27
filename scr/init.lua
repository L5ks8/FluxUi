local Source = "https://raw.githubusercontent.com/L5ks8/FluxUI/main/scr/"

_G.FluxUiIcons = loadstring(game:HttpGet(Source .. "Assets/Icons.lua"))()

local Mainframe = loadstring(game:HttpGet(Source .. "Components/Mainframe.lua"))()
local Topbar = loadstring(game:HttpGet(Source .. "Components/Topbar.lua"))()
local Debugbar = loadstring(game:HttpGet(Source .. "Components/Debugbar.lua"))()
local Notification = loadstring(game:HttpGet(Source .. "Components/Notification.lua"))()
local Controller = loadstring(game:HttpGet(Source .. "Core/Controller.lua"))()
local HomeTabController = loadstring(game:HttpGet(Source .. "Core/HomeTabController.lua"))()

local Maintab = loadstring(game:HttpGet(Source .. "Components/Maintab.lua"))()
local SettignsTab = loadstring(game:HttpGet(Source .. "Components/SettignsTab.lua"))()

local Elements = {
    Button = loadstring(game:HttpGet(Source .. "Elements/Button.lua"))(),
    Toggle = loadstring(game:HttpGet(Source .. "Elements/Toggle.lua"))(),
    Slider = loadstring(game:HttpGet(Source .. "Elements/Slider.lua"))(),
    Dropdown = loadstring(game:HttpGet(Source .. "Elements/Dropdown.lua"))(),
}

_G.FluxUiDebugbar = Debugbar 
_G.FluxUiTopbar = Topbar
_G.FluxUiNotification = Notification
_G.FluxUiMaintab = Maintab
_G.FluxUiSettignsTab = SettignsTab

local Library = {}
Library.Version = "1.0.0"

function Library:CreateWindow(Settings)
    Settings = Settings or {}

    local WindowTable = Mainframe:Create(Settings)

    WindowTable.Debugbar = Debugbar
    WindowTable.Topbar = Topbar
    WindowTable.Notification = Notification
    
    for k, v in pairs(Elements) do
        WindowTable.Elements[k] = v
    end

    Topbar:Init(WindowTable)
    Controller.InitTabHandler(WindowTable)
    Controller.InitUserProfile(WindowTable)
    Controller.InitDragAndResize(WindowTable)
    
    local Animations = {
        Fast = TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
        Smooth = TweenInfo.new(0.4, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
    }

    if WindowTable.Panel and WindowTable.Panel:FindFirstChild("topbar") then
        Controller.InitTopbar(WindowTable.Panel.topbar, WindowTable.Main, game:GetService("TweenService"), Animations)
    end

    if WindowTable.Panel and WindowTable.Panel:FindFirstChild("debug") then
        Controller.InitDebugbar(WindowTable.Panel.debug)
    end

    local screen = WindowTable.Content and WindowTable.Content:FindFirstChild("screen")
    local homeTab = screen and screen:FindFirstChild("home")
    if homeTab and HomeTabController then
        HomeTabController.Init(homeTab)
    end



    function WindowTable:Notify(Data)
        return self.Notification:Create(self, Data)
    end

    function WindowTable:CreateTab(Name, Icon, HasSearchBar)
        local templateBtn = nil
        for _, v in ipairs(self.Tabs:GetDescendants()) do
            if v.Name == "home" and v:IsA("ImageButton") then
                templateBtn = v
                break
            end
        end

        local newBtn = templateBtn:Clone()
        newBtn.Name = Name
        if newBtn:FindFirstChild("label") then
            newBtn.label.Text = Name
        end
        if newBtn:FindFirstChild("holder") and newBtn.holder:FindFirstChild("icon") then
            newBtn.holder.icon.Image = Icon or "rbxassetid://94685968948870"
        end
        newBtn.BackgroundTransparency = 1
        newBtn.Parent = templateBtn.Parent

        local newPage = Instance.new("ScrollingFrame")
        newPage.Name = Name
        newPage.Size = UDim2.new(1, 0, 1, 0)
        newPage.BackgroundTransparency = 1
        newPage.ScrollBarThickness = 0
        newPage.AutomaticCanvasSize = Enum.AutomaticSize.Y
        newPage.Parent = self.Content:FindFirstChild("screen")

        local listLayout = Instance.new("UIListLayout")
        listLayout.Padding = UDim.new(0, 10)
        listLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
        listLayout.SortOrder = Enum.SortOrder.LayoutOrder
        listLayout.Parent = newPage

        local padding = Instance.new("UIPadding")
        padding.PaddingTop = UDim.new(0, 20)
        padding.PaddingBottom = UDim.new(0, 20)
        padding.Parent = newPage

        if HasSearchBar then
            local search = Instance.new("ImageButton")
            search.BorderSizePixel = 0
            search.SliceCenter = Rect.new(512, 512, 512, 512)
            search.ScaleType = Enum.ScaleType.Crop
            search.AutoButtonColor = false
            search.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
            search.ImageColor3 = Color3.fromRGB(28, 28, 28)
            search.Size = UDim2.new(1, -20, 0, 35)
            search.LayoutOrder = -999
            search.BorderColor3 = Color3.fromRGB(0, 0, 0)
            search.Name = "SearchBar"
            search.Parent = newPage

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

                for _, sectionOrCol in ipairs(newPage:GetChildren()) do
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
        end

        Controller.InitTabHandler(self)

        return newPage
    end

    return WindowTable
end

return Library
