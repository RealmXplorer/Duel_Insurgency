#If player has crossed threshold, mark them
execute as @a[tag=playing,tag=cIngame,tag=!chalf] if score @s killIngame >= #main testHalf run tag @s add atHalf

#Announce player
title @a[tag=cIngame,tag=!chalf] actionbar {text:'', color:gold, extra:[{selector:'@p[tag=atHalf,tag=cIngame]'},{text:' is halfway to victory!'}]}

#Playsound
#execute as @a at @s run playsound minecraft:block.anvil.use master @s ~ ~ ~ 1 1.15
execute as @a at @s run playsound minecraft:soundeffect.woosh master @s ~ ~ ~ .5 1
execute as @a at @s run playsound minecraft:soundeffect.woosh master @s ~ ~ ~ .5 2
#Change bossbar color
#bossbar set bossbar:classic color pink

#End function
tag @a add chalf