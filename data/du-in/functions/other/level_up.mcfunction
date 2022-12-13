scoreboard players add @s level 1
tellraw @s ["",{"text":"Level Up!","color":"gold","bold":"true"},{"text":" (","color":"gray"},{"score":{"name":"@s","objective":"level"},"color":"blue"},{"text":"✫","color":"blue"},{"text":")","color":"gray"}]
playsound minecraft:entity.player.levelup master @s
execute store result score @s expCap run scoreboard players get @s level
scoreboard players operation @s expCap *= #main ten
scoreboard players operation @s expCap += #main hundred
scoreboard players add @s Diamonds 100
scoreboard players set @s exp 0