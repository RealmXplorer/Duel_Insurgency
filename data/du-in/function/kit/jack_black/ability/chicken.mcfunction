scoreboard players remove @s jockeyTimer 1
ride @p[scores={jockeyTimer=0..}] mount @s
execute if entity @s[scores={jockeyTimer=..0}] run function du-in:kit/jack_black/ability/kill_chicken