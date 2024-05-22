#If team is close to winning
execute if score #main bluePoints >= #main ctfClose run tellraw @a ["",{"text":"Blue Team","bold":true,"color":"blue"},{"text":" is about to win!","bold":true,"color":"gray"}]
execute if score #main redPoints >= #main ctfClose run tellraw @a ["",{"text":"Red Team","bold":true,"color":"red"},{"text":" is about to win!","bold":true,"color":"gray"}]

#Start end of round music
tag @a[tag=song] add songEnd
execute as @a[tag=song,tag=songEnd] run function du-in:music/ingame/stop/transition
scoreboard players set @a[tag=song,tag=songEnd] music 0
function du-in:music/ingame/ctf
tag @a[tag=songEnd] remove song

#End music
tag @a add ctfClose