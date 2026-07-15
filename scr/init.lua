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

local Library = {}
Library.Version = "1.0.0"

function Library:CreateWindow(Settings)
    Settings = Settings or {}

    local Window = Mainframe:Create(Settings)

    Window.Debugbar = Debugbar
    Window.Notification = Notification
    Window.Elements = Elements

    Topbar:Init(Window)

    function Window:CreateButton(Data)
        return self.Elements.Button:Create(self, Data)
    end

    function Window:CreateToggle(Data)
        return self.Elements.Toggle:Create(self, Data)
    end

    function Window:CreateSlider(Data)
        return self.Elements.Slider:Create(self, Data)
    end

    function Window:CreateDropdown(Data)
        return self.Elements.Dropdown:Create(self, Data)
    end

    function Window:Notify(Data)
        return self.Notification:Create(self, Data)
    end

    return Window
end

return Library
