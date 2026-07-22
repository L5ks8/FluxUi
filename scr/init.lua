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
    WindowTable.Elements = Elements

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

    return WindowTable
end

return Library
