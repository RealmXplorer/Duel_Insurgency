playsound minecraft:terraria.golkill master @a ~ ~ ~ 3 1

execute if entity @s[scores={kit=20}] run function du-in:kit/yharim/ability/timer_reset
execute if entity @s[scores={kit=20}] run function du-in:kit/yharim/secondary/end_rage