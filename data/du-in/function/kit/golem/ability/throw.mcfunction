scoreboard players set @s golemFloat 5

effect give @s minecraft:levitation 1 25 true
damage @s 6 generic
#effect give @s minecraft:instant_damage 1 0 true

tellraw @s [{"text":"You got tossed by Iron Golem!","bold":true,"color":"red"}]