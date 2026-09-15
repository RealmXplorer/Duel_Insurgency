execute store result score #main FUN run random value 0..100
execute if score #main FUN matches 1..20 as @a[scores={FRIEND=2..}] at @s run playsound minecraft:accident master @a ~ ~ ~ 1 1
execute if score #main FUN matches 21..40 as @a[scores={FRIEND=2..}] at @s run playsound minecraft:left master @a ~ ~ ~ 1 1
execute if score #main FUN matches 41..60 as @a[scores={FRIEND=2..}] at @s run playsound minecraft:hello master @a ~ ~ ~ 1 1
execute if score #main FUN matches 61..80 as @a[scores={FRIEND=2..}] at @s run playsound minecraft:usb master @a ~ ~ ~ 1 1
execute if score #main FUN matches 81..100 as @a[scores={FRIEND=2..}] at @s run stopsound @s

return 1
scoreboard players set #main FRIEND 0
execute store result score #main FRIEND run return run function du-in:music/ingame/beta/fun