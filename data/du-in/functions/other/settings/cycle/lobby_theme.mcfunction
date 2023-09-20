scoreboard players add #main lobbyTheme 1
execute unless score #main pylonsDestroyed matches 3 run function du-in:lobby/display/holiday
setblock ~ ~ ~-2 stone_button[facing=north] destroy