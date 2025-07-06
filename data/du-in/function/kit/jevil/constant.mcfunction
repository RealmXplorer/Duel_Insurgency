
#Final Chaos#
execute unless entity @s[scores={secCount=1}] run item replace entity @s[tag=!teamDead] hotbar.1 with minecraft:warped_fungus_on_a_stick[item_name={text:"Final Chaos",color:"#e31e4f",bold:true},lore=[{text:"Right click to use!",color:green,bold:true},{text:"Affects ALL players with next ability! (Removes distance limit)",color:gray}],item_model="du-in:ability/jevilstail",unbreakable={}] 1

#TP Meter Item
execute unless entity @s[scores={triCount=1}] if entity @s[tag=!teamDead] run function du-in:kit/jevil/tp/item

#Track number of secondaries and Tp meters in inventory
execute store result score @s secCount run clear @s warped_fungus_on_a_stick 0
execute store result score @s triCount run clear @s gunpowder 0

#Secondary Ability Use
execute if entity @s[tag=secKitActions] run function du-in:kit/jevil/final_chaos/init

#TP Counting and Max
execute if entity @s[tag=!startgame,tag=!maxTP,scores={ralseiTP=..120}] run function du-in:kit/jevil/tp_track
