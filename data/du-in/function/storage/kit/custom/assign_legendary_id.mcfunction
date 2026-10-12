# Assign starting ID (1000 + unlockCount)
execute store result storage du-in:temp_kit entry.id int 1 run scoreboard players get #main legID

# Increment unlock ID tracker for next unlock character
scoreboard players add #main legID 1