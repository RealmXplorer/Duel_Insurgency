#Move to next event
#scoreboard players add #main dfcQueue 1

execute if score #main dfcQueue = #main dfcMax run tag @a remove specialEvent
execute if score #main dfcQueue = #main dfcMax run tag @a remove audience

#End Event
function du-in:ingame/endround/lobby_return

#Continue Event
#execute unless score #main dfcQueue = #main dfcMax run function du-in:maps/dfc/next_round

#Remove Special Event tags
# bossbar set minecraft:map_countdown visible false
# tag @a remove cl
# tag @a remove cmap
# tag @a remove audience
# tag @a remove specialEvent