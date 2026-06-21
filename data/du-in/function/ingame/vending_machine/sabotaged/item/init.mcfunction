execute unless entity @s[scores={triCount=1}] if entity @s[tag=!teamDead,tag=!vendingCooldown] run item replace entity @s hotbar.8 with minecraft:gunpowder[item_name={text:"Sabotage Vending Machines",color:red,bold:true},lore=[{text:"Right click a vending machine to sabotage it!",color:green,bold:true}],item_model="du-in:other/wire_cutter",unbreakable={}] 1

#Wirecutter Icon
execute store result score @s triCount run clear @s gunpowder 0
