#Movement sounds
# execute if entity @s[scores={hit=5..}] run function du-in:kit/paz/events/hit
# execute if entity @s[scores={step=150..}] run function du-in:kit/paz/events/step
# execute if entity @s[scores={sprint=150..}] run function du-in:kit/paz/events/step
# execute if entity @s[scores={jump=1..}] run function du-in:kit/paz/events/jump

execute if entity @s[scores={beetleGhostTimer=1..}] run function du-in:kit/beetlejuice/ability/timer

#Will Change#
execute unless entity @s[scores={secCount=1}] run item replace entity @s[tag=!teamDead] hotbar.1 with minecraft:warped_fungus_on_a_stick[item_name={text:"It's Showtime!",color:"#e31e4f",bold:true},lore=[{text:"Right click to use!",color:green,bold:true},{text:"Teleport everyone to the model and get buffs!",color:gray}],item_model="du-in:abilities/showtime",unbreakable={}] 1

#Activate Secondary
execute if entity @s[tag=secKitActions] run function du-in:kit/beetlejuice/showtime/init

#TP Meter Item
execute unless entity @s[scores={triCount=1}] if entity @s[tag=!teamDead] run function du-in:kit/beetlejuice/showtime/count

#Track number of secondaries and Tp meters in inventory
execute store result score @s secCount run clear @s warped_fungus_on_a_stick 0
execute store result score @s triCount run clear @s gunpowder 0

#     GET SHIT ON      #
#   ABSOLUTE SHIITER   #