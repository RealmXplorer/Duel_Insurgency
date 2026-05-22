##Win and Lose conditions
    #Win condition
    execute if entity @a[tag=!win,scores={gonersKilled=..0},tag=partyLeader] run function du-in:void/end/win
    execute if entity @a[scores={gonersKilled=..0},tag=partyLeader] run function du-in:void/end/explode

##Enemies
    #Spawn enemies
    execute unless entity @a[tag=win] if entity @a[scores={gonersKilled=1..},tag=partyLeader] if score #main gonerCount <= #gonerMax gonerCount run function du-in:void/spawn/wave/wave1

    #Store goners killed in bossbar
    execute store result bossbar gast:pylon value run scoreboard players get @a[gamemode=adventure,tag=void,limit=1] gonersKilled

    #Wave test
    execute if entity @a[tag=!win,scores={gonersKilled=..0},tag=!waveBreak,tag=partyLeader] if score #main wave matches ..1 run function du-in:void/wave_end
