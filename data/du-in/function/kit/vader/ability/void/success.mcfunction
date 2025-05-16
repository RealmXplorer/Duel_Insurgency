effect give @e[type=skeleton,tag=gonerThing,distance=0.05..5] minecraft:levitation 2 0 true
effect give @e[type=skeleton,tag=gonerThing,distance=0.05..5] minecraft:wither 2 7 true
playsound minecraft:vader.choke master @a ~ ~ ~ 100 1
playsound minecraft:vader.hold master @a ~ ~ ~ 100 1.5
playsound minecraft:sans.ability master @a ~ ~ ~ .5 .95
clear @s minecraft:carrot_on_a_stick
xp set @s[tag=!stolen] 320 levels
#tellraw @a[distance=0.05..5,tag=playing,gamemode=!spectator,tag=!teamDead] ["",{text:"You are being choked by Darth Vader!",bold:true,color:red}]
execute if entity @s[tag=stolen] run tag @s add kitDone