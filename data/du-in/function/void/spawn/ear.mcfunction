summon skeleton ~ ~ ~ {Silent:1b,NoAI:0b,CanPickUpLoot:0b,Health:15f,Tags:["gonerEar","mapSpecific","gonerThing"],HandItems:[{id:"minecraft:iron_axe",count:1,components:{"minecraft:unbreakable":{},"minecraft:item_model":"du-in:weapons/goner_axe",attribute_modifiers:[{type:"attack_damage",id:"attack_damage",amount:9,operation:"add_value"}]}},{}],ArmorItems:[{id:"minecraft:leather_boots",count:1,components:{"minecraft:equippable":{slot:"feet",model:"du-in:goner_steve"},"minecraft:custom_name":'{"text":"Goner Steve Feet"}',dyed_color:{rgb:9408399}}},{id:"minecraft:leather_leggings",count:1,components:{"minecraft:equippable":{slot:"legs",model:"du-in:goner_steve"},"minecraft:custom_name":'{"text":"Goner Steve Legs"}',"minecraft:unbreakable":{},dyed_color:{rgb:10395294}}},{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:equippable":{slot:"chest",model:"du-in:goner_steve"},"minecraft:custom_name":'{"text":"Goner Steve Chest"}',"minecraft:unbreakable":{},dyed_color:{rgb:9868950}}},{id:"minecraft:player_head",count:1,components:{"profile":{id:[I;-509056492,1004359424,-1696675961,-1252357014],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTI4NDYwMDQ2MzZkZTA4OWJhOGUzYTkyNGFhYWJlYTdlYzI2OTg0OTdmNDU5ZGZjMjk4Zjc1NGRmMmE1NzQxZCJ9fX0="}]}}}],Attributes:[{Name:attack_damage,Base:3},{Name:follow_range,Base:1000},{Name:knockback_resistance,Base:0.13},{Name:movement_speed,Base:0.25}]}


playsound minecraft:goner.ear.spawn master @a ~ ~ ~ 0.5 1
team join Goner @e[type=skeleton,tag=gonerThing,team=!Goner,tag=!wildeHit]

#