execute as @a[distance=0.05..3,tag=playing,tag=!teamDead,gamemode=!spectator] unless score @s team = @a[scores={kit=22},tag=kitActions,tag=darwin,limit=1] team run tag @s add noClothes
execute at @a[tag=noClothes] run particle minecraft:poof ~ ~ ~ 0.2 0.7 0.2 0 100 force
execute at @a[tag=noClothes] run playsound minecraft:item.shield.break master @a ~ ~ ~ 5 1.2
execute at @a[tag=noClothes] run playsound minecraft:item.shield.break master @a ~ ~ ~ 5 1
title @a[tag=noClothes] title {"text":" ","color":"red"}
title @a[tag=noClothes] subtitle {"text":"You are now naked.","color":"red"}
clear @a[tag=noClothes] #du-in:darwin_armor
playsound minecraft:darwin.ability master @a ~ ~ ~ 10 1
scoreboard players set @a[tag=noClothes] darwinTimer 100
effect give @s minecraft:speed 5 2 true
playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 9999 1.3
playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 9999 1

scoreboard players set @s darwinSound 100
clear @s carrot_on_a_stick
xp set @s[tag=!stolen] 300 levels
scoreboard players set @s gumSwapTimer 120
clear @s warped_fungus_on_a_stick
