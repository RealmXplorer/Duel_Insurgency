scoreboard players add @s musicCycle 1
execute if entity @s[scores={musicCycle=5..},tag=!secret] run scoreboard players set @s musicCycle 0
execute if entity @s[scores={musicCycle=7..},tag=secret] run scoreboard players set @s musicCycle 0

#clear @s barrier{CustomModelData:101}
tag @s remove musicOff

execute if entity @s[scores={musicCycle=0}] run function du-in:other/settings/cycle/music_off
execute if entity @s[scores={musicCycle=1}] run function du-in:other/settings/cycle/default_music
execute if entity @s[scores={musicCycle=2}] run function du-in:other/settings/cycle/tournament_music
execute if entity @s[scores={musicCycle=3}] run function du-in:other/settings/cycle/legacy_music
execute if entity @s[scores={musicCycle=4}] run function du-in:other/settings/cycle/beta_music
execute if entity @s[scores={musicCycle=5}] run function du-in:other/settings/cycle/halloween_music
execute if entity @s[scores={musicCycle=6}] run function du-in:other/settings/cycle/christmas_music
