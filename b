-- Instances: 154 | Scripts: 0 | Modules: 0 | Tags: 14
local CollectionService = game:GetService("CollectionService");
local G2L = {};

-- StarterGui.ScreenGui
G2L["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
G2L["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;


-- StarterGui.ScreenGui.settings
G2L["2"] = Instance.new("Frame", G2L["1"]);
G2L["2"]["BorderSizePixel"] = 0;
G2L["2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["2"]["ClipsDescendants"] = true;
G2L["2"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["2"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2"]["Name"] = [[settings]];
G2L["2"]["LayoutOrder"] = 9;
G2L["2"]["BackgroundTransparency"] = 1;


-- StarterGui.ScreenGui.settings.List
G2L["3"] = Instance.new("UIListLayout", G2L["2"]);
G2L["3"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["3"]["Name"] = [[List]];


-- StarterGui.ScreenGui.settings.header
G2L["4"] = Instance.new("Frame", G2L["2"]);
G2L["4"]["ZIndex"] = 99;
G2L["4"]["BorderSizePixel"] = 0;
G2L["4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["4"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4"]["Name"] = [[header]];
G2L["4"]["LayoutOrder"] = -99;
G2L["4"]["BackgroundTransparency"] = 1;


-- StarterGui.ScreenGui.settings.header.list
G2L["5"] = Instance.new("UIListLayout", G2L["4"]);
G2L["5"]["Padding"] = UDim.new(0, 1);
G2L["5"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["5"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["5"]["Name"] = [[list]];


-- StarterGui.ScreenGui.settings.header.stroke
G2L["6"] = Instance.new("UIStroke", G2L["4"]);
G2L["6"]["Transparency"] = 0.95;
G2L["6"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["6"]["Name"] = [[stroke]];


-- StarterGui.ScreenGui.settings.header.name
G2L["7"] = Instance.new("TextLabel", G2L["4"]);
G2L["7"]["BorderSizePixel"] = 0;
G2L["7"]["AutoLocalize"] = false;
G2L["7"]["TextSize"] = 16;
G2L["7"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["7"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
G2L["7"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7"]["BackgroundTransparency"] = 1;
G2L["7"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["7"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7"]["Text"] = [[Settings]];
G2L["7"]["AutomaticSize"] = Enum.AutomaticSize.XY;
G2L["7"]["Name"] = [[name]];
G2L["7"]["Position"] = UDim2.new(0.5, 0, 0, 0);
-- Attributes
G2L["7"]:SetAttribute([[Key]], [[orbit.settings.header]]);

-- Tags
CollectionService:AddTag(G2L["7"], [[OrbitTranslation]]);

-- StarterGui.ScreenGui.settings.header.name.flex
G2L["8"] = Instance.new("UIFlexItem", G2L["7"]);
G2L["8"]["Name"] = [[flex]];
G2L["8"]["FlexMode"] = Enum.UIFlexMode.Fill;


-- StarterGui.ScreenGui.settings.header.desc
G2L["9"] = Instance.new("TextLabel", G2L["4"]);
G2L["9"]["BorderSizePixel"] = 0;
G2L["9"]["AutoLocalize"] = false;
G2L["9"]["TextSize"] = 14;
G2L["9"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["9"]["TextTransparency"] = 0.5;
G2L["9"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["9"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9"]["BackgroundTransparency"] = 1;
G2L["9"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["9"]["Size"] = UDim2.new(0, 0, 0, 14);
G2L["9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9"]["Text"] = [[Personalize your panel without requiring any coding knowledge.]];
G2L["9"]["LayoutOrder"] = 1;
G2L["9"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["9"]["Name"] = [[desc]];
G2L["9"]["Position"] = UDim2.new(0.5, 0, 0, 0);
-- Attributes
G2L["9"]:SetAttribute([[Key]], [[orbit.settings.description]]);

-- Tags
CollectionService:AddTag(G2L["9"], [[OrbitTranslation]]);

-- StarterGui.ScreenGui.settings.header.padding
G2L["a"] = Instance.new("UIPadding", G2L["4"]);
G2L["a"]["PaddingTop"] = UDim.new(0, 16);
G2L["a"]["PaddingRight"] = UDim.new(0, 26);
G2L["a"]["Name"] = [[padding]];
G2L["a"]["PaddingLeft"] = UDim.new(0, 26);
G2L["a"]["PaddingBottom"] = UDim.new(0, 16);


-- StarterGui.ScreenGui.settings.content
G2L["b"] = Instance.new("Frame", G2L["2"]);
G2L["b"]["BorderSizePixel"] = 0;
G2L["b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b"]["Name"] = [[content]];
G2L["b"]["BackgroundTransparency"] = 1;


-- StarterGui.ScreenGui.settings.content.Flex
G2L["c"] = Instance.new("UIFlexItem", G2L["b"]);
G2L["c"]["Name"] = [[Flex]];
G2L["c"]["FlexMode"] = Enum.UIFlexMode.Fill;


-- StarterGui.ScreenGui.settings.content.main
G2L["d"] = Instance.new("Frame", G2L["b"]);
G2L["d"]["BorderSizePixel"] = 0;
G2L["d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d"]["ClipsDescendants"] = true;
G2L["d"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d"]["Name"] = [[main]];
G2L["d"]["LayoutOrder"] = 2;
G2L["d"]["BackgroundTransparency"] = 1;


-- StarterGui.ScreenGui.settings.content.main.Flex
G2L["e"] = Instance.new("UIFlexItem", G2L["d"]);
G2L["e"]["Name"] = [[Flex]];
G2L["e"]["FlexMode"] = Enum.UIFlexMode.Fill;


-- StarterGui.ScreenGui.settings.content.main.Page
G2L["f"] = Instance.new("UIPageLayout", G2L["d"]);
G2L["f"]["EasingStyle"] = Enum.EasingStyle.Exponential;
G2L["f"]["GamepadInputEnabled"] = false;
G2L["f"]["FillDirection"] = Enum.FillDirection.Vertical;
G2L["f"]["TouchInputEnabled"] = false;
G2L["f"]["Animated"] = false;
G2L["f"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["f"]["Name"] = [[Page]];
G2L["f"]["ScrollWheelInputEnabled"] = false;
G2L["f"]["TweenTime"] = 0.15;


-- StarterGui.ScreenGui.settings.content.main.Page.item
G2L["10"] = Instance.new("ScrollingFrame", G2L["f"]);
G2L["10"]["Active"] = true;
G2L["10"]["ScrollingDirection"] = Enum.ScrollingDirection.Y;
G2L["10"]["BorderSizePixel"] = 0;
G2L["10"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
G2L["10"]["Name"] = [[item]];
G2L["10"]["ScrollBarImageTransparency"] = 1;
G2L["10"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["10"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["10"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
G2L["10"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["10"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
G2L["10"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["10"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["10"]["ScrollBarThickness"] = 0;
G2L["10"]["LayoutOrder"] = 3;
G2L["10"]["BackgroundTransparency"] = 1;


-- StarterGui.ScreenGui.settings.content.main.Page.item.display
G2L["11"] = Instance.new("Frame", G2L["10"]);
G2L["11"]["BorderSizePixel"] = 0;
G2L["11"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["11"]["Size"] = UDim2.new(1, 0, 1, -85);
G2L["11"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["11"]["Name"] = [[display]];
G2L["11"]["LayoutOrder"] = 2;


-- StarterGui.ScreenGui.settings.content.main.Page.item.display.fade
G2L["12"] = Instance.new("Frame", G2L["11"]);
G2L["12"]["BorderSizePixel"] = 0;
G2L["12"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["12"]["AnchorPoint"] = Vector2.new(0.5, 1);
G2L["12"]["Size"] = UDim2.new(1, -25, 0, 60);
G2L["12"]["Position"] = UDim2.new(0.5, 0, 1, 0);
G2L["12"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["12"]["Name"] = [[fade]];


-- StarterGui.ScreenGui.settings.content.main.Page.item.display.fade.UIGradient
G2L["13"] = Instance.new("UIGradient", G2L["12"]);
G2L["13"]["Rotation"] = 90;
G2L["13"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 1),NumberSequenceKeypoint.new(1.000, 0)};


-- StarterGui.ScreenGui.settings.content.main.Page.item.display.corner
G2L["14"] = Instance.new("UICorner", G2L["11"]);
G2L["14"]["Name"] = [[corner]];
G2L["14"]["CornerRadius"] = UDim.new(0, 16);


-- StarterGui.ScreenGui.settings.content.main.Page.item.display.scroll
G2L["15"] = Instance.new("ScrollingFrame", G2L["11"]);
G2L["15"]["Active"] = true;
G2L["15"]["ScrollingDirection"] = Enum.ScrollingDirection.Y;
G2L["15"]["BorderSizePixel"] = 0;
G2L["15"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
G2L["15"]["VerticalScrollBarInset"] = Enum.ScrollBarInset.ScrollBar;
G2L["15"]["Name"] = [[scroll]];
G2L["15"]["ScrollBarImageTransparency"] = 1;
G2L["15"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["15"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["15"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
G2L["15"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["15"]["ScrollBarImageColor3"] = Color3.fromRGB(50, 50, 50);
G2L["15"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["15"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["15"]["ScrollBarThickness"] = 4;
G2L["15"]["LayoutOrder"] = 2;
G2L["15"]["BackgroundTransparency"] = 1;


-- StarterGui.ScreenGui.settings.content.main.Page.item.display.scroll.List
G2L["16"] = Instance.new("UIListLayout", G2L["15"]);
G2L["16"]["HorizontalFlex"] = Enum.UIFlexAlignment.SpaceAround;
G2L["16"]["Padding"] = UDim.new(0, 12);
G2L["16"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["16"]["Name"] = [[List]];


-- StarterGui.ScreenGui.settings.content.main.Page.item.display.scroll.List.item
G2L["17"] = Instance.new("CanvasGroup", G2L["16"]);
G2L["17"]["BorderSizePixel"] = 0;
G2L["17"]["BackgroundColor3"] = Color3.fromRGB(30, 30, 30);
G2L["17"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["17"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["17"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["17"]["Name"] = [[item]];

-- Tags
CollectionService:AddTag(G2L["17"], [[OrbitSettingsCategory]]);
CollectionService:AddTag(G2L["17"], [[OrbitSettingsThemes]]);

-- StarterGui.ScreenGui.settings.content.main.Page.item.display.scroll.List.item.Corner
G2L["18"] = Instance.new("UICorner", G2L["17"]);
G2L["18"]["Name"] = [[Corner]];
G2L["18"]["CornerRadius"] = UDim.new(0, 14);


-- StarterGui.ScreenGui.settings.content.main.Page.item.display.scroll.List.item.List
G2L["19"] = Instance.new("UIListLayout", G2L["17"]);
G2L["19"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["19"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["19"]["Name"] = [[List]];


-- StarterGui.ScreenGui.settings.content.main.Page.item.display.scroll.List.item.List.Button
G2L["1a"] = Instance.new("ImageButton", G2L["19"]);
G2L["1a"]["Active"] = false;
G2L["1a"]["BorderSizePixel"] = 0;
G2L["1a"]["ImageTransparency"] = 1;
G2L["1a"]["BackgroundTransparency"] = 1;
G2L["1a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1a"]["Selectable"] = false;
G2L["1a"]["Size"] = UDim2.new(1, 0, 0, 50);
G2L["1a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1a"]["Name"] = [[Button]];

-- Tags
CollectionService:AddTag(G2L["1a"], [[SettingObject]]);

-- StarterGui.ScreenGui.settings.content.main.Page.item.display.scroll.List.item.List.Button.Padding
G2L["1b"] = Instance.new("UIPadding", G2L["1a"]);
G2L["1b"]["PaddingRight"] = UDim.new(0, 12);
G2L["1b"]["Name"] = [[Padding]];
G2L["1b"]["PaddingLeft"] = UDim.new(0, 12);


-- StarterGui.ScreenGui.settings.content.main.Page.item.display.scroll.List.item.List.Button.holder
G2L["1c"] = Instance.new("ImageLabel", G2L["1a"]);
G2L["1c"]["BorderSizePixel"] = 0;
G2L["1c"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1c"]["ImageTransparency"] = 1;
G2L["1c"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["1c"]["Size"] = UDim2.new(0, 32, 0, 32);
G2L["1c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1c"]["BackgroundTransparency"] = 0.8;
G2L["1c"]["LayoutOrder"] = 1;
G2L["1c"]["Name"] = [[holder]];
G2L["1c"]["Position"] = UDim2.new(0, 0, 0.5, 0);


-- StarterGui.ScreenGui.settings.content.main.Page.item.display.scroll.List.item.List.Button.holder.icon
G2L["1d"] = Instance.new("ImageLabel", G2L["1c"]);
G2L["1d"]["BorderSizePixel"] = 0;
G2L["1d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1d"]["ImageTransparency"] = 0.5;
G2L["1d"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["1d"]["Image"] = [[rbxassetid://11293977610]];
G2L["1d"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["1d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1d"]["BackgroundTransparency"] = 1;
G2L["1d"]["LayoutOrder"] = 1;
G2L["1d"]["Name"] = [[icon]];
G2L["1d"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.ScreenGui.settings.content.main.Page.item.display.scroll.List.item.List.Button.holder.Corner
G2L["1e"] = Instance.new("UICorner", G2L["1c"]);
G2L["1e"]["Name"] = [[Corner]];
G2L["1e"]["CornerRadius"] = UDim.new(0, 6);


-- StarterGui.ScreenGui.settings.content.main.Page.item.display.scroll.List.item.List.Button.Extra
G2L["1f"] = Instance.new("Folder", G2L["1a"]);
G2L["1f"]["Name"] = [[Extra]];


-- StarterGui.ScreenGui.settings.content.main.Page.item.display.scroll.List.item.List.Button.Extra.Separator
G2L["20"] = Instance.new("Frame", G2L["1f"]);
G2L["20"]["BorderSizePixel"] = 0;
G2L["20"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["20"]["AnchorPoint"] = Vector2.new(0.5, 1);
G2L["20"]["Size"] = UDim2.new(2, 0, 0, 1);
G2L["20"]["Position"] = UDim2.new(0.5, 0, 1, 1);
G2L["20"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["20"]["Name"] = [[Separator]];
G2L["20"]["BackgroundTransparency"] = 0.98;


-- StarterGui.ScreenGui.settings.content.main.Page.item.display.scroll.List.item.List.Button.List
G2L["21"] = Instance.new("UIListLayout", G2L["1a"]);
G2L["21"]["Padding"] = UDim.new(0, 10);
G2L["21"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["21"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["21"]["Name"] = [[List]];
G2L["21"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.ScreenGui.settings.content.main.Page.item.display.scroll.List.item.List.Button.info
G2L["22"] = Instance.new("Frame", G2L["1a"]);
G2L["22"]["BorderSizePixel"] = 0;
G2L["22"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["22"]["Size"] = UDim2.new(0, 0, 0, 28);
G2L["22"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["22"]["Name"] = [[info]];
G2L["22"]["LayoutOrder"] = 2;
G2L["22"]["BackgroundTransparency"] = 1;


-- StarterGui.ScreenGui.settings.content.main.Page.item.display.scroll.List.item.List.Button.info.Flex
G2L["23"] = Instance.new("UIFlexItem", G2L["22"]);
G2L["23"]["Name"] = [[Flex]];
G2L["23"]["FlexMode"] = Enum.UIFlexMode.Fill;


-- StarterGui.ScreenGui.settings.content.main.Page.item.display.scroll.List.item.List.Button.info.Header
G2L["24"] = Instance.new("TextLabel", G2L["22"]);
G2L["24"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
G2L["24"]["BorderSizePixel"] = 0;
G2L["24"]["TextSize"] = 14;
G2L["24"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["24"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["24"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["24"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["24"]["BackgroundTransparency"] = 1;
G2L["24"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["24"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["24"]["Text"] = [[Name]];
G2L["24"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["24"]["Name"] = [[Header]];


-- StarterGui.ScreenGui.settings.content.main.Page.item.display.scroll.List.item.List.Button.info.Description
G2L["25"] = Instance.new("TextLabel", G2L["22"]);
G2L["25"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
G2L["25"]["BorderSizePixel"] = 0;
G2L["25"]["TextSize"] = 12;
G2L["25"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["25"]["TextTransparency"] = 0.7;
G2L["25"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["25"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["25"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["25"]["BackgroundTransparency"] = 1;
G2L["25"]["AnchorPoint"] = Vector2.new(0, 1);
G2L["25"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["25"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["25"]["Text"] = [[Short description]];
G2L["25"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["25"]["Name"] = [[Description]];
G2L["25"]["Position"] = UDim2.new(0, 0, 1, 0);


-- StarterGui.ScreenGui.settings.content.main.Page.item.display.scroll.List.item.List.Text
G2L["26"] = Instance.new("Frame", G2L["19"]);
G2L["26"]["BorderSizePixel"] = 0;
G2L["26"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["26"]["Size"] = UDim2.new(1, 0, 0, 50);
G2L["26"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["26"]["Name"] = [[Text]];
G2L["26"]["BackgroundTransparency"] = 1;

-- Tags
CollectionService:AddTag(G2L["26"], [[SettingObject]]);

-- StarterGui.ScreenGui.settings.content.main.Page.item.display.scroll.List.item.List.Text.Padding
G2L["27"] = Instance.new("UIPadding", G2L["26"]);
G2L["27"]["PaddingRight"] = UDim.new(0, 12);
G2L["27"]["Name"] = [[Padding]];
G2L["27"]["PaddingLeft"] = UDim.new(0, 12);


-- StarterGui.ScreenGui.settings.content.main.Page.item.display.scroll.List.item.List.Text.holder
G2L["28"] = Instance.new("ImageLabel", G2L["26"]);
G2L["28"]["BorderSizePixel"] = 0;
G2L["28"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["28"]["ImageTransparency"] = 1;
G2L["28"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["28"]["Size"] = UDim2.new(0, 32, 0, 32);
G2L["28"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["28"]["BackgroundTransparency"] = 0.8;
G2L["28"]["LayoutOrder"] = 1;
G2L["28"]["Name"] = [[holder]];
G2L["28"]["Position"] = UDim2.new(0, 0, 0.5, 0);


-- StarterGui.ScreenGui.settings.content.main.Page.item.display.scroll.List.item.List.Text.holder.icon
G2L["29"] = Instance.new("ImageLabel", G2L["28"]);
G2L["29"]["BorderSizePixel"] = 0;
G2L["29"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["29"]["ImageTransparency"] = 0.5;
G2L["29"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["29"]["Image"] = [[rbxassetid://11293977610]];
G2L["29"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["29"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["29"]["BackgroundTransparency"] = 1;
G2L["29"]["LayoutOrder"] = 1;
G2L["29"]["Name"] = [[icon]];
G2L["29"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.ScreenGui.settings.content.main.Page.item.display.scroll.List.item.List.Text.holder.Corner
G2L["2a"] = Instance.new("UICorner", G2L["28"]);
G2L["2a"]["Name"] = [[Corner]];
G2L["2a"]["CornerRadius"] = UDim.new(0, 6);


-- StarterGui.ScreenGui.settings.content.main.Page.item.display.scroll.List.item.List.Text.Extra
G2L["2b"] = Instance.new("Folder", G2L["26"]);
G2L["2b"]["Name"] = [[Extra]];


-- StarterGui.ScreenGui.settings.content.main.Page.item.display.scroll.List.item.List.Text.Extra.Separator
G2L["2c"] = Instance.new("Frame", G2L["2b"]);
G2L["2c"]["BorderSizePixel"] = 0;
G2L["2c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2c"]["AnchorPoint"] = Vector2.new(0.5, 1);
G2L["2c"]["Size"] = UDim2.new(2, 0, 0, 1);
G2L["2c"]["Position"] = UDim2.new(0.5, 0, 1, 1);
G2L["2c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2c"]["Name"] = [[Separator]];
G2L["2c"]["BackgroundTransparency"] = 0.98;


-- StarterGui.ScreenGui.settings.content.main.Page.item.display.scroll.List.item.List.Text.List
G2L["2d"] = Instance.new("UIListLayout", G2L["26"]);
G2L["2d"]["Padding"] = UDim.new(0, 10);
G2L["2d"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["2d"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["2d"]["Name"] = [[List]];
G2L["2d"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.ScreenGui.settings.content.main.Page.item.display.scroll.List.item.List.Text.info
G2L["2e"] = Instance.new("Frame", G2L["26"]);
G2L["2e"]["BorderSizePixel"] = 0;
G2L["2e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2e"]["Size"] = UDim2.new(0, 0, 0, 28);
G2L["2e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2e"]["Name"] = [[info]];
G2L["2e"]["LayoutOrder"] = 2;
G2L["2e"]["BackgroundTransparency"] = 1;


-- StarterGui.ScreenGui.settings.content.main.Page.item.display.scroll.List.item.List.Text.info.Flex
G2L["2f"] = Instance.new("UIFlexItem", G2L["2e"]);
G2L["2f"]["Name"] = [[Flex]];
G2L["2f"]["FlexMode"] = Enum.UIFlexMode.Fill;


-- StarterGui.ScreenGui.settings.content.main.Page.item.display.scroll.List.item.List.Text.info.Header
G2L["30"] = Instance.new("TextLabel", G2L["2e"]);
G2L["30"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
G2L["30"]["BorderSizePixel"] = 0;
G2L["30"]["TextSize"] = 14;
G2L["30"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["30"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["30"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["30"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["30"]["BackgroundTransparency"] = 1;
G2L["30"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["30"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["30"]["Text"] = [[Name]];
G2L["30"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["30"]["Name"] = [[Header]];


-- StarterGui.ScreenGui.settings.content.main.Page.item.display.scroll.List.item.List.Text.info.Description
G2L["31"] = Instance.new("TextLabel", G2L["2e"]);
G2L["31"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
G2L["31"]["BorderSizePixel"] = 0;
G2L["31"]["TextSize"] = 12;
G2L["31"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["31"]["TextTransparency"] = 0.7;
G2L["31"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["31"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["31"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["31"]["BackgroundTransparency"] = 1;
G2L["31"]["AnchorPoint"] = Vector2.new(0, 1);
G2L["31"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["31"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["31"]["Text"] = [[Short description]];
G2L["31"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["31"]["Name"] = [[Description]];
G2L["31"]["Position"] = UDim2.new(0, 0, 1, 0);


-- StarterGui.ScreenGui.settings.content.main.Page.item.display.scroll.List.item.List.Text.input
G2L["32"] = Instance.new("Frame", G2L["26"]);
G2L["32"]["BorderSizePixel"] = 0;
G2L["32"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["32"]["Size"] = UDim2.new(0.31496, 0, 1, 0);
G2L["32"]["Position"] = UDim2.new(0.68504, 0, 0, 0);
G2L["32"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["32"]["Name"] = [[input]];
G2L["32"]["LayoutOrder"] = 2;
G2L["32"]["BackgroundTransparency"] = 1;


-- StarterGui.ScreenGui.settings.content.main.Page.item.display.scroll.List.item.List.Text.input.box
G2L["33"] = Instance.new("TextBox", G2L["32"]);
G2L["33"]["Name"] = [[box]];
G2L["33"]["PlaceholderColor3"] = Color3.fromRGB(57, 57, 57);
G2L["33"]["BorderSizePixel"] = 0;
G2L["33"]["TextWrapped"] = true;
G2L["33"]["AutoLocalize"] = false;
G2L["33"]["TextSize"] = 15;
G2L["33"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["33"]["BackgroundColor3"] = Color3.fromRGB(23, 23, 23);
G2L["33"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["33"]["PlaceholderText"] = [[Type...]];
G2L["33"]["Size"] = UDim2.new(0.9895, 0, -0.76, 73);
G2L["33"]["Position"] = UDim2.new(0, 0, 0.14, 0);
G2L["33"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["33"]["Text"] = [[]];
G2L["33"]["LayoutOrder"] = 1;


-- StarterGui.ScreenGui.settings.content.main.Page.item.display.scroll.List.item.List.Text.input.box.Corner
G2L["34"] = Instance.new("UICorner", G2L["33"]);
G2L["34"]["Name"] = [[Corner]];
G2L["34"]["CornerRadius"] = UDim.new(0, 18);


-- StarterGui.ScreenGui.settings.content.main.Page.item.display.scroll.List.item.List.Text.input.box.Flex
G2L["35"] = Instance.new("UIFlexItem", G2L["33"]);
G2L["35"]["Name"] = [[Flex]];
G2L["35"]["FlexMode"] = Enum.UIFlexMode.Fill;


-- StarterGui.ScreenGui.settings.content.main.Page.item.display.scroll.List.item.List.Text.apply
G2L["36"] = Instance.new("Frame", G2L["26"]);
G2L["36"]["BorderSizePixel"] = 0;
G2L["36"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["36"]["Size"] = UDim2.new(0.17848, 0, 1, 0);
G2L["36"]["Position"] = UDim2.new(0.82152, 0, 0, 0);
G2L["36"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["36"]["Name"] = [[apply]];
G2L["36"]["LayoutOrder"] = 2;
G2L["36"]["BackgroundTransparency"] = 1;


-- StarterGui.ScreenGui.settings.content.main.Page.item.display.scroll.List.item.List.Text.apply.button
G2L["37"] = Instance.new("TextButton", G2L["36"]);
G2L["37"]["TextWrapped"] = true;
G2L["37"]["BorderSizePixel"] = 0;
G2L["37"]["AutoLocalize"] = false;
G2L["37"]["TextSize"] = 15;
G2L["37"]["AutoButtonColor"] = false;
G2L["37"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["37"]["BackgroundColor3"] = Color3.fromRGB(23, 23, 23);
G2L["37"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["37"]["Size"] = UDim2.new(0.9895, 0, -0.76, 73);
G2L["37"]["LayoutOrder"] = 1;
G2L["37"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["37"]["Text"] = [[Apply]];
G2L["37"]["Name"] = [[button]];
G2L["37"]["Position"] = UDim2.new(0, 0, 0.14, 0);


-- StarterGui.ScreenGui.settings.content.main.Page.item.display.scroll.List.item.List.Text.apply.button.Corner
G2L["38"] = Instance.new("UICorner", G2L["37"]);
G2L["38"]["Name"] = [[Corner]];
G2L["38"]["CornerRadius"] = UDim.new(0, 18);


-- StarterGui.ScreenGui.settings.content.main.Page.item.display.scroll.List.item.List.Text.apply.button.Flex
G2L["39"] = Instance.new("UIFlexItem", G2L["37"]);
G2L["39"]["Name"] = [[Flex]];
G2L["39"]["FlexMode"] = Enum.UIFlexMode.Fill;


-- StarterGui.ScreenGui.settings.content.main.Page.item.display.scroll.List.item.List.Switch
G2L["3a"] = Instance.new("Frame", G2L["19"]);
G2L["3a"]["BorderSizePixel"] = 0;
G2L["3a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3a"]["Size"] = UDim2.new(1, 0, 0, 50);
G2L["3a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3a"]["Name"] = [[Switch]];
G2L["3a"]["BackgroundTransparency"] = 1;

-- Tags
CollectionService:AddTag(G2L["3a"], [[SettingObject]]);

-- StarterGui.ScreenGui.settings.content.main.Page.item.display.scroll.List.item.List.Switch.switch
G2L["3b"] = Instance.new("ImageButton", G2L["3a"]);
G2L["3b"]["BorderSizePixel"] = 0;
G2L["3b"]["AutoButtonColor"] = false;
G2L["3b"]["ImageTransparency"] = 1;
G2L["3b"]["BackgroundColor3"] = Color3.fromRGB(23, 23, 23);
G2L["3b"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["3b"]["Size"] = UDim2.new(0, 45, 0, 27);
G2L["3b"]["LayoutOrder"] = 99;
G2L["3b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3b"]["Name"] = [[switch]];
G2L["3b"]["Position"] = UDim2.new(1, 0, 0.5, 0);
-- Attributes
G2L["3b"]:SetAttribute([[Enabled]], true);
G2L["3b"]:SetAttribute([[State]], false);

-- Tags
CollectionService:AddTag(G2L["3b"], [[OrbitBooleanSwitch]]);

-- StarterGui.ScreenGui.settings.content.main.Page.item.display.scroll.List.item.List.Switch.switch.Corner
G2L["3c"] = Instance.new("UICorner", G2L["3b"]);
G2L["3c"]["Name"] = [[Corner]];
G2L["3c"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.ScreenGui.settings.content.main.Page.item.display.scroll.List.item.List.Switch.switch.UIPadding
G2L["3d"] = Instance.new("UIPadding", G2L["3b"]);
G2L["3d"]["PaddingRight"] = UDim.new(0, 5);
G2L["3d"]["PaddingLeft"] = UDim.new(0, 5);


-- StarterGui.ScreenGui.settings.content.main.Page.item.display.scroll.List.item.List.Switch.switch.circle
G2L["3e"] = Instance.new("Frame", G2L["3b"]);
G2L["3e"]["BorderSizePixel"] = 0;
G2L["3e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3e"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["3e"]["Size"] = UDim2.new(0, 19, 0, 19);
G2L["3e"]["Position"] = UDim2.new(0, 0, 0.5, 0);
G2L["3e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3e"]["Name"] = [[circle]];
G2L["3e"]["BackgroundTransparency"] = 0.95;


-- StarterGui.ScreenGui.settings.content.main.Page.item.display.scroll.List.item.List.Switch.switch.circle.Corner
G2L["3f"] = Instance.new("UICorner", G2L["3e"]);
G2L["3f"]["Name"] = [[Corner]];
G2L["3f"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.ScreenGui.settings.content.main.Page.item.display.scroll.List.item.List.Switch.Padding
G2L["40"] = Instance.new("UIPadding", G2L["3a"]);
G2L["40"]["PaddingRight"] = UDim.new(0, 12);
G2L["40"]["Name"] = [[Padding]];
G2L["40"]["PaddingLeft"] = UDim.new(0, 12);


-- StarterGui.ScreenGui.settings.content.main.Page.item.display.scroll.List.item.List.Switch.holder
G2L["41"] = Instance.new("ImageLabel", G2L["3a"]);
G2L["41"]["BorderSizePixel"] = 0;
G2L["41"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["41"]["ImageTransparency"] = 1;
G2L["41"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["41"]["Size"] = UDim2.new(0, 32, 0, 32);
G2L["41"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["41"]["BackgroundTransparency"] = 0.8;
G2L["41"]["LayoutOrder"] = 1;
G2L["41"]["Name"] = [[holder]];
G2L["41"]["Position"] = UDim2.new(0, 0, 0.5, 0);


-- StarterGui.ScreenGui.settings.content.main.Page.item.display.scroll.List.item.List.Switch.holder.icon
G2L["42"] = Instance.new("ImageLabel", G2L["41"]);
G2L["42"]["BorderSizePixel"] = 0;
G2L["42"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["42"]["ImageTransparency"] = 0.5;
G2L["42"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["42"]["Image"] = [[rbxassetid://11293977610]];
G2L["42"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["42"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["42"]["BackgroundTransparency"] = 1;
G2L["42"]["LayoutOrder"] = 1;
G2L["42"]["Name"] = [[icon]];
G2L["42"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.ScreenGui.settings.content.main.Page.item.display.scroll.List.item.List.Switch.holder.Corner
G2L["43"] = Instance.new("UICorner", G2L["41"]);
G2L["43"]["Name"] = [[Corner]];
G2L["43"]["CornerRadius"] = UDim.new(0, 6);


-- StarterGui.ScreenGui.settings.content.main.Page.item.display.scroll.List.item.List.Switch.Extra
G2L["44"] = Instance.new("Folder", G2L["3a"]);
G2L["44"]["Name"] = [[Extra]];


-- StarterGui.ScreenGui.settings.content.main.Page.item.display.scroll.List.item.List.Switch.Extra.Separator
G2L["45"] = Instance.new("Frame", G2L["44"]);
G2L["45"]["BorderSizePixel"] = 0;
G2L["45"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["45"]["AnchorPoint"] = Vector2.new(0.5, 1);
G2L["45"]["Size"] = UDim2.new(2, 0, 0, 1);
G2L["45"]["Position"] = UDim2.new(0.5, 0, 1, 1);
G2L["45"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["45"]["Name"] = [[Separator]];
G2L["45"]["BackgroundTransparency"] = 0.98;


-- StarterGui.ScreenGui.settings.content.main.Page.item.display.scroll.List.item.List.Switch.List
G2L["46"] = Instance.new("UIListLayout", G2L["3a"]);
G2L["46"]["Padding"] = UDim.new(0, 10);
G2L["46"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["46"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["46"]["Name"] = [[List]];
G2L["46"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.ScreenGui.settings.content.main.Page.item.display.scroll.List.item.List.Switch.info
G2L["47"] = Instance.new("Frame", G2L["3a"]);
G2L["47"]["BorderSizePixel"] = 0;
G2L["47"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["47"]["Size"] = UDim2.new(0, 0, 0, 28);
G2L["47"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["47"]["Name"] = [[info]];
G2L["47"]["LayoutOrder"] = 2;
G2L["47"]["BackgroundTransparency"] = 1;


-- StarterGui.ScreenGui.settings.content.main.Page.item.display.scroll.List.item.List.Switch.info.Flex
G2L["48"] = Instance.new("UIFlexItem", G2L["47"]);
G2L["48"]["Name"] = [[Flex]];
G2L["48"]["FlexMode"] = Enum.UIFlexMode.Fill;


-- StarterGui.ScreenGui.settings.content.main.Page.item.display.scroll.List.item.List.Switch.info.Header
G2L["49"] = Instance.new("TextLabel", G2L["47"]);
G2L["49"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
G2L["49"]["BorderSizePixel"] = 0;
G2L["49"]["TextSize"] = 14;
G2L["49"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["49"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["49"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["49"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["49"]["BackgroundTransparency"] = 1;
G2L["49"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["49"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["49"]["Text"] = [[Name]];
G2L["49"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["49"]["Name"] = [[Header]];


-- StarterGui.ScreenGui.settings.content.main.Page.item.display.scroll.List.item.List.Switch.info.Description
G2L["4a"] = Instance.new("TextLabel", G2L["47"]);
G2L["4a"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
G2L["4a"]["BorderSizePixel"] = 0;
G2L["4a"]["TextSize"] = 12;
G2L["4a"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["4a"]["TextTransparency"] = 0.7;
G2L["4a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4a"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["4a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4a"]["BackgroundTransparency"] = 1;
G2L["4a"]["AnchorPoint"] = Vector2.new(0, 1);
G2L["4a"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["4a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4a"]["Text"] = [[Short description]];
G2L["4a"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["4a"]["Name"] = [[Description]];
G2L["4a"]["Position"] = UDim2.new(0, 0, 1, 0);


-- StarterGui.ScreenGui.settings.content.main.Page.item.display.scroll.List.item.List.Input
G2L["4b"] = Instance.new("Frame", G2L["19"]);
G2L["4b"]["BorderSizePixel"] = 0;
G2L["4b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4b"]["Size"] = UDim2.new(1, 0, 0, 50);
G2L["4b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4b"]["Name"] = [[Input]];
G2L["4b"]["BackgroundTransparency"] = 1;

-- Tags
CollectionService:AddTag(G2L["4b"], [[SettingObject]]);

-- StarterGui.ScreenGui.settings.content.main.Page.item.display.scroll.List.item.List.Input.Padding
G2L["4c"] = Instance.new("UIPadding", G2L["4b"]);
G2L["4c"]["PaddingRight"] = UDim.new(0, 12);
G2L["4c"]["Name"] = [[Padding]];
G2L["4c"]["PaddingLeft"] = UDim.new(0, 12);


-- StarterGui.ScreenGui.settings.content.main.Page.item.display.scroll.List.item.List.Input.holder
G2L["4d"] = Instance.new("ImageLabel", G2L["4b"]);
G2L["4d"]["BorderSizePixel"] = 0;
G2L["4d"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4d"]["ImageTransparency"] = 1;
G2L["4d"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["4d"]["Size"] = UDim2.new(0, 32, 0, 32);
G2L["4d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4d"]["BackgroundTransparency"] = 0.8;
G2L["4d"]["LayoutOrder"] = 1;
G2L["4d"]["Name"] = [[holder]];
G2L["4d"]["Position"] = UDim2.new(0, 0, 0.5, 0);


-- StarterGui.ScreenGui.settings.content.main.Page.item.display.scroll.List.item.List.Input.holder.icon
G2L["4e"] = Instance.new("ImageLabel", G2L["4d"]);
G2L["4e"]["BorderSizePixel"] = 0;
G2L["4e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4e"]["ImageTransparency"] = 0.5;
G2L["4e"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["4e"]["Image"] = [[rbxassetid://11293977610]];
G2L["4e"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["4e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4e"]["BackgroundTransparency"] = 1;
G2L["4e"]["LayoutOrder"] = 1;
G2L["4e"]["Name"] = [[icon]];
G2L["4e"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.ScreenGui.settings.content.main.Page.item.display.scroll.List.item.List.Input.holder.Corner
G2L["4f"] = Instance.new("UICorner", G2L["4d"]);
G2L["4f"]["Name"] = [[Corner]];
G2L["4f"]["CornerRadius"] = UDim.new(0, 6);


-- StarterGui.ScreenGui.settings.content.main.Page.item.display.scroll.List.item.List.Input.Extra
G2L["50"] = Instance.new("Folder", G2L["4b"]);
G2L["50"]["Name"] = [[Extra]];


-- StarterGui.ScreenGui.settings.content.main.Page.item.display.scroll.List.item.List.Input.Extra.Separator
G2L["51"] = Instance.new("Frame", G2L["50"]);
G2L["51"]["BorderSizePixel"] = 0;
G2L["51"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["51"]["AnchorPoint"] = Vector2.new(0.5, 1);
G2L["51"]["Size"] = UDim2.new(2, 0, 0, 1);
G2L["51"]["Position"] = UDim2.new(0.5, 0, 1, 1);
G2L["51"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["51"]["Name"] = [[Separator]];
G2L["51"]["BackgroundTransparency"] = 0.98;


-- StarterGui.ScreenGui.settings.content.main.Page.item.display.scroll.List.item.List.Input.List
G2L["52"] = Instance.new("UIListLayout", G2L["4b"]);
G2L["52"]["Padding"] = UDim.new(0, 10);
G2L["52"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["52"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["52"]["Name"] = [[List]];
G2L["52"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.ScreenGui.settings.content.main.Page.item.display.scroll.List.item.List.Input.info
G2L["53"] = Instance.new("Frame", G2L["4b"]);
G2L["53"]["BorderSizePixel"] = 0;
G2L["53"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["53"]["Size"] = UDim2.new(0, 0, 0, 28);
G2L["53"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["53"]["Name"] = [[info]];
G2L["53"]["LayoutOrder"] = 2;
G2L["53"]["BackgroundTransparency"] = 1;


-- StarterGui.ScreenGui.settings.content.main.Page.item.display.scroll.List.item.List.Input.info.Flex
G2L["54"] = Instance.new("UIFlexItem", G2L["53"]);
G2L["54"]["Name"] = [[Flex]];
G2L["54"]["FlexMode"] = Enum.UIFlexMode.Fill;


-- StarterGui.ScreenGui.settings.content.main.Page.item.display.scroll.List.item.List.Input.info.Header
G2L["55"] = Instance.new("TextLabel", G2L["53"]);
G2L["55"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
G2L["55"]["BorderSizePixel"] = 0;
G2L["55"]["TextSize"] = 14;
G2L["55"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["55"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["55"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["55"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["55"]["BackgroundTransparency"] = 1;
G2L["55"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["55"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["55"]["Text"] = [[Name]];
G2L["55"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["55"]["Name"] = [[Header]];


-- StarterGui.ScreenGui.settings.content.main.Page.item.display.scroll.List.item.List.Input.info.Description
G2L["56"] = Instance.new("TextLabel", G2L["53"]);
G2L["56"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
G2L["56"]["BorderSizePixel"] = 0;
G2L["56"]["TextSize"] = 12;
G2L["56"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["56"]["TextTransparency"] = 0.7;
G2L["56"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["56"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["56"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["56"]["BackgroundTransparency"] = 1;
G2L["56"]["AnchorPoint"] = Vector2.new(0, 1);
G2L["56"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["56"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["56"]["Text"] = [[Short description]];
G2L["56"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["56"]["Name"] = [[Description]];
G2L["56"]["Position"] = UDim2.new(0, 0, 1, 0);


-- StarterGui.ScreenGui.settings.content.main.Page.item.display.scroll.List.item.List.Input.reset
G2L["57"] = Instance.new("ImageButton", G2L["4b"]);
G2L["57"]["Active"] = false;
G2L["57"]["BorderSizePixel"] = 0;
G2L["57"]["BackgroundColor3"] = Color3.fromRGB(23, 23, 23);
G2L["57"]["Selectable"] = false;
G2L["57"]["Size"] = UDim2.new(0.6, 0, 0.6, 0);
G2L["57"]["LayoutOrder"] = 3;
G2L["57"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["57"]["Name"] = [[reset]];
G2L["57"]["Position"] = UDim2.new(0.82152, 0, 0, 0);


-- StarterGui.ScreenGui.settings.content.main.Page.item.display.scroll.List.item.List.Input.reset.Corner
G2L["58"] = Instance.new("UICorner", G2L["57"]);
G2L["58"]["Name"] = [[Corner]];
G2L["58"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.ScreenGui.settings.content.main.Page.item.display.scroll.List.item.List.Input.reset.UIAspectRatioConstraint
G2L["59"] = Instance.new("UIAspectRatioConstraint", G2L["57"]);



-- StarterGui.ScreenGui.settings.content.main.Page.item.display.scroll.List.item.List.Input.reset.button
G2L["5a"] = Instance.new("ImageLabel", G2L["57"]);
G2L["5a"]["Active"] = true;
G2L["5a"]["BorderSizePixel"] = 0;
G2L["5a"]["AutoLocalize"] = false;
G2L["5a"]["BackgroundColor3"] = Color3.fromRGB(23, 23, 23);
G2L["5a"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["5a"]["Image"] = [[rbxassetid://11963357970]];
G2L["5a"]["Size"] = UDim2.new(0.8, 0, 0.8, 0);
G2L["5a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5a"]["BackgroundTransparency"] = 1;
G2L["5a"]["LayoutOrder"] = 1;
G2L["5a"]["Selectable"] = true;
G2L["5a"]["Name"] = [[button]];
G2L["5a"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.ScreenGui.settings.content.main.Page.item.display.scroll.List.item.List.Input.key
G2L["5b"] = Instance.new("Frame", G2L["4b"]);
G2L["5b"]["BorderSizePixel"] = 0;
G2L["5b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5b"]["Size"] = UDim2.new(0.15, 0, 1, 0);
G2L["5b"]["Position"] = UDim2.new(0.68504, 0, 0, 0);
G2L["5b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5b"]["Name"] = [[key]];
G2L["5b"]["LayoutOrder"] = 4;
G2L["5b"]["BackgroundTransparency"] = 1;


-- StarterGui.ScreenGui.settings.content.main.Page.item.display.scroll.List.item.List.Input.key.box
G2L["5c"] = Instance.new("TextButton", G2L["5b"]);
G2L["5c"]["BorderSizePixel"] = 0;
G2L["5c"]["AutoLocalize"] = false;
G2L["5c"]["TextSize"] = 16;
G2L["5c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5c"]["BackgroundColor3"] = Color3.fromRGB(23, 23, 23);
G2L["5c"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["5c"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["5c"]["Size"] = UDim2.new(0.99, 0, -0.76, 79);
G2L["5c"]["LayoutOrder"] = 1;
G2L["5c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5c"]["Text"] = [[...]];
G2L["5c"]["Name"] = [[box]];
G2L["5c"]["Position"] = UDim2.new(0, 0, 0.5, 0);


-- StarterGui.ScreenGui.settings.content.main.Page.item.display.scroll.List.item.List.Input.key.box.Corner
G2L["5d"] = Instance.new("UICorner", G2L["5c"]);
G2L["5d"]["Name"] = [[Corner]];
G2L["5d"]["CornerRadius"] = UDim.new(0, 18);


-- StarterGui.ScreenGui.settings.content.main.Page.item.display.scroll.List.item.List.Input.key.box.Flex
G2L["5e"] = Instance.new("UIFlexItem", G2L["5c"]);
G2L["5e"]["Name"] = [[Flex]];
G2L["5e"]["FlexMode"] = Enum.UIFlexMode.Fill;


-- StarterGui.ScreenGui.settings.content.main.Page.item.display.scroll.List.item.List.Selection
G2L["5f"] = Instance.new("ImageButton", G2L["19"]);
G2L["5f"]["Active"] = false;
G2L["5f"]["BorderSizePixel"] = 0;
G2L["5f"]["BackgroundTransparency"] = 1;
G2L["5f"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5f"]["Selectable"] = false;
G2L["5f"]["Size"] = UDim2.new(1, 0, 0, 50);
G2L["5f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5f"]["Name"] = [[Selection]];

-- Tags
CollectionService:AddTag(G2L["5f"], [[SettingObject]]);

-- StarterGui.ScreenGui.settings.content.main.Page.item.display.scroll.List.item.List.Selection.Padding
G2L["60"] = Instance.new("UIPadding", G2L["5f"]);
G2L["60"]["PaddingRight"] = UDim.new(0, 12);
G2L["60"]["Name"] = [[Padding]];
G2L["60"]["PaddingLeft"] = UDim.new(0, 12);


-- StarterGui.ScreenGui.settings.content.main.Page.item.display.scroll.List.item.List.Selection.holder
G2L["61"] = Instance.new("ImageLabel", G2L["5f"]);
G2L["61"]["BorderSizePixel"] = 0;
G2L["61"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["61"]["ImageTransparency"] = 1;
G2L["61"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["61"]["Size"] = UDim2.new(0, 32, 0, 32);
G2L["61"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["61"]["BackgroundTransparency"] = 0.8;
G2L["61"]["LayoutOrder"] = 1;
G2L["61"]["Name"] = [[holder]];
G2L["61"]["Position"] = UDim2.new(0, 0, 0.5, 0);


-- StarterGui.ScreenGui.settings.content.main.Page.item.display.scroll.List.item.List.Selection.holder.icon
G2L["62"] = Instance.new("ImageLabel", G2L["61"]);
G2L["62"]["BorderSizePixel"] = 0;
G2L["62"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["62"]["ImageTransparency"] = 0.5;
G2L["62"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["62"]["Image"] = [[rbxassetid://11293977610]];
G2L["62"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["62"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["62"]["BackgroundTransparency"] = 1;
G2L["62"]["LayoutOrder"] = 1;
G2L["62"]["Name"] = [[icon]];
G2L["62"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.ScreenGui.settings.content.main.Page.item.display.scroll.List.item.List.Selection.holder.Corner
G2L["63"] = Instance.new("UICorner", G2L["61"]);
G2L["63"]["Name"] = [[Corner]];
G2L["63"]["CornerRadius"] = UDim.new(0, 6);


-- StarterGui.ScreenGui.settings.content.main.Page.item.display.scroll.List.item.List.Selection.Extra
G2L["64"] = Instance.new("Folder", G2L["5f"]);
G2L["64"]["Name"] = [[Extra]];


-- StarterGui.ScreenGui.settings.content.main.Page.item.display.scroll.List.item.List.Selection.Extra.Separator
G2L["65"] = Instance.new("Frame", G2L["64"]);
G2L["65"]["BorderSizePixel"] = 0;
G2L["65"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["65"]["AnchorPoint"] = Vector2.new(0.5, 1);
G2L["65"]["Size"] = UDim2.new(2, 0, 0, 1);
G2L["65"]["Position"] = UDim2.new(0.5, 0, 1, 1);
G2L["65"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["65"]["Name"] = [[Separator]];
G2L["65"]["BackgroundTransparency"] = 0.98;


-- StarterGui.ScreenGui.settings.content.main.Page.item.display.scroll.List.item.List.Selection.List
G2L["66"] = Instance.new("UIListLayout", G2L["5f"]);
G2L["66"]["Padding"] = UDim.new(0, 10);
G2L["66"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["66"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["66"]["Name"] = [[List]];
G2L["66"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.ScreenGui.settings.content.main.Page.item.display.scroll.List.item.List.Selection.info
G2L["67"] = Instance.new("Frame", G2L["5f"]);
G2L["67"]["BorderSizePixel"] = 0;
G2L["67"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["67"]["Size"] = UDim2.new(0, 0, 0, 28);
G2L["67"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["67"]["Name"] = [[info]];
G2L["67"]["LayoutOrder"] = 2;
G2L["67"]["BackgroundTransparency"] = 1;


-- StarterGui.ScreenGui.settings.content.main.Page.item.display.scroll.List.item.List.Selection.info.Flex
G2L["68"] = Instance.new("UIFlexItem", G2L["67"]);
G2L["68"]["Name"] = [[Flex]];
G2L["68"]["FlexMode"] = Enum.UIFlexMode.Fill;


-- StarterGui.ScreenGui.settings.content.main.Page.item.display.scroll.List.item.List.Selection.info.Header
G2L["69"] = Instance.new("TextLabel", G2L["67"]);
G2L["69"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
G2L["69"]["BorderSizePixel"] = 0;
G2L["69"]["TextSize"] = 14;
G2L["69"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["69"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["69"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["69"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["69"]["BackgroundTransparency"] = 1;
G2L["69"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["69"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["69"]["Text"] = [[Name]];
G2L["69"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["69"]["Name"] = [[Header]];


-- StarterGui.ScreenGui.settings.content.main.Page.item.display.scroll.List.item.List.Selection.info.Description
G2L["6a"] = Instance.new("TextLabel", G2L["67"]);
G2L["6a"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
G2L["6a"]["BorderSizePixel"] = 0;
G2L["6a"]["TextSize"] = 12;
G2L["6a"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["6a"]["TextTransparency"] = 0.7;
G2L["6a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6a"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["6a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6a"]["BackgroundTransparency"] = 1;
G2L["6a"]["AnchorPoint"] = Vector2.new(0, 1);
G2L["6a"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["6a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6a"]["Text"] = [[Short description]];
G2L["6a"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["6a"]["Name"] = [[Description]];
G2L["6a"]["Position"] = UDim2.new(0, 0, 1, 0);


-- StarterGui.ScreenGui.settings.content.main.Page.item.display.scroll.List.item.List.Selection.icon
G2L["6b"] = Instance.new("ImageLabel", G2L["5f"]);
G2L["6b"]["BorderSizePixel"] = 0;
G2L["6b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6b"]["Image"] = [[rbxassetid://11293977610]];
G2L["6b"]["Size"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["6b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6b"]["BackgroundTransparency"] = 1;
G2L["6b"]["LayoutOrder"] = 99;
G2L["6b"]["Name"] = [[icon]];


-- StarterGui.ScreenGui.settings.content.main.Page.item.display.scroll.List.item.List.Selection.icon.aspect
G2L["6c"] = Instance.new("UIAspectRatioConstraint", G2L["6b"]);
G2L["6c"]["Name"] = [[aspect]];


-- StarterGui.ScreenGui.settings.content.main.Page.item.display.scroll.List.item.List.Selection.value
G2L["6d"] = Instance.new("TextLabel", G2L["5f"]);
G2L["6d"]["BorderSizePixel"] = 0;
G2L["6d"]["TextSize"] = 14;
G2L["6d"]["BackgroundColor3"] = Color3.fromRGB(23, 23, 23);
G2L["6d"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["6d"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6d"]["Size"] = UDim2.new(0, 125, 0, 30);
G2L["6d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6d"]["Text"] = [[Left]];
G2L["6d"]["LayoutOrder"] = 98;
G2L["6d"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["6d"]["Name"] = [[value]];


-- StarterGui.ScreenGui.settings.content.main.Page.item.display.scroll.List.item.List.Selection.value.Corner
G2L["6e"] = Instance.new("UICorner", G2L["6d"]);
G2L["6e"]["Name"] = [[Corner]];
G2L["6e"]["CornerRadius"] = UDim.new(0, 18);


-- StarterGui.ScreenGui.settings.content.main.Page.item.display.scroll.List.item.Header
G2L["6f"] = Instance.new("TextLabel", G2L["17"]);
G2L["6f"]["BorderSizePixel"] = 0;
G2L["6f"]["TextSize"] = 14;
G2L["6f"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["6f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6f"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["6f"]["TextColor3"] = Color3.fromRGB(176, 176, 176);
G2L["6f"]["BackgroundTransparency"] = 1;
G2L["6f"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["6f"]["Visible"] = false;
G2L["6f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6f"]["Text"] = [[Header]];
G2L["6f"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["6f"]["Name"] = [[Header]];


-- StarterGui.ScreenGui.settings.content.main.Page.item.display.scroll.List.item.Header.Padding
G2L["70"] = Instance.new("UIPadding", G2L["6f"]);
G2L["70"]["PaddingTop"] = UDim.new(0, 10);
G2L["70"]["Name"] = [[Padding]];
G2L["70"]["PaddingLeft"] = UDim.new(0, 15);


-- StarterGui.ScreenGui.settings.content.main.Page.item.display.scroll.Scale
G2L["71"] = Instance.new("UIScale", G2L["15"]);
G2L["71"]["Name"] = [[Scale]];


-- StarterGui.ScreenGui.settings.content.main.Page.item.display.scroll.Padding
G2L["72"] = Instance.new("UIPadding", G2L["15"]);
G2L["72"]["PaddingTop"] = UDim.new(0, 10);
G2L["72"]["PaddingRight"] = UDim.new(0, 10);
G2L["72"]["Name"] = [[Padding]];
G2L["72"]["PaddingLeft"] = UDim.new(0, 10);
G2L["72"]["PaddingBottom"] = UDim.new(0, 10);


-- StarterGui.ScreenGui.settings.content.main.Page.item.display.Loading
G2L["73"] = Instance.new("Frame", G2L["11"]);
G2L["73"]["Visible"] = false;
G2L["73"]["ZIndex"] = 999999999;
G2L["73"]["BorderSizePixel"] = 0;
G2L["73"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["73"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["73"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["73"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["73"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["73"]["Name"] = [[Loading]];


-- StarterGui.ScreenGui.settings.content.main.Page.item.display.Loading.Proccess
G2L["74"] = Instance.new("TextLabel", G2L["73"]);
G2L["74"]["BorderSizePixel"] = 0;
G2L["74"]["AutoLocalize"] = false;
G2L["74"]["TextSize"] = 15;
G2L["74"]["TextTransparency"] = 0.9;
G2L["74"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["74"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["74"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["74"]["BackgroundTransparency"] = 1;
G2L["74"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["74"]["Size"] = UDim2.new(1, 0, 0, 20);
G2L["74"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["74"]["Text"] = [[Loading]];
G2L["74"]["Name"] = [[Proccess]];
G2L["74"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.ScreenGui.settings.content.main.Page.item.display.Loading.corner
G2L["75"] = Instance.new("UICorner", G2L["73"]);
G2L["75"]["Name"] = [[corner]];
G2L["75"]["CornerRadius"] = UDim.new(0, 16);


-- StarterGui.ScreenGui.settings.content.main.Page.item.topbar
G2L["76"] = Instance.new("Frame", G2L["10"]);
G2L["76"]["ZIndex"] = 12;
G2L["76"]["BorderSizePixel"] = 0;
G2L["76"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["76"]["Size"] = UDim2.new(1, 0, 0, 40);
G2L["76"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["76"]["Name"] = [[topbar]];
G2L["76"]["LayoutOrder"] = 1;
G2L["76"]["BackgroundTransparency"] = 1;


-- StarterGui.ScreenGui.settings.content.main.Page.item.topbar.reset
G2L["77"] = Instance.new("ImageButton", G2L["76"]);
G2L["77"]["BorderSizePixel"] = 0;
G2L["77"]["SliceCenter"] = Rect.new(512, 512, 512, 512);
G2L["77"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["77"]["AutoButtonColor"] = false;
G2L["77"]["ImageTransparency"] = 1;
G2L["77"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["77"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["77"]["Size"] = UDim2.new(0.5, 0, 1, 0);
G2L["77"]["LayoutOrder"] = 2;
G2L["77"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["77"]["Name"] = [[reset]];

-- Tags
CollectionService:AddTag(G2L["77"], [[OrbitActionButton]]);

-- StarterGui.ScreenGui.settings.content.main.Page.item.topbar.reset.icon
G2L["78"] = Instance.new("ImageLabel", G2L["77"]);
G2L["78"]["BorderSizePixel"] = 0;
G2L["78"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["78"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["78"]["ImageTransparency"] = 0.5;
G2L["78"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["78"]["Image"] = [[rbxassetid://11432856422]];
G2L["78"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["78"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["78"]["BackgroundTransparency"] = 1;
G2L["78"]["Name"] = [[icon]];
G2L["78"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.ScreenGui.settings.content.main.Page.item.topbar.reset.Corner
G2L["79"] = Instance.new("UICorner", G2L["77"]);
G2L["79"]["Name"] = [[Corner]];
G2L["79"]["CornerRadius"] = UDim.new(0, 12);


-- StarterGui.ScreenGui.settings.content.main.Page.item.topbar.reset.Scale
G2L["7a"] = Instance.new("UIScale", G2L["77"]);
G2L["7a"]["Name"] = [[Scale]];


-- StarterGui.ScreenGui.settings.content.main.Page.item.topbar.reset.Padding
G2L["7b"] = Instance.new("UIPadding", G2L["77"]);
G2L["7b"]["PaddingTop"] = UDim.new(0, 4);
G2L["7b"]["PaddingRight"] = UDim.new(0, 14);
G2L["7b"]["Name"] = [[Padding]];
G2L["7b"]["PaddingLeft"] = UDim.new(0, 14);
G2L["7b"]["PaddingBottom"] = UDim.new(0, 4);


-- StarterGui.ScreenGui.settings.content.main.Page.item.topbar.reset.List
G2L["7c"] = Instance.new("UIListLayout", G2L["77"]);
G2L["7c"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["7c"]["Padding"] = UDim.new(0, 12);
G2L["7c"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["7c"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["7c"]["Name"] = [[List]];
G2L["7c"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.ScreenGui.settings.content.main.Page.item.topbar.reset.name
G2L["7d"] = Instance.new("TextLabel", G2L["77"]);
G2L["7d"]["BorderSizePixel"] = 0;
G2L["7d"]["TextSize"] = 14;
G2L["7d"]["TextTransparency"] = 0.6;
G2L["7d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7d"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["7d"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7d"]["BackgroundTransparency"] = 1;
G2L["7d"]["Size"] = UDim2.new(0, 0, 1, 0);
G2L["7d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7d"]["Text"] = [[Reset Settings]];
G2L["7d"]["LayoutOrder"] = 1;
G2L["7d"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["7d"]["Name"] = [[name]];


-- StarterGui.ScreenGui.settings.content.main.Page.item.topbar.reset.Flex
G2L["7e"] = Instance.new("UIFlexItem", G2L["77"]);
G2L["7e"]["Name"] = [[Flex]];
G2L["7e"]["FlexMode"] = Enum.UIFlexMode.Fill;


-- StarterGui.ScreenGui.settings.content.main.Page.item.topbar.list
G2L["7f"] = Instance.new("UIListLayout", G2L["76"]);
G2L["7f"]["Padding"] = UDim.new(0, 10);
G2L["7f"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["7f"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["7f"]["Name"] = [[list]];
G2L["7f"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.ScreenGui.settings.content.main.Page.item.topbar.back
G2L["80"] = Instance.new("ImageButton", G2L["76"]);
G2L["80"]["BorderSizePixel"] = 0;
G2L["80"]["SliceCenter"] = Rect.new(512, 512, 512, 512);
G2L["80"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["80"]["AutoButtonColor"] = false;
G2L["80"]["ImageTransparency"] = 1;
G2L["80"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["80"]["Size"] = UDim2.new(0, 48, 1, 0);
G2L["80"]["LayoutOrder"] = 3;
G2L["80"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["80"]["Name"] = [[back]];

-- Tags
CollectionService:AddTag(G2L["80"], [[OrbitActionButton]]);
CollectionService:AddTag(G2L["80"], [[OrbitSettingCloseButton]]);

-- StarterGui.ScreenGui.settings.content.main.Page.item.topbar.back.Corner
G2L["81"] = Instance.new("UICorner", G2L["80"]);
G2L["81"]["Name"] = [[Corner]];
G2L["81"]["CornerRadius"] = UDim.new(0, 12);


-- StarterGui.ScreenGui.settings.content.main.Page.item.topbar.back.Scale
G2L["82"] = Instance.new("UIScale", G2L["80"]);
G2L["82"]["Name"] = [[Scale]];


-- StarterGui.ScreenGui.settings.content.main.Page.item.topbar.back.Padding
G2L["83"] = Instance.new("UIPadding", G2L["80"]);
G2L["83"]["PaddingTop"] = UDim.new(0, 4);
G2L["83"]["PaddingRight"] = UDim.new(0, 14);
G2L["83"]["Name"] = [[Padding]];
G2L["83"]["PaddingLeft"] = UDim.new(0, 14);
G2L["83"]["PaddingBottom"] = UDim.new(0, 4);


-- StarterGui.ScreenGui.settings.content.main.Page.item.topbar.back.List
G2L["84"] = Instance.new("UIListLayout", G2L["80"]);
G2L["84"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["84"]["Padding"] = UDim.new(0, 12);
G2L["84"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["84"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["84"]["Name"] = [[List]];
G2L["84"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.ScreenGui.settings.content.main.Page.item.topbar.back.icon
G2L["85"] = Instance.new("ImageLabel", G2L["80"]);
G2L["85"]["BorderSizePixel"] = 0;
G2L["85"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["85"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["85"]["ImageTransparency"] = 0.5;
G2L["85"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["85"]["Image"] = [[rbxassetid://11293981586]];
G2L["85"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["85"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["85"]["BackgroundTransparency"] = 1;
G2L["85"]["Name"] = [[icon]];
G2L["85"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.ScreenGui.settings.content.main.Page.item.Layout
G2L["86"] = Instance.new("UIListLayout", G2L["10"]);
G2L["86"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["86"]["Padding"] = UDim.new(0, 15);
G2L["86"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["86"]["Name"] = [[Layout]];


-- StarterGui.ScreenGui.settings.content.main.Page.item.padding
G2L["87"] = Instance.new("UIPadding", G2L["10"]);
G2L["87"]["PaddingTop"] = UDim.new(0, 12);
G2L["87"]["PaddingRight"] = UDim.new(0, 20);
G2L["87"]["Name"] = [[padding]];
G2L["87"]["PaddingLeft"] = UDim.new(0, 20);
G2L["87"]["PaddingBottom"] = UDim.new(0, 20);


-- StarterGui.ScreenGui.settings.content.selection
G2L["88"] = Instance.new("ScrollingFrame", G2L["b"]);
G2L["88"]["Active"] = true;
G2L["88"]["ScrollingDirection"] = Enum.ScrollingDirection.Y;
G2L["88"]["BorderSizePixel"] = 0;
G2L["88"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
G2L["88"]["Name"] = [[selection]];
G2L["88"]["ScrollBarImageTransparency"] = 1;
G2L["88"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["88"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["88"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
G2L["88"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["88"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
G2L["88"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["88"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["88"]["ScrollBarThickness"] = 0;
G2L["88"]["BackgroundTransparency"] = 1;


-- StarterGui.ScreenGui.settings.content.selection.Layout
G2L["89"] = Instance.new("UIListLayout", G2L["88"]);
G2L["89"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["89"]["Padding"] = UDim.new(0, 6);
G2L["89"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["89"]["Name"] = [[Layout]];


-- StarterGui.ScreenGui.settings.content.selection.Layout.item
G2L["8a"] = Instance.new("ImageButton", G2L["89"]);
G2L["8a"]["BorderSizePixel"] = 0;
G2L["8a"]["AutoButtonColor"] = false;
G2L["8a"]["ImageTransparency"] = 1;
G2L["8a"]["BackgroundTransparency"] = 0.4;
G2L["8a"]["BackgroundColor3"] = Color3.fromRGB(21, 21, 21);
G2L["8a"]["Size"] = UDim2.new(1, 0, 0, 75);
G2L["8a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8a"]["Name"] = [[item]];
G2L["8a"]["Position"] = UDim2.new(0, 0, 0.76415, 0);

-- Tags
CollectionService:AddTag(G2L["8a"], [[OrbitSettingNavigationButton]]);

-- StarterGui.ScreenGui.settings.content.selection.Layout.item.Padding
G2L["8b"] = Instance.new("UIPadding", G2L["8a"]);
G2L["8b"]["PaddingTop"] = UDim.new(0, 15);
G2L["8b"]["PaddingRight"] = UDim.new(0, 18);
G2L["8b"]["Name"] = [[Padding]];
G2L["8b"]["PaddingLeft"] = UDim.new(0, 15);
G2L["8b"]["PaddingBottom"] = UDim.new(0, 15);


-- StarterGui.ScreenGui.settings.content.selection.Layout.item.Layout
G2L["8c"] = Instance.new("UIListLayout", G2L["8a"]);
G2L["8c"]["Padding"] = UDim.new(0, 12);
G2L["8c"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["8c"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["8c"]["Name"] = [[Layout]];
G2L["8c"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.ScreenGui.settings.content.selection.Layout.item.Corner
G2L["8d"] = Instance.new("UICorner", G2L["8a"]);
G2L["8d"]["Name"] = [[Corner]];
G2L["8d"]["CornerRadius"] = UDim.new(0, 20);


-- StarterGui.ScreenGui.settings.content.selection.Layout.item.holder
G2L["8e"] = Instance.new("ImageLabel", G2L["8a"]);
G2L["8e"]["BorderSizePixel"] = 0;
G2L["8e"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8e"]["ImageTransparency"] = 1;
G2L["8e"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["8e"]["Size"] = UDim2.new(0, 45, 0, 45);
G2L["8e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8e"]["BackgroundTransparency"] = 0.8;
G2L["8e"]["LayoutOrder"] = 1;
G2L["8e"]["Name"] = [[holder]];


-- StarterGui.ScreenGui.settings.content.selection.Layout.item.holder.icon
G2L["8f"] = Instance.new("ImageLabel", G2L["8e"]);
G2L["8f"]["BorderSizePixel"] = 0;
G2L["8f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8f"]["ImageTransparency"] = 0.25;
G2L["8f"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["8f"]["Image"] = [[rbxassetid://12974354535]];
G2L["8f"]["Size"] = UDim2.new(0, 26, 0, 26);
G2L["8f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8f"]["BackgroundTransparency"] = 1;
G2L["8f"]["LayoutOrder"] = 1;
G2L["8f"]["Name"] = [[icon]];
G2L["8f"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.ScreenGui.settings.content.selection.Layout.item.holder.Corner
G2L["90"] = Instance.new("UICorner", G2L["8e"]);
G2L["90"]["Name"] = [[Corner]];
G2L["90"]["CornerRadius"] = UDim.new(0, 14);


-- StarterGui.ScreenGui.settings.content.selection.Layout.item.enter
G2L["91"] = Instance.new("ImageLabel", G2L["8a"]);
G2L["91"]["BorderSizePixel"] = 0;
G2L["91"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["91"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["91"]["ImageTransparency"] = 0.5;
G2L["91"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["91"]["Image"] = [[rbxassetid://11419703997]];
G2L["91"]["Size"] = UDim2.new(0, 15, 0, 15);
G2L["91"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["91"]["BackgroundTransparency"] = 1;
G2L["91"]["LayoutOrder"] = 5;
G2L["91"]["Name"] = [[enter]];
G2L["91"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.ScreenGui.settings.content.selection.Layout.item.Directory
G2L["92"] = Instance.new("ObjectValue", G2L["8a"]);
G2L["92"]["Name"] = [[Directory]];


-- StarterGui.ScreenGui.settings.content.selection.Layout.item.topbar
G2L["93"] = Instance.new("Frame", G2L["8a"]);
G2L["93"]["BorderSizePixel"] = 0;
G2L["93"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["93"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["93"]["AutomaticSize"] = Enum.AutomaticSize.XY;
G2L["93"]["Position"] = UDim2.new(0.5, 0, 0, 0);
G2L["93"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["93"]["Name"] = [[topbar]];
G2L["93"]["LayoutOrder"] = 2;
G2L["93"]["BackgroundTransparency"] = 1;


-- StarterGui.ScreenGui.settings.content.selection.Layout.item.topbar.title
G2L["94"] = Instance.new("TextLabel", G2L["93"]);
G2L["94"]["BorderSizePixel"] = 0;
G2L["94"]["AutoLocalize"] = false;
G2L["94"]["TextSize"] = 16;
G2L["94"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["94"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["94"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["94"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["94"]["BackgroundTransparency"] = 1;
G2L["94"]["AnchorPoint"] = Vector2.new(0.5, 1);
G2L["94"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["94"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["94"]["Text"] = [[Advanced Settings]];
G2L["94"]["LayoutOrder"] = 1;
G2L["94"]["AutomaticSize"] = Enum.AutomaticSize.XY;
G2L["94"]["Name"] = [[title]];
G2L["94"]["Position"] = UDim2.new(0.5, 0, 1, -10);


-- StarterGui.ScreenGui.settings.content.selection.Layout.item.topbar.Layout
G2L["95"] = Instance.new("UIListLayout", G2L["93"]);
G2L["95"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["95"]["Name"] = [[Layout]];


-- StarterGui.ScreenGui.settings.content.selection.Layout.item.topbar.description
G2L["96"] = Instance.new("TextLabel", G2L["93"]);
G2L["96"]["TextWrapped"] = true;
G2L["96"]["BorderSizePixel"] = 0;
G2L["96"]["AutoLocalize"] = false;
G2L["96"]["TextSize"] = 14;
G2L["96"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["96"]["TextTransparency"] = 0.6;
G2L["96"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["96"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["96"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["96"]["BackgroundTransparency"] = 1;
G2L["96"]["AnchorPoint"] = Vector2.new(0.5, 1);
G2L["96"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["96"]["ClipsDescendants"] = true;
G2L["96"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["96"]["Text"] = [[Make your experience better with advanced changes]];
G2L["96"]["LayoutOrder"] = 1;
G2L["96"]["AutomaticSize"] = Enum.AutomaticSize.XY;
G2L["96"]["Name"] = [[description]];
G2L["96"]["Position"] = UDim2.new(0.5, 0, 1, -10);


-- StarterGui.ScreenGui.settings.content.selection.Layout.item.topbar.Flex
G2L["97"] = Instance.new("UIFlexItem", G2L["93"]);
G2L["97"]["Name"] = [[Flex]];
G2L["97"]["FlexMode"] = Enum.UIFlexMode.Fill;


-- StarterGui.ScreenGui.settings.content.selection.Flex
G2L["98"] = Instance.new("UIFlexItem", G2L["88"]);
G2L["98"]["Name"] = [[Flex]];
G2L["98"]["FlexMode"] = Enum.UIFlexMode.Fill;


-- StarterGui.ScreenGui.settings.content.selection.padding
G2L["99"] = Instance.new("UIPadding", G2L["88"]);
G2L["99"]["PaddingTop"] = UDim.new(0, 12);
G2L["99"]["PaddingRight"] = UDim.new(0, 16);
G2L["99"]["Name"] = [[padding]];
G2L["99"]["PaddingLeft"] = UDim.new(0, 16);
G2L["99"]["PaddingBottom"] = UDim.new(0, 12);


-- StarterGui.ScreenGui.settings.content.Layout
G2L["9a"] = Instance.new("UIPageLayout", G2L["b"]);
G2L["9a"]["EasingStyle"] = Enum.EasingStyle.Exponential;
G2L["9a"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["9a"]["Name"] = [[Layout]];
G2L["9a"]["TweenTime"] = 0.3;



return G2L["1"], require;