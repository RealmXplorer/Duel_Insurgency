
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

schedule clear du-in:ingame/timed/half
schedule clear du-in:ingame/timed/near_end
schedule clear du-in:ingame/conquest/timed/ending

advancement grant @a[tag=win,tag=!devMode] only du-in:challenge/conquest_win
tag @a remove cqIngame