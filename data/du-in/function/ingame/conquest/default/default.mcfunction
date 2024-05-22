#If team is halfway to winning
execute if entity @a[tag=!cqHalf] if score Blue capturePoints >= #main cqHalf run function du-in:ingame/conquest/default/half
execute if entity @a[tag=!cqHalf] if score Red capturePoints >= #main cqHalf run function du-in:ingame/conquest/default/half

#If team is close to winning
execute if entity @a[tag=!cqClose,tag=team1] if score Red capturePoints >= #main cqGoal run function du-in:ingame/conquest/default/close
execute if entity @a[tag=!cqClose,tag=team2] if score Blue capturePoints >= #main cqGoal run function du-in:ingame/conquest/default/close

#If team wins
execute if score Red capturePoints >= #main cqCap run function du-in:ingame/conquest/default/ending
execute if score Blue capturePoints >= #main cqCap run function du-in:ingame/conquest/default/ending

#Store scores in bossbars
execute store result bossbar conquest:blue value run scoreboard players get Blue capturePoints
execute store result bossbar conquest:red value run scoreboard players get Red capturePoints