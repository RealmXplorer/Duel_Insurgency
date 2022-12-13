#Change point color (depending on holiday theme)
execute unless score #main lobbyTheme matches 1 run function du-in:ingame/conquest/points/red_point
execute if score #main lobbyTheme matches 1 run function du-in:ingame/conquest/points/orange_point