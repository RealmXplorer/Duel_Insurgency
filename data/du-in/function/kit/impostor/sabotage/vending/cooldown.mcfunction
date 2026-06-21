tellraw @a[tag=vendingCooldown] {text:"You can sabotage vending machines again!",bold:true,color:green}
tag @a remove vendingCooldown
item replace entity @s hotbar.8 with minecraft:gunpowder[item_name={text:"Sabotage Vending Machines",color:red,bold:true},lore=[{text:"Right click a vending machine to sabotage it!",color:green,bold:true}],item_model="du-in:other/wire_cutter",unbreakable={}] 1