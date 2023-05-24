playsound minecraft:block.anvil.land master @s ~ ~ ~ 10000 1
tellraw @s {"text":"You can't vent with flag!","color":"red","bold":true}
tag @s remove vented