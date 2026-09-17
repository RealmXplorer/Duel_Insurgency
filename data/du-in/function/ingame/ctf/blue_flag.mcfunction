#Blue Flag Captured
execute at @s[tag=!captured] as @a[tag=team1,distance=..1,tag=!spectating] run function du-in:ingame/ctf/blue/blue_captured

#Blue scores
execute at @s[tag=!captured] as @a[tag=team2,distance=..1,tag=flagGot] run function du-in:ingame/ctf/blue/blue_score

#Blue flag returned
execute if entity @s[tag=captured] unless entity @a[tag=flagGot,tag=team1] if score #main blueFlagTimer matches ..0 run function du-in:ingame/ctf/blue/blue_return
