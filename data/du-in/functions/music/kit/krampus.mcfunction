#KRAMPUS MUSIC#
scoreboard players set @s[scores={music=2140..,kit=1001},tag=playing,tag=!legMusicOff] music 0
execute if entity @s[tag=playing,scores={music=1,kit=1001},tag=!musicOff,tag=!legMusicOff] run playsound minecraft:krampus.ability.music record @s ~ ~ ~ 10000000000000000000000000 1 1

execute if entity @s[tag=!krampusAbility,tag=!saac,tag=!saacEnd,tag=!legMusicOff] run function du-in:music/kit/stop/kit

execute unless entity @s[scores={seekedTimer=-99..}] run stopsound @s record minecraft:krampus.player.music

#TAGS#
tag @s[scores={kit=1001},tag=playing,tag=!legMusicOff] add krampusAbility
tag @s[tag=lobby,tag=!playing] remove krampusAbility
tag @s[scores={kit=1001}] remove classic

execute as @a[scores={seekedTimer=199}] run tag @s add krampusAbility
execute unless entity @a[scores={seekedTimer=-99..}] unless entity @s[scores={kit=1001}] run tag @s remove krampusAbility

#PLAYER MUSIC#
execute unless entity @a[scores={seekedTimer=-100..}] as @a run stopsound @s record minecraft:krampus.player.music