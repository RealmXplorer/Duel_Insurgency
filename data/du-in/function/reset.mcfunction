#End one and five second Loops#
schedule clear du-in:ingame/scheduled/one_sec_loop
schedule clear du-in:ingame/scheduled/five_sec_loop
schedule clear du-in:ingame/scheduled/half_sec_loop
schedule clear du-in:ingame/scheduled/three_sec_loop
schedule clear du-in:ingame/scheduled/ambience/init
schedule clear du-in:lobby/void/wind
#schedule clear du-in:ingame/scheduled/five_loop
advancement revoke @a only du-in:void/interact_void
advancement revoke @a only du-in:kit/bowl
advancement revoke @a only du-in:kit/mush_stew

#Gamemode specific resets
execute if entity @a[tag=cIngame] run function du-in:ingame/classic/reset
execute if entity @a[tag=dmIngame] run function du-in:ingame/deathmatch/reset
execute if entity @a[tag=kothIngame] run function du-in:ingame/koth/reset
execute if entity @a[tag=ctfIngame] run function du-in:ingame/ctf/reset
execute if entity @a[tag=cqIngame] run function du-in:ingame/conquest/reset
execute if entity @a[tag=lobby] run function du-in:lobby/full_reset

scoreboard players reset #main startSeq
tag @a remove startgame
tag @a remove kitPicked
tag @a remove subLobby

execute as @a[tag=randomSkins] run function du-in:skins/random

execute as @a run function du-in:storage/reset

bossbar set minecraft:map_countdown visible false

#scoreboard players reset @a map
execute unless entity @a[tag=devMode] run scoreboard players add @a[tag=!spectating,tag=!falseWin] gamesPlayed 1
execute unless entity @a[tag=devMode] run scoreboard players add @a[tag=win,tag=!falseWin,tag=!voidLose,tag=!tie] Wins 1
execute unless entity @a[tag=devMode] run scoreboard players add @a[tag=win,tag=!falseWin,tag=!voidLose,tag=!tie] winStreak 1
execute unless entity @a[tag=devMode] run scoreboard players set @a[tag=lose,tag=!spectating] winStreak 0
execute unless entity @a[tag=devMode] run scoreboard players add @a[tag=win] Diamonds 25
execute unless entity @a[tag=devMode] run scoreboard players add @a[tag=lose] Losses 1

#Advancements
execute unless entity @a[tag=devMode] run advancement grant @a[scores={Diamonds=200..}] only du-in:challenge/diamond_1
execute unless entity @a[tag=devMode] run advancement grant @a[scores={Diamonds=1000..}] only du-in:challenge/diamond_2
execute unless entity @a[tag=devMode] run advancement grant @a[scores={Diamonds=5000..}] only du-in:challenge/diamond_3
execute unless entity @a[tag=devMode] run advancement grant @a[scores={Diamonds=10000..}] only du-in:challenge/diamond_4

execute unless entity @a[tag=devMode] run advancement grant @a[scores={Kills=10..}] only du-in:challenge/kill_1
execute unless entity @a[tag=devMode] run advancement grant @a[scores={Kills=100..}] only du-in:challenge/kill_2
execute unless entity @a[tag=devMode] run advancement grant @a[scores={Kills=500..}] only du-in:challenge/kill_3
execute unless entity @a[tag=devMode] run advancement grant @a[scores={Kills=5000..}] only du-in:challenge/kill_4

#For Dev Mode
scoreboard players reset @a thrownBarrier

bossbar set bossbar:gametimer visible false
bossbar set bossbar:gametimer color white

tag @a remove teamMode

scoreboard players reset * trident


#DELAY 2#
scoreboard players reset * kitUse
scoreboard players reset * kitTimer
scoreboard players reset #main redPoints
scoreboard players reset #main bluePoints



scoreboard players reset * team
scoreboard players reset * deathTimer
scoreboard players reset * teamDeaths
tag @a remove teamDead



scoreboard players reset * killStreak
scoreboard players reset * killStreakDeaths
scoreboard players reset #main map


