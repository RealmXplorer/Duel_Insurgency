spawnpoint @s ~ ~ ~ ~
clear @s minecraft:carrot_on_a_stick
function du-in:kit/zombie/particle
tag @s add grave
execute unless entity @s[scores={zombSkin=1..2}] unless entity @s[scores={zombSkin=4}] run summon minecraft:falling_block ~ ~ ~ {BlockState:{Name:"minecraft:stone_brick_wall"},NoGravity:1b,Time:-2147483648,DropItem:0b,HurtEntities:0b,FallHurtMax:0,FallHurtAmount:0f,Tags:["grave","projectile","mapSpecific"]}
execute if entity @s[scores={zombSkin=1}] run summon minecraft:falling_block ~ ~ ~ {BlockState:{Name:"minecraft:sandstone_wall"},NoGravity:1b,Time:-2147483648,DropItem:0b,HurtEntities:0b,FallHurtMax:0,FallHurtAmount:0f,Tags:["grave","projectile","mapSpecific"]}
execute if entity @s[scores={zombSkin=2}] run summon minecraft:falling_block ~ ~ ~ {BlockState:{Name:"minecraft:prismarine_wall"},NoGravity:1b,Time:-2147483648,DropItem:0b,HurtEntities:0b,FallHurtMax:0,FallHurtAmount:0f,Tags:["grave","projectile","mapSpecific"]}
execute if entity @s[scores={zombSkin=4}] run summon minecraft:falling_block ~ ~ ~ {BlockState:{Name:"minecraft:lightning_rod"},NoGravity:1b,Time:-2147483648,DropItem:0b,HurtEntities:0b,FallHurtMax:0,FallHurtAmount:0f,Tags:["grave","projectile","mapSpecific"]}
data modify block 246 5 -81 Text1 set value '[{"selector":"@a[tag=kitActions,scores={kit=2},tag=!flagGot,tag=!badBlock,limit=1]"},{"text":"\'s Grave"}]'
##@a[tag=kitActions,scores={kit=2},tag=!flagGot,tag=!badBlock,limit=1]
summon armor_stand ~ ~1 ~ {CustomNameVisible:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["grave","projectile","mapSpecific"]}
execute as @e[tag=grave,type=minecraft:armor_stand,limit=1,tag=!nameSet] run data modify entity @s CustomName set from block 246 5 -81 Text1
execute store result score @e[tag=grave,type=minecraft:armor_stand,tag=!nameSet] player run scoreboard players get @s player
tag @e[tag=grave,type=minecraft:armor_stand,tag=!nameSet] add nameSet
tag @s remove kitActions