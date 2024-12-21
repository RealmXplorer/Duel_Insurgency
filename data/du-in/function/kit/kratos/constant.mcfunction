#SOUNDS#
execute if entity @s[scores={hit=5..}] run function du-in:kit/kratos/sounds/hit
execute if entity @s[scores={step=175..}] run function du-in:kit/kratos/sounds/step
execute if entity @s[scores={sprint=175..}] run function du-in:kit/kratos/sounds/step

#Weapons#
execute unless entity @s[scores={secCount=1}] if entity @s[tag=!teamDead] run function du-in:kit/kratos/secondary/rage_meter

#Track Secondary Item
execute store result score @s secCount run clear @s warped_fungus_on_a_stick 0

#Activate Secondary#
execute if entity @s[tag=secKitActions] run function du-in:kit/kratos/secondary/init
execute if entity @s[scores={yharimRageDuration=0..}] run function du-in:kit/kratos/secondary/in_rage

#Add Kratos Rage#
execute if entity @s[gamemode=!spectator,tag=!enraged,tag=!rageMeter,tag=!void,tag=!startgame] if entity @a[distance=0.05..3.5,tag=playing,gamemode=!spectator] unless score @a[distance=0.05..3.5,tag=playing,gamemode=!spectator,limit=1] team = @s team run function du-in:kit/kratos/secondary/charge
execute if entity @s[gamemode=!spectator,tag=!enraged,tag=!rageMeter,tag=void,tag=!startgame] if entity @e[type=skeleton,tag=gonerThing,distance=0.05..3.5] run function du-in:kit/kratos/secondary/charge

#CURIOUS
#OF ALL THE BEINGS I HAVE BROUGHT
#INTO THE FOLD
#HE IS NOT ONE OF THEM...

#I WILL WATCH HIM
#VERY
#VERY
#CLOSELY