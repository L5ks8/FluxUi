local Mainframe = {}

function Mainframe:Create()
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Name = "FluxUI"

    local Main = Instance.new("CanvasGroup")
    Main.Size = UDim2.fromOffset(700,465)
    Main.Position = UDim2.fromScale(.5,.5)
    Main.AnchorPoint = Vector2.new(.5,.5)
    Main.Parent = ScreenGui

    local Panel = Instance.new("Frame")
    Panel.BackgroundTransparency = 1
    Panel.Size = UDim2.fromScale(1,1)
    Panel.Parent = Main

    local Content = Instance.new("Frame")
    Content.Name = "Content"
    Content.Parent = Panel

    return {
        Gui = ScreenGui,
        Main = Main,
        Panel = Panel,
        Content = Content
    }
end

return Mainframe