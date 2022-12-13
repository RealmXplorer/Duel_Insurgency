scoreboard players set @s creeperTimer 40
effect give @s minecraft:speed 2 3 true
playsound minecraft:entity.creeper.primed master @a ~ ~ ~ 100 1

#execute if entity @s[scores={creeperTimer=..1}] run execute as @a[distance=0.05..5,tag=playing] if score @s team = @a[limit=1,tag=playing,scores={creeperTimer=..1}] team run effect give @s minecraft:resistance 1 6 true
particle minecraft:flame ~ ~1.5 ~ 0.5 1 0.5 0.1 100 force
playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 100 1
#scoreboard players remove @a[scores={creeperTimer=0..}] creeperTimer 1
#effect give @s[scores={creeperTimer=..2}] minecraft:resistance 1 100 true
#execute if entity @s[scores={creeperTimer=0}] run summon minecraft:creeper ~ ~ ~ {Invulnerable:1b,CustomNameVisible:0b,DeathLootTable:"-",PersistenceRequired:1b,NoAI:1b,powered:0b,ExplosionRadius:3.5b,Fuse:0,ignited:1b,Attributes:[{Name:generic.attackKnockback,Base:1}],Silent:1b,Tags:["projectile"]}
#scoreboard players reset @a[scores={creeperTimer=..-1}] creeperTimer
clear @s minecraft:carrot_on_a_stick
xp set @s[tag=!stolen] 360 levels
#tag @a[scores={kit=4,creeperTimer=..10}] remove flash
#tag @s[tag=stolen] add kitDone
tag @s remove kitActions
