execute if entity @s[tag=!stolen,scores={hit=5..}] run function du-in:kit/sans/sounds/hit
execute if entity @s[tag=!stolen,scores={step=150..}] run function du-in:kit/sans/sounds/step
execute if entity @s[tag=!stolen,scores={sprint=150..}] run function du-in:kit/sans/sounds/step
execute if entity @s[tag=!stolen,scores={jump=1..}] run function du-in:kit/sans/sounds/jump

#EFFECTS#
execute if entity @s[tag=!stolen] run attribute @s minecraft:generic.max_health base set 10
#effect give @s[tag=!stolen] minecraft:speed 1 1 true

#CONSTANTS#
execute if entity @s[scores={abilityUse=1..}] run function du-in:kit/sans/ability/init

#Armor #
execute if entity @s[tag=armor,tag=!stolen] run function du-in:kit/sans/armor

#SANS PARTICLES#
#tag @s[tag=kitParticles] remove kitParticles

#scoreboard players remove @a[scores={sansHitTimer=-1..}] sansHitTimer 1
#execute as @a[scores={sansHitTimer=..0}] unless entity @s[gamemode=!spectator,tag=!teamDead,scores={gasterTimer=..79}] run tag @s add armor
#scoreboard players reset @a[scores={sansHitTimer=..0}] sansHitTimer

execute if entity @s[tag=!teamDead,tag=!stolen] unless entity @s[scores={weapCount=1}] run function du-in:kit/sans/weapon

#execute store result score @s[tag=!stolen] weapCount run clear @s[tag=!kitMenu] bone 0


item replace entity @s[level=1] weapon.offhand with minecraft:carrot_on_a_stick{display:{Name:'{"text":"Bad Time","color":"gold","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"Right click to activate!","color":"dark_purple","bold":true}','[{"text":""}]','{"text":"Teleport behind an enemy,","color":"dark_gray"}','{"text":"avoid attack cooldowns, ","color":"dark_gray"}','{"text":"gain strength","color":"dark_gray"}']},HideFlags:1,Enchantments:[{id:"minecraft:protection",lvl:1s}],CustomModelData:115,weaponItem:1b}

attribute @s[tag=!stolen] generic.movement_speed base set 0.15
#.1425

##Base KB Resistance is 0.
#attribute @s[tag=!stolen,tag=!pussFear] generic.knockback_resistance base set 0