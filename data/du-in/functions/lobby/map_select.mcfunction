# Map Select Actions #
    execute if entity @s[scores={kitUse=1..}] run function du-in:lobby/kit_use/mp

    # Team Mode Functions #
        execute if entity @s[tag=teamMode] run function du-in:lobby/team_select

    # Go Back from Map Select #
        execute if entity @s[scores={back=1..}] run function du-in:lobby/actions/map_back

    # Stop Countdown #
        execute if entity @s[scores={countStop=1..}] unless score #main mapCountdown matches 200 unless score #main mapCountdown matches 100 unless score #main mapCountdown matches 80 unless score #main mapCountdown matches 60 unless score #main mapCountdown matches 40 unless score #main mapCountdown matches ..20 if score #main mapCountdown matches 1.. run function du-in:lobby/actions/count_stop
    
    # Resume Countdown #
        execute if entity @s[scores={countGo=1..}] run function du-in:lobby/actions/count_go

    #Quick Play functionality #
        execute if entity @s[scores={quickPlay=1..}] run function du-in:lobby/actions/quick_play



# Map Select Items #
    # Give Back-Item #
        execute if entity @s[scores={lobby=3},nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:carrot_on_a_stick",Slot:8b}]},tag=partyLeader] run function du-in:lobby/item/back

    # Give Countdown Item #
        execute if entity @s[scores={lobby=3},nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:carrot_on_a_stick",Slot:0b}]},tag=partyLeader] run function du-in:lobby/item/count

    # Give Quickplay Item #
        execute if entity @s[scores={lobby=3},nbt=!{Inventory:[{tag:{fixedItem:1b},id:"minecraft:carrot_on_a_stick",Slot:4b}]},tag=!teamMode] run function du-in:lobby/item/quick

 #execute if entity @s[tag=mapRandom] run function du-in:maps/start/random

# Map Select Timer Announcements #
    execute if score #main mapCountdown matches 200 run function du-in:lobby/timers/map/ten

    execute if score #main mapCountdown matches 100 run function du-in:lobby/timers/map/five

    execute if score #main mapCountdown matches 80 run function du-in:lobby/timers/map/four

    execute if score #main mapCountdown matches 60 run function du-in:lobby/timers/map/three

    execute if score #main mapCountdown matches 40 run function du-in:lobby/timers/map/two

    execute if score #main mapCountdown matches 20 run function du-in:lobby/timers/map/one

# Map Select Bossbars #
    execute store result bossbar minecraft:map_countdown value run scoreboard players get #main mapCountdown

    #bossbar set minecraft:map_countdown players @s
    #execute if entity @s[tag=ready] run scoreboard players add #main kitOnline 1


# Tell Players to Pick Character #
    title @a[tag=!kitPicked,tag=!spect,tag=!teamMode] actionbar {"text":"Open inventory to select a character!","color":"red","bold":true}


execute as @e[type=marker,tag=mapVote] at @s run function du-in:lobby/mapselect/map_vote

#Random Timers#
    #Random count up#
        scoreboard players add @r[predicate=du-in:half_chance,tag=cmap] cMapRandom 1
        scoreboard players add @r[predicate=du-in:half_chance,tag=kothl] kMapRandom 1
        scoreboard players add @r[predicate=du-in:half_chance,tag=ctfl] ctfMapRandom 1
        scoreboard players add @r[predicate=du-in:half_chance,tag=cql] cqMapRandom 1
        #scoreboard players add @r[predicate=du-in:half_chance] exMapRandom 1
    
    #Random Count Reset#
        scoreboard players set @s[scores={cMapRandom=16..}] cMapRandom 1
        scoreboard players set @s[scores={kMapRandom=9..}] kMapRandom 1
        scoreboard players set @s[scores={ctfMapRandom=5..}] ctfMapRandom 1
        scoreboard players set @s[scores={cqMapRandom=1..}] cqMapRandom 1
        #scoreboard players set @s[scores={exMapRandom=3..}] exMapRandom 1

execute unless entity @s[tag=musicOff] run function du-in:music/lobby/kitselect