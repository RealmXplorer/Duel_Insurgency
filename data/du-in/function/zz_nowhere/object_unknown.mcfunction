tellraw @s {text:"Exception in thread \"main\" java.io.FileNotFoundException: Duel_Insurgency\\dimensions\\minecraft\\overworld\\region\\x_201_z_-12.txt (The system cannot find the file specified)"}
tag @s remove Player.accept

kill @e[type=item,tag=!displayItem]
tp @s -999 13 517 -90 0
clear @s

stopsound @s
scoreboard players set @s sidebarTimer 120
scoreboard players set @s music 0
scoreboard players set @s lobby 1
title @s times 0 60 0
title @s title {text:"",color:red,bold:true}
title @s subtitle {text:"Open inventory for more options!",color:red,bold:true}
title @s actionbar {text:"Open inventory for more options!",color:red,bold:true}

scoreboard players reset @s Object.drop.null
scoreboard players reset @s Object.map.return