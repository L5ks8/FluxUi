
import re
import os

with open("g2l_dump.txt", "r", encoding="utf-8") as f:
    dump = f.read()

# Extract lua code starting from "local CollectionService" up to the end (but before return G2L["1"], require if it exists)
match = re.search(r"(local CollectionService = game:GetService.*?)(?:return G2L|</USER_REQUEST>|$)", dump, re.DOTALL)
if not match:
    print("Could not find G2L lua code")
    exit(1)

lua_code = match.group(1)

# Replace G2L with AdvancedG2L to avoid naming conflicts if any
lua_code = lua_code.replace("G2L", "AdvancedG2L")

# Remove the line that creates ScreenGui (AdvancedG2L["1"] = Instance.new("ScreenGui"...))
lua_code = re.sub(r"AdvancedG2L\[\"1\"\] = Instance\.new\(\"ScreenGui\".*?\n", "", lua_code)
lua_code = re.sub(r"AdvancedG2L\[\"1\"\]\[\"ZIndexBehavior\"\].*?\n", "", lua_code)

# Change AdvancedG2L["2"] parent from AdvancedG2L["1"] to UI.settings
lua_code = lua_code.replace("AdvancedG2L[\"1\"]", "UI.settings")

# Now inject this into SettignsTab.lua
with open(r"scr\Components\SettignsTab.lua", "r", encoding="utf-8") as f:
    old_script = f.read()

# We want to insert the new UI right before `return UI.settings`
injection_point = old_script.rfind("return UI.settings")

# Add the click event
event_code = """
    AdvancedG2L["2"].Visible = false
    UI.item.MouseButton1Click:Connect(function()
        UI.selection.Visible = false
        AdvancedG2L["2"].Visible = true
    end)
"""

new_script = old_script[:injection_point] + lua_code + event_code + "\n    " + old_script[injection_point:]

with open(r"scr\Components\SettignsTab.lua", "w", encoding="utf-8") as f:
    f.write(new_script)

print("Injected successfully!")

