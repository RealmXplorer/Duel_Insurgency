scoreboard players remove @s breatheTimer 1

execute if entity @s[scores={breatheTimer=80}] run function du-in:kit/vader/events/breathe

scoreboard players set @s[scores={breatheTimer=..0}] breatheTimer 80
