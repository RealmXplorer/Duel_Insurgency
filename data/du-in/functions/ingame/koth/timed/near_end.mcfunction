#Play sound
#playsound minecraft:block.anvil.destroy master @a[tag=koth,tag=kothend] ~ ~ ~ 2 1.25

#Start end of round music
#tag @a[tag=song,tag=!songEnd,tag=!win,tag=!lose] add songEnd
#scoreboard players set @a[tag=song,tag=songEnd] music 0
#execute as @a[tag=song,tag=songEnd] run function du-in:music/ingame/stop/transition
#tag @a remove song

#Announce ending
#execute if score #main kRedPoints >= #main tKothGoal run tellraw @a ["",{"text":"Red Team","bold":true,"color":"red"},{"text":" is about to win!","bold":true,"color":"gray"}]
#execute if score #main kBluePoints >= #main tKothGoal run tellraw @a ["",{"text":"Blue Team","bold":true,"color":"blue"},{"text":" is about to win!","bold":true,"color":"gray"}]
#execute if entity @s[tag=song,tag=songEnd,tag=!teamMode,tag=!startgame] run tellraw @a ["",{"selector":"@s","bold":true,"color":"red"},{"text":" is about to win!","bold":true,"color":"gold"}]
title @a actionbar {"text":"Time is running out!","color":"gold"}

#tag @a add kothEnd