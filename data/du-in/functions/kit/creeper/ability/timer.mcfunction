scoreboard players remove @s creeperTimer 1
particle minecraft:smoke ~ ~1 ~ 0.1 0.2 0.1 0.05 10 force

#Give resistance to teammates when explosion goes off
#execute if entity @s[scores={creeperTimer=..1},tag=!sabotaged] as @a[distance=0.05..5,tag=playing] if score @s team = @a[limit=1,tag=playing,scores={creeperTimer=..1}] team run effect give @s minecraft:resistance 1 6 true

#Creeper Timers
#effect give @s[scores={creeperTimer=..2},tag=!sabotaged] minecraft:resistance 1 100 true

execute if entity @s[scores={creeperTimer=..0}] run function du-in:kit/creeper/ability/explode
