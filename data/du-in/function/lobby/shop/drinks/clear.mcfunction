kill @e[type=item,tag=!displayItem]

playsound minecraft:entity.villager.no voice @s ~ ~ ~ 1 1
tellraw @s [{text:"<",color:white},{text:"Tabba",color:yellow},{text:"> Careful there!"}]

scoreboard players reset @s thrownPotion
scoreboard players reset @s thrownMilk
#scoreboard players reset @s thrownBottle