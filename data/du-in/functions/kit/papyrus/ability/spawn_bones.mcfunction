summon minecraft:armor_stand ~1 ~-1 ~1 {Invulnerable:1b,Small:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["papyrusBone","projectile","mapSpecific"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:oak_sapling",Count:1b,tag:{CustomModelData:10000001}}],NoGravity:1b}
summon minecraft:armor_stand ~1 ~-1 ~ {Invulnerable:1b,Small:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["papyrusBone","projectile","mapSpecific"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:oak_sapling",Count:1b,tag:{CustomModelData:10000001}}],NoGravity:1b}
summon minecraft:armor_stand ~1 ~-1 ~-1 {Invulnerable:1b,Small:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["papyrusBone","projectile","mapSpecific"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:oak_sapling",Count:1b,tag:{CustomModelData:10000001}}],NoGravity:1b}
summon minecraft:armor_stand ~ ~-1 ~1 {Invulnerable:1b,Small:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["papyrusBone","projectile","mapSpecific"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:oak_sapling",Count:1b,tag:{CustomModelData:10000001}}],NoGravity:1b}
summon minecraft:armor_stand ~ ~-1 ~ {Invulnerable:1b,Small:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["papyrusBone","projectile","mapSpecific"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:oak_sapling",Count:1b,tag:{CustomModelData:10000001}}],NoGravity:1b}
summon minecraft:armor_stand ~ ~-1 ~-1 {Invulnerable:1b,Small:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["papyrusBone","projectile","mapSpecific"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:oak_sapling",Count:1b,tag:{CustomModelData:10000001}}],NoGravity:1b}
summon minecraft:armor_stand ~-1 ~-1 ~1 {Invulnerable:1b,Small:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["papyrusBone","projectile","mapSpecific"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:oak_sapling",Count:1b,tag:{CustomModelData:10000001}}],NoGravity:1b}
summon minecraft:armor_stand ~-1 ~-1 ~ {Invulnerable:1b,Small:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["papyrusBone","projectile","mapSpecific"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:oak_sapling",Count:1b,tag:{CustomModelData:10000001}}],NoGravity:1b}
summon minecraft:armor_stand ~-1 ~-1 ~-1 {Invulnerable:1b,Small:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["papyrusBone","projectile","mapSpecific"],DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:oak_sapling",Count:1b,tag:{CustomModelData:10000001}}],NoGravity:1b}

execute store result score @s team run scoreboard players get @a[scores={kit=13},tag=kitActions,limit=1] team
execute store result score @s player run scoreboard players get @a[scores={kit=13},tag=kitActions,limit=1] player

execute as @e[tag=papyrusBone,tag=!boneIDSet] store result score @s player run scoreboard players get @e[tag=papyrusFind,tag=!boneIDSet,limit=1] player

tag @s add boneIDSet
tag @e[tag=papyrusBone,scores={player=0..}] add boneIDSet