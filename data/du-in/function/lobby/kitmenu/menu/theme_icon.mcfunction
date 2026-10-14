# 1. Fetch display properties for active group
$data modify storage du-in:temp display set from storage du-in:group_icons $(active_group)

# 2. Render item if defined
execute if data storage du-in:temp display run function du-in:lobby/kitmenu/menu/render_icon with storage du-in:temp display

# 3. Fallback for unregistered custom mod groups
execute unless data storage du-in:temp display run item replace entity @s inventory.17 with minecraft:barrier[custom_data={du-in:"displayHead"},custom_name='{"text":"Custom Group","color":"gray"}'] 1