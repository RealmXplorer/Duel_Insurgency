scoreboard players set #main online 0
execute as @a[tag=!spectating] run scoreboard players add #main online 1

execute if score #main kitOnline = #main online if score #main lobby matches 2 unless entity @a[tag=playing] if score #main mapCountdown matches -1.. unless entity @a[tag=countStop] run function du-in:other/player_count/countodwn