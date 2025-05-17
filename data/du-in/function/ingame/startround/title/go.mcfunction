execute if score #main titleTimer2 matches 20 run scoreboard players set @a titleTimer 20
execute if score #main titleTimer2 matches 20 run title @a times 0 4 5

execute if score #main titleTimer2 matches 1..15 as @a at @s run playsound minecraft:block.ancient_debris.break master @s ~ ~ ~ 1000 1

title @a[scores={titleTimer=20}] title {text:"GO!",color:"#FF0000",bold:true}
title @a[scores={titleTimer=18}] title {text:"GO!",color:"#FF6F00",bold:true}
title @a[scores={titleTimer=16}] title {text:"GO!",color:"#FFD500",bold:true}
title @a[scores={titleTimer=14}] title {text:"GO!",color:"#BBFF00",bold:true}
title @a[scores={titleTimer=12}] title {text:"GO!",color:"#4DFF00",bold:true}
title @a[scores={titleTimer=10}] title {text:"GO!",color:"#00FF4C",bold:true}
title @a[scores={titleTimer=8}] title {text:"GO!",color:"#00FFDD",bold:true}
title @a[scores={titleTimer=6}] title {text:"GO!",color:"#00A2FF",bold:true}
title @a[scores={titleTimer=4}] title {text:"GO!",color:"#002AFF",bold:true}
title @a[scores={titleTimer=2}] title {text:"GO!",color:"#5D00FF",bold:true}

execute as @a[gamemode=!spectator,scores={titleTimer=1}] at @s run function du-in:ingame/startround/title/intros

#Set current player to this player
execute store result storage du-in:main player.current int 1 run scoreboard players get @s player

#Find player
execute at @s run function du-in:kit/all/intro/find_kit with storage du-in:main player

title @a[scores={titleTimer=0}] title {text:"GO!",color:"#EE00FF",bold:true}

execute as @a[scores={titleTimer=20}] at @s run function du-in:ingame/startround/title/sounds