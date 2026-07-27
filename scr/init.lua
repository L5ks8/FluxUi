local Source = "https://raw.githubusercontent.com/L5ks8/FluxUI/main/scr/"
local CacheBuster = "?t=" .. tostring(os.time())

_G.FluxUiIcons = loadstring(game:HttpGet(Source .. "Assets/Icons.lua" .. CacheBuster))()

local Mainframe = loadstring(game:HttpGet(Source .. "Components/Mainframe.lua" .. CacheBuster))()
local Topbar = loadstring(game:HttpGet(Source .. "Components/Topbar.lua" .. CacheBuster))()
local Debugbar = loadstring(game:HttpGet(Source .. "Components/Debugbar.lua" .. CacheBuster))()
local Notification = loadstring(game:HttpGet(Source .. "Components/Notification.lua" .. CacheBuster))()
local Controller = loadstring(game:HttpGet(Source .. "Core/Controller.lua" .. CacheBuster))()
local HomeTabController = loadstring(game:HttpGet(Source .. "Core/HomeTabController.lua" .. CacheBuster))()
local SettignsController = loadstring(game:HttpGet(Source .. "Core/SettignsController.lua" .. CacheBuster))()

local Maintab = loadstring(game:HttpGet(Source .. "Components/Maintab.lua" .. CacheBuster))()
local SettignsTab = loadstring(game:HttpGet(Source .. "Components/SettignsTab.lua" .. CacheBuster))()

local Elements = {
    Button = loadstring(game:HttpGet(Source .. "Elements/Button.lua" .. CacheBuster))(),
    Toggle = loadstring(game:HttpGet(Source .. "Elements/Toggle.lua" .. CacheBuster))(),
    Slider = loadstring(game:HttpGet(Source .. "Elements/Slider.lua" .. CacheBuster))(),
    Dropdown = loadstring(game:HttpGet(Source .. "Elements/Dropdown.lua" .. CacheBuster))(),
    SearchBar = loadstring(game:HttpGet(Source .. "Elements/SearchBar.lua" .. CacheBuster))(),
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
    if SettignsTab then
        SettignsTab:Create(WindowTable)
        SettignsController.Init(WindowTable)
    end
    
    Controller.InitTabHandler(WindowTable)
    Controller.InitUserProfile(WindowTable)
    Controller.InitDragAndResize(WindowTable)
    
    local Animations = {
        Fast = TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out),
        Smooth = TweenInfo.new(0.4, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
    }

    if WindowTable.Panel and WindowTable.Panel:FindFirstChild("topbar") then
        Controller.InitTopbar(WindowTable.Panel.topbar, WindowTable, game:GetService("TweenService"), Animations)
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
        padding.PaddingLeft = UDim.new(0, 20)
        padding.PaddingRight = UDim.new(0, 20)
        padding.Parent = newPage

        if HasSearchBar and self.Elements.SearchBar then
            self.Elements.SearchBar(newPage)
        end

        Controller.InitTabHandler(self)

        return newPage
    end

    return WindowTable
end

return Library
