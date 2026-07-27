import re

def convert():
    with open('scratch/input.lua', 'r', encoding='utf-8') as f:
        content = f.read()

    lines = content.split('\n')
    
    lua_code = []
    
    lua_code.append("local function CreateSettings(WindowTable)")
    lua_code.append("    local UI = {}")
    lua_code.append("    local CollectionService = game:GetService(\"CollectionService\")")
    lua_code.append("    local ScreenGui = WindowTable.Content:FindFirstChild(\"screen\") or WindowTable.Content\n")

    id_to_var = {}
    id_to_var["1"] = "ScreenGui"

    var_counts = {}

    for line in lines:
        line = line.strip()
        if not line or line.startswith('--'):
            continue
            
        # Instance.new
        match = re.search(r'G2L\["([^"]+)"\] = Instance\.new\("([^"]+)", G2L\["([^"]+)"\]\);', line)
        if match:
            id_val = match.group(1)
            class_name = match.group(2)
            parent_id = match.group(3)
            
            # Temporary name until we see the "Name" property, default to class name lowercase
            base_var = class_name.lower()
            if base_var not in var_counts:
                var_counts[base_var] = 1
            else:
                var_counts[base_var] += 1
            
            var_name = f"{base_var}{var_counts[base_var]}" if var_counts[base_var] > 1 else base_var
            
            id_to_var[id_val] = var_name
            
            parent_var = id_to_var.get(parent_id, "ScreenGui")
            if parent_var != "ScreenGui":
                parent_var = "UI." + parent_var
                
            if id_val == "2": # main settings frame
                var_name = "settings"
                id_to_var[id_val] = var_name
            
            lua_code.append("")
            lua_code.append(f"    UI.{var_name} = Instance.new(\"{class_name}\")")
            lua_code.append(f"    UI.{var_name}.Parent = {parent_var}")
            continue

        # Property assignment
        match = re.search(r'G2L\["([^"]+)"\]\["([^"]+)"\] = (.*);', line)
        if match:
            id_val = match.group(1)
            prop = match.group(2)
            val = match.group(3)
            
            if id_val in id_to_var:
                var_name = id_to_var[id_val]
                if prop == "Name":
                    pass
                lua_code.append(f"    UI.{var_name}.{prop} = {val}")
            continue
            
        # Attributes
        match = re.search(r'G2L\["([^"]+)"\]:SetAttribute\((.*)\);', line)
        if match:
            # We ignore attributes as requested
            continue
            
        # Tags
        match = re.search(r'CollectionService:AddTag\(G2L\["([^"]+)"\], (.*)\);', line)
        if match:
            # We ignore tags as requested
            continue

    lua_code.append("\n    return UI.settings")
    lua_code.append("end")
    lua_code.append("")
    lua_code.append("local SettignsTab = {}")
    lua_code.append("function SettignsTab:Create(WindowTable)")
    lua_code.append("    return CreateSettings(WindowTable)")
    lua_code.append("end")
    lua_code.append("return SettignsTab")

    with open('scratch/output.lua', 'w', encoding='utf-8') as f:
        f.write('\n'.join(lua_code))

if __name__ == '__main__':
    convert()
