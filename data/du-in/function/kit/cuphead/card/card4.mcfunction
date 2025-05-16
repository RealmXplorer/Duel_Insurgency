execute unless entity @s[scores={card=4}] run playsound minecraft:cuphead.parry.charge voice @a ~ ~ ~ 1
scoreboard players set @s card 4

item replace entity @s hotbar.8 with paper[item_name={text:"Card",color:gold,bold:true},lore=[{text:"Collect 5 to change ability!",color:dark_purple,bold:true}],item_model="du-in:other/card"] 4