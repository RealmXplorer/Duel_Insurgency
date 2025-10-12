execute if entity @s[tag=!sabotaged] as @a[distance=0.05..5,tag=playing] if score @s team = @a[limit=1,tag=playing,scores={creeperTimer=..0}] team run effect give @s minecraft:resistance 1 6 true
effect give @s[tag=!sabotaged] minecraft:resistance 1 100 true
summon minecraft:creeper ~ ~ ~ {Invulnerable:1b,CustomNameVisible:0b,DeathLootTable:"-",PersistenceRequired:1b,NoAI:1b,powered:0b,ExplosionRadius:3b,Fuse:0,ignited:1b,Attributes:[{Name:attackKnockback,Base:1}],Silent:1b,Tags:["projectile"]}

#If in air
execute if entity @s[tag=!stolen] if block ~ ~-1 ~ #du-in:zomb_invalid rotated as @s run tag @s add airBlock
execute if entity @s[tag=!stolen] if block ~ ~ ~ #du-in:zomb_invalid_air rotated as @s run tag @s add airBlock
execute if entity @s[tag=!stolen] if blocks ~ ~ ~ ~ ~.5 ~ ~ ~-.5 ~ all run tag @s add airBlock

#Give Creeper a mace when in air
tag @s[tag=airBlock] add creeperMace

execute if entity @s[tag=creeperMace] unless entity @s[scores={creepSkin=1..}] run item replace entity @s hotbar.0 with minecraft:mace[item_name={text:"Falling Strike",color:gold,bold:true},item_model="du-in:weapons/creeper",unbreakable={},attribute_modifiers=[{type:"attack_damage",id:"attack_damage",amount:5.4,operation:"add_value"},{type:"attack_speed",id:"attack_speed",amount:-2.65,operation:"add_value"}],enchantment_glint_override=true] 1
execute if entity @s[tag=creeperMace] if entity @s[scores={creepSkin=1}] run item replace entity @s hotbar.0 with minecraft:mace[item_name={text:"Falling Gingerbread Strike",color:gold,bold:true},item_model="du-in:weapons/gingerbreadaxe",unbreakable={},attribute_modifiers=[{type:"attack_damage",id:"attack_damage",amount:5.4,operation:"add_value"},{type:"attack_speed",id:"attack_speed",amount:-2.65,operation:"add_value"}],enchantment_glint_override=true] 1

#End Ability
xp set @s[tag=!stolen] 360 levels
execute if entity @s[tag=stolen] run tag @s add kitDone
tag @s remove sabotaged
tag @s remove cooldown
scoreboard players reset @s creeperTimer
