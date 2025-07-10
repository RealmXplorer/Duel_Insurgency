#Heal Prayer#
execute unless entity @s[scores={secCount=1}] run item replace entity @s[tag=!teamDead] hotbar.1 with minecraft:warped_fungus_on_a_stick[item_name={text:"Inspiration",color:"gold",bold:true},lore=[{text:"Right click to use!",color:green,bold:true},{text:"Empowers teammates, sabotages enemies, and boosts you",color:dark_gray}],item_model="du-in:abilities/badge",unbreakable={}] 1

#TP Meter Item
execute unless entity @s[scores={triCount=1}] if entity @s[tag=!teamDead] run function du-in:kit/judy/inspire/item

#Track number of secondaries and Tp meters in inventory
execute store result score @s secCount run clear @s warped_fungus_on_a_stick 0
execute store result score @s triCount run clear @s gunpowder 0

#Secondary Ability Use
execute if entity @s[tag=secKitActions] run function du-in:kit/judy/inspire/init

#TP Counting and Max
# execute if entity @s[tag=!inspireFull,scores={judyInspire=..120}] run function du-in:kit/judy/inspire_track

#WHILE HER INITIATIVE IS
#TRULY INSPIRING
#SHE AND THE FOX
#HAVE TAKEN AN INTEREST
#IN ME
#THIS WILL NOT DO
#THE EXPERIMENT 
#MUST CONTINUE