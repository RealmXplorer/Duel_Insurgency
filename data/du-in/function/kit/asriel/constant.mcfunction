execute if entity @s[scores={hit=5..}] run function du-in:kit/asriel/sounds/hit
execute if entity @s[scores={step=150..}] run function du-in:kit/asriel/sounds/step
execute if entity @s[scores={sprint=150..}] run function du-in:kit/asriel/sounds/step
execute if entity @s[scores={jump=1..}] run function du-in:kit/asriel/sounds/jump

#EFFECTS#
execute if entity @s[tag=!asrielCharge,scores={asrielHitLand=280..}] run function du-in:kit/asriel/passive/ready

execute if entity @s[scores={asrielSaberTimer=0..}] run function du-in:kit/asriel/passive/cooldown

#MY PRINCE
#I WEEP
#AT WHAT HAS
#BEFALLEN YOU
#I WILL
#AVENGE YOU
#SURELY