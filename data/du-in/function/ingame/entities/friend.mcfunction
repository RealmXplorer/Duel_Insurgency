execute store result score #main FUN run random value 0..100
execute if score #main FUN matches 1..10 as @a[scores={FRIEND=2..}] at @s run playsound minecraft:accident master @s ~ ~ ~ 1 1
execute if score #main FUN matches 11..20 run tag @a add sidebarDisable
execute if score #main FUN matches 21..30 as @a[tag=partyLeader] run function du-in:lobby/gamemode_select/actions/wheel
execute if score #main FUN matches 31..40 as @a[scores={FRIEND=2..}] at @s run playsound minecraft:left master @s ~ ~ ~ 1 1
execute if score #main FUN matches 41..50 as @a[scores={FRIEND=2..}] at @s run scoreboard players add @s kitUse 1
execute if score #main FUN matches 51..60 as @a[scores={FRIEND=2..}] at @s run playsound minecraft:hello master @s ~ ~ ~ 1 1
execute if score #main FUN matches 61..70 as @a[scores={FRIEND=2..}] at @s run playsound minecraft:music.man master @s ~ ~ ~ 1 0.25
execute if score #main FUN matches 71..80 as @a[scores={FRIEND=2..}] at @s run playsound minecraft:usb master @s ~ ~ ~ 1 1
execute if score #main FUN matches 81..90 as @a[scores={FRIEND=2..}] at @s run stopsound @s
execute if score #main FUN matches 91..100 as @a[scores={FRIEND=2..}] at @s run function du-in:other/shutdown/end

scoreboard players set #main FRIEND 0
execute store result score #main FRIEND run return run function du-in:music/ingame/beta/fun
return 1