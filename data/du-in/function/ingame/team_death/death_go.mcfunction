#Set death countdown to whatever is set
execute store result score @s[tag=!cIngame,tag=!dmIngame,tag=!kothIngame] deathTimer run scoreboard players get #main dtCap

#Add 1 to deathCountdown
scoreboard players set @s deathCountdown 1

#Add tag teamDead
# tag @s[tag=!cIngame,tag=!dmIngame,tag=!kothIngame] add teamDead

# tag @s[tag=!cIngame,tag=!dmIngame,tag=!kothIngame] add changeTheme

# #Clear player
# clear @s[tag=!cIngame,tag=!dmIngame,tag=!kothIngame]

tag @s add teamDead

tag @s add changeTheme

#Clear player
clear @s

#Clear item tags
function du-in:lobby/reset/item

#Initialize kit selection
# clear @s[tag=!cIngame,tag=!dmIngame,tag=!kothIngame] #du-in:armor

# execute if entity @s[tag=!cIngame,tag=!dmIngame,tag=!kothIngame,tag=!grave,tag=!ranMode] run function du-in:lobby/kitmenu/init
clear @s #du-in:armor

execute if entity @s[tag=!grave,tag=!ranMode] run function du-in:lobby/kitmenu/init
