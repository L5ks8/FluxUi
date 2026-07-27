import re
with open("g2l.txt", "r", encoding="utf-8") as f: text = f.read()
instances = {}
for match in re.finditer(r'G2L\["([a-zA-Z0-9]+)"\]\s*=\s*Instance\.new\("([^"]+)"(?:,\s*(.+?))?\);', text):
    instances[match.group(1)] = match.group(2)
print("Count:", len(instances))
print("First 10 keys:", list(instances.keys())[:10])
