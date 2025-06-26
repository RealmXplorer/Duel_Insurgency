#Movement sounds
execute if entity @s[scores={hit=5..}] run function du-in:kit/saul/events/hit
execute if entity @s[scores={step=150..}] run function du-in:kit/saul/events/step
execute if entity @s[scores={sprint=150..}] run function du-in:kit/saul/events/step
execute if entity @s[scores={jump=1..}] run function du-in:kit/jump

#
tag @a[tag=!saul,tag=!legMusicOff,tag=!void,tag=!ctfIngame,tag=!cqIngame] add saul
