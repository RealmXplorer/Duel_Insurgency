clear @s #du-in:ability
tag @s add unicornBow
clear @s stone_axe
item replace entity @s hotbar.0 with minecraft:crossbow[item_name={text:"Unicorn Horn Crossbow",color:gold,bold:true},lore=[{text:"Right click to shoot!",color:dark_purple,bold:true},[{text:""}],{text:"Explode on ",color:dark_gray},{text:"enemy hit. ",color:dark_gray}],charged_projectiles=[{id:"minecraft:arrow",count:1,components:{"minecraft:intangible_projectile":{}}}],item_model="du-in:weapons/unicorn_horn"] 1

playsound minecraft:jack_horner.unicorn_horn hostile @a ~ ~ ~ 1 1
tag @s add hornerWeapon
tag @s add magicBag