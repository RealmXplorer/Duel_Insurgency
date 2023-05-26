#function du-in:ingame/void/win
tag @a remove playing
tag @a remove cIngame
tag @a remove kothIngame
tag @a remove ctfIngame
tag @a remove cqIngame
tag @a remove song
tag @a remove songEnd
tag @a remove flagGot
tag @a remove team1
tag @a remove team2
tag @a remove void
tag @a remove voidOut
tag @a remove lobby
tag @a remove kothMap
function du-in:ingame/void/free/start
team leave @a
tag @a remove win
tag @a remove tie
tag @a remove lose
tp @a[tag=!free] @r[tag=free]

tag @a[tag=!free] add free