#If a player is near victory, add tag
execute as @a[tag=playing,tag=cIngame,tag=!classicEnd] if score @s killIngame >= #main testGoal run tag @s add closeWin

#Announce tagged player
execute as @a[tag=cIngame,tag=!teamMode,tag=!classicEnd,tag=closeWin] run title @s actionbar {"text":"","color":"gold","extra":[{"selector":"@s"},{"text":" is 3 kills away from winning!"}]}

#Play sound
#execute as @a run playsound minecraft:block.anvil.destroy master @a ~ ~ ~ 2 1.25

#Change bossbar color
#bossbar set bossbar:classic color red

#Start end of round music
tag @a[tag=!working,tag=!win,tag=!lose,tag=cIngame,tag=song] add songEnd
scoreboard players set @a[tag=song,tag=songEnd] music 0
#execute as @a[tag=song,tag=songEnd] run function du-in:ingame/scheduled/music/classic/default
#execute as @a[tag=song,tag=songEnd] run function du-in:music/ingame/stop/transition
stopsound @a[tag=song,tag=songEnd] record
execute as @a at @s run playsound minecraft:soundeffect.woosh master @s ~ ~ ~ .5 1
execute as @a at @s run playsound minecraft:soundeffect.woosh master @s ~ ~ ~ .5 2
execute as @a at @s run playsound minecraft:soundeffect.woosh master @s ~ ~ ~ .5 .5
function du-in:music/ingame/classic
tag @a[tag=songEnd] remove song

#End Function
tag @a add classicEnd