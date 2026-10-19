        #Self       
        tag @s remove ringCorrupted
        scoreboard players reset @s sauronTimer
        tag @s remove sauronDuration
        
        #Break Function if game is still going
        execute unless entity @a[tag=win] run return fail

        #Other Players
        scoreboard players reset @a seenTimer
        tag @a remove seenDuration
        tag @a remove hasRing
        scoreboard players reset @a ringTimer
        #tag @a remove sauronHit
