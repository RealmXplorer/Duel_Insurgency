# execute if entity @s[scores={kitTheme=0}] run scoreboard players set @s kitList 7
# execute if entity @s[scores={kitTheme=1}] run scoreboard players set @s kitList 8
# execute if entity @s[scores={kitTheme=2}] run scoreboard players set @s kitList 11
# execute if entity @s[scores={kitTheme=3}] run scoreboard players set @s kitList 4
# execute if entity @s[scores={kitTheme=4}] run scoreboard players set @s kitList 4
# execute if entity @s[scores={kitTheme=5}] run scoreboard players set @s kitList 3
# execute if entity @s[scores={kitTheme=6}] run scoreboard players set @s kitList 11

clear @s player_head
function du-in:lobby/kitmenu/menu/render_menu

# 1. Get current theme index from scoreboard
#execute store result storage du-in:temp theme_index int 1 run scoreboard players get @s kitTheme

# 2. Call helper to write group string into storage context
#function du-in:lobby/kitmenu/skins/presets/set_active with storage du-in:temp