#DELAY 4#
execute if entity @a[tag=partyLeader,tag=!timeFree] unless entity @a[tag=partyLeader,tag=sidebarDisable] run scoreboard objectives setdisplay sidebar Kills
execute if entity @a[tag=partyLeader,tag=!timeFree,tag=sidebarDisable] run scoreboard objectives setdisplay sidebar

scoreboard players reset @a kit
tag @a remove playing



scoreboard objectives setdisplay below_name winStreak
scoreboard players reset * hit
tag @a remove armor
scoreboard objectives setdisplay list Diamonds

scoreboard players set #main kitOnline 0

#DELAY 5#
tag @a[tag=win,tag=!falseWin,tag=!voidLose,tag=!tie] add wonGame
tag @a[tag=win,tag=!falseWin,tag=!voidLose,tag=tie] add tiedGame
tag @a[tag=spectating] add wasSpect


tag @a remove team1
tag @a remove team2


tag @a remove spectating
tag @a remove killstreak3
tag @a remove spect
scoreboard players reset * healthHit
scoreboard players reset * healthTimer
tag @a remove countStop
tag @a remove cooldown

xp set @a 0 levels
scoreboard players set #main scoreMost 0

#Reset Attributes#
execute as @a run function du-in:kit/all/attribute/reset

#Stop All Music#
execute as @a run function du-in:music/ingame/stop/all

##RESET KIT SCORES AND TAGS

    #Saac#
        scoreboard players reset @a saacDisTimer
        tag @a remove broken
        scoreboard players set @a saacCarry 0
        tag @a remove saac
        scoreboard players reset @a kickstartDrink
        scoreboard players set @a saacMoneyCheck 0
        scoreboard players set @a saacMoney 0
        scoreboard players set @a saacMoneyDollar 0
        tag @a remove kickstarted
        scoreboard players reset * saacMoneyChance

    #Paz#
        tag @a remove vended
        scoreboard players set @a weaponTier 0
        tag @a remove fortniteCard

    #Flowey#
        scoreboard players reset @a floweyHitTimer

    #Asriel#
        scoreboard players reset @a asrielHitLand
        scoreboard players reset @a asrielTimer
        tag @a remove asrielSaber
        tag @a remove asrielCharge

    #Chungus#
        tag @a remove bigChungus
        tag @a remove chungus

    #Saul#
        tag @a remove saul

    #Sauron#
        tag @a remove looking
        tag @a remove ringCorrupted
        scoreboard players reset @a sauronTimer
        scoreboard players reset @a seenTimer
        scoreboard players reset @a ringInvisTimer
        
    #Asgore#
        scoreboard players reset * tridentTimer
        tag @a remove thrown

    #Zombie
        tag @a remove badBlock

    #Impostor#
        scoreboard players set @a vent 0
        scoreboard players set @a ventCooldown 0
        tag @a remove drip

    #Jerma#
        tag @a remove sus
        scoreboard players reset @a jermaTimer
        tag @a remove peepedHorror
        tag @a remove monsterTarget
        tag @a remove selectedTarget
        tag @a remove hasOnionRing
    
    #Jack Black#
        tag @a remove jackBlack
        scoreboard players reset @a jockeyTimer
        tag @a remove chickenJockey
        
    #Jack Horner#
        scoreboard players set @a magicCount 1
        tag @a remove umbrella
        tag @a remove magicBag
        tag @a remove poisonApple
        tag @a remove unicornBow
        tag @a remove midasHand
        tag @a remove ethicalBug
        tag @a remove hornerWeapon
        tag @a remove phoenix
        tag @a remove drinkMe
				tag @a remove theHatchet

        scoreboard players reset @a crossbowShoot
        scoreboard players reset @a shrunkTimer

        advancement revoke @a only du-in:kit/midas
        advancement revoke @a only du-in:kit/touch
        
    #Yharim#
        scoreboard players set @a yharimRage 0
        tag @a remove lorde
        scoreboard players reset @a yharimTimer
        scoreboard players reset @a yharimRageDuration
        tag @a remove rageMeter
        tag @a remove enraged

    #Kratos#
        scoreboard players set @a kratosRage 0
        scoreboard players reset @a kratosTimer
        scoreboard players reset @a kratosRageDuration
        tag @a remove kratosRage

    #Springtrap#
        tag @a remove springLock
        tag @a remove undead

    #Runza#
        tag @a remove runza
        tag @a remove notEaten
        
    #Ralsei#
        scoreboard players set @a ralseiTP 0
        scoreboard players set @a TPSounds 0
        tag @a remove maxTP

    #Gumball and Darwin
        tag @a remove darwin
        scoreboard players reset * gumballClassicFake

    #Nick Wilde#
        tag @a remove wilde
        tag @a remove sabotaged
        tag @a remove empower

    #Zombie#
        tag @a remove grave

    #Slime#
        tag @a remove magma

    #Cuphead#
        scoreboard players set @a cardPower 0
        tag @a remove super
        scoreboard players reset @a card

    #Villager#
        tag @a remove stolen
        tag @a remove givenStolen
        scoreboard players reset @a villagerEmeralds

    #Clairen#
        tag @a remove maskless

    #Puss in Boots#
        tag @a remove gatitoBlade

    #Death#
        tag @a remove deathMark
        scoreboard players set #main markTimer 0
        tag @a remove deathDouble
        tag @a remove deathAbility
        scoreboard players reset @a deathAbilityTimer
        scoreboard players reset @a deathSwapTimer
        
        scoreboard players reset @a skeletonMode

    #Cinder
        scoreboard players reset @a classSwapTimer
        scoreboard players reset @a cinderType
        scoreboard players reset @a cinderMagic
        scoreboard players reset @a cinderTimer

    #Judy
        tag @a remove judySleep
        
