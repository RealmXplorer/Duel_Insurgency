summon skeleton ~ ~ ~ {NoAI:0b,Silent:1b,CanPickUpLoot:0b,Health:5f,Tags:["gonerMouth","mapSpecific","gonerThing"],HandItems:[{id:'minecraft:stone_sword',Count:1b,tag:{Unbreakable:1b}},{}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{Name:'{"text":"Goner Steve Feet"}',color:9408399}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{Name:'{"text":"Goner Steve Pants"}',color:10395294}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{Name:'{"text":"Goner Steve Chest"}',color:9868950}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1307616339,-1853668205,-1224436822,1468156238],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMzc1MGE0NDFhZjIzZTc4OWZjZDc3YjQ3YjU3MzExMDc0M2Q2YTQxZmNlZmY4NmM1MjFlMGZlNWRiMTZjNjBjNSJ9fX0="}]}}}}],Attributes:[{Name:generic.knockback_resistance,Base:.9},{Name:generic.movement_speed,Base:0.40},{Name:generic.attack_damage,Base:2},{Name:generic.follow_range,Base:25}]}
playsound minecraft:goner.mouth.spawn master @a ~ ~ ~ 0.5 1
team join Goner @e[type=skeleton,tag=gonerThing,team=!Goner]