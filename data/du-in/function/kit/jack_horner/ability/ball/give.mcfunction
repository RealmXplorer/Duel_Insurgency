tag @s add crystalBall
item replace entity @s weapon.offhand with minecraft:carrot_on_a_stick[item_name={text:"Crystal Orb",color:gold,bold:true},lore=[{text:"Right click to activate!",color:dark_purple,bold:true},[{text:""}],{text:"Mark a player ",color:dark_gray},{text:"and gain speed. ",color:dark_gray}],enchantment_glint_override=true,item_model="du-in:other/crystal_ball"]
playsound minecraft:jack_horner.bag voice @a ~ ~ ~ 1 1
tag @s add magicBag