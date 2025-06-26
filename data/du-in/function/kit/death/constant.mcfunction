#Movement sounds
execute if entity @s[scores={hit=5..}] run function du-in:kit/death/events/hit
execute if entity @s[scores={step=150..}] run function du-in:kit/death/events/step
execute if entity @s[scores={sprint=150..}] run function du-in:kit/death/events/step
execute if entity @s[scores={jump=1..}] run function du-in:kit/jump

#Check for if they have secondary
execute store result score @s secCount run clear @s warped_fungus_on_a_stick 0

execute unless entity @s[scores={secCount=1}] unless entity @s[scores={deathSwapTimer=1..}] if entity @s[tag=!teamDead] run function du-in:kit/death/secondary/item

#Weapon switch cooldown timer
execute if entity @s[scores={deathSwapTimer=-1..}] run function du-in:kit/death/secondary/timer

#Use ability
execute if entity @s[tag=secKitActions] run function du-in:kit/death/secondary/switch

#ODD
#THIS IS NO BEING
#THAT I HAVE CONJURED

#HE HAS FOLLOWED THE OTHERS
#NOW I MUST WATCH
#NONE CAN ESCAPE HIM