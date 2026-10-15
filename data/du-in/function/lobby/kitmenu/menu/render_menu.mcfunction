# render_player_menu.mcfunction

#Remove tag so this only executes 1 tick per interaction, not every tick
tag @s remove menuRefresh

#Mark kit as rendering
tag @s add renderingKit

#Extract kitTheme into storage
execute store result storage du-in:temp theme_index int 1 run scoreboard players get @s kitTheme

#Execute the macro render sequence ONCE
function du-in:lobby/kitmenu/menu/load_group with storage du-in:temp

#Remove rendering
tag @s remove renderingKit