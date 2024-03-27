execute if entity @s[scores={hit=5..}] run function du-in:kit/asriel/sounds/hit
execute if entity @s[scores={step=150..}] run function du-in:kit/asriel/sounds/step
execute if entity @s[scores={sprint=150..}] run function du-in:kit/asriel/sounds/step
execute if entity @s[scores={jump=1..}] run function du-in:kit/asriel/sounds/jump

#EFFECTS#
execute if entity @s[tag=!win] run function du-in:kit/asriel/passive/go

#ARMOR# -Now in kit/all/armor/armor
#execute if entity @s[tag=armor] run function du-in:kit/asriel/armor

#WEAPON#
# execute unless entity @s[scores={weapCount=1}] if entity @s[tag=!teamDead,tag=!asrielSaber] run function du-in:kit/asriel/weapon

attribute @s minecraft:generic.movement_speed base set 0.1325
attribute @s generic.knockback_resistance base set 0.0375

#MY PRINCE
#I WEEP
#AT WHAT HAS
#BEFALLEN YOU
#I WILL
#AVENGE YOU
#SURELY