#Set spawn
spawnpoint @s ~ ~ ~ ~

#Clear ability
clear @s minecraft:carrot_on_a_stick

#Particles and sounds
particle minecraft:block{block_state:{"minecraft:dirt"}} ~ ~ ~ 0.3 0 0.3 1 50 force

playsound minecraft:sans.ability master @a ~ ~ ~ .25 1
playsound minecraft:block.grass.break master @a ~ ~ ~ 100 .7
playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 100 1

execute if entity @s[tag=!stolen] run function du-in:kit/zombie/ability/place/sound
execute if entity @s[tag=stolen] run playsound minecraft:entity.zombie_villager.hurt master @a ~ ~ ~ 100 1

#Set grave tag
tag @s add grave

#Summon grave stone block and name
execute if entity @s[tag=!stolen] run function du-in:kit/zombie/ability/place/block
execute if entity @s[tag=stolen] run summon minecraft:falling_block ~ ~ ~ {BlockState:{Name:"minecraft:oak_fence"},NoGravity:1b,Time:-2147483648,DropItem:0b,HurtEntities:0b,FallHurtMax:0,FallHurtAmount:0f,Tags:["grave","projectile","mapSpecific"]}

data modify block 246 5 -81 front_text.messages[0] set value '[{"selector":"@a[tag=kitActions,scores={kit=2},tag=!flagGot,tag=!badBlock,limit=1]"},{"text":"\'s Grave"}]'


#Summon name
summon area_effect_cloud ~ ~.5 ~ {Duration:2147483647,CustomNameVisible:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,PersistenceRequired:1b,Tags:["grave","projectile","mapSpecific"]}

execute as @n[type=area_effect_cloud,tag=grave,tag=!nameSet] run function du-in:kit/zombie/ability/grave/init

#End ability
tag @s remove kitActions