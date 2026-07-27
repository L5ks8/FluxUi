local function CreateSettings(WindowTable)
    local UI = {}
    local CollectionService = game:GetService("CollectionService")
    local ScreenGui = WindowTable.Content:FindFirstChild("screen") or WindowTable.Content

    UI.settings = Instance.new("Frame")
    UI.settings.Parent = ScreenGui
    UI.settings.BorderSizePixel = 0
    UI.settings.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    UI.settings.AnchorPoint = Vector2.new(0.5, 0.5)
    UI.settings.ClipsDescendants = true
    UI.settings.Size = UDim2.new(1, 0, 1, 0)
    UI.settings.Position = UDim2.new(0.5, 0, 0.5, 0)
    UI.settings.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.settings.Name = "settings"
    UI.settings.LayoutOrder = 9
    UI.settings.BackgroundTransparency = 0

    UI.selection = Instance.new("ScrollingFrame")
    UI.selection.Active = true
    UI.selection.ScrollingDirection = Enum.ScrollingDirection.Y
    UI.selection.ZIndex = 2
    UI.selection.BorderSizePixel = 0
    UI.selection.CanvasSize = UDim2.new(0, 0, 0, 0)
    UI.selection.Name = "selection"
    UI.selection.ScrollBarImageTransparency = 1
    UI.selection.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.selection.AnchorPoint = Vector2.new(1, 0.5)
    UI.selection.AutomaticCanvasSize = Enum.AutomaticSize.Y
    UI.selection.Size = UDim2.new(1, 0, 1, 0)
    UI.selection.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
    UI.selection.Position = UDim2.new(1, 0, 0.5, 0)
    UI.selection.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.selection.ScrollBarThickness = 0
    UI.selection.LayoutOrder = 1
    UI.selection.BackgroundTransparency = 1
    UI.selection.Parent = UI.settings

    UI.selection_Layout = Instance.new("UIListLayout")
    UI.selection_Layout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UI.selection_Layout.Padding = UDim.new(0, 6)
    UI.selection_Layout.SortOrder = Enum.SortOrder.LayoutOrder
    UI.selection_Layout.Name = "Layout"
    UI.selection_Layout.Parent = UI.selection

    UI.padding = Instance.new("UIPadding")
    UI.padding.PaddingTop = UDim.new(0, 12)
    UI.padding.PaddingRight = UDim.new(0, 16)
    UI.padding.Name = "padding"
    UI.padding.PaddingLeft = UDim.new(0, 16)
    UI.padding.PaddingBottom = UDim.new(0, 12)
    UI.padding.Parent = UI.selection

    UI.item = Instance.new("ImageButton")
    UI.item.BorderSizePixel = 0
    UI.item.AutoButtonColor = false
    UI.item.ImageTransparency = 1
    UI.item.BackgroundTransparency = 0.4
    UI.item.BackgroundColor3 = Color3.fromRGB(21, 21, 21)
    UI.item.Size = UDim2.new(1, 0, 0, 75)
    UI.item.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.item.Name = "item"
    UI.item.Position = UDim2.new(0, 0, 0.76415, 0)
    UI.item.Parent = UI.selection
    CollectionService:AddTag(UI.item, "OrbitSettingNavigationButton")

    UI.item_Padding = Instance.new("UIPadding")
    UI.item_Padding.PaddingTop = UDim.new(0, 15)
    UI.item_Padding.PaddingRight = UDim.new(0, 18)
    UI.item_Padding.Name = "Padding"
    UI.item_Padding.PaddingLeft = UDim.new(0, 15)
    UI.item_Padding.PaddingBottom = UDim.new(0, 15)
    UI.item_Padding.Parent = UI.item

    UI.item_Layout = Instance.new("UIListLayout")
    UI.item_Layout.Padding = UDim.new(0, 12)
    UI.item_Layout.VerticalAlignment = Enum.VerticalAlignment.Center
    UI.item_Layout.SortOrder = Enum.SortOrder.LayoutOrder
    UI.item_Layout.Name = "Layout"
    UI.item_Layout.FillDirection = Enum.FillDirection.Horizontal
    UI.item_Layout.Parent = UI.item

    UI.item_Corner = Instance.new("UICorner")
    UI.item_Corner.Name = "Corner"
    UI.item_Corner.CornerRadius = UDim.new(0, 20)
    UI.item_Corner.Parent = UI.item

    UI.holder = Instance.new("ImageLabel")
    UI.holder.BorderSizePixel = 0
    UI.holder.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    UI.holder.ImageTransparency = 1
    UI.holder.AnchorPoint = Vector2.new(0.5, 0.5)
    UI.holder.Size = UDim2.new(0, 45, 0, 45)
    UI.holder.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.holder.BackgroundTransparency = 0.8
    UI.holder.LayoutOrder = 1
    UI.holder.Name = "holder"
    UI.holder.Parent = UI.item

    UI.icon = Instance.new("ImageLabel")
    UI.icon.BorderSizePixel = 0
    UI.icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.icon.ImageTransparency = 0.25
    UI.icon.AnchorPoint = Vector2.new(0.5, 0.5)
    UI.icon.Image = "rbxassetid://127976422209566"
    UI.icon.Size = UDim2.new(0, 26, 0, 26)
    UI.icon.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.icon.BackgroundTransparency = 1
    UI.icon.LayoutOrder = 1
    UI.icon.Name = "icon"
    UI.icon.Position = UDim2.new(0.5, 0, 0.5, 0)
    UI.icon.Parent = UI.holder

    UI.holder_Corner = Instance.new("UICorner")
    UI.holder_Corner.Name = "Corner"
    UI.holder_Corner.CornerRadius = UDim.new(0, 14)
    UI.holder_Corner.Parent = UI.holder

    UI.topbar = Instance.new("Frame")
    UI.topbar.BorderSizePixel = 0
    UI.topbar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.topbar.AnchorPoint = Vector2.new(0.5, 0)
    UI.topbar.AutomaticSize = Enum.AutomaticSize.XY
    UI.topbar.Position = UDim2.new(0.5, 0, 0, 0)
    UI.topbar.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.topbar.Name = "topbar"
    UI.topbar.LayoutOrder = 2
    UI.topbar.BackgroundTransparency = 1
    UI.topbar.Parent = UI.item

    UI.title = Instance.new("TextLabel")
    UI.title.BorderSizePixel = 0
    UI.title.AutoLocalize = false
    UI.title.TextSize = 16
    UI.title.TextXAlignment = Enum.TextXAlignment.Left
    UI.title.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    UI.title.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    UI.title.TextColor3 = Color3.fromRGB(255, 255, 255)
    UI.title.BackgroundTransparency = 1
    UI.title.AnchorPoint = Vector2.new(0.5, 1)
    UI.title.Size = UDim2.new(1, 0, 0, 0)
    UI.title.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.title.Text = "Advanced Settings"
    UI.title.LayoutOrder = 1
    UI.title.AutomaticSize = Enum.AutomaticSize.XY
    UI.title.Name = "title"
    UI.title.Position = UDim2.new(0.5, 0, 1, -10)
    UI.title.Parent = UI.topbar

    UI.topbar_Layout = Instance.new("UIListLayout")
    UI.topbar_Layout.SortOrder = Enum.SortOrder.LayoutOrder
    UI.topbar_Layout.Name = "Layout"
    UI.topbar_Layout.Parent = UI.topbar

    UI.description = Instance.new("TextLabel")
    UI.description.TextWrapped = true
    UI.description.BorderSizePixel = 0
    UI.description.AutoLocalize = false
    UI.description.TextSize = 14
    UI.description.TextXAlignment = Enum.TextXAlignment.Left
    UI.description.TextTransparency = 0.6
    UI.description.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    UI.description.FontFace = Font.new("rbxassetid://12187365364", Enum.FontWeight.Medium, Enum.FontStyle.Normal)
    UI.description.TextColor3 = Color3.fromRGB(255, 255, 255)
    UI.description.BackgroundTransparency = 1
    UI.description.AnchorPoint = Vector2.new(0.5, 1)
    UI.description.Size = UDim2.new(1, 0, 0, 0)
    UI.description.ClipsDescendants = true
    UI.description.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.description.Text = "Make your experience better with advanced changes"
    UI.description.LayoutOrder = 1
    UI.description.AutomaticSize = Enum.AutomaticSize.XY
    UI.description.Name = "description"
    UI.description.Position = UDim2.new(0.5, 0, 1, -10)
    UI.description.Parent = UI.topbar

    UI.Flex = Instance.new("UIFlexItem")
    UI.Flex.Name = "Flex"
    UI.Flex.FlexMode = Enum.UIFlexMode.Fill
    UI.Flex.Parent = UI.topbar

    UI.enter = Instance.new("ImageLabel")
    UI.enter.BorderSizePixel = 0
    UI.enter.ScaleType = Enum.ScaleType.Fit
    UI.enter.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    UI.enter.ImageTransparency = 0.5
    UI.enter.AnchorPoint = Vector2.new(0.5, 0.5)
    UI.enter.Image = "rbxassetid://100608752811999"
    UI.enter.Size = UDim2.new(0, 25, 0, 25)
    UI.enter.BorderColor3 = Color3.fromRGB(0, 0, 0)
    UI.enter.BackgroundTransparency = 1
    UI.enter.LayoutOrder = 5
    UI.enter.Name = "enter"
    UI.enter.Position = UDim2.new(0.5, 0, 0.5, 0)
    UI.enter.Parent = UI.item

    local CollectionService = game:GetService("CollectionService");
local AdvancedG2L = {};

-- StarterGui.ScreenGui


