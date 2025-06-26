execute if entity @s[tag=killMsg] run tellraw @a {selector:"@s",color:red,bold:false,extra:[{text:" ruined ",color:white,bold:false},{selector:"@a[scores={justdied=1}]",color:dark_red,bold:false}]}
execute if entity @s[scores={Health=..9}] run playsound minecraft:saac.line.low voice @a ~ ~ ~ 3100000 1 1
execute if entity @s[scores={Health=10..}] run playsound minecraft:saac.line.kill voice @a ~ ~ ~ 3100000 1 1
