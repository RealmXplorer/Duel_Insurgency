summon skeleton ~ ~ ~ {Silent:1b,NoAI:0b,CanPickUpLoot:0b,Health:5f,Tags:["gonerMouth","mapSpecific","gonerThing"],HandItems:[{id:"minecraft:stone_sword",count:1,components:{"minecraft:unbreakable":{}}},{}],ArmorItems:[{id:"minecraft:leather_boots",count:1,components:{"minecraft:equippable":{slot:"feet",model:"du-in:goner_steve"},"minecraft:custom_name":'{"text":"Goner Steve Feet"}',dyed_color:{rgb:9408399}}},{id:"minecraft:leather_leggings",count:1,components:{"minecraft:equippable":{slot:"legs",model:"du-in:goner_steve"},"minecraft:custom_name":'{"text":"Goner Steve Legs"}',"minecraft:unbreakable":{},dyed_color:{rgb:10395294}}},{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:equippable":{slot:"chest",model:"du-in:goner_steve"},"minecraft:custom_name":'{"text":"Goner Steve Chest"}',"minecraft:unbreakable":{},dyed_color:{rgb:9868950}}},{id:"minecraft:player_head",count:1,components:{"profile":{id:[I;1307616339,-1853668205,-1224436822,1468156238],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzc1MGE0NDFhZjIzZTc4OWZjZDc3YjQ3YjU3MzExMDc0M2Q2YTQxZmNlZmY4NmM1MjFlMGZlNWRiMTZjNjBjNSJ9fX0="}]}}}],Attributes:[{Name:attack_damage,Base:2},{Name:follow_range,Base:1000},{Name:knockback_resistance,Base:0.9},{Name:movement_speed,Base:0.4}]}

playsound minecraft:goner.mouth.spawn master @a ~ ~ ~ 0.5 1
team join Goner @e[type=skeleton,tag=gonerThing,team=!Goner,tag=!wildeHit]