#Add 25 exp if win, add 10 if lose
execute unless entity @a[tag=devMode] run scoreboard players add @s[tag=win] exp 25
execute unless entity @a[tag=devMode] run scoreboard players add @s[tag=lose] exp 10

#If exp exceeds cap, level up
execute if score @s exp >= @s expCap run function du-in:other/level_up

#Announce level progress
execute unless entity @a[tag=devMode] run tellraw @s [{"text":"Level progress:","color":"blue"},{"text":" (","color":"gray"},{"score":{"name":"@s","objective":"exp"},"color":"gray"},{"text":"/","color":"gray"},{"score":{"name":"@s","objective":"expCap"},"color":"gray"},{"text":")","color":"gray"}]