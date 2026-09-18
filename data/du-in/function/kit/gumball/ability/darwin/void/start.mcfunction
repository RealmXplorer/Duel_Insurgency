execute as @e[type=skeleton,tag=gonerThing,distance=0.05..4] at @s run function du-in:kit/gumball/ability/darwin/void/no_clothes

#Empower
execute if entity @s[tag=empower] as @e[type=skeleton,tag=noClothes] run damage @s 4

#Affect marked players
#title @s title {text:"Imagine them ",color:red}
#title @s subtitle {text:"without their clothes on",color:red}
#title @s times 1s 10t 1s

#effect give @s minecraft:speed 5 2 true

##COPYRIGHT?
playsound du-in:kit.darwin.ability master @a ~ ~ ~ 9999 1
playsound du-in:sfx.ut.ability master @a ~ ~ ~ .25 1
playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 9999 1.3
playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 9999 1

swing @s[tag=!sabotaged] offhand whack
swing @s[tag=sabotaged] offhand stab

scoreboard players set @s darwinSound 100
clear @s #du-in:ability

tag @s add cooldown
tag @s remove empower
scoreboard players set @s gumSwapTimer 120
clear @s warped_fungus_on_a_stick
