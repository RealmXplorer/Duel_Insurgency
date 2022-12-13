#Change point colors (depending on holiday theme)
execute unless score #main lobbyTheme matches 1 unless score #main lobbyTheme matches 3 run function du-in:ingame/conquest/points/blue_point
execute if score #main lobbyTheme matches 1 run function du-in:ingame/conquest/points/purple_point
execute if score #main lobbyTheme matches 3 run function du-in:ingame/conquest/points/green_point
