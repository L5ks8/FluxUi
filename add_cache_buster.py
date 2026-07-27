with open('scr/init.lua', 'r', encoding='utf-8') as f:
    text = f.read()

import re
# Replace game:HttpGet(...) with game:HttpGet(...) .. "?t=" .. tostring(tick())
# Wait, actually we just need to append ?t=... inside the URL!
# Example: game:HttpGet(Source .. "Components/Mainframe.lua") 
# becomes: game:HttpGet(Source .. "Components/Mainframe.lua?t=" .. tostring(tick()))

new_text = re.sub(r'game:HttpGet\((Source \.\. "[^"]+)\)', r'game:HttpGet(\1 .. "?t=" .. tostring(tick()))', text)

with open('scr/init.lua', 'w', encoding='utf-8') as f:
    f.write(new_text)

print("Cache busters added successfully")
