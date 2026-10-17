##Traps
    #Warnings for lightning
    function du-in:void/hazard/bridge/warning

    #Fire traps
    function du-in:void/hazard/fire/burn

##Win and Lose conditions
    #Win and Lose conditions for Pylons 2 and 3
    # execute if entity @a[tag=!win,scores={gonersKilled=..0},tag=partyLeader] if score #main wave matches 2.. run function du-in:void/end/win
    # execute if entity @a[scores={gonersKilled=..0},tag=partyLeader] if score #main wave matches 2.. run function du-in:void/end/explode

    execute if entity @a[tag=!win,tag=partyLeader] if score #main gonersKilled matches ..0 if score #main wave matches 2.. run function du-in:void/end/win
    execute if score #main gonersKilled matches ..0 if score #main wave matches 2 run function du-in:void/end/explode

##Enemies
    # #Spawn enemies
    #execute unless entity @a[tag=win] if entity @a[scores={gonersKilled=1..},tag=partyLeader] if score #main gonerCount <= #gonerMax gonerCount run function du-in:void/spawn/wave/wave_select
    execute unless entity @a[tag=win] if score #main gonersKilled matches 1.. if score #main gonerCount <= #gonerMax gonerCount run function du-in:void/spawn/wave/wave_select

    #Count currently living goner entities in the match
    #execute store result score #current gonerCount as @e[type=skeleton,tag=gonerThing] run scoreboard players add #current gonerCount 0

    #Target markers ONCE if living goners are below max cap and at least 1 player is 5..20 blocks away
    #execute if score #current gonerCount < #gonerMax gonerCount as @e[type=marker,tag=gonerSpawn] at @s if entity @a[tag=void,tag=!voidSpect,distance=5..20] run function du-in:void/spawn/wave/wave_select

    #Store goners killed in bossbar
    # execute store result bossbar gast:pylon value run scoreboard players get @a[gamemode=adventure,tag=void,limit=1] gonersKilled
    execute store result bossbar gast:pylon value run scoreboard players get #main gonersKilled

    #Wave test
    #execute if entity @a[tag=!win,scores={gonersKilled=..0},tag=!waveBreak,tag=partyLeader] if score #main wave matches ..1 run function du-in:void/wave_end
    execute if entity @a[tag=!win,tag=!waveBreak,tag=partyLeader] if score #main gonersKilled matches ..0 if score #main wave matches ..1 run function du-in:void/wave_end
