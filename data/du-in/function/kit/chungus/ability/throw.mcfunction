scoreboard players set @s golemFloat 5

effect give @s minecraft:levitation 1 25 true
damage @s 4 magic by @a[tag=kitActions,scores={kit=42069},limit=1]

tellraw @s [{text:"You have been shaken by the weight of Chungus!",bold:true,color:red}]