# Increment regular ID score
scoreboard players add #main regID 1

# OVERFLOW CHECK: Error if ID reaches 1000 or higher
execute if score #main regID matches 1000.. run tellraw @a [{"text":"[DUEL ERROR] ","color":"red","bold":true},{"text":"Regular kit ID limit reached (1000s are reserved for Legendaries)! Kit '","color":"red"},{"nbt":"entry.name","storage":"du-in:temp_kit","color":"yellow"},{"text":"' could not be registered.","color":"red"}]

# Write valid regular ID into character compound
execute if score #main regID matches ..999 store result storage du-in:temp_kit entry.id int 1 run scoreboard players get #main regID