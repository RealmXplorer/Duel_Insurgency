execute store result score @s triCount run clear @s gunpowder 0
execute unless entity @s[scores={triCount=1}] if entity @s[tag=fortniteCard] run item replace entity @s hotbar.8 with minecraft:gunpowder[item_name={text:"$19 Fortnite Card",color:gray,bold:true},lore=[{text:"Who wants it?",color:gray,bold:false},{text:"Use at Vending machine to upgrade weapon!",color:green,bold:true}],item_model="du-in:other/fortnite"] 1

