tag @s add thrown
playsound du-in:kit.asgore.throw master @a ~ ~ ~ 1
scoreboard players set @s tridentTimer 100
title @s actionbar [{text:"Trident Thrown!",bold:true,color:red}]
execute unless score #tridentThrown running matches 1 run function du-in:kit/asgore/passive/loop