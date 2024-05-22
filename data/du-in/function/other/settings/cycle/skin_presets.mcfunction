scoreboard players add @s skinPreset 1
execute if entity @s[scores={skinPreset=5..}] run scoreboard players set @s skinPreset 0

tag @s remove randomSkins

execute if entity @s[scores={skinPreset=0}] run function du-in:other/settings/cycle/skins/default_skins
execute if entity @s[scores={skinPreset=1}] run function du-in:other/settings/cycle/skins/halloween
execute if entity @s[scores={skinPreset=2}] run function du-in:other/settings/cycle/skins/christmas
execute if entity @s[scores={skinPreset=3}] run function du-in:other/settings/cycle/skins/summer
execute if entity @s[scores={skinPreset=4}] run function du-in:other/settings/cycle/skins/random
