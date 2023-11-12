execute if entity @s[tag=!stolen,scores={hit=5..}] run function du-in:kit/sans/sounds/hit
execute if entity @s[tag=!stolen,scores={step=150..}] run function du-in:kit/sans/sounds/step
execute if entity @s[tag=!stolen,scores={sprint=150..}] run function du-in:kit/sans/sounds/step
execute if entity @s[tag=!stolen,scores={jump=1..}] run function du-in:kit/sans/sounds/jump

#EFFECTS#
execute if entity @s[tag=!stolen] run attribute @s minecraft:generic.max_health base set 10
#effect give @s[tag=!stolen] minecraft:speed 1 1 true

#CONSTANTS#
execute if entity @s[tag=!void,tag=kitActions] run function du-in:kit/sans/ability/init
execute if entity @s[tag=void,tag=kitActions] run function du-in:kit/sans/ability/void/init

#Armor #
execute if entity @s[tag=armor,tag=!stolen] run function du-in:kit/sans/armor

#SANS PARTICLES#
#tag @s[tag=kitParticles] remove kitParticles

#scoreboard players remove @a[scores={sansHitTimer=-1..}] sansHitTimer 1
#execute as @a[scores={sansHitTimer=..0}] unless entity @s[gamemode=!spectator,tag=!teamDead,scores={gasterTimer=..79}] run tag @s add armor
#scoreboard players reset @a[scores={sansHitTimer=..0}] sansHitTimer

execute if entity @s[tag=!teamDead,tag=!stolen] unless entity @s[scores={weapCount=1}] run function du-in:kit/sans/weapon

#execute store result score @s[tag=!stolen] weapCount run clear @s[tag=!kitMenu] bone 0


execute if entity @s[level=1] run item replace entity @s weapon.offhand with minecraft:carrot_on_a_stick{display:{Name:'{"text":"Bad Time","color":"gold","bold":true,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}',Lore:['{"text":"Right click to activate!","color":"dark_purple","bold":true}','[{"text":""}]','{"text":"Teleport behind an enemy,","color":"dark_gray"}','{"text":"avoid attack cooldowns, ","color":"dark_gray"}','{"text":"gain strength","color":"dark_gray"}']},HideFlags:1,Enchantments:[{id:"minecraft:protection",lvl:1s}],CustomModelData:115,weaponItem:1b}

attribute @s[tag=!stolen] generic.movement_speed base set 0.155
#.1425

#Set Sans head to normal
execute unless entity @s[scores={sansSkin=1..}] run item replace entity @s[level=..164,tag=!stolen] armor.head with minecraft:player_head{display:{Name:"{\"text\":\"Sans\"}"},SkullOwner:{Id:[I;1075612150,944654141,-1270342541,-1555910951],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTVhZWY4ZDczYzZiM2I5N2Q3YjU3MTZmY2EyMTVmNWViYTY3OTkyMTJkMTFlYjYzZTE1ODg5NDBkMWUyMWI3MyJ9fX0="}]}},weaponItem:1b} 1
item replace entity @s[tag=!stolen,scores={sansSkin=1},level=..164] armor.head with minecraft:player_head{display:{Name:"{\"text\":\"Sans\"}"},SkullOwner:{Id:[I;-1361811219,-379894067,-1830054592,-906781659],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOThhMjJmZmU1NjdhMzc2ZjliNjcyMjg5M2I4YzczZjJlYzU4YTk1ZGMxMmYxYjY3ZmUzNTUwMTU3ZmQ4NmI2YyJ9fX0="}]}},weaponItem:1b} 1


##Base KB Resistance is 0.
attribute @s[tag=!stolen] generic.knockback_resistance base set 0