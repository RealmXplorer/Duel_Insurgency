#Bossbar if someone is on point
#execute store result bossbar bossbar:koth value run scoreboard players get @p[distance=..2,tag=!gasterInvisible,tag=!win,tag=!lose] kothTimer
#execute if entity @a[distance=..2] run bossbar set bossbar:koth name ["",{"selector":"@p[distance=..2,tag=playing]","bold":true,"color":"gold"},{"text":" is capturing the point!","bold":true,"color":"green"}]

#Bossbar if no one is on point
#execute unless entity @p[distance=..2] run bossbar set bossbar:koth value 0
#execute unless entity @p[distance=..2] run bossbar set bossbar:koth name ["",{"text":"Nobody is on the point!","bold":true,"color":"red"}]

execute as @a[tag=playing,distance=..2,tag=!gasterInvisible,tag=!win,tag=!lose] unless entity @s[scores={floweyHitTimer=0..}] run scoreboard players add @s kothTimer 1
