title @s title {text:""}
title @s subtitle {text:"!!!",color:red}
title @s times 0 15 5

scoreboard players set @s golemFloat 3

effect give @s minecraft:levitation 1 25 true
damage @s 4 generic

tellraw @s [{text:"The Earth moves beneath your feet",bold:true,color:red}]
