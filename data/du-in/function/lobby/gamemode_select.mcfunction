##MANY OF THESE NOW RUN IN THE SCHEDULED FUNCTION

# Gamemode Select Inventory Items #
execute if entity @s[tag=partyLeader,gamemode=!creative] run function du-in:lobby/gamemode_select/leader_items_constant

# Music #
    execute unless entity @s[tag=musicOff] unless score #main pylonsDestroyed matches 3 run function du-in:music/lobby/lobby

# Gamemode Select Actions #
    execute if entity @s[scores={kitUse=1..}] run function du-in:lobby/kit_use/gm