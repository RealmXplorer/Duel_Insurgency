#Run map Voting
    execute as @e[type=marker,tag=mapVote] at @s run function du-in:lobby/map_select/vote/get_score

#Track number of players online (If a player has 'devMode' tag, certain functions will run regardless of player count)
    #execute unless entity @a[tag=devMode] run function du-in:other/player_count/default
    # execute unless entity @a[tag=devMode] if score #main kitOnline = #main online unless entity @a[tag=playing] if score #main mapCountdown matches -1.. unless entity @a[tag=countStop] run function du-in:other/player_count/countdown
    
    execute unless entity @a[tag=playing] if score #main mapCountdown matches -1.. unless entity @a[tag=countStop] run function du-in:other/player_count/countdown

    # execute if entity @a[tag=devMode] run function du-in:other/player_count/dev_mode
    #execute if entity @a[tag=devMode] run scoreboard players set #main online 2

# Map Select Bossbars #
    execute store result bossbar minecraft:map_countdown value run scoreboard players get #main mapCountdown

#Display titles to people who have not picked kit
    title @a[tag=!kitPicked,tag=!spectating,tag=!teamMode] actionbar {text:"Open inventory to select a character!",color:red,bold:true}

#Pick Map#
    execute if score #main mapCountdown matches ..1 run function du-in:maps/start/init
