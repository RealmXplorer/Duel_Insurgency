scoreboard players set @s golemFloat 5

effect give @s minecraft:levitation 1 25 true
damage @s 4 generic
#effect give @s minecraft:instant_damage 1 0 true

tellraw @s [{text:"You have been shaken by the weight of Chungus!",bold:true,color:red}]