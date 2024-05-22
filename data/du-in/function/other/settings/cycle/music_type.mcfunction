advancement revoke @s only du-in:shop/interact_jukebox
scoreboard players add @s musicCycle 1
execute if entity @s[scores={musicCycle=5..},tag=!secret] run scoreboard players set @s musicCycle 0
execute if entity @s[scores={musicCycle=7..},tag=secret] run scoreboard players set @s musicCycle 0

tag @s remove musicOff

execute if entity @s[scores={musicCycle=0}] run function du-in:other/settings/cycle/music/music_off
execute if entity @s[scores={musicCycle=1}] run function du-in:other/settings/cycle/music/default_music
execute if entity @s[scores={musicCycle=2}] run function du-in:other/settings/cycle/music/tournament_music
execute if entity @s[scores={musicCycle=3}] run function du-in:other/settings/cycle/music/legacy_music
execute if entity @s[scores={musicCycle=4}] run function du-in:other/settings/cycle/music/beta_music

#Only accessible with the "secret" tag
execute if entity @s[scores={musicCycle=5}] run function du-in:other/settings/cycle/music/halloween_music
execute if entity @s[scores={musicCycle=6}] run function du-in:other/settings/cycle/music/christmas_music


