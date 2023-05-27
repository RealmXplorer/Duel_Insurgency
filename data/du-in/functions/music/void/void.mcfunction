#execute unless score #main pylonsDestroyed matches 3 run scoreboard players add @s ambience 1

#execute unless score #main pylonsDestroyed matches 1.. run scoreboard players set @s[scores={music=2540..}] music 0
#execute if entity @s[scores={music=1},tag=!musicOff] unless score #main pylonsDestroyed matches 1.. run playsound minecraft:music.suffocation master @s ~ ~ ~ 0.25 1 1

#execute if entity @s[tag=!musicOff] if score #main pylonsDestroyed matches 1..2 run function du-in:music/void/pursuit_happiness
#execute if entity @s[tag=!musicOff] if score #main pylonsDestroyed matches 3 run function du-in:music/void/vain_pursuit

function du-in:ingame/void/ambience

execute at @s if entity @s[distance=..100,y=20,dy=0,tag=!working] run function du-in:ingame/void/platform_return