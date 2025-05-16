#Default Sword#
execute unless entity @s[scores={villSkin=1..}] run item replace entity @s[tag=!magma] hotbar.0 with stone_sword[item_name={text:"Deal Breaker",color:"#1CA102",bold:true},item_model="du-in:weapons/villager",unbreakable={},attribute_modifiers=[{type:"attack_damage",id:"attack_damage",amount:4.75,operation:"add_value",slot:"mainhand"},{type:"attack_speed",id:"attack_speed",amount:-2,operation:"add_value",slot:"mainhand"}]] 1

#Illager Sword#
execute run item replace entity @s[scores={villSkin=1},tag=!magma] hotbar.0 with minecraft:stone_sword[item_name={text:"Deal Breaker",color:blue,bold:true},item_model="du-in:weapons/illagersword",unbreakable={},attribute_modifiers=[{type:"attack_damage",id:"attack_damage",amount:4.75,operation:"add_value",slot:"mainhand"},{type:"attack_speed",id:"attack_speed",amount:-2,operation:"add_value",slot:"mainhand"}]] 1

#Witch Sword#
execute run item replace entity @s[scores={villSkin=2},tag=!magma] hotbar.0 with minecraft:stone_sword[item_name={text:"Deal Breaker",color:"#bc94f4",bold:true},item_model="du-in:weapons/witch",unbreakable={},attribute_modifiers=[{type:"attack_damage",id:"attack_damage",amount:4.75,operation:"add_value",slot:"mainhand"},{type:"attack_speed",id:"attack_speed",amount:-2,operation:"add_value",slot:"mainhand"}]] 1

#Puss Sword
execute if entity @s[scores={pussTimer=1..}] run function du-in:kit/puss/weapon

#Stolen Slime Sword#
item replace entity @s[tag=magma] hotbar.0 with stone_sword[item_name={text:"Magma Blade",color:"#1CA102",bold:true},item_model="du-in:weapons/lavager",enchantments={fire_aspect:1},unbreakable={},attribute_modifiers=[{type:"attack_damage",id:"attack_damage",amount:4.75,operation:"add_value",slot:"mainhand"},{type:"attack_speed",id:"attack_speed",amount:-2,operation:"add_value",slot:"mainhand"}]] 1