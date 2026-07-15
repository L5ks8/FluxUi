local TweenService = game:GetService("TweenService")

local Notification = {}

function Notification:Create(WindowTable, Data)
    local titleText = Data.Title or "Notification"
    local descText = Data.Description or "Description"
    local iconId = Data.Icon or "https://www.roblox.com/headshot-thumbnail/image?userId=3765399271&width=420&height=420&format=png"
    local duration = Data.Duration or 5

    local screenGui = WindowTable.Instance
    
    local notificationsFrame = screenGui:FindFirstChild("Notifications")
    if not notificationsFrame then
        notificationsFrame = Instance.new("Frame")
        notificationsFrame.Name = "Notifications"
        notificationsFrame.ZIndex = 3
        notificationsFrame.BorderSizePixel = 0
        notificationsFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        notificationsFrame.AnchorPoint = Vector2.new(0.5, 0.5)
        notificationsFrame.Size = UDim2.new(1, 0, 1, 0)
        notificationsFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
        notificationsFrame.BackgroundTransparency = 1
        notificationsFrame.Parent = screenGui

        local layout = Instance.new("UIListLayout")
        layout.Name = "Layout"
        layout.HorizontalAlignment = Enum.HorizontalAlignment.Center
        layout.SortOrder = Enum.SortOrder.LayoutOrder
        layout.Parent = notificationsFrame

        local padding = Instance.new("UIPadding")
        padding.Name = "Padding"
        padding.PaddingTop = UDim.new(0, 12)
        padding.Parent = notificationsFrame
    end

    local notificationBtn = Instance.new("ImageButton")
    notificationBtn.Name = "Notification"
    notificationBtn.BorderSizePixel = 0
    notificationBtn.AutoButtonColor = false
    notificationBtn.ImageTransparency = 1
    notificationBtn.BackgroundTransparency = 1
    notificationBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    notificationBtn.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"
    notificationBtn.AutomaticSize = Enum.AutomaticSize.XY
    notificationBtn.Parent = notificationsFrame

    local notifPadding = Instance.new("UIPadding")
    notifPadding.Name = "Padding"
    notifPadding.PaddingTop = UDim.new(0, 5)
    notifPadding.PaddingBottom = UDim.new(0, 5)
    notifPadding.Parent = notificationBtn

    local banner = Instance.new("CanvasGroup")
    banner.Name = "Banner"
    banner.BorderSizePixel = 0
    banner.BackgroundColor3 = Color3.fromRGB(37, 37, 37)
    banner.AutomaticSize = Enum.AutomaticSize.XY
    banner.Parent = notificationBtn

    local bannerCorner = Instance.new("UICorner")
    bannerCorner.Name = "Corner"
    bannerCorner.CornerRadius = UDim.new(0, 20)
    bannerCorner.Parent = banner

    local bannerList = Instance.new("UIListLayout")
    bannerList.Name = "List"
    bannerList.HorizontalAlignment = Enum.HorizontalAlignment.Center
    bannerList.Padding = UDim.new(0, 14)
    bannerList.VerticalAlignment = Enum.VerticalAlignment.Center
    bannerList.SortOrder = Enum.SortOrder.LayoutOrder
    bannerList.FillDirection = Enum.FillDirection.Horizontal
    bannerList.Parent = banner

    banner.AnchorPoint = Vector2.new(0, 0)
    banner.Position = UDim2.fromOffset(0, -25)
    banner.GroupTransparency = 1
    
    notifPadding.PaddingTop = UDim.new(0, 0)
    notifPadding.PaddingBottom = UDim.new(0, 0)

    local bannerPadding = Instance.new("UIPadding")
    bannerPadding.Name = "Padding"
    bannerPadding.PaddingTop = UDim.new(0, 18)
    bannerPadding.PaddingRight = UDim.new(0, 25)
    bannerPadding.PaddingLeft = UDim.new(0, 25)
    bannerPadding.PaddingBottom = UDim.new(0, 18)
    bannerPadding.Parent = banner

    local holder = Instance.new("ImageLabel")
    holder.Name = "holder"
    holder.BorderSizePixel = 0
    holder.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    holder.ImageTransparency = 1
    holder.Size = UDim2.new(0, 32, 0, 32)
    holder.BackgroundTransparency = 0.8
    holder.LayoutOrder = 1
    holder.Parent = banner

    local holderCorner = Instance.new("UICorner")
    holderCorner.Name = "Corner"
    holderCorner.CornerRadius = UDim.new(0, 6)
    holderCorner.Parent = holder

    local icon = Instance.new("ImageLabel")
    icon.Name = "icon"
    icon.BorderSizePixel = 0
    icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    icon.AnchorPoint = Vector2.new(0.5, 0.5)
    icon.Image = iconId
    icon.Size = UDim2.new(0, 20, 0, 20)
    icon.BackgroundTransparency = 1
    icon.Position = UDim2.new(0.5, 0, 0.5, 0)
    icon.Parent = holder

    local information = Instance.new("Frame")
    information.Name = "information"
    information.BorderSizePixel = 0
    information.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    information.AutomaticSize = Enum.AutomaticSize.XY
    information.LayoutOrder = 2
    information.BackgroundTransparency = 1
    information.Parent = banner

    local infoList = Instance.new("UIListLayout")
    infoList.Name = "list"
    infoList.Padding = UDim.new(0, 4)
    infoList.VerticalAlignment = Enum.VerticalAlignment.Center
    infoList.SortOrder = Enum.SortOrder.LayoutOrder
    infoList.Parent = information

    local title = Instance.new("TextLabel")
    title.Name = "title"
    title.TextWrapped = true
    title.BorderSizePixel = 0
    title.TextSize = 15
    title.TextXAlignment = Enum.TextXAlignment.Left
    title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    title.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    title.TextColor3 = Color3.fromRGB(255, 255, 255)
    title.BackgroundTransparency = 1
    title.Text = titleText
    title.LayoutOrder = 1
    title.AutomaticSize = Enum.AutomaticSize.XY
    title.Parent = information

    local description = Instance.new("TextLabel")
    description.Name = "description"
    description.TextWrapped = true
    description.BorderSizePixel = 0
    description.TextSize = 12
    description.TextXAlignment = Enum.TextXAlignment.Left
    description.TextTransparency = 0.5
    description.TextYAlignment = Enum.TextYAlignment.Top
    description.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    description.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
    description.TextColor3 = Color3.fromRGB(255, 255, 255)
    description.BackgroundTransparency = 1
    description.Text = descText
    description.LayoutOrder = 2
    description.AutomaticSize = Enum.AutomaticSize.XY
    description.Parent = information

    local smoothTween = TweenInfo.new(0.4, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)

    TweenService:Create(banner, smoothTween, { Position = UDim2.fromOffset(0, 0), GroupTransparency = 0 }):Play()
    TweenService:Create(notifPadding, smoothTween, { PaddingTop = UDim.new(0, 5), PaddingBottom = UDim.new(0, 5) }):Play()

    local closed = false
    local function closeNotification()
        if closed then return end
        closed = true
        
        notificationBtn.Interactable = false

        TweenService:Create(banner, smoothTween, { Position = UDim2.fromOffset(0, -15), GroupTransparency = 1 }):Play()
        local paddingTween = TweenService:Create(notifPadding, smoothTween, { PaddingTop = UDim.new(0, 0), PaddingBottom = UDim.new(0, 0) })
        paddingTween:Play()

        paddingTween.Completed:Wait()
        notificationBtn:Destroy()
    end

    notificationBtn.MouseButton1Click:Connect(closeNotification)

    task.delay(duration, closeNotification)
    
    return notificationBtn
end

return Notification
