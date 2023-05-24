effect give @a[tag=monsterTarget,tag=selectedTarget] levitation infinite 5 true

execute if entity @a[tag=selectedTarget] positioned -1355 50 880 run kill @a[distance=..3]

execute if entity @a[tag=selectedTarget] run scoreboard players set @a music 3

execute if entity @a[tag=cIngame,tag=selectedTarget] run function du-in:music/ingame/stop/classic
execute if entity @a[tag=dmIngame,tag=selectedTarget] run function du-in:music/ingame/stop/deathmatch