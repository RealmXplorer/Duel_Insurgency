scoreboard players add @s vendMode 1
execute if entity @s[scores={vendMode=2..}] run scoreboard players set @s vendMode 0
execute if entity @s[tag=partyLeader,scores={vendMode=1}] run tag @a add vendingMode
execute unless entity @s[tag=partyLeader,scores={vendMode=1}] run tag @a remove vendingMode
execute if entity @s[tag=partyLeader,scores={vendMode=1}] run tellraw @a [{text:"Vending Mode",bold:true,color:gold},{text:" on",color:green},{text:" [WARNING! UNSTABLE!]",color:red,bold:true}]
execute if entity @s[tag=partyLeader,scores={vendMode=1}] run playsound minecraft:soundeffect.unlock master @a ~ ~ ~ .2 1.5
execute unless entity @s[tag=partyLeader,scores={vendMode=1}] run tellraw @a [{text:"Vending Mode",bold:true,color:gold},{text:" off",color:red}]
execute unless entity @s[tag=partyLeader,scores={vendMode=1}] run playsound minecraft:soundeffect.unlock master @a ~ ~ ~ .2 1.2

execute if entity @s[scores={thrownCocoa=1..}] run function du-in:other/clear_ground_items