advancement revoke @s only du-in:utility/detect_item

#say success
execute if entity @s[tag=kitMenu,tag=!changeTheme] run function du-in:lobby/kitmenu/select/detect_click

# execute if entity @s[tag=playing,tag=!kitMenu] run function du-in:ingame/scheduled/inventory_test