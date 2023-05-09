execute as @a[tag=song,tag=!musicOff,tag=!startgame,tag=!songEnd] run playsound minecraft:music.ffa record @s ~ ~ ~ 1000000 1 1
execute as @a[tag=songEnd,tag=!musicOff,tag=!startgame] run playsound minecraft:music.ffaend record @s ~ ~ ~ 1000000 1 1

execute if entity @a[tag=song,tag=!songEnd] run schedule function du-in:ingame/scheduled/music/classic/default 2760t
execute if entity @a[tag=songEnd] run schedule function du-in:ingame/scheduled/music/classic/default 1940t