playsound minecraft:block.anvil.land master @s ~ ~ ~ 1000 1
title @s actionbar [{"text":"Insufficient funds!","bold":"true","color":"red"}]
team join redPainting @e[type=minecraft:painting,limit=1,sort=nearest,nbt={Glowing:1b}]
scoreboard players set @e[type=minecraft:painting,limit=1,sort=nearest,nbt={Glowing:1b}] paintingColor 5
