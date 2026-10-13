#effect give @a[tag=monsterTarget,tag=selectedTarget] levitation infinite 5 true

execute positioned -1355 50 880 run kill @a[distance=..3]

scoreboard players set @a music 3

execute if entity @a[tag=cIngame] run function du-in:music/ingame/stop/classic
execute if entity @a[tag=dmIngame] run function du-in:music/ingame/stop/deathmatch

#execute if entity @a[tag=cIngame] run schedule function du-in:map/jermall/constant 1t
execute if entity @a[tag=selectedTarget] run schedule function du-in:map/jermall/constant 1t
