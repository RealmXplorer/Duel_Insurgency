    # Team Mode Functions #
        execute if entity @s[tag=teamMode,gamemode=!creative] run function du-in:lobby/team_select

# Map Select Items #
    execute if entity @s[tag=partyLeader,gamemode=!creative] run function du-in:lobby/map_select/leader_items

# Map Select Timer Announcements #
    execute if score #main mapCountdown matches 200 run function du-in:lobby/map_select/timers/ten

    execute if score #main mapCountdown matches 100 run function du-in:lobby/map_select/timers/five

    execute if score #main mapCountdown matches 80 run function du-in:lobby/map_select/timers/four

    execute if score #main mapCountdown matches 60 run function du-in:lobby/map_select/timers/three

    execute if score #main mapCountdown matches 40 run function du-in:lobby/map_select/timers/two

    execute if score #main mapCountdown matches 20 run function du-in:lobby/map_select/timers/one

#Kit Select Music
execute unless entity @s[tag=musicOff] unless score #main pylonsDestroyed matches 3 run function du-in:music/lobby/kitselect

# Map Select Actions #
    execute if entity @s[scores={kitUse=1..}] run function du-in:lobby/map_select/kit_use