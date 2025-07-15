#Heal Team#
effect give @s strength 2 0 true
effect give @s speed 2 0 true
tellraw @s ["",{text:"You have been inspired! You are stronger!",bold:true,color:green}]

#Teammate
execute as @a[distance=0.05..5,tag=playing,gamemode=!spectator,tag=!teamDead] if score @s team = @a[scores={kit=35},tag=inspireFull,tag=secKitActions,limit=1] team run function du-in:kit/judy/inspire/activate

#Enemy
execute as @a[distance=0.05..5,tag=playing,gamemode=!spectator,tag=!teamDead] unless score @s team = @a[scores={kit=35},tag=inspireFull,tag=secKitActions,limit=1] team run function du-in:kit/judy/inspire/enemy

#Particle#
#particle minecraft:heart ~ ~1.5 ~ 2 2 2 0 25 force
playsound minecraft:sans.ability master @a ~ ~ ~ 100 1
#playsound minecraft:ralsei.heal_spell master @a ~ ~ ~ 100 1
playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 100 0.7
particle minecraft:composter ~ ~1.5 ~ 2 1 2 0 30 force

#Reset#
scoreboard players set @s judyInspire 0
tag @s remove inspireFull

clear @s minecraft:gunpowder[item_model="du-in:other/inspire4"]