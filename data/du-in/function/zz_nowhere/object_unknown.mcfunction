tellraw @s {text:"Exception in thread \"main\" java.io.FileNotFoundException: Duel_Insurgency\\dimensions\\minecraft\\overworld\\region\\x_201_z_-12.txt (The system cannot find the file specified)"}
clear @s

tp @s -999 13 517 -90 0

scoreboard players set @s lobby 1
title @s times 0 60 0
title @s title {text:"",color:red,bold:true}
title @s subtitle {text:"Open inventory for more options!",color:red,bold:true}
title @s actionbar {text:"Open inventory for more options!",color:red,bold:true}

tag @s remove Player.accept
scoreboard players reset @s Object.drop.null