#Sounds#
execute if entity @s[scores={hit=5..}] run function du-in:kit/gumball/sounds/hit
execute if entity @s[scores={step=150..}] run function du-in:kit/gumball/sounds/step
execute if entity @s[scores={sprint=150..}] run function du-in:kit/gumball/sounds/step
execute if entity @s[scores={jump=1..}] run function du-in:kit/jump


# Armor #
#execute if entity @s[tag=armor] run function du-in:kit/gumball/armor

#Tag Gumball and Darwin in and out
execute if entity @s[tag=secKitActions] run function du-in:kit/gumball/switch

#Weapon Give#
execute unless entity @s[scores={weapCount=1}] if entity @s[tag=!teamDead] run function du-in:kit/gumball/weapon


#Secondary Give#
execute unless entity @s[scores={secCount=1}] unless entity @s[scores={gumSwapTimer=1..}] if entity @s[tag=!teamDead] run function du-in:kit/gumball/secondary/item

#Kit switch cooldown timer
execute if entity @s[scores={gumSwapTimer=-1..}] run function du-in:kit/gumball/secondary/timer

#Reset fake sidebar
execute if entity @s[scores={fakeTimer=0..}] run function du-in:kit/gumball/ability/gumball/fake_reset


#Check for if they have secondary
execute store result score @s secCount run clear @s warped_fungus_on_a_stick 0


#Gumball pursue ability constants
execute if entity @s[tag=pursue,tag=!darwin] run function du-in:kit/gumball/ability/gumball/pursue


#Darwin ability constants
scoreboard players remove @s[scores={darwinSound=-1..}] darwinSound 1
execute if entity @s[scores={darwinSound=..0}] run function du-in:kit/gumball/ability/darwin/hide


#Attributes
attribute @s[tag=!darwin] minecraft:generic.movement_speed base set 0.13
attribute @s[tag=darwin] minecraft:generic.movement_speed base set 0.1475

effect give @s[tag=darwin] dolphins_grace infinite 1 true
effect give @s[tag=darwin] water_breathing infinite 1 true

execute unless entity @a[tag=scaleMode,tag=partyLeader] run function du-in:kit/all/size/smaller

attribute @s generic.knockback_resistance base set 0.01