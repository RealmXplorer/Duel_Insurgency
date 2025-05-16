#Add 1 level
scoreboard players add @s level 1

#Announce level up
tellraw @s [{text:"Level Up!",color:gold,bold:true},{text:" (",color:gray},{"score":{"name":"@s","objective":"level"},color:blue},{text:"✫",color:blue},{text:")",color:gray}]

#Play sound
playsound minecraft:entity.player.levelup master @s

#Get level to set new cap
execute store result score @s expCap run scoreboard players get @s level

#Multiply by 10
scoreboard players operation @s expCap *= #main ten

#Add 100
scoreboard players operation @s expCap += #main hundred

#Give diamonds
scoreboard players add @s Diamonds 10

#Reset exp
scoreboard players set @s exp 0