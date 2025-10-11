#Set max lives for deathmatch
execute as @a[tag=partyLeader,limit=1] if score @s dmScale matches 5.. run scoreboard players set @s maxLives 5
execute as @a[tag=partyLeader,limit=1] if score @s dmScale matches 1 run scoreboard players set @s maxLives 7
execute as @a[tag=partyLeader,limit=1] if score @s dmScale matches 2 run scoreboard players set @s maxLives 10
execute as @a[tag=partyLeader,limit=1] if score @s dmScale matches 3 run scoreboard players set @s maxLives 1
execute as @a[tag=partyLeader,limit=1] if score @s dmScale matches 4 run scoreboard players set @s maxLives 3
#Cycle to first setting
execute as @a[tag=partyLeader,limit=1] if score @s dmScale matches 5.. run scoreboard players set @s dmScale 0

#Announce settings
execute if score @a[tag=partyLeader,limit=1] maxLives matches 5 run tellraw @a [{text:"Deathmatch Lives ",bold:true,color:red},{text:"Max 5",color:gray},{text:" (Default)",bold:true,color:green}]
execute if score @a[tag=partyLeader,limit=1] maxLives matches 7 run tellraw @a [{text:"Deathmatch Lives ",bold:true,color:red},{text:"Max 7 (Lengthy)",color:gray}]
execute if score @a[tag=partyLeader,limit=1] maxLives matches 10 run tellraw @a [{text:"Deathmatch Lives ",bold:true,color:red},{text:"Max 10 (Brutal)",color:gray}]
execute if score @a[tag=partyLeader,limit=1] maxLives matches 1 run tellraw @a [{text:"Deathmatch Lives ",bold:true,color:red},{text:"Max 1 (Instant)",color:gray}]
execute if score @a[tag=partyLeader,limit=1] maxLives matches 3 run tellraw @a [{text:"Deathmatch Lives ",bold:true,color:red},{text:"Max 3 (Quick)",color:gray}]