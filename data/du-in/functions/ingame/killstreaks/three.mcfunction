tellraw @a [{"selector":"@s","bold":true,"color":"gold"},{"text":" is on a 3 player kill streak!","color":"white"}]
playsound minecraft:entity.blaze.ambient master @a ~ ~ ~ 3 .50
scoreboard players add @s Diamonds 50
