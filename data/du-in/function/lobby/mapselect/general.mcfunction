#Run map Voting
    execute as @e[type=marker,tag=mapVote] at @s run function du-in:lobby/mapselect/map_vote

# Map Select Bossbars #
    execute store result bossbar minecraft:map_countdown value run scoreboard players get #main mapCountdown

#Display titles to people who have not picked kit
    title @a[tag=!kitPicked,tag=!spectating,tag=!teamMode] actionbar {text:"Open inventory to select a character!",color:red,bold:true}
