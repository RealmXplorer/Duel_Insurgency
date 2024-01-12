tag @a remove free
tag @a remove cmap
stopsound @a ambient
stopsound @a record minecraft:music.free
scoreboard players set #main pylonsDestroyed 0
#scoreboard players set @a pylonNum 0
kill @e[type=block_display,tag=void_door]
tag @a remove cavesLock
tag @a remove hiveLock
tag @a remove daLock
tag @a remove ebbotLock
tag @a remove d2Lock
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


schedule clear du-in:music/free/free
function du-in:lobby/display/default/switch
function du-in:ingame/endround/end_ending