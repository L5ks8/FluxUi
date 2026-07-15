local Source = "https://raw.githubusercontent.com/L5ks8/FluxUI/main/scr/"

_G.FluxUiIcons = loadstring(game:HttpGet(Source .. "Assets/Icons.lua"))()

local Mainframe = loadstring(game:HttpGet(Source .. "Components/Mainframe.lua"))()
local Topbar = loadstring(game:HttpGet(Source .. "Components/Topbar.lua"))()
local Debugbar = loadstring(game:HttpGet(Source .. "Components/Debugbar.lua"))()
local Notification = loadstring(game:HttpGet(Source .. "Components/Notification.lua"))()

local Elements = {
    Button = loadstring(game:HttpGet(Source .. "Elements/Button.lua"))(),
    Toggle = loadstring(game:HttpGet(Source .. "Elements/Toggle.lua"))(),
    Slider = loadstring(game:HttpGet(Source .. "Elements/Slider.lua"))(),
    Dropdown = loadstring(game:HttpGet(Source .. "Elements/Dropdown.lua"))(),
}

_G.FluxUiDebugbar = Debugbar 
_G.FluxUiTopbar = Topbar
_G.FluxUiNotification = Notification

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

    function WindowTable:CreateButton(Data)
        return self.Elements.Button:Create(self, Data)
    end

    function WindowTable:CreateToggle(Data)
        return self.Elements.Toggle:Create(self, Data)
    end

    function WindowTable:CreateSlider(Data)
        return self.Elements.Slider:Create(self, Data)
    end

    function WindowTable:CreateDropdown(Data)
        return self.Elements.Dropdown:Create(self, Data)
    end

    function WindowTable:Notify(Data)
        return self.Notification:Create(self, Data)
    end

    return WindowTable
end

return Library
