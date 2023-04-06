#POINT 1#
    #RED CAP#
        execute if entity @a[gamemode=adventure,distance=..3,tag=!teamDead,scores={team=1}] unless score #main lobbyTheme matches 1 run function du-in:ingame/conquest/points/red_color_check

    #BLUE CAP#
        execute if entity @a[gamemode=adventure,distance=..3,tag=!teamDead,scores={team=2}] unless score #main lobbyTheme matches 1 unless score #main lobbyTheme matches 3 run function du-in:ingame/conquest/points/blue_color_check

#Add points to team that possesses point
execute if entity @s[scores={pointCap=..-101}] unless entity @a[tag=win,tag=playing] run scoreboard players add Blue capturePoints 1
execute if entity @s[scores={pointCap=101..}] unless entity @a[tag=win,tag=playing] run scoreboard players add Red capturePoints 1

    #STATUS#
    execute if entity @a[gamemode=adventure,distance=..3,tag=!teamDead] run function du-in:ingame/conquest/status
