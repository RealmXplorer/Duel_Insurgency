scoreboard players set @s[tag=song,scores={music=2760..},tag=!startgame,tag=!songEnd] music 0
execute if entity @s[tag=song,scores={music=1},tag=!musicOff,tag=!startgame,tag=!songEnd] run playsound minecraft:music.ffa record @s ~ ~ ~ 1000000 1 1

#scoreboard players set @s[tag=classic,scores={music=2760..},tag=!startgame,tag=!cend] music 0
#execute if entity @s[tag=classic,scores={music=1},tag=!musicOff,tag=!startgame,tag=!cend] run playsound minecraft:music.ffa record @s ~ ~ ~ 1000000 1 1

scoreboard players set @s[tag=songEnd,scores={music=1940..},tag=!startgame] music 0
execute if entity @s[tag=songEnd,scores={music=1},tag=!musicOff,tag=!startgame] run playsound minecraft:music.ffaend record @s ~ ~ ~ 1000000 1 1

#scoreboard players set @s[tag=cend,scores={music=1940..},tag=!startgame] music 0
#execute if entity @s[tag=cend,scores={music=1},tag=!musicOff,tag=!startgame] run playsound minecraft:music.ffaend record @s ~ ~ ~ 1000000 1 1