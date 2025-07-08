tag @s add phoenix
item replace entity @s weapon.offhand with minecraft:carrot_on_a_stick[item_name={text:"The Noble Phoenix",color:gold,bold:true},lore=[{text:"Right click to activate!",color:dark_purple,bold:true},[{text:""}],{text:"Shoots a burst ",color:dark_gray},{text:"of fire. ",color:dark_gray}],enchantment_glint_override=true,item_model="du-in:other/phoenix"]
#item replace entity @s weapon.offhand with minecraft:coal[item_name={text:"The Noble Phoenix",color:gold,bold:true},lore=[{text:"Right click to activate!",color:dark_purple,bold:true},[{text:""}],{text:"Shoots a burst ",color:dark_gray},{text:"of fire. ",color:dark_gray}],enchantment_glint_override=true,item_model="du-in:other/phoenix",consumable={consume_seconds:0,animation:"none",sound:"intentionally_empty",has_consume_particles:false}]

playsound minecraft:jack_horner.phoenix voice @a ~ ~ ~ 1 1
tag @s add magicBag