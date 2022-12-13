#Set death countdown to whatever is set
execute store result score @s[tag=!cIngame,tag=!dmIngame,tag=!kothIngame] deathTimer run scoreboard players get #main dtCap

#Add 1 to deathCountdown
scoreboard players set @s deathCountdown 1

#Add tag teamDead
tag @s[tag=!cIngame,tag=!dmIngame,tag=!kothIngame] add teamDead

#Clear player
clear @s[tag=!cIngame,tag=!dmIngame,tag=!kothIngame]

#Clear item tags
function du-in:lobby/item_reset

#Initialize kit selection
scoreboard players set @s[tag=!cIngame,tag=!dmIngame,tag=!kothIngame,tag=!grave,tag=!ranMode] kitTheme 1
scoreboard players set @s[tag=!cIngame,tag=!dmIngame,tag=!kothIngame,tag=!grave,tag=!ranMode] kitList 7
tag @s[tag=!cIngame,tag=!dmIngame,tag=!kothIngame,tag=!grave,tag=!ranMode] add kitMenu
clear @s[tag=!cIngame,tag=!dmIngame,tag=!kothIngame] #du-in:armor