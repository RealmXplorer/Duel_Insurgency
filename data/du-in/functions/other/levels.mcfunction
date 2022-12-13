scoreboard players add @s[tag=win,tag=!falseWin] exp 25
scoreboard players add @s[tag=lose] exp 10

execute if score @s exp >= @s expCap run function du-in:other/level_up
tellraw @s ["",{"text":"Level progress:","color":"blue"},{"text":" (","color":"gray"},{"score":{"name":"@s","objective":"exp"},"color":"gray"},{"text":"/","color":"gray"},{"score":{"name":"@s","objective":"expCap"},"color":"gray"},{"text":")","color":"gray"}]