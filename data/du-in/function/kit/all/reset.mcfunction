#Reset kits
function du-in:kit/all/reset/init

#This function resets all character specific tags and scores.
# tag @s remove saac
#tag @s remove gaster
#tag @s remove springtrap
# tag @s remove flamethrower
#tag @s remove asrielCharge
#tag @s remove asrielSaber
#tag @s remove stolen
#tag @s remove givenStolen
# tag @s remove kickstarted
#tag @s remove broken
# tag @s remove thrown
# tag @s remove kitDone
#tag @s remove springLock
# tag @s remove deathDouble
#tag @s remove magicBag
#tag @s remove hornerWeapon
#tag @s remove brokenShield
#tag @s remove floweyDuration

tag @s remove secondExempt
tag @s remove hasSecond
tag @s remove hasTracker
scoreboard players set @s kitGender 0
tag @s remove musOverride
tag @s remove noMainWeapon
tag @s remove cooldown
tag @s remove undead
tag @s remove sus
scoreboard players reset @s ralseiTP
tag @s remove maxTP
scoreboard players set @s ventCooldown 0
tag @s remove ventCooldown
scoreboard players set @s saacMoneyCheck 0
scoreboard players set @s saacMoney 0
scoreboard players set @s saacMoneyDollar 0
tag @s remove airBlock
tag @s remove vended
tag @s remove kickstarted

#Important below
tag @s remove kitPicked


execute if entity @s[tag=!kitMenu,tag=!teamDead] run function du-in:kit/all/armor/armor
# scoreboard players reset @s asrielHitTimer
#scoreboard players reset @s asrielTimer
# scoreboard players reset @s tridentTimer
# scoreboard players reset @s trident
# scoreboard players reset @s asrielCharge
#scoreboard players reset @s saacDisTimer
#scoreboard players reset @s floweyHitTimer
#scoreboard players set @s saacCarry 0
#scoreboard players set @s yharimRage 0
#scoreboard players set @s kratosRage 0
# scoreboard players reset @s card
#scoreboard players reset @s skeletonMode
#scoreboard players reset @s cinderType

#scoreboard players set @s deathWeapSwitch 0

#Attributes
#function du-in:kit/all/attribute/reset

clear @s[tag=!kitMenu]