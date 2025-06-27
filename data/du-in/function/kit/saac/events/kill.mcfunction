execute if entity @s[tag=killMsg] run tellraw @a {selector:"@s",color:red,bold:false,extra:[{text:" ruined ",color:white,bold:false},{selector:"@a[scores={justdied=1}]",color:dark_red,bold:false}]}

execute if entity @s[scores={killStreak=5}] run playsound minecraft:saac.line.ks voice @a ~ ~ ~ 3100000 1 1

execute unless entity @s[scores={killStreak=5}] if entity @s[scores={Health=..9}] run playsound minecraft:saac.line.low voice @a ~ ~ ~ 3100000 1 1
execute unless entity @s[scores={killStreak=5}] if entity @s[scores={Health=10..}] run playsound minecraft:saac.line.kill voice @a ~ ~ ~ 3100000 1 1
