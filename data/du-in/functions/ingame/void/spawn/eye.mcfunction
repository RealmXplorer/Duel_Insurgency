#summon skeleton ~ ~ ~ {NoAI:0b,Silent:1b,CanPickUpLoot:0b,Health:10f,Tags:["gonerEye","mapSpecific","gonerThing"],HandItems:[{id:"minecraft:bow",Count:1b,tag:{Unbreakable:1b,CustomModelData:101}},{}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{Name:'{"text":"Goner Steve Feet"}',color:9408399}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{Name:'{"text":"Goner Steve Pants"}',color:10395294}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{Name:'{"text":"Goner Steve Chest"}',color:9868950}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;318736035,-1403303440,-1876061664,-609467480],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTdlMGE5MGMyYjg0ODU1YzkwMDYzNmNmYzkyNWQ5ZjJkMDc4NjliMGNiZmE1MzhlMjYxMDcyMGI3ZDI0YWVlNSJ9fX0="}]}}}}],Attributes:[{Name:generic.knockback_resistance,Base:0.13},{Name:generic.follow_range,Base:1000},{Name:generic.movement_speed,Base:0.40},{Name:generic.attack_damage,Base:2},{Name:generic.follow_range,Base:30}]}
summon skeleton ~ ~ ~ {NoGravity:1b,Silent:1b,NoAI:0b,CanPickUpLoot:0b,Health:10f,Tags:["gonerEye","mapSpecific","gonerThing"],HandItems:[{id:"minecraft:bow",count:1,components:{"minecraft:unbreakable":{},"minecraft:custom_model_data":101}},{}],ArmorItems:[{id:"minecraft:leather_boots",count:1,components:{"minecraft:custom_name":'{"text":"Goner Steve Feet"}',dyed_color={rgb:9408399}}},{id:"minecraft:leather_leggings",count:1,components:{"minecraft:custom_name":'{"text":"Goner Steve Legs"}',"minecraft:unbreakable":{},dyed_color={rgb:10395294}}},{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:custom_name":'{"text":"Goner Steve Chest"}',"minecraft:unbreakable":{},dyed_color={rgb:9868950}}},{id:"minecraft:player_head",count:1,components:{"profile":{id:[I;318736035,-1403303440,-1876061664,-609467480],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTdlMGE5MGMyYjg0ODU1YzkwMDYzNmNmYzkyNWQ5ZjJkMDc4NjliMGNiZmE1MzhlMjYxMDcyMGI3ZDI0YWVlNSJ9fX0="}]}}}],Attributes:[{Name:generic.attack_damage,Base:2},{Name:generic.follow_range,Base:1000},{Name:generic.knockback_resistance,Base:0.13},{Name:generic.movement_speed,Base:0.4}]}

playsound minecraft:goner.eye.spawn master @a ~ ~ ~ 0.5 1
team join Goner @e[type=skeleton,tag=gonerThing,team=!Goner,tag=!wildeHit]