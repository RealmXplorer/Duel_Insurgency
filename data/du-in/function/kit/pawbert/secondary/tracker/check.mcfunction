#Track Secondary Item
execute store result score @s triCount run clear @s gunpowder 0
execute unless entity @s[scores={triCount=1}] if entity @s[tag=hasVial] run item replace entity @s hotbar.8 with minecraft:gunpowder[item_name={text:"Venom Vial",color:gray,bold:true},lore=[{text:"You are able to reload your Venom Injector!",color:green,bold:true}],item_model="du-in:other/venom_vial",unbreakable={},max_stack_size=1] 1
