    #Add to timer if player has kill
        scoreboard players remove @s comboTimer 1

    #Reset Combo scores if timer is reached without kill
        execute if entity @s[scores={comboTimer=..0}] run function du-in:ingame/kill_combo/reset