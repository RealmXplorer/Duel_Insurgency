#Find player with most kills
execute as @a[scores={killIngame=1..},tag=playing,tag=cIngame,sort=random] if score @s killIngame > #main classicMost store result score #main classicMost run scoreboard players get @s killIngame

#Add tag to track player with most kills
execute as @a[scores={killIngame=1..},tag=playing,tag=cIngame,sort=random] if score @s killIngame = #main classicMost run tag @s add mostKills

#Set bossbar value to player with most kills
execute store result bossbar bossbar:classic value run scoreboard players get @a[tag=mostKills,limit=1] killIngame

#Remove the tag from a player if they no longer are in lead
execute as @a[tag=mostKills] if score @s killIngame < #main classicMost run tag @s remove mostKills

#Set bossbar name
bossbar set bossbar:classic name [{selector:'@a[tag=mostKills,limit=1] ', bold:true, color:gold},{text:' is in the lead!', bold:true, color:red}]
execute unless entity @a[tag=mostKills] run bossbar set bossbar:classic name [{text:'Nobody ', bold:true, color:red},{text:'is in the lead!', bold:true, color:red}]