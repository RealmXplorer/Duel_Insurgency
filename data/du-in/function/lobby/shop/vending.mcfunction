advancement revoke @s only du-in:shop/interact_vending

scoreboard players add @s tabbaVendingTalk 1
tellraw @s[scores={tabbaVendingTalk=1}] [{text:"<",color:white},{text:"Tabba",color:yellow},{text:"> Vending Machines can only be used by Saac and PearApplez. Saac must have 1 dollar and PearApplez must have a Fortnite Card! (1/3)"}]
tellraw @s[scores={tabbaVendingTalk=2}] [{text:"<",color:white},{text:"Tabba",color:yellow},{text:"> Saac will receive a kickstart, which grants a random buff, and PearApplez' weapon will be upgraded. (2/3)"}]
tellraw @s[scores={tabbaVendingTalk=3}] [{text:"<",color:white},{text:"Tabba",color:yellow},{text:"> Also know, that Impostor can sabotage one vending machine on the map at a time. (3/3)"}]
playsound minecraft:entity.villager.no voice @s ~ ~ ~ 1 1
scoreboard players set @s[scores={tabbaVendingTalk=3..}] tabbaVendingTalk 0