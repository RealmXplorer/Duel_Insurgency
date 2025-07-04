    # Team Mode Functions #
        execute if entity @s[tag=teamMode,gamemode=!creative] run function du-in:lobby/team_select

# Map Select Items #
    execute if entity @s[tag=partyLeader,gamemode=!creative] run function du-in:lobby/mapselect/leader_items

# Map Select Timer Announcements #
    execute if score #main mapCountdown matches 200 run function du-in:lobby/mapselect/timers/ten

    execute if score #main mapCountdown matches 100 run function du-in:lobby/mapselect/timers/five

    execute if score #main mapCountdown matches 80 run function du-in:lobby/mapselect/timers/four

    execute if score #main mapCountdown matches 60 run function du-in:lobby/mapselect/timers/three

    execute if score #main mapCountdown matches 40 run function du-in:lobby/mapselect/timers/two

    execute if score #main mapCountdown matches 20 run function du-in:lobby/mapselect/timers/one

# Map Select Bossbars #
#     execute store result bossbar minecraft:map_countdown value run scoreboard players get #main mapCountdown


# Tell Players to Pick Character #
    #title @a[tag=!kitPicked,tag=!spect,tag=!teamMode] actionbar {text:"Open inventory to select a character!",color:red,bold:true}
    #title @a[tag=!kitPicked,tag=!spectating,tag=!teamMode] actionbar {text:"Open inventory to select a character!",color:red,bold:true}


#execute as @e[type=marker,tag=mapVote] at @s run function du-in:lobby/mapselect/map_vote

#Kit Select Music
execute unless entity @s[tag=musicOff] unless score #main pylonsDestroyed matches 3 run function du-in:music/lobby/kitselect

# Map Select Actions #
    execute if entity @s[scores={kitUse=1..}] run function du-in:lobby/kit_use/mp