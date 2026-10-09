scoreboard players set @s golemFloat 7

effect give @s minecraft:levitation 1 25 true
damage @s 10 magic by @a[tag=kitActions,scores={kit=42069},limit=1]
execute unless score #float running matches 1 run function du-in:kit/golem/ability/float_loop

tellraw @s [{text:"You have been UPHEAVED by the GREAT weight of THE MIGHTY Chungus!",bold:true,color:red}]