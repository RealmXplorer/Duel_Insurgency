summon skeleton ~ ~ ~ {NoAI:0b,Silent:1b,CanPickUpLoot:0b,Health:15f,Tags:["gonerEar","mapSpecific","gonerThing"],HandItems:[{id:"minecraft:stone_axe",Count:1b,tag:{Unbreakable:1b}},{}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{Name:'{"text":"Goner Steve Feet"}',color:9408399}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{Name:'{"text":"Goner Steve Pants"}',color:10395294}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{Name:'{"text":"Goner Steve Chest"}',color:9868950}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-509056492,1004359424,-1696675961,-1252357014],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTI4NDYwMDQ2MzZkZTA4OWJhOGUzYTkyNGFhYWJlYTdlYzI2OTg0OTdmNDU5ZGZjMjk4Zjc1NGRmMmE1NzQxZCJ9fX0="}]}}}}],Attributes:[{Name:generic.knockback_resistance,Base:0.13},{Name:generic.movement_speed,Base:0.25},{Name:generic.attack_damage,Base:3}]}
playsound minecraft:goner.ear.spawn master @a ~ ~ ~ 0.5 1
team join Goner @e[type=skeleton,tag=gonerThing,team=!Goner]