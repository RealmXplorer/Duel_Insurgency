tag @a remove free
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

function du-in:ingame/endround/end_time