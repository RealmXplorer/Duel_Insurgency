scoreboard players add @s breatheTimer 1
execute if entity @s[tag=!lose,tag=!dmDead,scores={breatheTimer=1}] run function du-in:kit/vader/events/breath
scoreboard players set @s[scores={breatheTimer=80..}] breatheTimer 0