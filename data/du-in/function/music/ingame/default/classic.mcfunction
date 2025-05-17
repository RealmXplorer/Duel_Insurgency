#scoreboard players set @s[tag=song,scores={music=2760..},tag=!startgame,tag=!songEnd] music 0
#execute if entity @s[tag=song,scores={music=1},tag=!musicOff,tag=!startgame,tag=!songEnd] run playsound minecraft:music.ffa record @s ~ ~ ~ 1000000 1 1

execute as @a[tag=song,tag=!musicOff,tag=!songEnd,tag=!oldPack,tag=!tournament,tag=!legacy,tag=!halloween,tag=!christmas,tag=!saac, tag=!jackBlack,tag=!bigChungus,tag=!saul] at @s run playsound minecraft:music.ffa record @s ~ ~ ~ 1000000 1 1

#scoreboard players set @s[tag=classic,scores={music=2760..},tag=!startgame,tag=!cend] music 0
#execute if entity @s[tag=classic,scores={music=1},tag=!musicOff,tag=!startgame,tag=!cend] run playsound minecraft:music.ffa record @s ~ ~ ~ 1000000 1 1

#scoreboard players set @s[tag=songEnd,scores={music=1940..},tag=!startgame] music 0
#execute if entity @s[tag=songEnd,scores={music=1},tag=!musicOff,tag=!startgame] run playsound minecraft:music.ffaend record @s ~ ~ ~ 1000000 1 1

execute as @a[tag=songEnd,tag=!musicOff,tag=!oldPack,tag=!tournament,tag=!legacy,tag=!halloween,tag=!christmas,tag=!saac, tag=!jackBlack,tag=!bigChungus,tag=!saul] at @s run playsound minecraft:music.ffaend record @s ~ ~ ~ 1000000 1 1

#scoreboard players set @s[tag=cend,scores={music=1940..},tag=!startgame] music 0
#execute if entity @s[tag=cend,scores={music=1},tag=!musicOff,tag=!startgame] run playsound minecraft:music.ffaend record @s ~ ~ ~ 1000000 1 1

execute unless entity @a[tag=songEnd] run schedule function du-in:music/ingame/default/classic 2740t
execute if entity @a[tag=songEnd] run schedule function du-in:music/ingame/default/classic 1940t