#CONQUEST#
# scoreboard players set @s[tag=song,scores={music=1620..}] music 0
# execute if entity @s[tag=song,scores={music=1}] run playsound minecraft:oldmusic.cq record @s ~ ~ ~ 1000000 1 1

execute as @a[tag=song,tag=!songEnd,tag=oldPack,tag=!legacy,tag=!musicOff] at @s run playsound minecraft:oldmusic.cq record @s ~ ~ ~ 1000000 1 1

# scoreboard players reset @s[tag=songEnd,scores={music=1620..}] music
# execute if entity @s[tag=songEnd,scores={music=1}] run playsound minecraft:oldmusic.cqend record @s ~ ~ ~ 1000000 1 1

execute as @a[tag=songEnd,tag=oldPack,tag=!legacy,tag=!musicOff] at @s run playsound minecraft:oldmusic.cqend record @s ~ ~ ~ 1000000 1 1


schedule function du-in:music/ingame/oldpack/conquest 1620t