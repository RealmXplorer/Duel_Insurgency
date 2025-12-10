#DEFAULT KOTH#
# execute if entity @a[tag=!teamMode,tag=!timedMode,tag=partyLeader] run function du-in:ingame/koth/default/default
# execute if entity @a[tag=teamMode,tag=!timedMode,tag=partyLeader] run function du-in:ingame/koth/team/teams
# execute if entity @a[tag=timedMode,tag=!teamMode,tag=partyLeader] run function du-in:ingame/koth/timed/timed
# execute if entity @a[tag=timedMode,tag=teamMode,tag=partyLeader] run function du-in:ingame/koth/team_timed/timed

#Pick KOTH mode
execute if score #KOTH gamemode matches 0 run function du-in:ingame/koth/default/default
execute if score #KOTH gamemode matches 1 run function du-in:ingame/koth/team/teams
execute if score #KOTH gamemode matches 2 run function du-in:ingame/koth/timed/timed
execute if score #KOTH gamemode matches 3 run function du-in:ingame/koth/team_timed/timed

#END MAP EFFECTS#
execute if score #main map matches 2 run effect give @a[tag=!win,tag=!lose,predicate=!du-in:effect/has_night_vision] minecraft:night_vision infinite 100 true
execute if score #main map matches 3 run effect give @a[tag=!win,tag=!lose,predicate=!du-in:effect/has_night_vision] minecraft:night_vision infinite 100 true
execute if score #main map matches 7 run effect give @a[tag=!win,tag=!lose,predicate=!du-in:effect/has_dolphin_grace] minecraft:dolphins_grace infinite 100 true

execute if score #main map matches 3 as @a[gamemode=adventure] at @s if entity @s[distance=..100,y=6,dy=0] run kill @s

