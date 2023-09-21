scoreboard players add @s circleTimer 1
execute if entity @s[scores={circleTimer=1}] at @s run tp @s ~ ~ ~ 0 -90
execute if entity @s[scores={circleTimer=1}] at @s run function du-in:kit/clairen/draw_sphere
scoreboard players reset @s[scores={circleTimer=31..}] circleTimer

scoreboard players set @s[tag=!clairSet] clairenTimer 100
tag @s[tag=!clairSet] add clairSet

execute if entity @s[tag=!sabotaged] run tag @a[distance=..6,gamemode=!spectator,tag=!inField] add inField
execute if entity @s[tag=!sabotaged] run tag @a[distance=6..,gamemode=!spectator,tag=inField] remove inField

execute if entity @s[tag=sabotaged] run tag @a[distance=..6,gamemode=!spectator,tag=!sabotagedField] add sabotagedField
execute if entity @s[tag=sabotaged] run tag @a[distance=6..,gamemode=!spectator,tag=sabotagedField] remove sabotagedField

scoreboard players remove @s[scores={clairenTimer=-1..}] clairenTimer 1

#execute as @a[distance=..8,tag=playing,gamemode=!spectator] run effect give @s minecraft:strength 1 0 true
execute if entity @s[tag=!sabotgaed] as @e[tag=papyrusFind,distance=..8] at @s run kill @e[type=armor_stand,tag=papyrusBone,distance=..3]

execute if entity @s[tag=!sabotgaed] as @e[tag=projectile,distance=..8] at @s run playsound minecraft:clairen.deflect master @a ~ ~ ~ 1 1
execute if entity @s[tag=!sabotgaed] as @e[tag=projectile,distance=..8] run kill @s

execute if entity @s[scores={clairenTimer=..0}] run tag @a remove inField
execute if entity @s[scores={clairenTimer=..0}] run tag @a remove sabotagedField
kill @s[scores={clairenTimer=..0}]