#Run map Voting
    execute as @e[type=marker,tag=mapVote] at @s run function du-in:lobby/map_select/map_vote

# Map Select Bossbars #
    execute store result bossbar minecraft:map_countdown value run scoreboard players get #main mapCountdown

#Display titles to people who have not picked kit
    title @a[tag=!kitPicked,tag=!spectating,tag=!teamMode] actionbar {text:"Open inventory to select a character!",color:red,bold:true}

# Map Select Timer Announcements #
    # execute if score #main mapCountdown matches 200 at @a[tag=partyLeader] run function du-in:lobby/map_select/timers/ten

    # execute if score #main mapCountdown matches 100 at @a[tag=partyLeader] run function du-in:lobby/map_select/timers/five

    # execute if score #main mapCountdown matches 80 at @a[tag=partyLeader] run function du-in:lobby/map_select/timers/four

    # execute if score #main mapCountdown matches 60 at @a[tag=partyLeader] run function du-in:lobby/map_select/timers/three

    # execute if score #main mapCountdown matches 40 at @a[tag=partyLeader] run function du-in:lobby/map_select/timers/two

    # execute if score #main mapCountdown matches 20 at @a[tag=partyLeader] run function du-in:lobby/map_select/timers/one

#Pick Map#
execute if score #main mapCountdown matches ..1 run function du-in:maps/start/init
