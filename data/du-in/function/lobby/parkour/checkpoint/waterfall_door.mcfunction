execute as @a[x=723,y=10,z=-196,dx=1,dy=1,dz=-1] run tp @s 723 14 -202 0 0

#execute as @a[scores={parkourKeys=4},x=723,y=10,z=-196,dx=1,dy=1,dz=-1] run tp @s 723 14 -202 0 0
#Key 1 commands 
#execute as @e[type=minecraft:interaction,tag=parkour_key_1,nbt={interaction:{}}] on target unless entity @s[scores={parkourKeys=1..}] run scoreboard players add @s parkourKeys 1
#execute as @e[type=minecraft:interaction,tag=parkour_key_1,nbt={interaction:{}}] run data remove entity @s interaction
#summon minecraft:interaction 648.75 9 -171.5 {Tags:["parkour_key_1"],width:0.95f,height:0.95f,response:1b,NoGravity:1b,Invulnerable:1b,Silent:1b}
#Key 2
#execute as @e[type=minecraft:interaction,tag=parkour_key_2,nbt={interaction:{}}] on target unless entity @s[scores={parkourKeys=2..}] run scoreboard players add @s parkourKeys 1
#execute as @e[type=minecraft:interaction,tag=parkour_key_2,nbt={interaction:{}}] run data remove entity @s interaction
#summon minecraft:interaction 648.5 6 -106.95 {Tags:["parkour_key_2"],width:0.95f,height:0.95f,response:1b,NoGravity:1b,Invulnerable:1b,Silent:1b}
#Key 3
#execute as @e[type=minecraft:interaction,tag=parkour_key_3,nbt={interaction:{}}] on target unless entity @s[scores={parkourKeys=3..}] run scoreboard players add @s parkourKeys 1
#execute as @e[type=minecraft:interaction,tag=parkour_key_3,nbt={interaction:{}}] run data remove entity @s interaction
#summon minecraft:interaction 633.5 -28 -103.5 {Tags:["parkour_key_3"],width:0.95f,height:0.95f,response:1b,NoGravity:1b,Invulnerable:1b,Silent:1b}
#Key 4
#execute as @e[type=minecraft:interaction,tag=parkour_key_4,nbt={interaction:{}}] on target unless entity @s[scores={parkourKeys=4..}] run scoreboard players add @s parkourKeys 1
#execute as @e[type=minecraft:interaction,tag=parkour_key_4,nbt={interaction:{}}] run data remove entity @s interaction
#summon minecraft:interaction 657.5 -26 -203.5 {Tags:["parkour_key_4"],width:0.95f,height:0.95f,response:1b,NoGravity:1b,Invulnerable:1b,Silent:1b}