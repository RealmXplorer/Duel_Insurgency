
tag @a remove cql

        scoreboard players set Blue capturePoints 0
        scoreboard players set Red capturePoints 0
        function du-in:ingame/conquest/reset_points
        tag @a remove cqHalf
        tag @a remove cqClose
        tag @a remove cqEnd

bossbar set conquest:blue visible false
bossbar set conquest:red visible false
bossbar set conquest:blue color white
bossbar set conquest:red color white

tag @a remove cqIngame