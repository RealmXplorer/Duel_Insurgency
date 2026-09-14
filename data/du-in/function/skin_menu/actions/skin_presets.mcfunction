clear @s barrier[item_model="filled_map"]

tag @s add pickPreset

scoreboard players add @s skinPreset 1
execute if entity @s[scores={skinPreset=5..}] run scoreboard players set @s skinPreset 0

tag @s remove randomSkins

execute if entity @s[scores={skinPreset=0}] run function du-in:skin_menu/presets/default
execute if entity @s[scores={skinPreset=1}] run function du-in:skin_menu/presets/random
execute if entity @s[scores={skinPreset=2}] run function du-in:skin_menu/presets/halloween
execute if entity @s[scores={skinPreset=3}] run function du-in:skin_menu/presets/christmas
execute if entity @s[scores={skinPreset=4}] run function du-in:skin_menu/presets/summer

tag @s remove pickPreset
execute if entity @s[scores={thrownBarrier=1..}] run function du-in:other/clear_ground_items
