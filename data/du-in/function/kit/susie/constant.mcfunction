execute if entity @s[scores={hit=5..}] run function du-in:kit/susie/events/hit
execute if entity @s[scores={jump=1..}] run function du-in:kit/susie/events/jump

#Will Change#
execute unless entity @s[scores={secCount=1}] run item replace entity @s[tag=!teamDead] hotbar.1 with minecraft:warped_fungus_on_a_stick[item_name={text:"Will Change",color:"#e31e4f",bold:true},lore=[{text:"Right click to use!",color:green,bold:true},{text:"Turns Rude Buster into RED BUSTER",color:gray}],item_model="du-in:other/will_change",unbreakable={}] 1

#TP Meter Item
execute unless entity @s[scores={triCount=1}] if entity @s[tag=!teamDead] run function du-in:kit/susie/tp/item

#Track number of secondaries and Tp meters in inventory
execute store result score @s secCount run clear @s warped_fungus_on_a_stick 0
execute store result score @s triCount run clear @s gunpowder 0

#Secondary Ability Use
execute if entity @s[tag=secKitActions] run function du-in:kit/susie/will_change/init

#TP Counting and Max
execute if entity @s[tag=!startgame,tag=!maxTP,scores={ralseiTP=..120}] run function du-in:kit/susie/tp_track
