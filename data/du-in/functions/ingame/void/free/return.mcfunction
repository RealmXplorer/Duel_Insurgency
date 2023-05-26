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

function du-in:ingame/endround/end_ending