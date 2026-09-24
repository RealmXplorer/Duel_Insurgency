
execute if entity @s[scores={willoRecoilTimer=0..}] run function du-in:kit/willo/revolver/recoil/timer

execute if entity @s[scores={willoCancelAnimation=20}] run function du-in:kit/willo/secondary/item

execute if entity @s[scores={willoStock=..11,willoCandyCornTimer=81..,willoCancelAnimation=20..}] run function du-in:kit/willo/revolver/candy_corn/give

#Abilities initializations
#execute if entity @s[tag=secKitActions] run function du-in:kit/willo/secondary/init

#WEAPON#
# execute unless entity @s[scores={secCount=1}] if entity @s[tag=!teamDead,tag=!pussFear] run function du-in:kit/willo/secondary/item

#execute store result score @s secCount run clear @s warped_fungus_on_a_stick 0

execute if entity @s[scores={willoStandTimer=20..}] run function du-in:kit/willo/revolver/candy_corn/increase
#

#If invisibility is toggled off, keep it on for Willo.
execute if score #main invisibleToggle matches 1 if entity @s[predicate=!du-in:effect/is_invisible] run effect give @s invisibility infinite 0 true

##SUS Functions
#Vent cooldowns
# scoreboard players remove @s[scores={ventCooldown=1..}] ventCooldown 1

# #Wire cutter item
# execute if entity @s[tag=vendingMachine] run function du-in:ingame/vending_machine/sabotaged/item/init
