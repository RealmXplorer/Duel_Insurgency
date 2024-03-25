    # Team Mode Functions #
        execute if entity @s[tag=teamMode] run function du-in:lobby/team_select

# Map Select Items #
    execute if entity @s[tag=partyLeader,gamemode=!creative] run function du-in:lobby/mapselect/leader_items

    # Give Back-Item #
        #execute unless items entity @s[scores={lobby=2},tag=partyLeader] hotbar.8 minecraft:carrot_on_a_stick run function du-in:lobby/item/back

    # Give Countdown Item #
        #execute unless items entity @s[scores={lobby=2},tag=partyLeader] hotbar.0 minecraft:carrot_on_a_stick run function du-in:lobby/item/count

    # Give Quickplay Item #
        #execute unless items entity @s[scores={lobby=2},tag=!teamMode] hotbar.4 minecraft:carrot_on_a_stick run function du-in:lobby/item/quick

# Map Select Timer Announcements #
    execute if score #main mapCountdown matches 200 run function du-in:lobby/timers/map/ten

    execute if score #main mapCountdown matches 100 run function du-in:lobby/timers/map/five

    execute if score #main mapCountdown matches 80 run function du-in:lobby/timers/map/four

    execute if score #main mapCountdown matches 60 run function du-in:lobby/timers/map/three

    execute if score #main mapCountdown matches 40 run function du-in:lobby/timers/map/two

    execute if score #main mapCountdown matches 20 run function du-in:lobby/timers/map/one

# Map Select Bossbars #
    execute store result bossbar minecraft:map_countdown value run scoreboard players get #main mapCountdown


# Tell Players to Pick Character #
    title @a[tag=!kitPicked,tag=!spect,tag=!teamMode] actionbar {"text":"Open inventory to select a character!","color":"red","bold":true}


execute as @e[type=marker,tag=mapVote] at @s run function du-in:lobby/mapselect/map_vote


#Kit Select Music
execute unless entity @s[tag=musicOff] unless score #main pylonsDestroyed matches 3 run function du-in:music/lobby/kitselect

# Map Select Actions #
    execute if entity @s[scores={kitUse=1..}] run function du-in:lobby/kit_use/mp