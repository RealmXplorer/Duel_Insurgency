        #Self       
        tag @s remove ringCorrupted
        scoreboard players reset @s sauronTimer
        
        #Other Players
        scoreboard players reset @a seenTimer
        tag @a remove seenDuration
        tag @a remove hasRing
        scoreboard players reset @a ringTimer
        #tag @a remove sauronHit
