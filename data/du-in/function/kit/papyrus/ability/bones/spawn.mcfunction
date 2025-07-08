#Set Timer
scoreboard players set @s papyrusHitTimer 30

#Spawn Bones
summon minecraft:armor_stand ~1 ~-1 ~1 {Invulnerable:1b,Small:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["papyrusBone","projectile","mapSpecific"],DisabledSlots:4144959,equipment:{head:{id:"minecraft:oak_sapling",count:1,components:{"minecraft:item_model":"du-in:other/bone"}}},NoGravity:1b}
summon minecraft:armor_stand ~1 ~-1 ~ {Invulnerable:1b,Small:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["papyrusBone","projectile","mapSpecific"],DisabledSlots:4144959,equipment:{head:{id:"minecraft:oak_sapling",count:1,components:{"minecraft:item_model":"du-in:other/bone"}}},NoGravity:1b}
summon minecraft:armor_stand ~1 ~-1 ~-1 {Invulnerable:1b,Small:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["papyrusBone","projectile","mapSpecific"],DisabledSlots:4144959,equipment:{head:{id:"minecraft:oak_sapling",count:1,components:{"minecraft:item_model":"du-in:other/bone"}}},NoGravity:1b}
summon minecraft:armor_stand ~ ~-1 ~1 {Invulnerable:1b,Small:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["papyrusBone","projectile","mapSpecific"],DisabledSlots:4144959,equipment:{head:{id:"minecraft:oak_sapling",count:1,components:{"minecraft:item_model":"du-in:other/bone"}}},NoGravity:1b}
summon minecraft:armor_stand ~ ~-1 ~ {Invulnerable:1b,Small:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["papyrusBone","projectile","mapSpecific","centerBone"],DisabledSlots:4144959,equipment:{head:{id:"minecraft:oak_sapling",count:1,components:{"minecraft:item_model":"du-in:other/bone"}}},NoGravity:1b}
summon minecraft:armor_stand ~ ~-1 ~-1 {Invulnerable:1b,Small:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["papyrusBone","projectile","mapSpecific"],DisabledSlots:4144959,equipment:{head:{id:"minecraft:oak_sapling",count:1,components:{"minecraft:item_model":"du-in:other/bone"}}},NoGravity:1b}
summon minecraft:armor_stand ~-1 ~-1 ~1 {Invulnerable:1b,Small:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["papyrusBone","projectile","mapSpecific"],DisabledSlots:4144959,equipment:{head:{id:"minecraft:oak_sapling",count:1,components:{"minecraft:item_model":"du-in:other/bone"}}},NoGravity:1b}
summon minecraft:armor_stand ~-1 ~-1 ~ {Invulnerable:1b,Small:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["papyrusBone","projectile","mapSpecific"],DisabledSlots:4144959,equipment:{head:{id:"minecraft:oak_sapling",count:1,components:{"minecraft:item_model":"du-in:other/bone"}}},NoGravity:1b}
summon minecraft:armor_stand ~-1 ~-1 ~-1 {Invulnerable:1b,Small:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["papyrusBone","projectile","mapSpecific"],DisabledSlots:4144959,equipment:{head:{id:"minecraft:oak_sapling",count:1,components:{"minecraft:item_model":"du-in:other/bone"}}},NoGravity:1b}

#Store Player value in Marker
execute store result score @s team run scoreboard players get @a[scores={kit=13},tag=kitActions,limit=1] team
execute store result score @s player run scoreboard players get @a[scores={kit=13},tag=kitActions,limit=1] player

#Store player and team values in bones
execute as @e[tag=papyrusBone,tag=!boneIDSet] run function du-in:kit/papyrus/ability/bones/set_player

#Mark marker as having player and team ids set for bones
tag @s add boneIDSet

#Tag Marker
tag @s add papyrusStart