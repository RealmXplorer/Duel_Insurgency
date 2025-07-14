#Move to next event
scoreboard players add #main dfcQueue 1

#Continue Event
execute unless score #main dfcQueue = #main dfcMax run function du-in:maps/dfc/next_round

#End Event
execute if score #main dfcQueue = #main dfcMax run function du-in:ingame/endround/lobby_return
