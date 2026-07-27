-- Instances: 100 | Scripts: 0 | Modules: 0 | Tags: 9
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


-- StarterGui.ScreenGui.settings.main
G2L["d"] = Instance.new("Frame", G2L["2"]);
G2L["d"]["BorderSizePixel"] = 0;
G2L["d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d"]["ClipsDescendants"] = true;
G2L["d"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d"]["Name"] = [[main]];
G2L["d"]["LayoutOrder"] = 2;
G2L["d"]["BackgroundTransparency"] = 1;


-- StarterGui.ScreenGui.settings.main.Flex
G2L["e"] = Instance.new("UIFlexItem", G2L["d"]);
G2L["e"]["Name"] = [[Flex]];
G2L["e"]["FlexMode"] = Enum.UIFlexMode.Fill;


-- StarterGui.ScreenGui.settings.main.item
G2L["f"] = Instance.new("ScrollingFrame", G2L["d"]);
G2L["f"]["Active"] = true;
G2L["f"]["ScrollingDirection"] = Enum.ScrollingDirection.Y;
G2L["f"]["BorderSizePixel"] = 0;
G2L["f"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
G2L["f"]["Name"] = [[item]];
G2L["f"]["ScrollBarImageTransparency"] = 1;
G2L["f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["f"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["f"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
G2L["f"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["f"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
G2L["f"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["f"]["ScrollBarThickness"] = 0;
G2L["f"]["LayoutOrder"] = 3;
G2L["f"]["BackgroundTransparency"] = 1;


-- StarterGui.ScreenGui.settings.main.item.display
G2L["10"] = Instance.new("Frame", G2L["f"]);
G2L["10"]["BorderSizePixel"] = 0;
G2L["10"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["10"]["Size"] = UDim2.new(1, 0, 1.0001, -85);
G2L["10"]["Position"] = UDim2.new(0, 0, 0.18333, 0);
G2L["10"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["10"]["Name"] = [[display]];
G2L["10"]["LayoutOrder"] = 2;


-- StarterGui.ScreenGui.settings.main.item.display.corner
G2L["11"] = Instance.new("UICorner", G2L["10"]);
G2L["11"]["Name"] = [[corner]];
G2L["11"]["CornerRadius"] = UDim.new(0, 16);


-- StarterGui.ScreenGui.settings.main.item.display.scroll
G2L["12"] = Instance.new("ScrollingFrame", G2L["10"]);
G2L["12"]["Active"] = true;
G2L["12"]["ScrollingDirection"] = Enum.ScrollingDirection.Y;
G2L["12"]["BorderSizePixel"] = 0;
G2L["12"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
G2L["12"]["VerticalScrollBarInset"] = Enum.ScrollBarInset.ScrollBar;
G2L["12"]["Name"] = [[scroll]];
G2L["12"]["ScrollBarImageTransparency"] = 1;
G2L["12"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["12"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["12"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
G2L["12"]["Size"] = UDim2.new(1.01099, 0, 1.02066, 0);
G2L["12"]["ScrollBarImageColor3"] = Color3.fromRGB(50, 50, 50);
G2L["12"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["12"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["12"]["ScrollBarThickness"] = 4;
G2L["12"]["LayoutOrder"] = 1;
G2L["12"]["BackgroundTransparency"] = 1;


-- StarterGui.ScreenGui.settings.main.item.display.scroll.item
G2L["13"] = Instance.new("Frame", G2L["12"]);
G2L["13"]["BorderSizePixel"] = 0;
G2L["13"]["BackgroundColor3"] = Color3.fromRGB(30, 30, 30);
G2L["13"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["13"]["ClipsDescendants"] = true;
G2L["13"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["13"]["Size"] = UDim2.new(1, 0, 1.01201, 0);
G2L["13"]["Position"] = UDim2.new(0.49457, 0, 0.5, 0);
G2L["13"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["13"]["Name"] = [[item]];
G2L["13"]["LayoutOrder"] = 3;


-- StarterGui.ScreenGui.settings.main.item.display.scroll.item.Corner
G2L["14"] = Instance.new("UICorner", G2L["13"]);
G2L["14"]["Name"] = [[Corner]];
G2L["14"]["CornerRadius"] = UDim.new(0, 14);


-- StarterGui.ScreenGui.settings.main.item.display.scroll.item.Input
G2L["15"] = Instance.new("Frame", G2L["13"]);
G2L["15"]["BorderSizePixel"] = 0;
G2L["15"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["15"]["Size"] = UDim2.new(1.00217, 0, 0, 50);
G2L["15"]["Position"] = UDim2.new(0, 0, 0.09717, 0);
G2L["15"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["15"]["Name"] = [[Input]];
G2L["15"]["BackgroundTransparency"] = 1;

-- Tags
CollectionService:AddTag(G2L["15"], [[SettingObject]]);

-- StarterGui.ScreenGui.settings.main.item.display.scroll.item.Input.Padding
G2L["16"] = Instance.new("UIPadding", G2L["15"]);
G2L["16"]["PaddingRight"] = UDim.new(0, 12);
G2L["16"]["Name"] = [[Padding]];
G2L["16"]["PaddingLeft"] = UDim.new(0, 12);


-- StarterGui.ScreenGui.settings.main.item.display.scroll.item.Input.holder
G2L["17"] = Instance.new("ImageLabel", G2L["15"]);
G2L["17"]["BorderSizePixel"] = 0;
G2L["17"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["17"]["ImageTransparency"] = 1;
G2L["17"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["17"]["Size"] = UDim2.new(0, 32, 0, 32);
G2L["17"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["17"]["BackgroundTransparency"] = 0.8;
G2L["17"]["LayoutOrder"] = 1;
G2L["17"]["Name"] = [[holder]];
G2L["17"]["Position"] = UDim2.new(0, 0, 0.5, 0);


-- StarterGui.ScreenGui.settings.main.item.display.scroll.item.Input.holder.icon
G2L["18"] = Instance.new("ImageLabel", G2L["17"]);
G2L["18"]["BorderSizePixel"] = 0;
G2L["18"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["18"]["ImageTransparency"] = 0.5;
G2L["18"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["18"]["Image"] = [[rbxassetid://95898765113869]];
G2L["18"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["18"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["18"]["BackgroundTransparency"] = 1;
G2L["18"]["LayoutOrder"] = 1;
G2L["18"]["Name"] = [[icon]];
G2L["18"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.ScreenGui.settings.main.item.display.scroll.item.Input.holder.Corner
G2L["19"] = Instance.new("UICorner", G2L["17"]);
G2L["19"]["Name"] = [[Corner]];
G2L["19"]["CornerRadius"] = UDim.new(0, 6);


-- StarterGui.ScreenGui.settings.main.item.display.scroll.item.Input.Extra
G2L["1a"] = Instance.new("Folder", G2L["15"]);
G2L["1a"]["Name"] = [[Extra]];


-- StarterGui.ScreenGui.settings.main.item.display.scroll.item.Input.Extra.Separator
G2L["1b"] = Instance.new("Frame", G2L["1a"]);
G2L["1b"]["BorderSizePixel"] = 0;
G2L["1b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1b"]["AnchorPoint"] = Vector2.new(0.5, 1);
G2L["1b"]["Size"] = UDim2.new(2, 0, 0, 1);
G2L["1b"]["Position"] = UDim2.new(0.5, 0, 1, 1);
G2L["1b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1b"]["Name"] = [[Separator]];
G2L["1b"]["BackgroundTransparency"] = 0.98;


-- StarterGui.ScreenGui.settings.main.item.display.scroll.item.Input.List
G2L["1c"] = Instance.new("UIListLayout", G2L["15"]);
G2L["1c"]["Padding"] = UDim.new(0, 10);
G2L["1c"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["1c"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["1c"]["Name"] = [[List]];
G2L["1c"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.ScreenGui.settings.main.item.display.scroll.item.Input.info
G2L["1d"] = Instance.new("Frame", G2L["15"]);
G2L["1d"]["BorderSizePixel"] = 0;
G2L["1d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1d"]["Size"] = UDim2.new(0, 0, 0, 28);
G2L["1d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1d"]["Name"] = [[info]];
G2L["1d"]["LayoutOrder"] = 2;
G2L["1d"]["BackgroundTransparency"] = 1;


-- StarterGui.ScreenGui.settings.main.item.display.scroll.item.Input.info.Flex
G2L["1e"] = Instance.new("UIFlexItem", G2L["1d"]);
G2L["1e"]["Name"] = [[Flex]];
G2L["1e"]["FlexMode"] = Enum.UIFlexMode.Fill;


-- StarterGui.ScreenGui.settings.main.item.display.scroll.item.Input.info.Header
G2L["1f"] = Instance.new("TextLabel", G2L["1d"]);
G2L["1f"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
G2L["1f"]["BorderSizePixel"] = 0;
G2L["1f"]["TextSize"] = 14;
G2L["1f"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["1f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1f"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["1f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1f"]["BackgroundTransparency"] = 1;
G2L["1f"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["1f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1f"]["Text"] = [[Ui Toggle]];
G2L["1f"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["1f"]["Name"] = [[Header]];


-- StarterGui.ScreenGui.settings.main.item.display.scroll.item.Input.info.Description
G2L["20"] = Instance.new("TextLabel", G2L["1d"]);
G2L["20"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
G2L["20"]["BorderSizePixel"] = 0;
G2L["20"]["TextSize"] = 12;
G2L["20"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["20"]["TextTransparency"] = 0.7;
G2L["20"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["20"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["20"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["20"]["BackgroundTransparency"] = 1;
G2L["20"]["AnchorPoint"] = Vector2.new(0, 1);
G2L["20"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["20"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["20"]["Text"] = [[Set the toggel for the ui ]];
G2L["20"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["20"]["Name"] = [[Description]];
G2L["20"]["Position"] = UDim2.new(0, 0, 1, 0);


-- StarterGui.ScreenGui.settings.main.item.display.scroll.item.Input.reset
G2L["21"] = Instance.new("ImageButton", G2L["15"]);
G2L["21"]["Active"] = false;
G2L["21"]["BorderSizePixel"] = 0;
G2L["21"]["BackgroundColor3"] = Color3.fromRGB(23, 23, 23);
G2L["21"]["Selectable"] = false;
G2L["21"]["Size"] = UDim2.new(0.6, 0, 0.6, 0);
G2L["21"]["LayoutOrder"] = 3;
G2L["21"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["21"]["Name"] = [[reset]];
G2L["21"]["Position"] = UDim2.new(0.82152, 0, 0, 0);


-- StarterGui.ScreenGui.settings.main.item.display.scroll.item.Input.reset.Corner
G2L["22"] = Instance.new("UICorner", G2L["21"]);
G2L["22"]["Name"] = [[Corner]];
G2L["22"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.ScreenGui.settings.main.item.display.scroll.item.Input.reset.UIAspectRatioConstraint
G2L["23"] = Instance.new("UIAspectRatioConstraint", G2L["21"]);



-- StarterGui.ScreenGui.settings.main.item.display.scroll.item.Input.reset.button
G2L["24"] = Instance.new("ImageLabel", G2L["21"]);
G2L["24"]["Active"] = true;
G2L["24"]["BorderSizePixel"] = 0;
G2L["24"]["AutoLocalize"] = false;
G2L["24"]["BackgroundColor3"] = Color3.fromRGB(23, 23, 23);
G2L["24"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["24"]["Image"] = [[rbxassetid://134331790412100]];
G2L["24"]["Size"] = UDim2.new(0.8, 0, 0.8, 0);
G2L["24"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["24"]["BackgroundTransparency"] = 1;
G2L["24"]["LayoutOrder"] = 1;
G2L["24"]["Selectable"] = true;
G2L["24"]["Name"] = [[button]];
G2L["24"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.ScreenGui.settings.main.item.display.scroll.item.Input.key
G2L["25"] = Instance.new("Frame", G2L["15"]);
G2L["25"]["BorderSizePixel"] = 0;
G2L["25"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["25"]["Size"] = UDim2.new(0.15, 0, 1, 0);
G2L["25"]["Position"] = UDim2.new(0.68504, 0, 0, 0);
G2L["25"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["25"]["Name"] = [[key]];
G2L["25"]["LayoutOrder"] = 4;
G2L["25"]["BackgroundTransparency"] = 1;


-- StarterGui.ScreenGui.settings.main.item.display.scroll.item.Input.key.box
G2L["26"] = Instance.new("TextButton", G2L["25"]);
G2L["26"]["BorderSizePixel"] = 0;
G2L["26"]["AutoLocalize"] = false;
G2L["26"]["TextSize"] = 16;
G2L["26"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["26"]["BackgroundColor3"] = Color3.fromRGB(23, 23, 23);
G2L["26"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["26"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["26"]["Size"] = UDim2.new(0.99, 0, -0.76, 79);
G2L["26"]["LayoutOrder"] = 1;
G2L["26"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["26"]["Text"] = [[...]];
G2L["26"]["Name"] = [[box]];
G2L["26"]["Position"] = UDim2.new(0, 0, 0.5, 0);


-- StarterGui.ScreenGui.settings.main.item.display.scroll.item.Input.key.box.Corner
G2L["27"] = Instance.new("UICorner", G2L["26"]);
G2L["27"]["Name"] = [[Corner]];
G2L["27"]["CornerRadius"] = UDim.new(0, 18);


-- StarterGui.ScreenGui.settings.main.item.display.scroll.item.Input.key.box.Flex
G2L["28"] = Instance.new("UIFlexItem", G2L["26"]);
G2L["28"]["Name"] = [[Flex]];
G2L["28"]["FlexMode"] = Enum.UIFlexMode.Fill;


-- StarterGui.ScreenGui.settings.main.item.display.scroll.item.List
G2L["29"] = Instance.new("UIListLayout", G2L["13"]);
G2L["29"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["29"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["29"]["Name"] = [[List]];


-- StarterGui.ScreenGui.settings.main.item.display.scroll.item.Selection
G2L["2a"] = Instance.new("ImageButton", G2L["13"]);
G2L["2a"]["Active"] = false;
G2L["2a"]["BorderSizePixel"] = 0;
G2L["2a"]["BackgroundTransparency"] = 1;
G2L["2a"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2a"]["Selectable"] = false;
G2L["2a"]["Size"] = UDim2.new(1, 0, 0, 50);
G2L["2a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2a"]["Name"] = [[Selection]];

-- Tags
CollectionService:AddTag(G2L["2a"], [[SettingObject]]);

-- StarterGui.ScreenGui.settings.main.item.display.scroll.item.Selection.Padding
G2L["2b"] = Instance.new("UIPadding", G2L["2a"]);
G2L["2b"]["PaddingRight"] = UDim.new(0, 12);
G2L["2b"]["Name"] = [[Padding]];
G2L["2b"]["PaddingLeft"] = UDim.new(0, 12);


-- StarterGui.ScreenGui.settings.main.item.display.scroll.item.Selection.holder
G2L["2c"] = Instance.new("ImageLabel", G2L["2a"]);
G2L["2c"]["BorderSizePixel"] = 0;
G2L["2c"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2c"]["ImageTransparency"] = 1;
G2L["2c"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["2c"]["Size"] = UDim2.new(0, 32, 0, 32);
G2L["2c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2c"]["BackgroundTransparency"] = 0.8;
G2L["2c"]["LayoutOrder"] = 1;
G2L["2c"]["Name"] = [[holder]];
G2L["2c"]["Position"] = UDim2.new(0, 0, 0.5, 0);


-- StarterGui.ScreenGui.settings.main.item.display.scroll.item.Selection.holder.icon
G2L["2d"] = Instance.new("ImageLabel", G2L["2c"]);
G2L["2d"]["BorderSizePixel"] = 0;
G2L["2d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2d"]["ImageTransparency"] = 0.5;
G2L["2d"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["2d"]["Image"] = [[rbxassetid://95898765113869]];
G2L["2d"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["2d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2d"]["BackgroundTransparency"] = 1;
G2L["2d"]["LayoutOrder"] = 1;
G2L["2d"]["Name"] = [[icon]];
G2L["2d"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.ScreenGui.settings.main.item.display.scroll.item.Selection.holder.Corner
G2L["2e"] = Instance.new("UICorner", G2L["2c"]);
G2L["2e"]["Name"] = [[Corner]];
G2L["2e"]["CornerRadius"] = UDim.new(0, 6);


-- StarterGui.ScreenGui.settings.main.item.display.scroll.item.Selection.Extra
G2L["2f"] = Instance.new("Folder", G2L["2a"]);
G2L["2f"]["Name"] = [[Extra]];


-- StarterGui.ScreenGui.settings.main.item.display.scroll.item.Selection.Extra.Separator
G2L["30"] = Instance.new("Frame", G2L["2f"]);
G2L["30"]["BorderSizePixel"] = 0;
G2L["30"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["30"]["AnchorPoint"] = Vector2.new(0.5, 1);
G2L["30"]["Size"] = UDim2.new(2, 0, 0, 1);
G2L["30"]["Position"] = UDim2.new(0.5, 0, 1, 1);
G2L["30"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["30"]["Name"] = [[Separator]];
G2L["30"]["BackgroundTransparency"] = 0.98;


-- StarterGui.ScreenGui.settings.main.item.display.scroll.item.Selection.List
G2L["31"] = Instance.new("UIListLayout", G2L["2a"]);
G2L["31"]["Padding"] = UDim.new(0, 10);
G2L["31"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["31"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["31"]["Name"] = [[List]];
G2L["31"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.ScreenGui.settings.main.item.display.scroll.item.Selection.info
G2L["32"] = Instance.new("Frame", G2L["2a"]);
G2L["32"]["BorderSizePixel"] = 0;
G2L["32"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["32"]["Size"] = UDim2.new(0, 0, 0, 28);
G2L["32"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["32"]["Name"] = [[info]];
G2L["32"]["LayoutOrder"] = 2;
G2L["32"]["BackgroundTransparency"] = 1;


-- StarterGui.ScreenGui.settings.main.item.display.scroll.item.Selection.info.Flex
G2L["33"] = Instance.new("UIFlexItem", G2L["32"]);
G2L["33"]["Name"] = [[Flex]];
G2L["33"]["FlexMode"] = Enum.UIFlexMode.Fill;


-- StarterGui.ScreenGui.settings.main.item.display.scroll.item.Selection.info.Header
G2L["34"] = Instance.new("TextLabel", G2L["32"]);
G2L["34"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
G2L["34"]["BorderSizePixel"] = 0;
G2L["34"]["TextSize"] = 14;
G2L["34"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["34"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["34"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["34"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["34"]["BackgroundTransparency"] = 1;
G2L["34"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["34"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["34"]["Text"] = [[Tab Layout]];
G2L["34"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["34"]["Name"] = [[Header]];


-- StarterGui.ScreenGui.settings.main.item.display.scroll.item.Selection.info.Description
G2L["35"] = Instance.new("TextLabel", G2L["32"]);
G2L["35"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
G2L["35"]["BorderSizePixel"] = 0;
G2L["35"]["TextSize"] = 12;
G2L["35"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["35"]["TextTransparency"] = 0.7;
G2L["35"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["35"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["35"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["35"]["BackgroundTransparency"] = 1;
G2L["35"]["AnchorPoint"] = Vector2.new(0, 1);
G2L["35"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["35"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["35"]["Text"] = [[Short description]];
G2L["35"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["35"]["Name"] = [[Description]];
G2L["35"]["Position"] = UDim2.new(0, 0, 1, 0);


-- StarterGui.ScreenGui.settings.main.item.display.scroll.item.Selection.icon
G2L["36"] = Instance.new("ImageLabel", G2L["2a"]);
G2L["36"]["BorderSizePixel"] = 0;
G2L["36"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["36"]["Image"] = [[rbxassetid://95898765113869]];
G2L["36"]["Size"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["36"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["36"]["BackgroundTransparency"] = 1;
G2L["36"]["LayoutOrder"] = 99;
G2L["36"]["Name"] = [[icon]];


-- StarterGui.ScreenGui.settings.main.item.display.scroll.item.Selection.icon.aspect
G2L["37"] = Instance.new("UIAspectRatioConstraint", G2L["36"]);
G2L["37"]["Name"] = [[aspect]];


-- StarterGui.ScreenGui.settings.main.item.display.scroll.item.Selection.value
G2L["38"] = Instance.new("TextLabel", G2L["2a"]);
G2L["38"]["BorderSizePixel"] = 0;
G2L["38"]["TextSize"] = 14;
G2L["38"]["BackgroundColor3"] = Color3.fromRGB(23, 23, 23);
G2L["38"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["38"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["38"]["Size"] = UDim2.new(0, 125, 0, 30);
G2L["38"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["38"]["Text"] = [[Left]];
G2L["38"]["LayoutOrder"] = 98;
G2L["38"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["38"]["Name"] = [[value]];
G2L["38"]["Position"] = UDim2.new(0.62658, 0, 0.3, 0);


-- StarterGui.ScreenGui.settings.main.item.display.scroll.item.Selection.value.Corner
G2L["39"] = Instance.new("UICorner", G2L["38"]);
G2L["39"]["Name"] = [[Corner]];
G2L["39"]["CornerRadius"] = UDim.new(0, 18);


-- StarterGui.ScreenGui.settings.main.item.display.scroll.item.Button
G2L["3a"] = Instance.new("ImageButton", G2L["13"]);
G2L["3a"]["Active"] = false;
G2L["3a"]["BorderSizePixel"] = 0;
G2L["3a"]["ImageTransparency"] = 1;
G2L["3a"]["BackgroundTransparency"] = 1;
G2L["3a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3a"]["Selectable"] = false;
G2L["3a"]["Size"] = UDim2.new(1, 0, 0, 50);
G2L["3a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3a"]["Name"] = [[Button]];

-- Tags
CollectionService:AddTag(G2L["3a"], [[SettingObject]]);

-- StarterGui.ScreenGui.settings.main.item.display.scroll.item.Button.Padding
G2L["3b"] = Instance.new("UIPadding", G2L["3a"]);
G2L["3b"]["PaddingRight"] = UDim.new(0, 12);
G2L["3b"]["Name"] = [[Padding]];
G2L["3b"]["PaddingLeft"] = UDim.new(0, 12);


-- StarterGui.ScreenGui.settings.main.item.display.scroll.item.Button.holder
G2L["3c"] = Instance.new("ImageLabel", G2L["3a"]);
G2L["3c"]["BorderSizePixel"] = 0;
G2L["3c"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3c"]["ImageTransparency"] = 1;
G2L["3c"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["3c"]["Size"] = UDim2.new(0, 32, 0, 32);
G2L["3c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3c"]["BackgroundTransparency"] = 0.8;
G2L["3c"]["LayoutOrder"] = 1;
G2L["3c"]["Name"] = [[holder]];
G2L["3c"]["Position"] = UDim2.new(0, 0, 0.5, 0);


-- StarterGui.ScreenGui.settings.main.item.display.scroll.item.Button.holder.icon
G2L["3d"] = Instance.new("ImageLabel", G2L["3c"]);
G2L["3d"]["BorderSizePixel"] = 0;
G2L["3d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3d"]["ImageTransparency"] = 0.5;
G2L["3d"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["3d"]["Image"] = [[rbxassetid://95898765113869]];
G2L["3d"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["3d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3d"]["BackgroundTransparency"] = 1;
G2L["3d"]["LayoutOrder"] = 1;
G2L["3d"]["Name"] = [[icon]];
G2L["3d"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.ScreenGui.settings.main.item.display.scroll.item.Button.holder.Corner
G2L["3e"] = Instance.new("UICorner", G2L["3c"]);
G2L["3e"]["Name"] = [[Corner]];
G2L["3e"]["CornerRadius"] = UDim.new(0, 6);


-- StarterGui.ScreenGui.settings.main.item.display.scroll.item.Button.Extra
G2L["3f"] = Instance.new("Folder", G2L["3a"]);
G2L["3f"]["Name"] = [[Extra]];


-- StarterGui.ScreenGui.settings.main.item.display.scroll.item.Button.Extra.Separator
G2L["40"] = Instance.new("Frame", G2L["3f"]);
G2L["40"]["BorderSizePixel"] = 0;
G2L["40"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["40"]["AnchorPoint"] = Vector2.new(0.5, 1);
G2L["40"]["Size"] = UDim2.new(2, 0, 0, 1);
G2L["40"]["Position"] = UDim2.new(0.5, 0, 1, 1);
G2L["40"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["40"]["Name"] = [[Separator]];
G2L["40"]["BackgroundTransparency"] = 0.98;


-- StarterGui.ScreenGui.settings.main.item.display.scroll.item.Button.List
G2L["41"] = Instance.new("UIListLayout", G2L["3a"]);
G2L["41"]["Padding"] = UDim.new(0, 10);
G2L["41"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["41"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["41"]["Name"] = [[List]];
G2L["41"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.ScreenGui.settings.main.item.display.scroll.item.Button.info
G2L["42"] = Instance.new("Frame", G2L["3a"]);
G2L["42"]["BorderSizePixel"] = 0;
G2L["42"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["42"]["Size"] = UDim2.new(0, 0, 0, 28);
G2L["42"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["42"]["Name"] = [[info]];
G2L["42"]["LayoutOrder"] = 2;
G2L["42"]["BackgroundTransparency"] = 1;


-- StarterGui.ScreenGui.settings.main.item.display.scroll.item.Button.info.Flex
G2L["43"] = Instance.new("UIFlexItem", G2L["42"]);
G2L["43"]["Name"] = [[Flex]];
G2L["43"]["FlexMode"] = Enum.UIFlexMode.Fill;


-- StarterGui.ScreenGui.settings.main.item.display.scroll.item.Button.info.Header
G2L["44"] = Instance.new("TextLabel", G2L["42"]);
G2L["44"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
G2L["44"]["BorderSizePixel"] = 0;
G2L["44"]["TextSize"] = 14;
G2L["44"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["44"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["44"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["44"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["44"]["BackgroundTransparency"] = 1;
G2L["44"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["44"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["44"]["Text"] = [[Name]];
G2L["44"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["44"]["Name"] = [[Header]];


-- StarterGui.ScreenGui.settings.main.item.display.scroll.item.Button.info.Description
G2L["45"] = Instance.new("TextLabel", G2L["42"]);
G2L["45"]["TextTruncate"] = Enum.TextTruncate.AtEnd;
G2L["45"]["BorderSizePixel"] = 0;
G2L["45"]["TextSize"] = 12;
G2L["45"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["45"]["TextTransparency"] = 0.7;
G2L["45"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["45"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["45"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["45"]["BackgroundTransparency"] = 1;
G2L["45"]["AnchorPoint"] = Vector2.new(0, 1);
G2L["45"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["45"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["45"]["Text"] = [[Short description]];
G2L["45"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["45"]["Name"] = [[Description]];
G2L["45"]["Position"] = UDim2.new(0, 0, 1.39286, 0);


-- StarterGui.ScreenGui.settings.main.item.display.scroll.item.Switch
G2L["46"] = Instance.new("Frame", G2L["13"]);
G2L["46"]["BorderSizePixel"] = 0;
G2L["46"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["46"]["Size"] = UDim2.new(1, 0, 0, 50);
G2L["46"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["46"]["Name"] = [[Switch]];
G2L["46"]["LayoutOrder"] = 1;
G2L["46"]["BackgroundTransparency"] = 1;

-- Tags
CollectionService:AddTag(G2L["46"], [[SettingObject]]);

-- StarterGui.ScreenGui.settings.main.item.display.scroll.item.Switch.switch
G2L["47"] = Instance.new("ImageButton", G2L["46"]);
G2L["47"]["BorderSizePixel"] = 0;
G2L["47"]["AutoButtonColor"] = false;
G2L["47"]["ImageTransparency"] = 1;
G2L["47"]["BackgroundColor3"] = Color3.fromRGB(23, 23, 23);
G2L["47"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["47"]["Size"] = UDim2.new(0, 45, 0, 27);
G2L["47"]["LayoutOrder"] = 99;
G2L["47"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["47"]["Name"] = [[switch]];
G2L["47"]["Position"] = UDim2.new(1, 0, 0.5, 0);
-- Attributes
G2L["47"]:SetAttribute([[Enabled]], true);
G2L["47"]:SetAttribute([[State]], false);

-- Tags
CollectionService:AddTag(G2L["47"], [[OrbitBooleanSwitch]]);

-- StarterGui.ScreenGui.settings.main.item.display.scroll.item.Switch.switch.Corner
G2L["48"] = Instance.new("UICorner", G2L["47"]);
G2L["48"]["Name"] = [[Corner]];
G2L["48"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.ScreenGui.settings.main.item.display.scroll.item.Switch.switch.UIPadding
G2L["49"] = Instance.new("UIPadding", G2L["47"]);
G2L["49"]["PaddingRight"] = UDim.new(0, 5);
G2L["49"]["PaddingLeft"] = UDim.new(0, 5);


-- StarterGui.ScreenGui.settings.main.item.display.scroll.item.Switch.switch.circle
G2L["4a"] = Instance.new("Frame", G2L["47"]);
G2L["4a"]["BorderSizePixel"] = 0;
G2L["4a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4a"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["4a"]["Size"] = UDim2.new(0, 19, 0, 19);
G2L["4a"]["Position"] = UDim2.new(0, 0, 0.5, 0);
G2L["4a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4a"]["Name"] = [[circle]];
G2L["4a"]["BackgroundTransparency"] = 0.95;


-- StarterGui.ScreenGui.settings.main.item.display.scroll.item.Switch.switch.circle.Corner
G2L["4b"] = Instance.new("UICorner", G2L["4a"]);
G2L["4b"]["Name"] = [[Corner]];
G2L["4b"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.ScreenGui.settings.main.item.display.scroll.item.Switch.Padding
G2L["4c"] = Instance.new("UIPadding", G2L["46"]);
G2L["4c"]["PaddingRight"] = UDim.new(0, 12);
G2L["4c"]["Name"] = [[Padding]];
G2L["4c"]["PaddingLeft"] = UDim.new(0, 12);


-- StarterGui.ScreenGui.settings.main.item.display.scroll.item.Switch.holder
G2L["4d"] = Instance.new("ImageLabel", G2L["46"]);
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


-- StarterGui.ScreenGui.settings.main.item.display.scroll.item.Switch.holder.icon
G2L["4e"] = Instance.new("ImageLabel", G2L["4d"]);
G2L["4e"]["BorderSizePixel"] = 0;
G2L["4e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4e"]["ImageTransparency"] = 0.5;
G2L["4e"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["4e"]["Image"] = [[rbxassetid://95898765113869]];
G2L["4e"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["4e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4e"]["BackgroundTransparency"] = 1;
G2L["4e"]["LayoutOrder"] = 1;
G2L["4e"]["Name"] = [[icon]];
G2L["4e"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.ScreenGui.settings.main.item.display.scroll.item.Switch.holder.Corner
G2L["4f"] = Instance.new("UICorner", G2L["4d"]);
G2L["4f"]["Name"] = [[Corner]];
G2L["4f"]["CornerRadius"] = UDim.new(0, 6);


-- StarterGui.ScreenGui.settings.main.item.display.scroll.item.Switch.Extra
G2L["50"] = Instance.new("Folder", G2L["46"]);
G2L["50"]["Name"] = [[Extra]];


-- StarterGui.ScreenGui.settings.main.item.display.scroll.item.Switch.Extra.Separator
G2L["51"] = Instance.new("Frame", G2L["50"]);
G2L["51"]["BorderSizePixel"] = 0;
G2L["51"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["51"]["AnchorPoint"] = Vector2.new(0.5, 1);
G2L["51"]["Size"] = UDim2.new(2, 0, 0, 1);
G2L["51"]["Position"] = UDim2.new(0.5, 0, 1, 1);
G2L["51"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["51"]["Name"] = [[Separator]];
G2L["51"]["BackgroundTransparency"] = 0.98;


-- StarterGui.ScreenGui.settings.main.item.display.scroll.item.Switch.List
G2L["52"] = Instance.new("UIListLayout", G2L["46"]);
G2L["52"]["Padding"] = UDim.new(0, 10);
G2L["52"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["52"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["52"]["Name"] = [[List]];
G2L["52"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.ScreenGui.settings.main.item.display.scroll.item.Switch.info
G2L["53"] = Instance.new("Frame", G2L["46"]);
G2L["53"]["BorderSizePixel"] = 0;
G2L["53"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["53"]["Size"] = UDim2.new(0, 0, 0, 28);
G2L["53"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["53"]["Name"] = [[info]];
G2L["53"]["LayoutOrder"] = 2;
G2L["53"]["BackgroundTransparency"] = 1;


-- StarterGui.ScreenGui.settings.main.item.display.scroll.item.Switch.info.Flex
G2L["54"] = Instance.new("UIFlexItem", G2L["53"]);
G2L["54"]["Name"] = [[Flex]];
G2L["54"]["FlexMode"] = Enum.UIFlexMode.Fill;


-- StarterGui.ScreenGui.settings.main.item.display.scroll.item.Switch.info.Header
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
G2L["55"]["Text"] = [[Show Debugbar]];
G2L["55"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["55"]["Name"] = [[Header]];


-- StarterGui.ScreenGui.settings.main.item.display.scroll.item.Switch.info.Description
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
G2L["56"]["Text"] = [[Enables/Disables the Debugbar]];
G2L["56"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["56"]["Name"] = [[Description]];
G2L["56"]["Position"] = UDim2.new(0, 0, 1, 0);


-- StarterGui.ScreenGui.settings.main.item.display.scroll.item.Filler
G2L["57"] = Instance.new("Frame", G2L["13"]);
G2L["57"]["BorderSizePixel"] = 0;
G2L["57"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["57"]["Size"] = UDim2.new(1, 0, 0, 50);
G2L["57"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["57"]["Name"] = [[Filler]];
G2L["57"]["LayoutOrder"] = 1;
G2L["57"]["BackgroundTransparency"] = 1;

-- Tags
CollectionService:AddTag(G2L["57"], [[SettingObject]]);

-- StarterGui.ScreenGui.settings.main.item.display.UIPadding
G2L["58"] = Instance.new("UIPadding", G2L["10"]);



-- StarterGui.ScreenGui.settings.main.item.topbar
G2L["59"] = Instance.new("Frame", G2L["f"]);
G2L["59"]["ZIndex"] = 12;
G2L["59"]["BorderSizePixel"] = 0;
G2L["59"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["59"]["Size"] = UDim2.new(1, 0, 0, 40);
G2L["59"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["59"]["Name"] = [[topbar]];
G2L["59"]["LayoutOrder"] = 1;
G2L["59"]["BackgroundTransparency"] = 1;


-- StarterGui.ScreenGui.settings.main.item.topbar.reset
G2L["5a"] = Instance.new("ImageButton", G2L["59"]);
G2L["5a"]["BorderSizePixel"] = 0;
G2L["5a"]["SliceCenter"] = Rect.new(512, 512, 512, 512);
G2L["5a"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["5a"]["AutoButtonColor"] = false;
G2L["5a"]["ImageTransparency"] = 1;
G2L["5a"]["BackgroundColor3"] = Color3.fromRGB(27, 27, 27);
G2L["5a"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["5a"]["Size"] = UDim2.new(0.5, 0, 1, 0);
G2L["5a"]["LayoutOrder"] = 2;
G2L["5a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5a"]["Name"] = [[reset]];

-- Tags
CollectionService:AddTag(G2L["5a"], [[OrbitActionButton]]);

-- StarterGui.ScreenGui.settings.main.item.topbar.reset.icon
G2L["5b"] = Instance.new("ImageLabel", G2L["5a"]);
G2L["5b"]["BorderSizePixel"] = 0;
G2L["5b"]["ScaleType"] = Enum.ScaleType.Fit;
G2L["5b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5b"]["ImageTransparency"] = 0.5;
G2L["5b"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["5b"]["Image"] = [[rbxassetid://113582432019999]];
G2L["5b"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["5b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5b"]["BackgroundTransparency"] = 1;
G2L["5b"]["Name"] = [[icon]];
G2L["5b"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.ScreenGui.settings.main.item.topbar.reset.Corner
G2L["5c"] = Instance.new("UICorner", G2L["5a"]);
G2L["5c"]["Name"] = [[Corner]];
G2L["5c"]["CornerRadius"] = UDim.new(0, 12);


-- StarterGui.ScreenGui.settings.main.item.topbar.reset.Scale
G2L["5d"] = Instance.new("UIScale", G2L["5a"]);
G2L["5d"]["Name"] = [[Scale]];


-- StarterGui.ScreenGui.settings.main.item.topbar.reset.Padding
G2L["5e"] = Instance.new("UIPadding", G2L["5a"]);
G2L["5e"]["PaddingTop"] = UDim.new(0, 4);
G2L["5e"]["PaddingRight"] = UDim.new(0, 14);
G2L["5e"]["Name"] = [[Padding]];
G2L["5e"]["PaddingLeft"] = UDim.new(0, 14);
G2L["5e"]["PaddingBottom"] = UDim.new(0, 4);


-- StarterGui.ScreenGui.settings.main.item.topbar.reset.List
G2L["5f"] = Instance.new("UIListLayout", G2L["5a"]);
G2L["5f"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["5f"]["Padding"] = UDim.new(0, 12);
G2L["5f"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["5f"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["5f"]["Name"] = [[List]];
G2L["5f"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.ScreenGui.settings.main.item.topbar.reset.name
G2L["60"] = Instance.new("TextLabel", G2L["5a"]);
G2L["60"]["BorderSizePixel"] = 0;
G2L["60"]["TextSize"] = 14;
G2L["60"]["TextTransparency"] = 0.6;
G2L["60"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["60"]["FontFace"] = Font.new([[rbxassetid://12187365364]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["60"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["60"]["BackgroundTransparency"] = 1;
G2L["60"]["Size"] = UDim2.new(0, 0, 1, 0);
G2L["60"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["60"]["Text"] = [[Reset Settings]];
G2L["60"]["LayoutOrder"] = 1;
G2L["60"]["AutomaticSize"] = Enum.AutomaticSize.X;
G2L["60"]["Name"] = [[name]];


-- StarterGui.ScreenGui.settings.main.item.topbar.reset.Flex
G2L["61"] = Instance.new("UIFlexItem", G2L["5a"]);
G2L["61"]["Name"] = [[Flex]];
G2L["61"]["FlexMode"] = Enum.UIFlexMode.Fill;


-- StarterGui.ScreenGui.settings.main.item.topbar.list
G2L["62"] = Instance.new("UIListLayout", G2L["59"]);
G2L["62"]["Padding"] = UDim.new(0, 10);
G2L["62"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
G2L["62"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["62"]["Name"] = [[list]];
G2L["62"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.ScreenGui.settings.main.item.Layout
G2L["63"] = Instance.new("UIListLayout", G2L["f"]);
G2L["63"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["63"]["Padding"] = UDim.new(0, 15);
G2L["63"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
G2L["63"]["Name"] = [[Layout]];


-- StarterGui.ScreenGui.settings.main.item.padding
G2L["64"] = Instance.new("UIPadding", G2L["f"]);
G2L["64"]["PaddingTop"] = UDim.new(0, 12);
G2L["64"]["PaddingRight"] = UDim.new(0, 20);
G2L["64"]["Name"] = [[padding]];
G2L["64"]["PaddingLeft"] = UDim.new(0, 20);
G2L["64"]["PaddingBottom"] = UDim.new(0, 20);
