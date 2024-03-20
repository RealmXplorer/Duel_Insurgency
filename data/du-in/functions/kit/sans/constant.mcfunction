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

execute if entity @s[tag=!teamDead,tag=!stolen] unless entity @s[scores={weapCount=1}] run function du-in:kit/sans/weapon

execute if entity @s[level=1] run function du-in:kit/sans/ability/item

attribute @s[tag=!stolen] generic.movement_speed base set 0.155

#Set Sans head to normal
##Is there a way to not need this?
execute unless entity @s[scores={sansSkin=1..}] run item replace entity @s[level=..164,tag=!stolen] armor.head with minecraft:player_head[custom_name='{"text":"Sans","color":"white","bold":true,"italic":false}',profile={id:[I;1075612150,944654141,-1270342541,-1555910951],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTVhZWY4ZDczYzZiM2I5N2Q3YjU3MTZmY2EyMTVmNWViYTY3OTkyMTJkMTFlYjYzZTE1ODg5NDBkMWUyMWI3MyJ9fX0="}]}] 1
item replace entity @s[tag=!stolen,scores={sansSkin=1},level=..164] armor.head with minecraft:player_head[custom_name='{"text":"Santa","color":"white","bold":true,"italic":false}',profile={id:[I;-1361811219,-379894067,-1830054592,-906781659],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOThhMjJmZmU1NjdhMzc2ZjliNjcyMjg5M2I4YzczZjJlYzU4YTk1ZGMxMmYxYjY3ZmUzNTUwMTU3ZmQ4NmI2YyJ9fX0="}]}] 1


##Base KB Resistance is 0.
attribute @s[tag=!stolen] generic.knockback_resistance base set 0
execute unless entity @a[tag=partyLeader,tag=scaleMode] run attribute @s[tag=!stolen] minecraft:generic.scale base set 0.9
execute unless entity @a[tag=partyLeader,tag=scaleMode] run attribute @s[tag=!stolen] minecraft:player.block_interaction_range base set 4.25
execute unless entity @a[tag=partyLeader,tag=scaleMode] run attribute @s[tag=!stolen] minecraft:generic.armor base set -3