-- StarterGui.ScreenGui.settings
AdvancedG2L["2"] = Instance.new("Frame", UI.settings);
AdvancedG2L["2"]["BorderSizePixel"] = 0;
AdvancedG2L["2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
AdvancedG2L["2"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
AdvancedG2L["2"]["ClipsDescendants"] = true;
AdvancedG2L["2"]["Size"] = UDim2.new(1, 0, 1, 0);
AdvancedG2L["2"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
AdvancedG2L["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
AdvancedG2L["2"]["Name"] = [[settings]];
AdvancedG2L["2"]["LayoutOrder"] = 9;
AdvancedG2L["2"]["BackgroundTransparency"] = 1;


-- StarterGui.ScreenGui.settings.List
AdvancedG2L["3"] = Instance.new("UIListLayout", AdvancedG2L["2"]);
AdvancedG2L["3"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
AdvancedG2L["3"]["Name"] = [[List]];


-- StarterGui.ScreenGui.settings.header
AdvancedG2L["4"] = Instance.new("Frame", AdvancedG2L["2"]);
AdvancedG2L["4"]["ZIndex"] = 99;
AdvancedG2L["4"]["BorderSizePixel"] = 0;
AdvancedG2L["4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
AdvancedG2L["4"]["AutomaticSize"] = Enum.AutomaticSize.Y;
AdvancedG2L["4"]["Size"] = UDim2.new(1, 0, 0, 0);
AdvancedG2L["4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
AdvancedG2L["4"]["Name"] = [[header]];
AdvancedG2L["4"]["LayoutOrder"] = -99;
AdvancedG2L["4"]["BackgroundTransparency"] = 1;


-- StarterGui.ScreenGui.settings.header.list
AdvancedG2L["5"] = Instance.new("UIListLayout", AdvancedG2L["4"]);
AdvancedG2L["5"]["Padding"] = UDim.new(0, 1);
AdvancedG2L["5"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
AdvancedG2L["5"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
AdvancedG2L["5"]["Name"] = [[list]];


-- StarterGui.ScreenGui.settings.header.stroke
AdvancedG2L["6"] = Instance.new("UIStroke", AdvancedG2L["4"]);
AdvancedG2L["6"]["Transparency"] = 0.95;
AdvancedG2L["6"]["Color"] = Color3.fromRGB(255, 255, 255);
AdvancedG2L["6"]["Name"] = [[stroke]];


-- StarterGui.ScreenGui.settings.header.name
AdvancedG2L["7"] = Instance.new("TextLabel", AdvancedG2L["4"]);
AdvancedG2L["7"]["BorderSizePixel"] = 0;
AdvancedG2L["7"]["AutoLocalize"] = false;
AdvancedG2L["7"]["TextSize"] = 16;
AdvancedG2L["7"]["TextXAlignment"] = Enum.TextXAlignment.Left;
AdvancedG2L["7"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
AdvancedG2L["7"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
AdvancedG2L["7"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
AdvancedG2L["7"]["BackgroundTransparency"] = 1;
AdvancedG2L["7"]["AnchorPoint"] = Vector2.new(0.5, 0);
AdvancedG2L["7"]["Size"] = UDim2.new(1, 0, 0, 0);
AdvancedG2L["7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
AdvancedG2L["7"]["Text"] = [[Settings]];
AdvancedG2L["7"]["AutomaticSize"] = Enum.AutomaticSize.XY;
AdvancedG2L["7"]["Name"] = [[name]];
AdvancedG2L["7"]["Position"] = UDim2.new(0.5, 0, 0, 0);
-- Attributes
AdvancedG2L["7"]:SetAttribute([[Key]], [[orbit.settings.header]]);

-- Tags
CollectionService:AddTag(AdvancedG2L["7"], [[OrbitTranslation]]);

-- StarterGui.ScreenGui.settings.header.name.flex
AdvancedG2L["8"] = Instance.new("UIFlexItem", AdvancedG2L["7"]);
AdvancedG2L["8"]["Name"] = [[flex]];
AdvancedG2L["8"]["FlexMode"] = Enum.UIFlexMode.Fill;


-- StarterGui.ScreenGui.settings.header.desc
AdvancedG2L["9"] = Instance.new("TextLabel", AdvancedG2L["4"]);
AdvancedG2L["9"]["BorderSizePixel"] = 0;
AdvancedG2L["9"]["AutoLocalize"] = false;
AdvancedG2L["9"]["TextSize"] = 14;
AdvancedG2L["9"]["TextXAlignment"] = Enum.TextXAlignment.Left;
AdvancedG2L["9"]["TextTransparency"] = 0.5;
AdvancedG2L["9"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
AdvancedG2L["9"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
AdvancedG2L["9"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
AdvancedG2L["9"]["BackgroundTransparency"] = 1;
AdvancedG2L["9"]["AnchorPoint"] = Vector2.new(0.5, 0);
AdvancedG2L["9"]["Size"] = UDim2.new(0, 0, 0, 14);
AdvancedG2L["9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
AdvancedG2L["9"]["Text"] = [[Personalize your panel without requiring any coding knowledge.]];
AdvancedG2L["9"]["LayoutOrder"] = 1;
AdvancedG2L["9"]["AutomaticSize"] = Enum.AutomaticSize.X;
AdvancedG2L["9"]["Name"] = [[desc]];
AdvancedG2L["9"]["Position"] = UDim2.new(0.5, 0, 0, 0);
-- Attributes
AdvancedG2L["9"]:SetAttribute([[Key]], [[orbit.settings.description]]);

-- Tags
CollectionService:AddTag(AdvancedG2L["9"], [[OrbitTranslation]]);

-- StarterGui.ScreenGui.settings.header.padding
AdvancedG2L["a"] = Instance.new("UIPadding", AdvancedG2L["4"]);
AdvancedG2L["a"]["PaddingTop"] = UDim.new(0, 16);
AdvancedG2L["a"]["PaddingRight"] = UDim.new(0, 26);
AdvancedG2L["a"]["Name"] = [[padding]];
AdvancedG2L["a"]["PaddingLeft"] = UDim.new(0, 26);
AdvancedG2L["a"]["PaddingBottom"] = UDim.new(0, 16);


-- StarterGui.ScreenGui.settings.content
AdvancedG2L["b"] = Instance.new("Frame", AdvancedG2L["2"]);
AdvancedG2L["b"]["BorderSizePixel"] = 0;
AdvancedG2L["b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
AdvancedG2L["b"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
AdvancedG2L["b"]["Size"] = UDim2.new(1, 0, 0, 0);
AdvancedG2L["b"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
AdvancedG2L["b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
AdvancedG2L["b"]["Name"] = [[content]];
AdvancedG2L["b"]["BackgroundTransparency"] = 1;


-- StarterGui.ScreenGui.settings.content.Flex
AdvancedG2L["c"] = Instance.new("UIFlexItem", AdvancedG2L["b"]);
AdvancedG2L["c"]["Name"] = [[Flex]];
AdvancedG2L["c"]["FlexMode"] = Enum.UIFlexMode.Fill;


-- StarterGui.ScreenGui.settings.content.main
AdvancedG2L["d"] = Instance.new("Frame", AdvancedG2L["b"]);
AdvancedG2L["d"]["BorderSizePixel"] = 0;
AdvancedG2L["d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
AdvancedG2L["d"]["ClipsDescendants"] = true;
AdvancedG2L["d"]["Size"] = UDim2.new(1, 0, 1, 0);
AdvancedG2L["d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
AdvancedG2L["d"]["Name"] = [[main]];
AdvancedG2L["d"]["BackgroundTransparency"] = 1;


-- StarterGui.ScreenGui.settings.content.main.Flex
AdvancedG2L["e"] = Instance.new("UIFlexItem", AdvancedG2L["d"]);
AdvancedG2L["e"]["Name"] = [[Flex]];
AdvancedG2L["e"]["FlexMode"] = Enum.UIFlexMode.Fill;


-- StarterGui.ScreenGui.settings.content.main.item
AdvancedG2L["f"] = Instance.new("ScrollingFrame", AdvancedG2L["d"]);
AdvancedG2L["f"]["Active"] = true;
AdvancedG2L["f"]["ScrollingDirection"] = Enum.ScrollingDirection.Y;
AdvancedG2L["f"]["BorderSizePixel"] = 0;
AdvancedG2L["f"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
AdvancedG2L["f"]["Name"] = [[item]];
AdvancedG2L["f"]["ScrollBarImageTransparency"] = 1;
AdvancedG2L["f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
AdvancedG2L["f"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
AdvancedG2L["f"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
AdvancedG2L["f"]["Size"] = UDim2.new(1, 0, 1, 0);
AdvancedG2L["f"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
AdvancedG2L["f"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
AdvancedG2L["f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
AdvancedG2L["f"]["ScrollBarThickness"] = 0;
AdvancedG2L["f"]["LayoutOrder"] = 3;
AdvancedG2L["f"]["BackgroundTransparency"] = 1;


-- StarterGui.ScreenGui.settings.content.main.item.display
AdvancedG2L["10"] = Instance.new("Frame", AdvancedG2L["f"]);
AdvancedG2L["10"]["BorderSizePixel"] = 0;
AdvancedG2L["10"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
AdvancedG2L["10"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
AdvancedG2L["10"]["Size"] = UDim2.new(1, 0, 1, -85);
AdvancedG2L["10"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
AdvancedG2L["10"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
AdvancedG2L["10"]["Name"] = [[display]];
AdvancedG2L["10"]["LayoutOrder"] = 2;


-- StarterGui.ScreenGui.settings.content.main.item.display.corner
AdvancedG2L["11"] = Instance.new("UICorner", AdvancedG2L["10"]);
AdvancedG2L["11"]["Name"] = [[corner]];
AdvancedG2L["11"]["CornerRadius"] = UDim.new(0, 16);


-- StarterGui.ScreenGui.settings.content.main.item.display.Loading
AdvancedG2L["12"] = Instance.new("Frame", AdvancedG2L["10"]);
AdvancedG2L["12"]["Visible"] = false;
AdvancedG2L["12"]["ZIndex"] = 999999999;
AdvancedG2L["12"]["BorderSizePixel"] = 0;
AdvancedG2L["12"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
AdvancedG2L["12"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
AdvancedG2L["12"]["Size"] = UDim2.new(1, 0, 1, 0);
AdvancedG2L["12"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
AdvancedG2L["12"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
AdvancedG2L["12"]["Name"] = [[Loading]];


-- StarterGui.ScreenGui.settings.content.main.item.display.Loading.Proccess
AdvancedG2L["13"] = Instance.new("TextLabel", AdvancedG2L["12"]);
AdvancedG2L["13"]["BorderSizePixel"] = 0;
AdvancedG2L["13"]["AutoLocalize"] = false;
AdvancedG2L["13"]["TextSize"] = 15;
AdvancedG2L["13"]["TextTransparency"] = 0.9;
AdvancedG2L["13"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
AdvancedG2L["13"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
AdvancedG2L["13"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
AdvancedG2L["13"]["BackgroundTransparency"] = 1;
AdvancedG2L["13"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
AdvancedG2L["13"]["Size"] = UDim2.new(1, 0, 0, 20);
AdvancedG2L["13"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
AdvancedG2L["13"]["Text"] = [[Loading]];
AdvancedG2L["13"]["Name"] = [[Proccess]];
AdvancedG2L["13"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.ScreenGui.settings.content.main.item.display.Loading.corner
AdvancedG2L["14"] = Instance.new("UICorner", AdvancedG2L["12"]);
AdvancedG2L["14"]["Name"] = [[corner]];
AdvancedG2L["14"]["CornerRadius"] = UDim.new(0, 16);


-- StarterGui.ScreenGui.settings.content.main.item.display.fade
AdvancedG2L["15"] = Instance.new("Frame", AdvancedG2L["10"]);
AdvancedG2L["15"]["BorderSizePixel"] = 0;
AdvancedG2L["15"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
AdvancedG2L["15"]["AnchorPoint"] = Vector2.new(0.5, 1);
AdvancedG2L["15"]["Size"] = UDim2.new(1, -25, 0, 60);
AdvancedG2L["15"]["Position"] = UDim2.new(0.5, 0, 1, 0);
AdvancedG2L["15"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
AdvancedG2L["15"]["Name"] = [[fade]];


-- StarterGui.ScreenGui.settings.content.main.item.display.fade.UIGradient
AdvancedG2L["16"] = Instance.new("UIGradient", AdvancedG2L["15"]);
AdvancedG2L["16"]["Rotation"] = 90;
AdvancedG2L["16"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 1),NumberSequenceKeypoint.new(1.000, 0)};


-- StarterGui.ScreenGui.settings.content.main.item.display.scroll
AdvancedG2L["17"] = Instance.new("ScrollingFrame", AdvancedG2L["10"]);
AdvancedG2L["17"]["Active"] = true;
AdvancedG2L["17"]["ScrollingDirection"] = Enum.ScrollingDirection.Y;
AdvancedG2L["17"]["BorderSizePixel"] = 0;
AdvancedG2L["17"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
AdvancedG2L["17"]["VerticalScrollBarInset"] = Enum.ScrollBarInset.ScrollBar;
AdvancedG2L["17"]["Name"] = [[scroll]];
AdvancedG2L["17"]["ScrollBarImageTransparency"] = 1;
AdvancedG2L["17"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
AdvancedG2L["17"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
AdvancedG2L["17"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
AdvancedG2L["17"]["Size"] = UDim2.new(1, 0, 1.0081, 0);
AdvancedG2L["17"]["ScrollBarImageColor3"] = Color3.fromRGB(50, 50, 50);
AdvancedG2L["17"]["Position"] = UDim2.new(0.5, 0, 0.49595, 0);
AdvancedG2L["17"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
AdvancedG2L["17"]["ScrollBarThickness"] = 4;
AdvancedG2L["17"]["LayoutOrder"] = 2;
AdvancedG2L["17"]["BackgroundTransparency"] = 1;


-- StarterGui.ScreenGui.settings.content.main.item.display.scroll.UIListLayout
AdvancedG2L["18"] = Instance.new("UIListLayout", AdvancedG2L["17"]);
AdvancedG2L["18"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
AdvancedG2L["18"]["Padding"] = UDim.new(0, 8);
AdvancedG2L["18"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.ScreenGui.settings.content.main.item.display.scroll.Basics
AdvancedG2L["19"] = Instance.new("Frame", AdvancedG2L["17"]);
AdvancedG2L["19"]["BorderSizePixel"] = 0;
AdvancedG2L["19"]["BackgroundColor3"] = Color3.fromRGB(30, 30, 30);
AdvancedG2L["19"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
AdvancedG2L["19"]["ClipsDescendants"] = true;
AdvancedG2L["19"]["AutomaticSize"] = Enum.AutomaticSize.Y;
AdvancedG2L["19"]["Size"] = UDim2.new(1, 0, 1.01215, 0);
AdvancedG2L["19"]["Position"] = UDim2.new(0.49777, 0, 0.74351, 0);
AdvancedG2L["19"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
AdvancedG2L["19"]["Name"] = [[Basics]];


-- StarterGui.ScreenGui.settings.content.main.item.display.scroll.Basics.Corner
AdvancedG2L["1a"] = Instance.new("UICorner", AdvancedG2L["19"]);
AdvancedG2L["1a"]["Name"] = [[Corner]];
AdvancedG2L["1a"]["CornerRadius"] = UDim.new(0, 14);


-- StarterGui.ScreenGui.settings.content.main.item.display.scroll.Basics.UIListLayout
AdvancedG2L["1b"] = Instance.new("UIListLayout", AdvancedG2L["19"]);
AdvancedG2L["1b"]["VerticalFlex"] = Enum.UIFlexAlignment.Fill;
AdvancedG2L["1b"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.ScreenGui.settings.content.main.item.display.scroll.Basics.Selection
AdvancedG2L["1c"] = Instance.new("ImageButton", AdvancedG2L["19"]);
AdvancedG2L["1c"]["Active"] = false;
AdvancedG2L["1c"]["BorderSizePixel"] = 0;
AdvancedG2L["1c"]["BackgroundTransparency"] = 1;
AdvancedG2L["1c"]["SelectionOrder"] = 1;
AdvancedG2L["1c"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
AdvancedG2L["1c"]["Selectable"] = false;
AdvancedG2L["1c"]["Size"] = UDim2.new(1, 0, 0, 50);
AdvancedG2L["1c"]["LayoutOrder"] = 1;
AdvancedG2L["1c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
AdvancedG2L["1c"]["Name"] = [[Selection]];

-- Tags
CollectionService:AddTag(AdvancedG2L["1c"], [[SettingObject]]);

-- StarterGui.ScreenGui.settings.content.main.item.display.scroll.Basics.Selection.Padding
AdvancedG2L["1d"] = Instance.new("UIPadding", AdvancedG2L["1c"]);
AdvancedG2L["1d"]["PaddingRight"] = UDim.new(0, 12);
AdvancedG2L["1d"]["Name"] = [[Padding]];
AdvancedG2L["1d"]["PaddingLeft"] = UDim.new(0, 12);


-- StarterGui.ScreenGui.settings.content.main.item.display.scroll.Basics.Selection.holder
AdvancedG2L["1e"] = Instance.new("ImageLabel", AdvancedG2L["1c"]);
AdvancedG2L["1e"]["BorderSizePixel"] = 0;
AdvancedG2L["1e"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
AdvancedG2L["1e"]["ImageTransparency"] = 1;
AdvancedG2L["1e"]["AnchorPoint"] = Vector2.new(0, 0.5);
AdvancedG2L["1e"]["Size"] = UDim2.new(0, 32, 0, 32);
AdvancedG2L["1e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
AdvancedG2L["1e"]["BackgroundTransparency"] = 0.8;
AdvancedG2L["1e"]["LayoutOrder"] = 1;
AdvancedG2L["1e"]["Name"] = [[holder]];
AdvancedG2L["1e"]["Position"] = UDim2.new(0, 0, 0.5, 0);


-- StarterGui.ScreenGui.settings.content.main.item.display.scroll.Basics.Selection.holder.icon
AdvancedG2L["1f"] = Instance.new("ImageLabel", AdvancedG2L["1e"]);
AdvancedG2L["1f"]["BorderSizePixel"] = 0;
AdvancedG2L["1f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
AdvancedG2L["1f"]["ImageTransparency"] = 0.5;
AdvancedG2L["1f"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
AdvancedG2L["1f"]["Image"] = [[rbxassetid://100073130130484]];
AdvancedG2L["1f"]["Size"] = UDim2.new(0, 25, 0, 25);
AdvancedG2L["1f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
AdvancedG2L["1f"]["BackgroundTransparency"] = 1;
AdvancedG2L["1f"]["LayoutOrder"] = 1;
AdvancedG2L["1f"]["Name"] = [[icon]];
AdvancedG2L["1f"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.ScreenGui.settings.content.main.item.display.scroll.Basics.Selection.holder.Corner
AdvancedG2L["20"] = Instance.new("UICorner", AdvancedG2L["1e"]);
AdvancedG2L["20"]["Name"] = [[Corner]];
AdvancedG2L["20"]["CornerRadius"] = UDim.new(0, 6);


-- StarterGui.ScreenGui.settings.content.main.item.display.scroll.Basics.Selection.Extra
AdvancedG2L["21"] = Instance.new("Folder", AdvancedG2L["1c"]);
AdvancedG2L["21"]["Name"] = [[Extra]];


-- StarterGui.ScreenGui.settings.content.main.item.display.scroll.Basics.Selection.Extra.Separator
AdvancedG2L["22"] = Instance.new("Frame", AdvancedG2L["21"]);
AdvancedG2L["22"]["BorderSizePixel"] = 0;
AdvancedG2L["22"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
AdvancedG2L["22"]["AnchorPoint"] = Vector2.new(0.5, 1);
AdvancedG2L["22"]["Size"] = UDim2.new(2, 0, 0, 1);
AdvancedG2L["22"]["Position"] = UDim2.new(0.5, 0, 1, 1);
AdvancedG2L["22"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
AdvancedG2L["22"]["Name"] = [[Separator]];
AdvancedG2L["22"]["BackgroundTransparency"] = 0.98;


-- StarterGui.ScreenGui.settings.content.main.item.display.scroll.Basics.Selection.List
AdvancedG2L["23"] = Instance.new("UIListLayout", AdvancedG2L["1c"]);
AdvancedG2L["23"]["Padding"] = UDim.new(0, 10);
AdvancedG2L["23"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
AdvancedG2L["23"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
AdvancedG2L["23"]["Name"] = [[List]];
AdvancedG2L["23"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.ScreenGui.settings.content.main.item.display.scroll.Basics.Selection.info
AdvancedG2L["24"] = Instance.new("Frame", AdvancedG2L["1c"]);
AdvancedG2L["24"]["BorderSizePixel"] = 0;
AdvancedG2L["24"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
AdvancedG2L["24"]["Size"] = UDim2.new(0, 0, 0, 28);
AdvancedG2L["24"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
AdvancedG2L["24"]["Name"] = [[info]];
AdvancedG2L["24"]["LayoutOrder"] = 2;
AdvancedG2L["24"]["BackgroundTransparency"] = 1;


-- StarterGui.ScreenGui.settings.content.main.item.display.scroll.Basics.Selection.info.Flex
AdvancedG2L["25"] = Instance.new("UIFlexItem", AdvancedG2L["24"]);
AdvancedG2L["25"]["Name"] = [[Flex]];
AdvancedG2L["25"]["FlexMode"] = Enum.UIFlexMode.Fill;


-- StarterGui.ScreenGui.settings.content.main.item.display.scroll.Basics.Selection.info.Header
AdvancedG2L["26"] = Instance.new("TextLabel", AdvancedG2L["24"]);
AdvancedG2L["26"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
AdvancedG2L["26"]["BorderSizePixel"] = 0;
AdvancedG2L["26"]["TextSize"] = 14;
AdvancedG2L["26"]["TextXAlignment"] = Enum.TextXAlignment.Left;
AdvancedG2L["26"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
AdvancedG2L["26"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
AdvancedG2L["26"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
AdvancedG2L["26"]["BackgroundTransparency"] = 1;
AdvancedG2L["26"]["Size"] = UDim2.new(1, 0, 0, 0);
AdvancedG2L["26"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
AdvancedG2L["26"]["Text"] = [[Language]];
AdvancedG2L["26"]["AutomaticSize"] = Enum.AutomaticSize.Y;
AdvancedG2L["26"]["Name"] = [[Header]];


-- StarterGui.ScreenGui.settings.content.main.item.display.scroll.Basics.Selection.info.Description
AdvancedG2L["27"] = Instance.new("TextLabel", AdvancedG2L["24"]);
AdvancedG2L["27"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
AdvancedG2L["27"]["BorderSizePixel"] = 0;
AdvancedG2L["27"]["TextSize"] = 12;
AdvancedG2L["27"]["TextXAlignment"] = Enum.TextXAlignment.Left;
AdvancedG2L["27"]["TextTransparency"] = 0.7;
AdvancedG2L["27"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
AdvancedG2L["27"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
AdvancedG2L["27"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
AdvancedG2L["27"]["BackgroundTransparency"] = 1;
AdvancedG2L["27"]["AnchorPoint"] = Vector2.new(0, 1);
AdvancedG2L["27"]["Size"] = UDim2.new(1, 0, 0, 0);
AdvancedG2L["27"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
AdvancedG2L["27"]["Text"] = [[The Language of the Ui.]];
AdvancedG2L["27"]["AutomaticSize"] = Enum.AutomaticSize.Y;
AdvancedG2L["27"]["Name"] = [[Description]];
AdvancedG2L["27"]["Position"] = UDim2.new(0, 0, 1, 0);


-- StarterGui.ScreenGui.settings.content.main.item.display.scroll.Basics.Selection.icon
AdvancedG2L["28"] = Instance.new("ImageLabel", AdvancedG2L["1c"]);
AdvancedG2L["28"]["BorderSizePixel"] = 0;
AdvancedG2L["28"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
AdvancedG2L["28"]["Image"] = [[rbxassetid://95898765113869]];
AdvancedG2L["28"]["Size"] = UDim2.new(0.5, 0, 0.5, 0);
AdvancedG2L["28"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
AdvancedG2L["28"]["BackgroundTransparency"] = 1;
AdvancedG2L["28"]["LayoutOrder"] = 99;
AdvancedG2L["28"]["Name"] = [[icon]];


-- StarterGui.ScreenGui.settings.content.main.item.display.scroll.Basics.Selection.icon.aspect
AdvancedG2L["29"] = Instance.new("UIAspectRatioConstraint", AdvancedG2L["28"]);
AdvancedG2L["29"]["Name"] = [[aspect]];


-- StarterGui.ScreenGui.settings.content.main.item.display.scroll.Basics.Selection.value
AdvancedG2L["2a"] = Instance.new("TextLabel", AdvancedG2L["1c"]);
AdvancedG2L["2a"]["BorderSizePixel"] = 0;
AdvancedG2L["2a"]["TextSize"] = 14;
AdvancedG2L["2a"]["BackgroundColor3"] = Color3.fromRGB(23, 23, 23);
AdvancedG2L["2a"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
AdvancedG2L["2a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
AdvancedG2L["2a"]["Size"] = UDim2.new(0, 125, 0, 30);
AdvancedG2L["2a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
AdvancedG2L["2a"]["Text"] = [[English]];
AdvancedG2L["2a"]["LayoutOrder"] = 98;
AdvancedG2L["2a"]["AutomaticSize"] = Enum.AutomaticSize.X;
AdvancedG2L["2a"]["Name"] = [[value]];


-- StarterGui.ScreenGui.settings.content.main.item.display.scroll.Basics.Selection.value.Corner
AdvancedG2L["2b"] = Instance.new("UICorner", AdvancedG2L["2a"]);
AdvancedG2L["2b"]["Name"] = [[Corner]];
AdvancedG2L["2b"]["CornerRadius"] = UDim.new(0, 18);


-- StarterGui.ScreenGui.settings.content.main.item.display.scroll.Basics.Switch
AdvancedG2L["2c"] = Instance.new("Frame", AdvancedG2L["19"]);
AdvancedG2L["2c"]["BorderSizePixel"] = 0;
AdvancedG2L["2c"]["SelectionOrder"] = 2;
AdvancedG2L["2c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
AdvancedG2L["2c"]["Size"] = UDim2.new(1, 0, 0, 50);
AdvancedG2L["2c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
AdvancedG2L["2c"]["Name"] = [[Switch]];
AdvancedG2L["2c"]["LayoutOrder"] = 2;
AdvancedG2L["2c"]["BackgroundTransparency"] = 1;

-- Tags
CollectionService:AddTag(AdvancedG2L["2c"], [[SettingObject]]);

-- StarterGui.ScreenGui.settings.content.main.item.display.scroll.Basics.Switch.switch
AdvancedG2L["2d"] = Instance.new("ImageButton", AdvancedG2L["2c"]);
AdvancedG2L["2d"]["BorderSizePixel"] = 0;
AdvancedG2L["2d"]["AutoButtonColor"] = false;
AdvancedG2L["2d"]["ImageTransparency"] = 1;
AdvancedG2L["2d"]["BackgroundColor3"] = Color3.fromRGB(23, 23, 23);
AdvancedG2L["2d"]["AnchorPoint"] = Vector2.new(1, 0.5);
AdvancedG2L["2d"]["Size"] = UDim2.new(0, 45, 0, 27);
AdvancedG2L["2d"]["LayoutOrder"] = 99;
AdvancedG2L["2d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
AdvancedG2L["2d"]["Name"] = [[switch]];
AdvancedG2L["2d"]["Position"] = UDim2.new(1, 0, 0.5, 0);
-- Attributes
AdvancedG2L["2d"]:SetAttribute([[Enabled]], true);
AdvancedG2L["2d"]:SetAttribute([[State]], false);

-- Tags
CollectionService:AddTag(AdvancedG2L["2d"], [[OrbitBooleanSwitch]]);

-- StarterGui.ScreenGui.settings.content.main.item.display.scroll.Basics.Switch.switch.Corner
AdvancedG2L["2e"] = Instance.new("UICorner", AdvancedG2L["2d"]);
AdvancedG2L["2e"]["Name"] = [[Corner]];
AdvancedG2L["2e"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.ScreenGui.settings.content.main.item.display.scroll.Basics.Switch.switch.UIPadding
AdvancedG2L["2f"] = Instance.new("UIPadding", AdvancedG2L["2d"]);
AdvancedG2L["2f"]["PaddingRight"] = UDim.new(0, 5);
AdvancedG2L["2f"]["PaddingLeft"] = UDim.new(0, 5);


-- StarterGui.ScreenGui.settings.content.main.item.display.scroll.Basics.Switch.switch.circle
AdvancedG2L["30"] = Instance.new("Frame", AdvancedG2L["2d"]);
AdvancedG2L["30"]["BorderSizePixel"] = 0;
AdvancedG2L["30"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
AdvancedG2L["30"]["AnchorPoint"] = Vector2.new(0, 0.5);
AdvancedG2L["30"]["Size"] = UDim2.new(0, 19, 0, 19);
AdvancedG2L["30"]["Position"] = UDim2.new(0, 0, 0.5, 0);
AdvancedG2L["30"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
AdvancedG2L["30"]["Name"] = [[circle]];
AdvancedG2L["30"]["BackgroundTransparency"] = 0.95;


-- StarterGui.ScreenGui.settings.content.main.item.display.scroll.Basics.Switch.switch.circle.Corner
AdvancedG2L["31"] = Instance.new("UICorner", AdvancedG2L["30"]);
AdvancedG2L["31"]["Name"] = [[Corner]];
AdvancedG2L["31"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.ScreenGui.settings.content.main.item.display.scroll.Basics.Switch.Padding
AdvancedG2L["32"] = Instance.new("UIPadding", AdvancedG2L["2c"]);
AdvancedG2L["32"]["PaddingRight"] = UDim.new(0, 12);
AdvancedG2L["32"]["Name"] = [[Padding]];
AdvancedG2L["32"]["PaddingLeft"] = UDim.new(0, 12);


-- StarterGui.ScreenGui.settings.content.main.item.display.scroll.Basics.Switch.holder
AdvancedG2L["33"] = Instance.new("ImageLabel", AdvancedG2L["2c"]);
AdvancedG2L["33"]["BorderSizePixel"] = 0;
AdvancedG2L["33"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
AdvancedG2L["33"]["ImageTransparency"] = 1;
AdvancedG2L["33"]["AnchorPoint"] = Vector2.new(0, 0.5);
AdvancedG2L["33"]["Size"] = UDim2.new(0, 32, 0, 32);
AdvancedG2L["33"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
AdvancedG2L["33"]["BackgroundTransparency"] = 0.8;
AdvancedG2L["33"]["LayoutOrder"] = 1;
AdvancedG2L["33"]["Name"] = [[holder]];
AdvancedG2L["33"]["Position"] = UDim2.new(0, 0, 0.5, 0);


-- StarterGui.ScreenGui.settings.content.main.item.display.scroll.Basics.Switch.holder.icon
AdvancedG2L["34"] = Instance.new("ImageLabel", AdvancedG2L["33"]);
AdvancedG2L["34"]["BorderSizePixel"] = 0;
AdvancedG2L["34"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
AdvancedG2L["34"]["ImageTransparency"] = 0.5;
AdvancedG2L["34"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
AdvancedG2L["34"]["Image"] = [[rbxassetid://113350802604636]];
AdvancedG2L["34"]["Size"] = UDim2.new(0, 25, 0, 25);
AdvancedG2L["34"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
AdvancedG2L["34"]["BackgroundTransparency"] = 1;
AdvancedG2L["34"]["LayoutOrder"] = 1;
AdvancedG2L["34"]["Name"] = [[icon]];
AdvancedG2L["34"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.ScreenGui.settings.content.main.item.display.scroll.Basics.Switch.holder.Corner
AdvancedG2L["35"] = Instance.new("UICorner", AdvancedG2L["33"]);
AdvancedG2L["35"]["Name"] = [[Corner]];
AdvancedG2L["35"]["CornerRadius"] = UDim.new(0, 6);


-- StarterGui.ScreenGui.settings.content.main.item.display.scroll.Basics.Switch.Extra
AdvancedG2L["36"] = Instance.new("Folder", AdvancedG2L["2c"]);
AdvancedG2L["36"]["Name"] = [[Extra]];


-- StarterGui.ScreenGui.settings.content.main.item.display.scroll.Basics.Switch.Extra.Separator
AdvancedG2L["37"] = Instance.new("Frame", AdvancedG2L["36"]);
AdvancedG2L["37"]["BorderSizePixel"] = 0;
AdvancedG2L["37"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
AdvancedG2L["37"]["AnchorPoint"] = Vector2.new(0.5, 1);
AdvancedG2L["37"]["Size"] = UDim2.new(2, 0, 0, 1);
AdvancedG2L["37"]["Position"] = UDim2.new(0.5, 0, 1, 1);
AdvancedG2L["37"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
AdvancedG2L["37"]["Name"] = [[Separator]];
AdvancedG2L["37"]["BackgroundTransparency"] = 0.98;


-- StarterGui.ScreenGui.settings.content.main.item.display.scroll.Basics.Switch.List
AdvancedG2L["38"] = Instance.new("UIListLayout", AdvancedG2L["2c"]);
AdvancedG2L["38"]["Padding"] = UDim.new(0, 10);
AdvancedG2L["38"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
AdvancedG2L["38"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
AdvancedG2L["38"]["Name"] = [[List]];
AdvancedG2L["38"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.ScreenGui.settings.content.main.item.display.scroll.Basics.Switch.info
AdvancedG2L["39"] = Instance.new("Frame", AdvancedG2L["2c"]);
AdvancedG2L["39"]["BorderSizePixel"] = 0;
AdvancedG2L["39"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
AdvancedG2L["39"]["Size"] = UDim2.new(0, 0, 0, 28);
AdvancedG2L["39"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
AdvancedG2L["39"]["Name"] = [[info]];
AdvancedG2L["39"]["LayoutOrder"] = 2;
AdvancedG2L["39"]["BackgroundTransparency"] = 1;


-- StarterGui.ScreenGui.settings.content.main.item.display.scroll.Basics.Switch.info.Flex
AdvancedG2L["3a"] = Instance.new("UIFlexItem", AdvancedG2L["39"]);
AdvancedG2L["3a"]["Name"] = [[Flex]];
AdvancedG2L["3a"]["FlexMode"] = Enum.UIFlexMode.Fill;


-- StarterGui.ScreenGui.settings.content.main.item.display.scroll.Basics.Switch.info.Header
AdvancedG2L["3b"] = Instance.new("TextLabel", AdvancedG2L["39"]);
AdvancedG2L["3b"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
AdvancedG2L["3b"]["BorderSizePixel"] = 0;
AdvancedG2L["3b"]["TextSize"] = 14;
AdvancedG2L["3b"]["TextXAlignment"] = Enum.TextXAlignment.Left;
AdvancedG2L["3b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
AdvancedG2L["3b"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
AdvancedG2L["3b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
AdvancedG2L["3b"]["BackgroundTransparency"] = 1;
AdvancedG2L["3b"]["Size"] = UDim2.new(1, 0, 0, 0);
AdvancedG2L["3b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
AdvancedG2L["3b"]["Text"] = [[Dragging]];
AdvancedG2L["3b"]["AutomaticSize"] = Enum.AutomaticSize.Y;
AdvancedG2L["3b"]["Name"] = [[Header]];


-- StarterGui.ScreenGui.settings.content.main.item.display.scroll.Basics.Switch.info.Description
AdvancedG2L["3c"] = Instance.new("TextLabel", AdvancedG2L["39"]);
AdvancedG2L["3c"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
AdvancedG2L["3c"]["BorderSizePixel"] = 0;
AdvancedG2L["3c"]["TextSize"] = 12;
AdvancedG2L["3c"]["TextXAlignment"] = Enum.TextXAlignment.Left;
AdvancedG2L["3c"]["TextTransparency"] = 0.7;
AdvancedG2L["3c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
AdvancedG2L["3c"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
AdvancedG2L["3c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
AdvancedG2L["3c"]["BackgroundTransparency"] = 1;
AdvancedG2L["3c"]["AnchorPoint"] = Vector2.new(0, 1);
AdvancedG2L["3c"]["Size"] = UDim2.new(1, 0, 0, 0);
AdvancedG2L["3c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
AdvancedG2L["3c"]["Text"] = [[Allow the Panel to be moved around the screen.]];
AdvancedG2L["3c"]["AutomaticSize"] = Enum.AutomaticSize.Y;
AdvancedG2L["3c"]["Name"] = [[Description]];
AdvancedG2L["3c"]["Position"] = UDim2.new(0, 0, 1, 0);


-- StarterGui.ScreenGui.settings.content.main.item.display.scroll.Basics.Input
AdvancedG2L["3d"] = Instance.new("Frame", AdvancedG2L["19"]);
AdvancedG2L["3d"]["BorderSizePixel"] = 0;
AdvancedG2L["3d"]["SelectionOrder"] = 5;
AdvancedG2L["3d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
AdvancedG2L["3d"]["Size"] = UDim2.new(1, 0, 0, 50);
AdvancedG2L["3d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
AdvancedG2L["3d"]["Name"] = [[Input]];
AdvancedG2L["3d"]["LayoutOrder"] = 6;
AdvancedG2L["3d"]["BackgroundTransparency"] = 1;

-- Tags
CollectionService:AddTag(AdvancedG2L["3d"], [[SettingObject]]);

-- StarterGui.ScreenGui.settings.content.main.item.display.scroll.Basics.Input.Padding
AdvancedG2L["3e"] = Instance.new("UIPadding", AdvancedG2L["3d"]);
AdvancedG2L["3e"]["PaddingRight"] = UDim.new(0, 12);
AdvancedG2L["3e"]["Name"] = [[Padding]];
AdvancedG2L["3e"]["PaddingLeft"] = UDim.new(0, 12);


-- StarterGui.ScreenGui.settings.content.main.item.display.scroll.Basics.Input.holder
AdvancedG2L["3f"] = Instance.new("ImageLabel", AdvancedG2L["3d"]);
AdvancedG2L["3f"]["BorderSizePixel"] = 0;
AdvancedG2L["3f"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
AdvancedG2L["3f"]["ImageTransparency"] = 1;
AdvancedG2L["3f"]["AnchorPoint"] = Vector2.new(0, 0.5);
AdvancedG2L["3f"]["Size"] = UDim2.new(0, 32, 0, 32);
AdvancedG2L["3f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
AdvancedG2L["3f"]["BackgroundTransparency"] = 0.8;
AdvancedG2L["3f"]["LayoutOrder"] = 1;
AdvancedG2L["3f"]["Name"] = [[holder]];
AdvancedG2L["3f"]["Position"] = UDim2.new(0, 0, 0.5, 0);


-- StarterGui.ScreenGui.settings.content.main.item.display.scroll.Basics.Input.holder.icon
AdvancedG2L["40"] = Instance.new("ImageLabel", AdvancedG2L["3f"]);
AdvancedG2L["40"]["BorderSizePixel"] = 0;
AdvancedG2L["40"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
AdvancedG2L["40"]["ImageTransparency"] = 0.5;
AdvancedG2L["40"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
AdvancedG2L["40"]["Image"] = [[rbxassetid://107315438931182]];
AdvancedG2L["40"]["Size"] = UDim2.new(0, 25, 0, 25);
AdvancedG2L["40"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
AdvancedG2L["40"]["BackgroundTransparency"] = 1;
AdvancedG2L["40"]["LayoutOrder"] = 1;
AdvancedG2L["40"]["Name"] = [[icon]];
AdvancedG2L["40"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.ScreenGui.settings.content.main.item.display.scroll.Basics.Input.holder.Corner
AdvancedG2L["41"] = Instance.new("UICorner", AdvancedG2L["3f"]);
AdvancedG2L["41"]["Name"] = [[Corner]];
AdvancedG2L["41"]["CornerRadius"] = UDim.new(0, 6);


-- StarterGui.ScreenGui.settings.content.main.item.display.scroll.Basics.Input.Extra
AdvancedG2L["42"] = Instance.new("Folder", AdvancedG2L["3d"]);
AdvancedG2L["42"]["Name"] = [[Extra]];


-- StarterGui.ScreenGui.settings.content.main.item.display.scroll.Basics.Input.Extra.Separator
AdvancedG2L["43"] = Instance.new("Frame", AdvancedG2L["42"]);
AdvancedG2L["43"]["BorderSizePixel"] = 0;
AdvancedG2L["43"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
AdvancedG2L["43"]["AnchorPoint"] = Vector2.new(0.5, 1);
AdvancedG2L["43"]["Size"] = UDim2.new(2, 0, 0, 1);
AdvancedG2L["43"]["Position"] = UDim2.new(0.5, 0, 1, 1);
AdvancedG2L["43"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
AdvancedG2L["43"]["Name"] = [[Separator]];
AdvancedG2L["43"]["BackgroundTransparency"] = 0.98;


-- StarterGui.ScreenGui.settings.content.main.item.display.scroll.Basics.Input.List
AdvancedG2L["44"] = Instance.new("UIListLayout", AdvancedG2L["3d"]);
AdvancedG2L["44"]["Padding"] = UDim.new(0, 10);
AdvancedG2L["44"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
AdvancedG2L["44"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
AdvancedG2L["44"]["Name"] = [[List]];
AdvancedG2L["44"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.ScreenGui.settings.content.main.item.display.scroll.Basics.Input.info
AdvancedG2L["45"] = Instance.new("Frame", AdvancedG2L["3d"]);
AdvancedG2L["45"]["BorderSizePixel"] = 0;
AdvancedG2L["45"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
AdvancedG2L["45"]["Size"] = UDim2.new(0, 0, 0, 28);
AdvancedG2L["45"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
AdvancedG2L["45"]["Name"] = [[info]];
AdvancedG2L["45"]["LayoutOrder"] = 2;
AdvancedG2L["45"]["BackgroundTransparency"] = 1;


-- StarterGui.ScreenGui.settings.content.main.item.display.scroll.Basics.Input.info.Flex
AdvancedG2L["46"] = Instance.new("UIFlexItem", AdvancedG2L["45"]);
AdvancedG2L["46"]["Name"] = [[Flex]];
AdvancedG2L["46"]["FlexMode"] = Enum.UIFlexMode.Fill;


-- StarterGui.ScreenGui.settings.content.main.item.display.scroll.Basics.Input.info.Header
AdvancedG2L["47"] = Instance.new("TextLabel", AdvancedG2L["45"]);
AdvancedG2L["47"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
AdvancedG2L["47"]["BorderSizePixel"] = 0;
AdvancedG2L["47"]["TextSize"] = 14;
AdvancedG2L["47"]["TextXAlignment"] = Enum.TextXAlignment.Left;
AdvancedG2L["47"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
AdvancedG2L["47"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
AdvancedG2L["47"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
AdvancedG2L["47"]["BackgroundTransparency"] = 1;
AdvancedG2L["47"]["Size"] = UDim2.new(1, 0, 0, 0);
AdvancedG2L["47"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
AdvancedG2L["47"]["Text"] = [[Activation Key]];
AdvancedG2L["47"]["AutomaticSize"] = Enum.AutomaticSize.Y;
AdvancedG2L["47"]["Name"] = [[Header]];


-- StarterGui.ScreenGui.settings.content.main.item.display.scroll.Basics.Input.info.Description
AdvancedG2L["48"] = Instance.new("TextLabel", AdvancedG2L["45"]);
AdvancedG2L["48"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
AdvancedG2L["48"]["BorderSizePixel"] = 0;
AdvancedG2L["48"]["TextSize"] = 12;
AdvancedG2L["48"]["TextXAlignment"] = Enum.TextXAlignment.Left;
AdvancedG2L["48"]["TextTransparency"] = 0.7;
AdvancedG2L["48"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
AdvancedG2L["48"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
AdvancedG2L["48"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
AdvancedG2L["48"]["BackgroundTransparency"] = 1;
AdvancedG2L["48"]["AnchorPoint"] = Vector2.new(0, 1);
AdvancedG2L["48"]["Size"] = UDim2.new(1, 0, 0, 0);
AdvancedG2L["48"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
AdvancedG2L["48"]["Text"] = [[The Key to toggle the Ui with.]];
AdvancedG2L["48"]["AutomaticSize"] = Enum.AutomaticSize.Y;
AdvancedG2L["48"]["Name"] = [[Description]];
AdvancedG2L["48"]["Position"] = UDim2.new(0, 0, 1, 0);


-- StarterGui.ScreenGui.settings.content.main.item.display.scroll.Basics.Input.reset
AdvancedG2L["49"] = Instance.new("ImageButton", AdvancedG2L["3d"]);
AdvancedG2L["49"]["Active"] = false;
AdvancedG2L["49"]["BorderSizePixel"] = 0;
AdvancedG2L["49"]["BackgroundColor3"] = Color3.fromRGB(23, 23, 23);
AdvancedG2L["49"]["Selectable"] = false;
AdvancedG2L["49"]["Size"] = UDim2.new(0.6, 0, 0.6, 0);
AdvancedG2L["49"]["LayoutOrder"] = 3;
AdvancedG2L["49"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
AdvancedG2L["49"]["Name"] = [[reset]];
AdvancedG2L["49"]["Position"] = UDim2.new(0.82152, 0, 0, 0);


-- StarterGui.ScreenGui.settings.content.main.item.display.scroll.Basics.Input.reset.Corner
AdvancedG2L["4a"] = Instance.new("UICorner", AdvancedG2L["49"]);
AdvancedG2L["4a"]["Name"] = [[Corner]];
AdvancedG2L["4a"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.ScreenGui.settings.content.main.item.display.scroll.Basics.Input.reset.UIAspectRatioConstraint
AdvancedG2L["4b"] = Instance.new("UIAspectRatioConstraint", AdvancedG2L["49"]);



-- StarterGui.ScreenGui.settings.content.main.item.display.scroll.Basics.Input.reset.button
AdvancedG2L["4c"] = Instance.new("ImageLabel", AdvancedG2L["49"]);
AdvancedG2L["4c"]["Active"] = true;
AdvancedG2L["4c"]["BorderSizePixel"] = 0;
AdvancedG2L["4c"]["AutoLocalize"] = false;
AdvancedG2L["4c"]["BackgroundColor3"] = Color3.fromRGB(23, 23, 23);
AdvancedG2L["4c"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
AdvancedG2L["4c"]["Image"] = [[rbxassetid://119058990992889]];
AdvancedG2L["4c"]["Size"] = UDim2.new(0.8, 0, 0.8, 0);
AdvancedG2L["4c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
AdvancedG2L["4c"]["BackgroundTransparency"] = 1;
AdvancedG2L["4c"]["LayoutOrder"] = 1;
AdvancedG2L["4c"]["Selectable"] = true;
AdvancedG2L["4c"]["Name"] = [[button]];
AdvancedG2L["4c"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.ScreenGui.settings.content.main.item.display.scroll.Basics.Input.key
AdvancedG2L["4d"] = Instance.new("Frame", AdvancedG2L["3d"]);
AdvancedG2L["4d"]["BorderSizePixel"] = 0;
AdvancedG2L["4d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
AdvancedG2L["4d"]["Size"] = UDim2.new(0.15, 0, 1, 0);
AdvancedG2L["4d"]["Position"] = UDim2.new(0.68504, 0, 0, 0);
AdvancedG2L["4d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
AdvancedG2L["4d"]["Name"] = [[key]];
AdvancedG2L["4d"]["LayoutOrder"] = 4;
AdvancedG2L["4d"]["BackgroundTransparency"] = 1;


-- StarterGui.ScreenGui.settings.content.main.item.display.scroll.Basics.Input.key.box
AdvancedG2L["4e"] = Instance.new("TextButton", AdvancedG2L["4d"]);
AdvancedG2L["4e"]["BorderSizePixel"] = 0;
AdvancedG2L["4e"]["AutoLocalize"] = false;
AdvancedG2L["4e"]["TextSize"] = 16;
AdvancedG2L["4e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
AdvancedG2L["4e"]["BackgroundColor3"] = Color3.fromRGB(23, 23, 23);
AdvancedG2L["4e"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
AdvancedG2L["4e"]["AnchorPoint"] = Vector2.new(0, 0.5);
AdvancedG2L["4e"]["Size"] = UDim2.new(0.99, 0, -0.76, 79);
AdvancedG2L["4e"]["LayoutOrder"] = 1;
AdvancedG2L["4e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
AdvancedG2L["4e"]["Text"] = [[...]];
AdvancedG2L["4e"]["Name"] = [[box]];
AdvancedG2L["4e"]["Position"] = UDim2.new(0, 0, 0.5, 0);


-- StarterGui.ScreenGui.settings.content.main.item.display.scroll.Basics.Input.key.box.Corner
AdvancedG2L["4f"] = Instance.new("UICorner", AdvancedG2L["4e"]);
AdvancedG2L["4f"]["Name"] = [[Corner]];
AdvancedG2L["4f"]["CornerRadius"] = UDim.new(0, 18);


-- StarterGui.ScreenGui.settings.content.main.item.display.scroll.Basics.Input.key.box.Flex
AdvancedG2L["50"] = Instance.new("UIFlexItem", AdvancedG2L["4e"]);
AdvancedG2L["50"]["Name"] = [[Flex]];
AdvancedG2L["50"]["FlexMode"] = Enum.UIFlexMode.Fill;


-- StarterGui.ScreenGui.settings.content.main.item.display.scroll.Basics.Frame
AdvancedG2L["51"] = Instance.new("Frame", AdvancedG2L["19"]);
AdvancedG2L["51"]["BorderSizePixel"] = 0;
AdvancedG2L["51"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
AdvancedG2L["51"]["Size"] = UDim2.new(1, 0, 0.128, 0);
AdvancedG2L["51"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
AdvancedG2L["51"]["BackgroundTransparency"] = 1;


-- StarterGui.ScreenGui.settings.content.main.item.display.scroll.Basics.Frame.Header
AdvancedG2L["52"] = Instance.new("TextLabel", AdvancedG2L["51"]);
AdvancedG2L["52"]["BorderSizePixel"] = 0;
AdvancedG2L["52"]["TextSize"] = 14;
AdvancedG2L["52"]["TextXAlignment"] = Enum.TextXAlignment.Left;
AdvancedG2L["52"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
AdvancedG2L["52"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
AdvancedG2L["52"]["TextColor3"] = Color3.fromRGB(176, 176, 176);
AdvancedG2L["52"]["BackgroundTransparency"] = 1;
AdvancedG2L["52"]["Size"] = UDim2.new(1, 0, 1, 0);
AdvancedG2L["52"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
AdvancedG2L["52"]["Text"] = [[Basics]];
AdvancedG2L["52"]["AutomaticSize"] = Enum.AutomaticSize.Y;
AdvancedG2L["52"]["Name"] = [[Header]];


-- StarterGui.ScreenGui.settings.content.main.item.display.scroll.Basics.Frame.Header.Padding
AdvancedG2L["53"] = Instance.new("UIPadding", AdvancedG2L["52"]);
AdvancedG2L["53"]["PaddingTop"] = UDim.new(0, 10);
AdvancedG2L["53"]["Name"] = [[Padding]];
AdvancedG2L["53"]["PaddingLeft"] = UDim.new(0, 15);


-- StarterGui.ScreenGui.settings.content.main.item.display.scroll.Basics.Switch
AdvancedG2L["54"] = Instance.new("Frame", AdvancedG2L["19"]);
AdvancedG2L["54"]["BorderSizePixel"] = 0;
AdvancedG2L["54"]["SelectionOrder"] = 3;
AdvancedG2L["54"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
AdvancedG2L["54"]["Size"] = UDim2.new(1, 0, 0, 50);
AdvancedG2L["54"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
AdvancedG2L["54"]["Name"] = [[Switch]];
AdvancedG2L["54"]["LayoutOrder"] = 3;
AdvancedG2L["54"]["BackgroundTransparency"] = 1;

-- Tags
CollectionService:AddTag(AdvancedG2L["54"], [[SettingObject]]);

-- StarterGui.ScreenGui.settings.content.main.item.display.scroll.Basics.Switch.switch
AdvancedG2L["55"] = Instance.new("ImageButton", AdvancedG2L["54"]);
AdvancedG2L["55"]["BorderSizePixel"] = 0;
AdvancedG2L["55"]["AutoButtonColor"] = false;
AdvancedG2L["55"]["ImageTransparency"] = 1;
AdvancedG2L["55"]["BackgroundColor3"] = Color3.fromRGB(23, 23, 23);
AdvancedG2L["55"]["AnchorPoint"] = Vector2.new(1, 0.5);
AdvancedG2L["55"]["Size"] = UDim2.new(0, 45, 0, 27);
AdvancedG2L["55"]["LayoutOrder"] = 99;
AdvancedG2L["55"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
AdvancedG2L["55"]["Name"] = [[switch]];
AdvancedG2L["55"]["Position"] = UDim2.new(1, 0, 0.5, 0);
-- Attributes
AdvancedG2L["55"]:SetAttribute([[Enabled]], true);
AdvancedG2L["55"]:SetAttribute([[State]], false);

-- Tags
CollectionService:AddTag(AdvancedG2L["55"], [[OrbitBooleanSwitch]]);

-- StarterGui.ScreenGui.settings.content.main.item.display.scroll.Basics.Switch.switch.Corner
AdvancedG2L["56"] = Instance.new("UICorner", AdvancedG2L["55"]);
AdvancedG2L["56"]["Name"] = [[Corner]];
AdvancedG2L["56"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.ScreenGui.settings.content.main.item.display.scroll.Basics.Switch.switch.UIPadding
AdvancedG2L["57"] = Instance.new("UIPadding", AdvancedG2L["55"]);
AdvancedG2L["57"]["PaddingRight"] = UDim.new(0, 5);
AdvancedG2L["57"]["PaddingLeft"] = UDim.new(0, 5);


-- StarterGui.ScreenGui.settings.content.main.item.display.scroll.Basics.Switch.switch.circle
AdvancedG2L["58"] = Instance.new("Frame", AdvancedG2L["55"]);
AdvancedG2L["58"]["BorderSizePixel"] = 0;
AdvancedG2L["58"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
AdvancedG2L["58"]["AnchorPoint"] = Vector2.new(0, 0.5);
AdvancedG2L["58"]["Size"] = UDim2.new(0, 19, 0, 19);
AdvancedG2L["58"]["Position"] = UDim2.new(0, 0, 0.5, 0);
AdvancedG2L["58"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
AdvancedG2L["58"]["Name"] = [[circle]];
AdvancedG2L["58"]["BackgroundTransparency"] = 0.95;


-- StarterGui.ScreenGui.settings.content.main.item.display.scroll.Basics.Switch.switch.circle.Corner
AdvancedG2L["59"] = Instance.new("UICorner", AdvancedG2L["58"]);
AdvancedG2L["59"]["Name"] = [[Corner]];
AdvancedG2L["59"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.ScreenGui.settings.content.main.item.display.scroll.Basics.Switch.Padding
AdvancedG2L["5a"] = Instance.new("UIPadding", AdvancedG2L["54"]);
AdvancedG2L["5a"]["PaddingRight"] = UDim.new(0, 12);
AdvancedG2L["5a"]["Name"] = [[Padding]];
AdvancedG2L["5a"]["PaddingLeft"] = UDim.new(0, 12);


-- StarterGui.ScreenGui.settings.content.main.item.display.scroll.Basics.Switch.holder
AdvancedG2L["5b"] = Instance.new("ImageLabel", AdvancedG2L["54"]);
AdvancedG2L["5b"]["BorderSizePixel"] = 0;
AdvancedG2L["5b"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
AdvancedG2L["5b"]["ImageTransparency"] = 1;
AdvancedG2L["5b"]["AnchorPoint"] = Vector2.new(0, 0.5);
AdvancedG2L["5b"]["Size"] = UDim2.new(0, 32, 0, 32);
AdvancedG2L["5b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
AdvancedG2L["5b"]["BackgroundTransparency"] = 0.8;
AdvancedG2L["5b"]["LayoutOrder"] = 1;
AdvancedG2L["5b"]["Name"] = [[holder]];
AdvancedG2L["5b"]["Position"] = UDim2.new(0, 0, 0.5, 0);


-- StarterGui.ScreenGui.settings.content.main.item.display.scroll.Basics.Switch.holder.icon
AdvancedG2L["5c"] = Instance.new("ImageLabel", AdvancedG2L["5b"]);
AdvancedG2L["5c"]["BorderSizePixel"] = 0;
AdvancedG2L["5c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
AdvancedG2L["5c"]["ImageTransparency"] = 0.5;
AdvancedG2L["5c"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
AdvancedG2L["5c"]["Image"] = [[rbxassetid://107742686770693]];
AdvancedG2L["5c"]["Size"] = UDim2.new(0, 30, 0, 30);
AdvancedG2L["5c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
AdvancedG2L["5c"]["BackgroundTransparency"] = 1;
AdvancedG2L["5c"]["LayoutOrder"] = 1;
AdvancedG2L["5c"]["Name"] = [[icon]];
AdvancedG2L["5c"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.ScreenGui.settings.content.main.item.display.scroll.Basics.Switch.holder.Corner
AdvancedG2L["5d"] = Instance.new("UICorner", AdvancedG2L["5b"]);
AdvancedG2L["5d"]["Name"] = [[Corner]];
AdvancedG2L["5d"]["CornerRadius"] = UDim.new(0, 6);


-- StarterGui.ScreenGui.settings.content.main.item.display.scroll.Basics.Switch.Extra
AdvancedG2L["5e"] = Instance.new("Folder", AdvancedG2L["54"]);
AdvancedG2L["5e"]["Name"] = [[Extra]];


-- StarterGui.ScreenGui.settings.content.main.item.display.scroll.Basics.Switch.Extra.Separator
AdvancedG2L["5f"] = Instance.new("Frame", AdvancedG2L["5e"]);
AdvancedG2L["5f"]["BorderSizePixel"] = 0;
AdvancedG2L["5f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
AdvancedG2L["5f"]["AnchorPoint"] = Vector2.new(0.5, 1);
AdvancedG2L["5f"]["Size"] = UDim2.new(2, 0, 0, 1);
AdvancedG2L["5f"]["Position"] = UDim2.new(0.5, 0, 1, 1);
AdvancedG2L["5f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
AdvancedG2L["5f"]["Name"] = [[Separator]];
AdvancedG2L["5f"]["BackgroundTransparency"] = 0.98;


-- StarterGui.ScreenGui.settings.content.main.item.display.scroll.Basics.Switch.List
AdvancedG2L["60"] = Instance.new("UIListLayout", AdvancedG2L["54"]);
AdvancedG2L["60"]["Padding"] = UDim.new(0, 10);
AdvancedG2L["60"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
AdvancedG2L["60"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
AdvancedG2L["60"]["Name"] = [[List]];
AdvancedG2L["60"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.ScreenGui.settings.content.main.item.display.scroll.Basics.Switch.info
AdvancedG2L["61"] = Instance.new("Frame", AdvancedG2L["54"]);
AdvancedG2L["61"]["BorderSizePixel"] = 0;
AdvancedG2L["61"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
AdvancedG2L["61"]["Size"] = UDim2.new(0, 0, 0, 28);
AdvancedG2L["61"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
AdvancedG2L["61"]["Name"] = [[info]];
AdvancedG2L["61"]["LayoutOrder"] = 2;
AdvancedG2L["61"]["BackgroundTransparency"] = 1;


-- StarterGui.ScreenGui.settings.content.main.item.display.scroll.Basics.Switch.info.Flex
AdvancedG2L["62"] = Instance.new("UIFlexItem", AdvancedG2L["61"]);
AdvancedG2L["62"]["Name"] = [[Flex]];
AdvancedG2L["62"]["FlexMode"] = Enum.UIFlexMode.Fill;


-- StarterGui.ScreenGui.settings.content.main.item.display.scroll.Basics.Switch.info.Header
AdvancedG2L["63"] = Instance.new("TextLabel", AdvancedG2L["61"]);
AdvancedG2L["63"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
AdvancedG2L["63"]["BorderSizePixel"] = 0;
AdvancedG2L["63"]["TextSize"] = 14;
AdvancedG2L["63"]["TextXAlignment"] = Enum.TextXAlignment.Left;
AdvancedG2L["63"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
AdvancedG2L["63"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
AdvancedG2L["63"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
AdvancedG2L["63"]["BackgroundTransparency"] = 1;
AdvancedG2L["63"]["Size"] = UDim2.new(1, 0, 0, 0);
AdvancedG2L["63"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
AdvancedG2L["63"]["Text"] = [[Resizing]];
AdvancedG2L["63"]["AutomaticSize"] = Enum.AutomaticSize.Y;
AdvancedG2L["63"]["Name"] = [[Header]];


-- StarterGui.ScreenGui.settings.content.main.item.display.scroll.Basics.Switch.info.Description
AdvancedG2L["64"] = Instance.new("TextLabel", AdvancedG2L["61"]);
AdvancedG2L["64"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
AdvancedG2L["64"]["BorderSizePixel"] = 0;
AdvancedG2L["64"]["TextSize"] = 12;
AdvancedG2L["64"]["TextXAlignment"] = Enum.TextXAlignment.Left;
AdvancedG2L["64"]["TextTransparency"] = 0.7;
AdvancedG2L["64"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
AdvancedG2L["64"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
AdvancedG2L["64"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
AdvancedG2L["64"]["BackgroundTransparency"] = 1;
AdvancedG2L["64"]["AnchorPoint"] = Vector2.new(0, 1);
AdvancedG2L["64"]["Size"] = UDim2.new(1, 0, 0, 0);
AdvancedG2L["64"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
AdvancedG2L["64"]["Text"] = [[Allow the Panel to be Resized.]];
AdvancedG2L["64"]["AutomaticSize"] = Enum.AutomaticSize.Y;
AdvancedG2L["64"]["Name"] = [[Description]];
AdvancedG2L["64"]["Position"] = UDim2.new(0, 0, 1, 0);


-- StarterGui.ScreenGui.settings.content.main.item.display.scroll.UIPadding
AdvancedG2L["65"] = Instance.new("UIPadding", AdvancedG2L["17"]);
AdvancedG2L["65"]["PaddingTop"] = UDim.new(0, 8);
AdvancedG2L["65"]["PaddingRight"] = UDim.new(0, 4);
AdvancedG2L["65"]["PaddingLeft"] = UDim.new(0, 8);
AdvancedG2L["65"]["PaddingBottom"] = UDim.new(0, 8);


-- StarterGui.ScreenGui.settings.content.main.item.display.scroll.item
AdvancedG2L["66"] = Instance.new("Frame", AdvancedG2L["17"]);
AdvancedG2L["66"]["BorderSizePixel"] = 0;
AdvancedG2L["66"]["BackgroundColor3"] = Color3.fromRGB(30, 30, 30);
AdvancedG2L["66"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
AdvancedG2L["66"]["ClipsDescendants"] = true;
AdvancedG2L["66"]["AutomaticSize"] = Enum.AutomaticSize.Y;
AdvancedG2L["66"]["Size"] = UDim2.new(1, 0, 0, 80);
AdvancedG2L["66"]["Position"] = UDim2.new(0.49554, 0, 0.7393, 0);
AdvancedG2L["66"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
AdvancedG2L["66"]["Name"] = [[item]];


-- StarterGui.ScreenGui.settings.content.main.item.display.scroll.item.Corner
AdvancedG2L["67"] = Instance.new("UICorner", AdvancedG2L["66"]);
AdvancedG2L["67"]["Name"] = [[Corner]];
AdvancedG2L["67"]["CornerRadius"] = UDim.new(0, 14);


-- StarterGui.ScreenGui.settings.content.main.item.display.scroll.item.UIListLayout
AdvancedG2L["68"] = Instance.new("UIListLayout", AdvancedG2L["66"]);
AdvancedG2L["68"]["Padding"] = UDim.new(0, 15);
AdvancedG2L["68"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.ScreenGui.settings.content.main.item.display.scroll.item.Selection
AdvancedG2L["69"] = Instance.new("ImageButton", AdvancedG2L["66"]);
AdvancedG2L["69"]["Active"] = false;
AdvancedG2L["69"]["BorderSizePixel"] = 0;
AdvancedG2L["69"]["BackgroundTransparency"] = 1;
AdvancedG2L["69"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
AdvancedG2L["69"]["Selectable"] = false;
AdvancedG2L["69"]["Size"] = UDim2.new(1, 0, 0, 50);
AdvancedG2L["69"]["LayoutOrder"] = 5;
AdvancedG2L["69"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
AdvancedG2L["69"]["Name"] = [[Selection]];

-- Tags
CollectionService:AddTag(AdvancedG2L["69"], [[SettingObject]]);

-- StarterGui.ScreenGui.settings.content.main.item.display.scroll.item.Selection.Padding
AdvancedG2L["6a"] = Instance.new("UIPadding", AdvancedG2L["69"]);
AdvancedG2L["6a"]["PaddingRight"] = UDim.new(0, 12);
AdvancedG2L["6a"]["Name"] = [[Padding]];
AdvancedG2L["6a"]["PaddingLeft"] = UDim.new(0, 12);


-- StarterGui.ScreenGui.settings.content.main.item.display.scroll.item.Selection.holder
AdvancedG2L["6b"] = Instance.new("ImageLabel", AdvancedG2L["69"]);
AdvancedG2L["6b"]["BorderSizePixel"] = 0;
AdvancedG2L["6b"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
AdvancedG2L["6b"]["ImageTransparency"] = 1;
AdvancedG2L["6b"]["AnchorPoint"] = Vector2.new(0, 0.5);
AdvancedG2L["6b"]["Size"] = UDim2.new(0, 32, 0, 32);
AdvancedG2L["6b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
AdvancedG2L["6b"]["BackgroundTransparency"] = 0.8;
AdvancedG2L["6b"]["LayoutOrder"] = 1;
AdvancedG2L["6b"]["Name"] = [[holder]];
AdvancedG2L["6b"]["Position"] = UDim2.new(0, 0, 0.5, 0);


-- StarterGui.ScreenGui.settings.content.main.item.display.scroll.item.Selection.holder.icon
AdvancedG2L["6c"] = Instance.new("ImageLabel", AdvancedG2L["6b"]);
AdvancedG2L["6c"]["BorderSizePixel"] = 0;
AdvancedG2L["6c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
AdvancedG2L["6c"]["ImageTransparency"] = 0.5;
AdvancedG2L["6c"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
AdvancedG2L["6c"]["Image"] = [[rbxassetid://129563448979488]];
AdvancedG2L["6c"]["Size"] = UDim2.new(0, 20, 0, 20);
AdvancedG2L["6c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
AdvancedG2L["6c"]["BackgroundTransparency"] = 1;
AdvancedG2L["6c"]["LayoutOrder"] = 1;
AdvancedG2L["6c"]["Name"] = [[icon]];
AdvancedG2L["6c"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.ScreenGui.settings.content.main.item.display.scroll.item.Selection.holder.Corner
AdvancedG2L["6d"] = Instance.new("UICorner", AdvancedG2L["6b"]);
AdvancedG2L["6d"]["Name"] = [[Corner]];
AdvancedG2L["6d"]["CornerRadius"] = UDim.new(0, 6);


-- StarterGui.ScreenGui.settings.content.main.item.display.scroll.item.Selection.List
AdvancedG2L["6e"] = Instance.new("UIListLayout", AdvancedG2L["69"]);
AdvancedG2L["6e"]["Padding"] = UDim.new(0, 10);
AdvancedG2L["6e"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
AdvancedG2L["6e"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
AdvancedG2L["6e"]["Name"] = [[List]];
AdvancedG2L["6e"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.ScreenGui.settings.content.main.item.display.scroll.item.Selection.info
AdvancedG2L["6f"] = Instance.new("Frame", AdvancedG2L["69"]);
AdvancedG2L["6f"]["BorderSizePixel"] =
<truncated 22571 bytes>

NOTE: The output was truncated because it was too long. Use a more targeted query or a smaller range to get the information you need.
    AdvancedG2L["2"].Visible = false
    UI.item.MouseButton1Click:Connect(function()
        UI.selection.Visible = false
        AdvancedG2L["2"].Visible = true
    end)

    return UI.settings
end

local SettignsTab = {}
function SettignsTab:Create(WindowTable)
    local settingsFrame = CreateSettings(WindowTable)
end
return SettignsTab
