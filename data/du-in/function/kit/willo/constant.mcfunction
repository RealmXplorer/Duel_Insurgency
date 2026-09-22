#Sounds
# execute if entity @s[scores={hit=5..}] run function du-in:kit/cuphead/events/hit
# execute if entity @s[scores={jump=1..}] run function du-in:kit/cuphead/events/jump
execute if entity @s[scores={willoRecoilTimer=0..}] run function du-in:kit/willo/revolver/recoil/timer

execute if entity @s[scores={willoCancelAnimation=20}] run function du-in:kit/willo/revolver/item

execute if entity @s[scores={willoStock=..11,willoCandyCornTimer=81..,willoCancelAnimation=20..}] run function du-in:kit/willo/revolver/candy_corn/give

#Abilities initializations
execute if entity @s[tag=secKitActions] run function du-in:kit/willo/revolver/init

#WEAPON#
execute unless entity @s[scores={secCount=1}] if entity @s[tag=!teamDead,tag=!pussFear] run function du-in:kit/willo/revolver/item

execute store result score @s secCount run clear @s warped_fungus_on_a_stick 0

execute if entity @s[scores={willoStandTimer=20..}] run function du-in:kit/willo/revolver/candy_corn/increase
#