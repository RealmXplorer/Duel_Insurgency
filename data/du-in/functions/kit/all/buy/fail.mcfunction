#tellraw @s ["",{"text":"Insufficient funds!","color":"red","bold":"true"}]
tellraw @s [{"text":"Not enough diamonds!","bold":true,"color":"red"},{"text":"(You have ","color":"gray"},{"score":{"name":"@s","objective":"Diamonds"},"color":"gray"},{"text":" diamonds)","color":"gray"}]
playsound minecraft:block.anvil.land master @s ~ ~ ~ 1000 1 1