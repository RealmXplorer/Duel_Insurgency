# Map Select Actions #

#Timer stop/start#
    execute if entity @s[tag=partyLeader,tag=!countStop,predicate=du-in:lobby/count_hold] unless score #main mapCountdown matches 200 unless score #main mapCountdown matches 100 unless score #main mapCountdown matches 80 unless score #main mapCountdown matches 60 unless score #main mapCountdown matches 40 unless score #main mapCountdown matches ..20 if score #main mapCountdown matches 1.. run function du-in:lobby/actions/count_stop
    execute if entity @s[tag=partyLeader,tag=countStop,predicate=du-in:lobby/count_hold] run function du-in:lobby/actions/count_go


#Quickmatch
    execute if entity @s[tag=!teamMode,tag=partyLeader,predicate=du-in:lobby/quick_hold] run function du-in:lobby/actions/quick_play

#Team Select buttons
    execute if entity @s[tag=teamMode] run function du-in:lobby/kit_use/tm

#Join teams
    #execute if entity @s[tag=teamMode,predicate=du-in:lobby/red_hold,scores={lobby=3}] run function du-in:lobby/actions/pick_red
    #execute if entity @s[tag=teamMode,predicate=du-in:lobby/blue_hold,scores={lobby=3}] run function du-in:lobby/actions/pick_blue

#Query teams
    #execute if entity @s[tag=teamMode,predicate=du-in:lobby/query_hold,scores={lobby=3}] run function du-in:lobby/actions/team_query

#Go Back
    execute if entity @s[predicate=du-in:lobby/back_hold,scores={lobby=3}] run function du-in:lobby/actions/map_back

    scoreboard players reset @s kitUse