tag @a remove hasRing

##INGAME TAG AND SCORE RESETS
#Sub-Gamemodes
    scoreboard players reset @a ranMode
    scoreboard players reset @a spamMode
    scoreboard players reset @a timedMode
    tag @a remove ranMode
    tag @a remove timedMode
    tag @a remove spamClick

#Parry#
    tag @a remove parried
    tag @a remove parryStart
    scoreboard players set @a parryDuration 0
    scoreboard players set @a parryCooldown 0
    tag @a remove parry

#MISC#
    tag @a remove kitDone
    tag @a remove falseWin
    gamerule doWeatherCycle false
    weather clear
    stopsound @a ambient
    tag @a remove secKitActions
    scoreboard players reset @a secKitUse

tag @a remove ready
tag @a remove kitMenu
tag @a remove kitsListed
tag @a remove teamPicked
function du-in:lobby/item_reset

execute as @a[tag=!timeFree] run function du-in:lobby/actions/stats


scoreboard players reset #main matchDeaths

tag @a remove glowing

scoreboard players reset @a ambience
#WINEND#

#END ROUND#
title @a[tag=partyLeader,tag=!timeFree] title {text:'', color:red, bold:true}
title @a[tag=partyLeader,tag=!timeFree] subtitle {text:'Open inventory for more options!', color:red, bold:true}
title @a[tag=partyLeader,tag=!timeFree] actionbar {text:'Open inventory for more options!', color:red, bold:true}
execute as @a run function du-in:lobby/item_reset
clear @a
tag @a remove void
tag @a remove voidOut
scoreboard players reset @a killStreakDeaths
tag @a remove voidReady
scoreboard players set @a voidReadyOnline 0


scoreboard players reset #main gonersCount
scoreboard players set #main leastDeaths 0
scoreboard players reset @a realDeath
scoreboard players reset @a gonersKilled
scoreboard players set @a gameGonerKills 0
tag @a remove voidLose
tag @a remove caveSpider
tag @a remove suicide
scoreboard players reset @a dmDeath
scoreboard players set @a diedIngame 0
scoreboard players reset @a ringTimer
tag @a remove gasterInvisible

tag @a remove boneAttack

#Clear Effects#
effect clear @a
stopsound @a ambient
execute if score #main pylonsDestroyed matches 3.. run function du-in:lobby/void/wind

function du-in:lobby/scheduled/gamemode_select
