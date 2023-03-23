#Sounds#
execute if entity @s[tag=!stolen,scores={hit=5..}] run function du-in:kit/gumball/sounds/hit
execute if entity @s[tag=!stolen,scores={step=150..}] run function du-in:kit/gumball/sounds/step
execute if entity @s[tag=!stolen,scores={sprint=150..}] run function du-in:kit/gumball/sounds/step
execute if entity @s[tag=!stolen,scores={jump=1..}] run function du-in:kit/jump


# Armor #
execute if entity @s[tag=armor,tag=!stolen] run function du-in:kit/gumball/armor


#Give ability item#
execute if entity @s[level=1] run function du-in:kit/gumball/ability/item


#Gumball and Darwin abilities#
execute if entity @s[tag=kitActions,tag=!darwin] run function du-in:kit/gumball/ability/gum_init
execute if entity @s[tag=kitActions,tag=darwin] run function du-in:kit/gumball/ability/dar_init


#Tag Gumball and Darwin in and out
execute if entity @s[tag=secKitActions,tag=!stolen] run function du-in:kit/gumball/switch


#Weapon Give#
execute if entity @s[tag=!teamDead,tag=!stolen] unless entity @s[scores={weapCount=1}] run function du-in:kit/gumball/weapon


#Secondary Give#
execute if entity @s[tag=!stolen,tag=!teamDead] unless entity @s[scores={secCount=1}] unless entity @s[scores={gumSwapTimer=1..}] run function du-in:kit/gumball/secondary/item

#Kit switch cooldown timer
execute if entity @s[scores={gumSwapTimer=-1..}] run function du-in:kit/gumball/secondary/timer
#scoreboard players remove @s[scores={gumSwapTimer=0..}] gumSwapTimer 1
#scoreboard players reset @s[scores={gumSwapTimer=..0}] gumSwapTimer


#Reset fake sidebar
execute if entity @s[scores={fakeTimer=0..}] run function du-in:kit/gumball/ability/gumball/fake_reset


#Check for if they have secondary
execute store result score @s[tag=!stolen] secCount run clear @s[tag=!kitMenu] warped_fungus_on_a_stick 0


#Gumball pursue ability constants
execute if entity @s[tag=pursue,tag=!darwin] run function du-in:kit/gumball/ability/gumball/pursue


#Darwin ability constants
scoreboard players remove @s[scores={darwinSound=-1..}] darwinSound 1
execute if entity @s[scores={darwinSound=..0}] run function du-in:kit/gumball/ability/darwin/hide


#Attributes
attribute @s[tag=!stolen,tag=!darwin] minecraft:generic.movement_speed base set 0.13
attribute @s[tag=!stolen,tag=darwin] minecraft:generic.movement_speed base set 0.1475

attribute @s[tag=!stolen,tag=!darwin,tag=!deathMark] minecraft:generic.armor base set 0
attribute @s[tag=!stolen,tag=darwin,tag=!deathMark] minecraft:generic.armor base set -2

attribute @s[tag=!stolen,tag=!pussFear] generic.knockback_resistance base set 0.01