import re

with open("g2l_confirmation.txt", "r", encoding="utf-8") as f:
    text = f.read()

instances = {}
for match in re.finditer(r'G2L\["([a-zA-Z0-9]+)"\]\s*=\s*Instance\.new\("([^"]+)"(?:,\s*(.+?))?\);', text):
    id_ = match.group(1)
    class_ = match.group(2)
    parent = match.group(3)
    if parent and parent.startswith("G2L"):
        parent_id = re.search(r"G2L\[\"([^\"]+)\"\]", parent).group(1)
    else:
        parent_id = None
    instances[id_] = {"class": class_, "parent": parent_id, "props": [], "methods": [], "tags": [], "name": None}

for match in re.finditer(r'G2L\["([a-zA-Z0-9]+)"\]\["([a-zA-Z0-9_]+)"\]\s*=\s*(.*?);', text):
    id_ = match.group(1)
    prop = match.group(2)
    val = match.group(3)
    if id_ in instances:
        instances[id_]["props"].append((prop, val))
        if prop == "Name":
            name_match = re.search(r'\[\[(.*?)\]\]|"(.*?)"', val)
            if name_match:
                instances[id_]["name"] = name_match.group(1) or name_match.group(2)

for match in re.finditer(r'G2L\["([a-zA-Z0-9]+)"\]:([a-zA-Z0-9_]+)\((.*?)\);', text):
    id_ = match.group(1)
    method = match.group(2)
    args = match.group(3)
    if id_ in instances:
        instances[id_]["methods"].append((method, args))

for match in re.finditer(r'CollectionService:AddTag\(G2L\["([a-zA-Z0-9]+)"\],\s*(.*?)\);', text):
    id_ = match.group(1)
    tag = match.group(2)
    if id_ in instances:
        instances[id_]["tags"].append(tag)

var_names = {}
name_counts = {}
reserved = {"local", "function", "end", "if", "then", "else", "elseif", "while", "do", "for", "in", "repeat", "until", "break", "return", "true", "false", "nil", "and", "or", "not"}

for id_, data in instances.items():
    base_name = data["name"]
    if not base_name:
        base_name = data["class"].lower()
    
    base_name = re.sub(r"[^a-zA-Z0-9_]", "", base_name)
    if not base_name or base_name[0].isdigit():
        base_name = "obj_" + base_name
    if base_name in reserved:
        base_name = base_name + "_"

    if base_name not in name_counts:
        name_counts[base_name] = 1
        var_names[id_] = base_name
    else:
        name_counts[base_name] += 1
        var_names[id_] = base_name + str(name_counts[base_name])

if "1" in instances:
    del instances["1"]

lines = []
for id_, data in instances.items():
    var_name = var_names[id_]
    lines.append(f"    local {var_name} = Instance.new(\"{data['class']}\")")
    
    for prop, val in data["props"]:
        lines.append(f"    {var_name}.{prop} = {val}")
        
    for method, args in data["methods"]:
        lines.append(f"    {var_name}:{method}({args})")
        
    for tag in data["tags"]:
        lines.append(f"    CollectionService:AddTag({var_name}, {tag})")
        
    if data["parent"] and data["parent"] in var_names:
        parent_var = var_names[data["parent"]]
        lines.append(f"    {var_name}.Parent = {parent_var}")
    elif id_ == "2": 
        lines.append(f"    {var_name}.Parent = UI.settings")
        lines.append(f"    {var_name}.Visible = false")
        
    lines.append("")

with open("converted_confirmation.lua", "w", encoding="utf-8") as f:
    f.write("\n".join(lines))
    
print('Conversion written to converted_confirmation.lua')
