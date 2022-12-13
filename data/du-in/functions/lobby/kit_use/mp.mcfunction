# Gamemode Select Actions #
    execute if entity @s[tag=partyLeader,tag=!countStop,predicate=du-in:lobby/count_hold] run scoreboard players add @s countStop 1
    execute if entity @s[tag=partyLeader,tag=countStop,predicate=du-in:lobby/count_hold] run scoreboard players add @s countGo 1
    execute if entity @s[tag=!teamMode,tag=partyLeader,predicate=du-in:lobby/quick_hold] run scoreboard players add @s quickPlay 1
    execute if entity @s[tag=teamMode,predicate=du-in:lobby/red_hold] run scoreboard players add @s joinRed 1
    execute if entity @s[tag=teamMode,predicate=du-in:lobby/blue_hold] run scoreboard players add @s joinBlue 1
    execute if entity @s[predicate=du-in:lobby/back_hold,tag=partyLeader] run scoreboard players add @s back 1
    execute if entity @s[tag=teamMode,predicate=du-in:lobby/query_hold] run scoreboard players add @s teamQuery 1
    scoreboard players reset @s kitUse