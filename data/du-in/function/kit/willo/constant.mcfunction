#Sounds
# execute if entity @s[scores={hit=5..}] run function du-in:kit/cuphead/events/hit
# execute if entity @s[scores={jump=1..}] run function du-in:kit/cuphead/events/jump
execute if entity @s[scores={willoRecoilTimer=0..}] run function du-in:kit/willo/revolver/recoil/timer

execute if entity @s[scores={willoStock=..11,willoReloadTimer=121..}] run function du-in:kit/willo/revolver/candy_corn/give

#Abilities initializations
execute if entity @s[tag=secKitActions] run function du-in:kit/willo/revolver/init

#WEAPON#
execute unless entity @s[scores={secCount=1}] if entity @s[tag=!teamDead,tag=!pussFear] run item replace entity @s hotbar.0 with warped_fungus_on_a_stick[item_name={text:"Candy Corn Revolver",color:"#EF0AFF",bold:true},lore=[{text:"Right-click to shoot!"},{text:"Crouch + right-click to reload"}],item_model="du-in:weapons/revolver",unbreakable={},attribute_modifiers=[{type:"attack_damage",id:"attack_damage",amount:2.8,operation:"add_value",slot:"mainhand"},{type:"attack_speed",id:"attack_speed",amount:40,operation:"add_value",slot:"mainhand"}]] 1

execute store result score @s secCount run clear @s warped_fungus_on_a_stick 0

execute if entity @s[scores={willoStandTimer=20..}] run function du-in:kit/willo/revolver/candy_corn/increase
#