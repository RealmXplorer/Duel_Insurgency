#End one and five second Loops#
schedule clear du-in:ingame/scheduled/one_sec_loop
schedule clear du-in:ingame/scheduled/five_sec_loop
schedule clear du-in:ingame/scheduled/three_sec_loop
schedule clear du-in:ingame/scheduled/ambience/init
schedule clear du-in:void/lobby_amb
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
execute if entity @a[tag=lobby] run function du-in:lobby/reset/complete

#scoreboard players reset #main startSeq
tag @a remove startgame
tag @a remove kitPicked
tag @a remove subLobby
tag @a remove vendingMachine

execute as @a[tag=randomSkins] run function du-in:skins/random

execute as @a run function du-in:storage/reset

bossbar set minecraft:map_countdown visible false

#Void stuff
stopsound @a master minecraft:music.suffocation
function du-in:music/void/schedule_clear
bossbar set gast:pylon visible false
bossbar set gast:pylon4 visible false

#scoreboard players reset @a map
execute unless entity @a[tag=devMode] run scoreboard players add @a[tag=!spectating,tag=!falseWin] gamesPlayed 1
execute unless entity @a[tag=devMode] run scoreboard players add @a[tag=win,tag=!falseWin,tag=!voidLose,tag=!tie] Wins 1
execute unless entity @a[tag=devMode] run scoreboard players add @a[tag=win,tag=!falseWin,tag=!voidLose,tag=!tie] winStreak 1
execute unless entity @a[tag=devMode] run scoreboard players set @a[tag=lose,tag=!spectating] winStreak 0
execute unless entity @a[tag=devMode] run scoreboard players add @a[tag=win] Diamonds 25
#execute unless entity @a[tag=devMode] run scoreboard players add @a[tag=lose] Losses 1

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
scoreboard players reset #main redPoints
scoreboard players reset #main bluePoints



scoreboard players reset * team
scoreboard players reset * deathTimer
scoreboard players reset * teamDeaths
tag @a remove teamDead



scoreboard players reset * killStreak
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
        scoreboard players set @a saacMoneyCheck 0
        scoreboard players set @a saacMoney 0
        scoreboard players set @a saacMoneyDollar 0
        tag @a remove kickstarted

    #Paz#
        tag @a remove vended
        scoreboard players set @a weaponTier 0
        tag @a remove fortniteCard
        tag @a remove blakeDuration
        scoreboard players reset @a blakeTimer

    #Flowey#
        scoreboard players reset @a floweyHitTimer

    #Asriel#
        scoreboard players reset @a asrielCharge
        scoreboard players reset @a asrielTimer
        tag @a remove asrielSaber
        tag @a remove asrielCharge

    #Chungus#
        tag @a remove bigChungus

    #Saul#
        tag @a remove saul

    #Sans#
        tag @a remove sansHitDuration
        scoreboard players reset @a sansHitTimer

    #Sauron#
        tag @a remove looking
        tag @a remove ringCorrupted
        tag @a remove seenDuration
        scoreboard players reset @a sauronTimer
        scoreboard players reset @a seenTimer

    #Asgore#
        scoreboard players reset * tridentTimer
        tag @a remove thrown

    #Zombie
        tag @a remove airBlock
        tag @a remove groundBlock

    #Impostor#
        scoreboard players set @a ventCooldown 0
        tag @a remove drip

    #Jerma#
        tag @a remove sus
        scoreboard players reset @a jermaTimer
        tag @a remove jermaDuration
        tag @a remove peepedHorror
        tag @a remove monsterTarget
        tag @a remove selectedTarget
        tag @a remove hasOnionRing
    
    #Jack Black#
        tag @a remove jackBlack
        scoreboard players reset @a jockeyTimer
        tag @a remove jockeyDuration
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
        scoreboard players reset @a unicornTimer

        tag @a remove unicornDuration

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
        scoreboard players set @a TPSound 0
        tag @a remove maxTP

    #Judy#
        scoreboard players set @a judyInspire 0
        tag @a remove inspireFull
        tag @a remove inspireSabotage
        tag @a remove judySleep
        
    #Gumball and Darwin
        tag @a remove darwin
        tag @a remove darwinDuration
        scoreboard players reset * gumballClassicFake

    #Nick Wilde#
        tag @a remove sabotaged
        tag @a remove empower

    #Bogo#
        tag @a remove bogoCharge
        scoreboard players reset @a bogoShieldTimer
        scoreboard players reset @a bogoTimer
        
    #Zombie#
        tag @a remove grave

    #Knight
        tag @a remove diving

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
        tag @a remove cinderUsed

    #Beetlejuice
        scoreboard players reset @a beetleGhostTimer
        scoreboard players reset @a showTimer
        tag @a remove beetleJuice
        tag @a remove showTimeDuration
        tag @a remove scareDuration
        tag @a remove maxBeetleDamage
        scoreboard players set @a beetleDamage 0
        
tag @a remove hasRing
tag @a remove sauronHit
tag @a remove wildeHit
tag @a remove chungusThrowdown
tag @a remove diveHit
tag @a remove horrorStart
tag @a remove redBuster
tag @a remove inTheModel

#HOWW???
tag @a remove projectile
tag @a remove ctfClose
scoreboard players reset @a Lives

#Give back default skins
execute as @a[tag=poolParty] run function du-in:maps/pool_party/revert

##INGAME TAG AND SCORE RESETS
#Sub-Gamemodes
    scoreboard players reset @a ranMode
    scoreboard players reset @a spamMode
    scoreboard players reset @a timedMode
    scoreboard players reset @a vendMode
    tag @a remove ranMode
    tag @a remove vendingMode
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
function du-in:lobby/reset/item

execute as @a[tag=!timeFree] run function du-in:other/stats


scoreboard players reset #main matchDeaths

tag @a remove glowing

scoreboard players reset @a ambience
#WINEND#

#END ROUND#
title @a[tag=partyLeader,tag=!timeFree,tag=!specialEvent] title {text:'', color:red, bold:true}
title @a[tag=partyLeader,tag=!timeFree,tag=!specialEvent] subtitle {text:'Open inventory for more options!', color:red, bold:true}
title @a[tag=partyLeader,tag=!timeFree,tag=!specialEvent] actionbar {text:'Open inventory for more options!', color:red, bold:true}
execute as @a run function du-in:lobby/reset/item
clear @a
tag @a remove void
tag @a remove voidOut
tag @a remove voidReady
scoreboard players set @a voidReadyOnline 0


scoreboard players reset #main gonerCount
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
execute if score #main pylonsDestroyed matches 3.. run function du-in:void/lobby_amb
#execute unless entity @a[tag=partyLeader,tag=specialEvent] run function du-in:lobby/scheduled/gamemode_select
function du-in:lobby/scheduled/gamemode_select
