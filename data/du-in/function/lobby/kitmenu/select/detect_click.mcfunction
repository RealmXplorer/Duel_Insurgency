# 1. Instantly revoke the advancement so it can trigger again on the next click
# advancement revoke @s only du-in:utility/detect_click

#say success

# Pass current kitTheme to storage and evaluate slots once for this click event
execute store result storage du-in:temp theme_index int 1 run scoreboard players get @s kitTheme
function du-in:lobby/kitmenu/menu/load_group with storage du-in:temp

# 2. Only run slot check logic if the player is currently in the kit menu
#execute if entity @s[tag=] run function du-in:lobby/kitmenu/menu/check_clicks