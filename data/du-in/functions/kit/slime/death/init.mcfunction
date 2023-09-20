execute if score @s player = @a[tag=slimeDeath,tag=magma,limit=1] player run tag @s add magma 
kill @s

execute if entity @s[tag=!magma] run summon minecraft:slime ~ ~ ~ {Tags:["slime","projectile","mapSpecific"],PersistenceRequired:0b,Size:1,Health:10f,Attributes:[{Name:generic.max_health,Base:10},{Name:generic.knockback_resistance,Base:1},{Name:generic.movement_speed,Base:1.5},{Name:generic.attack_damage,Base:0.01},{Name:generic.attack_knockback,Base:10}]}
execute if entity @s[tag=!magma] run summon minecraft:slime ~ ~ ~ {Tags:["slime","projectile","mapSpecific"],PersistenceRequired:0b,Size:1,Health:10f,Attributes:[{Name:generic.max_health,Base:10},{Name:generic.knockback_resistance,Base:1},{Name:generic.movement_speed,Base:1.5},{Name:generic.attack_damage,Base:0.01},{Name:generic.attack_knockback,Base:10}]}
execute if entity @s[tag=!magma] run summon minecraft:slime ~ ~ ~ {Tags:["slime","projectile","mapSpecific"],PersistenceRequired:0b,Size:1,Health:10f,Attributes:[{Name:generic.max_health,Base:10},{Name:generic.knockback_resistance,Base:1},{Name:generic.movement_speed,Base:1.5},{Name:generic.attack_damage,Base:0.01},{Name:generic.attack_knockback,Base:10}]}
execute if entity @s[tag=!magma] run summon minecraft:slime ~ ~ ~ {Tags:["slime","projectile","mapSpecific"],PersistenceRequired:0b,Size:1,Health:10f,Attributes:[{Name:generic.max_health,Base:10},{Name:generic.knockback_resistance,Base:1},{Name:generic.movement_speed,Base:1.5},{Name:generic.attack_damage,Base:0.01},{Name:generic.attack_knockback,Base:10}]}

execute if entity @s[tag=magma] run summon minecraft:magma_cube ~ ~ ~ {Tags:["slime","projectile","mapSpecific"],PersistenceRequired:0b,Size:1,Health:10f,Attributes:[{Name:generic.max_health,Base:10},{Name:generic.knockback_resistance,Base:1},{Name:generic.movement_speed,Base:1.5},{Name:generic.attack_damage,Base:0},{Name:generic.attack_knockback,Base:10}]}
execute if entity @s[tag=magma] run summon minecraft:magma_cube ~ ~ ~ {Tags:["slime","projectile","mapSpecific"],PersistenceRequired:0b,Size:1,Health:10f,Attributes:[{Name:generic.max_health,Base:10},{Name:generic.knockback_resistance,Base:1},{Name:generic.movement_speed,Base:1.5},{Name:generic.attack_damage,Base:0},{Name:generic.attack_knockback,Base:10}]}
execute if entity @s[tag=magma] run summon minecraft:magma_cube ~ ~ ~ {Tags:["slime","projectile","mapSpecific"],PersistenceRequired:0b,Size:1,Health:10f,Attributes:[{Name:generic.max_health,Base:10},{Name:generic.knockback_resistance,Base:1},{Name:generic.movement_speed,Base:1.5},{Name:generic.attack_damage,Base:0},{Name:generic.attack_knockback,Base:10}]}
execute if entity @s[tag=magma] run summon minecraft:magma_cube ~ ~ ~ {Tags:["slime","projectile","mapSpecific"],PersistenceRequired:0b,Size:1,Health:10f,Attributes:[{Name:generic.max_health,Base:10},{Name:generic.knockback_resistance,Base:1},{Name:generic.movement_speed,Base:1.5},{Name:generic.attack_damage,Base:0},{Name:generic.attack_knockback,Base:10}]}

#execute as @a[scores={slimeDeath=1..}] at @s run scoreboard players reset @s slimeDeath

execute as @e[type=slime] run scoreboard players set @s slimeTimer 100
execute as @e[type=minecraft:magma_cube] run scoreboard players set @s slimeTimer 100
