#DEFAULT KOTH#
execute if entity @a[tag=!teamMode,tag=!timedMode,tag=partyLeader] run function du-in:ingame/koth/default/default

#TEAM KOTH#
execute if entity @a[tag=teamMode,tag=!timedMode,tag=partyLeader] run function du-in:ingame/koth/team/teams


execute if entity @a[tag=timedMode,tag=!teamMode,tag=partyLeader] run function du-in:ingame/koth/timed/timed

execute if entity @a[tag=timedMode,tag=teamMode,tag=partyLeader] run function du-in:ingame/koth/team_timed/timed

#MUSIC#
#execute as @a[tag=kothIngame,tag=!startgame,tag=!saac,tag=!bigChungus,tag=!saul] at @s run function du-in:music/ingame/koth

#execute at @e[type=area_effect_cloud,tag=kothObj] run function du-in:ingame/koth/hill

#END MAP EFFECTS#
execute if score #main map matches 2 run effect give @a[tag=!win,tag=!lose,predicate=!du-in:effect/has_night_vision] minecraft:night_vision infinite 100 true
execute if score #main map matches 3 run effect give @a[tag=!win,tag=!lose,predicate=!du-in:effect/has_night_vision] minecraft:night_vision infinite 100 true
execute if score #main map matches 7 run effect give @a[tag=!win,tag=!lose,predicate=!du-in:effect/has_dolphin_grace] minecraft:dolphins_grace infinite 100 true

execute if score #main map matches 3 as @a[gamemode=adventure] at @s if entity @s[distance=..100,y=6,dy=0] run kill @s

