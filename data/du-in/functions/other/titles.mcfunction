#ACTIONBAR GAMEMODE#
execute as @a run function du-in:other/titles/gamemode_bar

#LOBBY TITLE FOR KITS#
execute if score #main theme matches 2.. run data modify entity @e[type=minecraft:armor_stand,tag=prevLabel,limit=1] CustomNameVisible set value 1b
execute if score #main theme matches 1 run data modify entity @e[type=minecraft:armor_stand,tag=prevLabel,limit=1] CustomNameVisible set value 0b
#execute if score #main theme matches 1 run setblock 436 5 49 air destroy
