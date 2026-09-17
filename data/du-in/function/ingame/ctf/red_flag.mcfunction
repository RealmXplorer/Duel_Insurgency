#Red Flag Stolen
execute at @s[tag=!captured] as @a[tag=team2,distance=..1,tag=!spectating] run function du-in:ingame/ctf/red/red_captured

#Red Scores
execute at @s[tag=!captured] as @a[tag=team1,distance=..1,tag=flagGot] run function du-in:ingame/ctf/red/red_score

#Red Flag Returned
execute if entity @s[tag=captured] unless entity @a[tag=flagGot,tag=team2] if score #main redFlagTimer matches ..0 run function du-in:ingame/ctf/red/red_return
