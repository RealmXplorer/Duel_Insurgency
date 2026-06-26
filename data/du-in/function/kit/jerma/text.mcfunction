#Runs various tellraws associated with the character.

#Kit Info
execute if entity @s[scores={info=1}] run tellraw @s [{text:"Jerma",color:red,bold:true},{text:"\n Serial Killer Knife: ",color:blue,bold:true},{text:"Utilizes the power of every serial killer combined into one.",color:white,bold:false},{text:" (Sword)",color:gray,bold:false},{text:"\n Peep the Horror: ",color:gold,bold:true},{text:"Forces all players to peep the horror, including Jerma. One person who views will die.",color:white,bold:false},{text:"\n Sus: ",color:gray,bold:true},{text:"Climb into the vents.",color:white,bold:false}]

#Surrender
execute if entity @s[tag=surrender] run tellraw @s [{text:"You let go of the voices in your head...",color:gray,"italic": true}]

#Dream
execute if entity @s[tag=dream] run tellraw @s [{text:"Someone dreams of you, apparently...",color:gray,"italic": true}]

#Vision
execute if entity @s[tag=vision] run tellraw @s [{text:"You hear the calls of someone called \"Chat\"...",color:gray,"italic": true}]