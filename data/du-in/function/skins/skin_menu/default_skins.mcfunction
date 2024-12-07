execute if entity @s[tag=givenDefault] run function du-in:skins/skin_menu/actions/default_skins
item replace entity @s inventory.0 with minecraft:barrier[item_model="filled_map",custom_name='{"text":"Skin Presets","color":"gray","bold":true,"italic":false}']

tag @s add givenDefault