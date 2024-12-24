#This function resets all character specific tags and scores.
tag @s remove saac
tag @s remove gaster
tag @s remove flamethrower
tag @s remove asrielCharge
tag @s remove asrielSaber
tag @s remove stolen
tag @s remove givenStolen
tag @s remove kickstarted
tag @s remove vended
tag @s remove saacRod
tag @s remove badBlock
tag @s remove broken
tag @s remove thrown
tag @s remove kitDone
tag @s remove wilde
tag @s remove springLock
tag @s remove undead
tag @s remove sus
tag @s remove maxTP
tag @s remove deathDouble
tag @s remove cooldown
tag @s remove magicBag
tag @s remove hornerWeapon

#Important below
tag @s remove kitPicked


execute if entity @s[tag=!kitMenu,tag=!teamDead] run function du-in:kit/all/armor/armor
scoreboard players reset @s asrielHitTimer
scoreboard players reset @s asrielTimer
scoreboard players reset @s tridentTimer
scoreboard players reset @s trident
scoreboard players reset @s saacMoneyChance
scoreboard players set @s saacMoneyCheck 0
scoreboard players set @s saacMoney 0
scoreboard players set @s saacMoneyDollar 0
scoreboard players set @s vent 0
scoreboard players set @s ventCooldown 0
scoreboard players reset @s asrielHitLand
scoreboard players reset @s saacDisTimer
scoreboard players reset @s floweyHitTimer
scoreboard players set @s saacCarry 0
scoreboard players set @s yharimRage 0
scoreboard players set @s kratosRage 0
scoreboard players reset @s kickstartDrink
scoreboard players reset @s card
scoreboard players reset @s ralseiTP

scoreboard players set @s deathWeapSwitch 0

#Attributes
function du-in:kit/all/attribute/reset

clear @s[tag=!kitMenu]