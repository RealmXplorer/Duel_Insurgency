#DEFAULT KOTH#
execute if entity @a[tag=!teamMode] run function du-in:ingame/koth/default

#TEAM KOTH#
execute if entity @a[tag=teamMode] run function du-in:ingame/koth/teams

#MUSIC#
execute as @a[tag=kothIngame,tag=!startgame,tag=!saac,tag=!bigChungus] at @s run function du-in:music/ingame/koth

execute at @e[type=minecraft:area_effect_cloud,tag=kothObj] run function du-in:ingame/koth/hill

#END MAP EFFECTS#
execute if score #main map matches 2 run effect give @a[tag=!win,tag=!lose,tag=!winend] minecraft:night_vision 100 100 true
execute if score #main map matches 3 run effect give @a[tag=!win,tag=!lose,tag=!winend] minecraft:night_vision 100 100 true