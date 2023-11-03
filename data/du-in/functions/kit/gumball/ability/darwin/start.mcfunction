execute if entity @s[tag=!void,tag=!sabotaged] as @a[distance=0.05..4,tag=playing,tag=!teamDead,gamemode=!spectator] unless score @s team = @a[scores={kit=22},tag=kitActions,tag=darwin,limit=1] team run tag @s add noClothes
execute if entity @s[tag=void] as @e[type=skeleton,tag=gonerThing,distance=0.05..4] at @s run function du-in:kit/gumball/ability/darwin/void
tag @s[tag=sabotaged] add noClothes

execute as @a[tag=noClothes] at @s run function du-in:kit/gumball/ability/darwin/no_clothes

#title @s title {"text":"Imagine them ","color":"red"}
#title @s subtitle {"text":"without their clothes on","color":"red"}
#title @s times 1s 10t 1s

effect give @s minecraft:speed 5 2 true

##COPYRIGHT?
playsound minecraft:darwin.ability master @a ~ ~ ~ 9999 1
playsound minecraft:sans.ability master @a ~ ~ ~ .25 1
playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 9999 1.3
playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 9999 1

scoreboard players set @s darwinSound 100
clear @s carrot_on_a_stick

tag @s add cooldown
tag @s remove sabotaged
scoreboard players set @s gumSwapTimer 120
clear @s warped_fungus_on_a_stick
