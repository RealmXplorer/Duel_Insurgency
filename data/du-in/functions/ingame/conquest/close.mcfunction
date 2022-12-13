#Announce team about to win
execute if score Blue capturePoints >= #main cqGoal if entity @a[tag=team2,tag=!cqClose] run tellraw @a ["",{"text":"Blue Team","bold":true,"color":"blue"},{"text":" is about to win!","bold":true,"color":"gray"}]
execute if score Red capturePoints >= #main cqGoal if entity @a[tag=team1,tag=!cqClose] run tellraw @a ["",{"text":"Red Team","bold":true,"color":"red"},{"text":" is about to win!","bold":true,"color":"gray"}]

#Start end of round music
tag @a[tag=song] add songEnd
execute as @a[tag=song,tag=songEnd] run function du-in:music/ingame/stop/transition
scoreboard players set @a[tag=song,tag=songEnd] music 0
tag @a[tag=songEnd] remove song

#Change bossbar colors
execute if score Blue capturePoints >= #main cqGoal run bossbar set conquest:blue color red
execute if score Red capturePoints >= #main cqGoal run bossbar set conquest:red color red

#End function
execute if score Red capturePoints >= #main cqGoal run tag @a[tag=team1] add cqClose
execute if score Blue capturePoints >= #main cqGoal run tag @a[tag=team2] add cqClose