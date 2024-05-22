    #Add to timer if player has kill
        scoreboard players add @s comboTimer 1

    #Reset Combo scores if timer is reached without kill
        execute if entity @s[scores={comboTimer=70..}] run function du-in:ingame/killstreaks/combo/reset