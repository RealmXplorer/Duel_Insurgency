execute if score #main titleTimer2 matches 60 run scoreboard players set @a titleTimer 5

title @a[scores={titleTimer=5}] title {text:"2        2",color:"#4A4A4A",bold:true}
title @a[scores={titleTimer=4}] title {text:"2      2",color:"#787878",bold:true}
title @a[scores={titleTimer=3}] title {text:"2    2",color:"#BABABA",bold:true}
title @a[scores={titleTimer=2}] title {text:"2  2",color:"#D1D1D1",bold:true}
title @a[scores={titleTimer=1}] title {text:"2",color:"#FFFFFF",bold:true}
execute as @a[scores={kit=1001,titleTimer=1}] at @s run playsound minecraft:paz.fnf.two master @s ~ ~ ~ 100000 1
execute as @a[scores={titleTimer=1}] at @s run playsound minecraft:block.ancient_debris.break master @s ~ ~ ~ 1000 1.5
execute as @a[scores={titleTimer=1}] at @s run playsound minecraft:block.bell.use master @s ~ ~ ~ 1000 1.5