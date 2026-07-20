import re

path = r'c:\Users\lukeb\OneDrive\Projects\FluxUi\scr\Components\SettignsTab.lua'
with open(path, 'r', encoding='utf-8') as f:
    content = f.read()

# 1. Remove all UIStroke blocks
# A block is usually:
# local UIStroke = Instance.new("UIStroke")
# UIStroke.Color = Color3.fromRGB(...)
# UIStroke.Transparency = ...
# UIStroke.Parent = ...
stroke_pattern = re.compile(r'\s*local UIStroke = Instance\.new\("UIStroke"\)\n\s*UIStroke\.Color = [^\n]+\n\s*UIStroke\.Transparency = [^\n]+\n\s*UIStroke\.Parent = [^\n]+')
content = stroke_pattern.sub('', content)

# 2. Modify CreateSection to be transparent
content = content.replace('Section.BackgroundColor3 = Color3.fromRGB(25, 25, 25)', 'Section.BackgroundTransparency = 1')

with open(path, 'w', encoding='utf-8') as f:
    f.write(content)
