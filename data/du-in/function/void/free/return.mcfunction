tag @a remove free
tag @a remove cmap
stopsound @a ambient
stopsound @a record du-in:music.free
scoreboard players set #main pylonsDestroyed 0
kill @e[type=block_display,tag=void_door]
tag @a remove cavesLock
tag @a remove hiveLock
tag @a remove daLock
tag @a remove ebbotLock
tag @a remove d2Lock
tag @a remove flameLock
tag @a remove ricardoLock
tag @a remove lgLock
tag @a remove harvestLock
tag @a remove mirageLock
tag @a remove mazeLock
tag @a remove mcLock
tag @a remove zigLock
tag @a remove nethLock
tag @a remove moraLock
tag @a remove duneLock
tag @a remove bowlLock
tag @a remove wsLock
tag @a remove jermLock
tag @a remove hauntedLock
tag @a remove shLock
tag @a remove wwLock
tag @a remove mustafarLock
tag @a remove escLock
tag @a remove chancelLock
tag @a remove endLock
tag @a remove pazLock
tag @a remove ctLock


#Forceload lobbies
forceload add -1002 537 -963 499
forceload add 231 6 231 40
forceload add 2013 2019 1957 1966

#Forceload displays
forceload add 681 37 625 74
forceload add 200 100 215 119
forceload add 311 114 255 61

schedule clear du-in:music/free/free
function du-in:lobby/theme/default/switch
function du-in:ingame/endround/end_ending
forceload remove 8054 340 7886 187

#Remove Forceloads
forceload remove -1002 537 -963 499
forceload remove 231 6 231 40
forceload remove 681 37 625 74
forceload remove 200 100 215 119
forceload remove 2013 2019 1957 1966
forceload remove 311 114 255 61