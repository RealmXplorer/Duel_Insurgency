item replace entity @s hotbar.8 with paper[item_name={text:"Card",color:gold,bold:true},lore=[{text:"Collect 5 to change ability!",color:dark_purple,bold:true}],item_model="du-in:other/card"] 5
scoreboard players set @s card 5

execute if entity @s[tag=!super] run function du-in:kit/cuphead/card/charged_sound