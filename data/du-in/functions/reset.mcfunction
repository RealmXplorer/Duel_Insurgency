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

scoreboard players reset #main startSeq
tag @a remove startgame
tag @a remove kitPicked

execute as @a[tag=randomSkins] run function du-in:other/skins/random

bossbar set minecraft:map_countdown visible false

scoreboard players reset @a map
scoreboard players add @a[tag=!spectating,tag=!falseWin,tag=!devMode] gamesPlayed 1
scoreboard players add @a[tag=win,tag=!falseWin,tag=!voidLose,tag=!tie,tag=!devMode] Wins 1
scoreboard players add @a[tag=win,tag=!falseWin,tag=!voidLose,tag=!tie,tag=!devMode] winStreak 1
scoreboard players set @a[tag=lose,tag=!spectating,tag=!devMode] winStreak 0
scoreboard players add @a[tag=win,tag=!devMode] Diamonds 100
scoreboard players add @a[tag=lose,tag=!devMode] Losses 1

advancement grant @a[tag=win,tag=!falseWin,scores={kit=1000..1007},tag=!voidLose,tag=!devMode] only du-in:unlock/unlockwin
advancement grant @a[scores={Wins=100..}] only du-in:unstop
advancement grant @a[scores={Wins=250..}] only du-in:champion
advancement grant @a[scores={Wins=500..}] only du-in:champion
advancement grant @a[scores={Wins=750..}] only du-in:ender
advancement grant @a[scores={Diamonds=100..}] only du-in:diamonds/diamond
advancement grant @a[scores={Diamonds=1000..}] only du-in:diamonds/diamondblock
advancement grant @a[scores={Diamonds=5000..}] only du-in:diamonds/netherite
advancement grant @a[scores={Diamonds=10000..}] only du-in:diamonds/netheriteblock
advancement grant @a[scores={Kills=500..}] only du-in:genocide
advancement grant @a[scores={Kills=1000..}] only du-in:death
advancement grant @a[scores={Kills=5000..}] only du-in:destroyer

#For Dev Mode
scoreboard players reset @a thrownBarrier

#scoreboard players reset #voting
#scoreboard players set #voting mapWinner 0
#scoreboard players reset @a mapVote
#scoreboard players reset #main mapCountdown
#scoreboard players reset #gamemode gamemode

tag @a remove startgame
bossbar set bossbar:gametimer visible false
bossbar set bossbar:gametimer color white

tag @a remove teamMode
tag @a remove asrielCharge

scoreboard players reset * trident
tag @a remove asrielSaber


#DELAY 2#
scoreboard players reset * kitUse
scoreboard players reset * kitTimer
scoreboard players reset #main redPoints
scoreboard players reset #main bluePoints
#tag @a remove blueFlag
#tag @a remove redFlag

#tag @e remove taken
scoreboard players reset * team
scoreboard players reset * deathTimer
scoreboard players reset * teamDeaths
tag @a remove teamDead
#tag @a remove dmFinale
#scoreboard players reset * flagGot
#tag @a remove cdone
#tag @a remove chalf
# tag @a remove kothHalf

#DELAY 3#
#tag @a remove blue
#tag @a remove red
#tag @a remove live
# scoreboard players reset * kothTimer
#scoreboard players reset #main playerCount
scoreboard players reset * killStreak
scoreboard players reset * killStreakDeaths
scoreboard players reset #main map
# tag @a remove flagGot

#DELAY 4#
execute if entity @a[tag=partyLeader,tag=!timeFree] unless entity @a[tag=partyLeader,tag=sidebarDisable] run scoreboard objectives setdisplay sidebar Kills
execute if entity @a[tag=partyLeader,tag=!timeFree,tag=sidebarDisable] run scoreboard objectives setdisplay sidebar
scoreboard players reset @a[tag=!working] kit
tag @a[tag=!working] remove playing


# team join lobby @a
# scoreboard players set #main lobby 1 
# scoreboard players set @a lobby 1


scoreboard objectives setdisplay below_name winStreak
scoreboard players reset * hit
tag @a remove armor
scoreboard objectives setdisplay list Diamonds
tag @a remove stolen
tag @a remove givenStolen
#tag @a remove abilities
#bossbar set bossbar:classic color white
scoreboard players set @a wildeTimer 0

# bossbar set minecraft:redkoth visible false
# bossbar set minecraft:bluekoth visible false
scoreboard players reset * saacMoneyChance
scoreboard players set #main kitOnline 0

#DELAY 5#
tag @a[tag=win,tag=!falseWin,tag=!voidLose,tag=!tie] add wonGame
tag @a[tag=win,tag=!falseWin,tag=!voidLose,tag=tie] add tiedGame
tag @a[tag=spectating] add wasSpect

# tag @a remove dmIngame
#tag @a remove cqIngame
# tag @a remove kothIngame
#tag @a remove cIngame
#tag @a remove exIngame
tag @a remove team1
tag @a remove team2


tag @a remove spectating
tag @a remove killstreak3
tag @a remove kickstarted
tag @a remove vended
scoreboard players set @a saacMoneyCheck 0
scoreboard players set @a saacMoney 0
scoreboard players set @a saacMoneyDollar 0
tag @a remove wilde
tag @e remove shutDown
tag @a remove spect
scoreboard players reset * healthHit
scoreboard players reset * healthTimer
tag @a remove grave
tag @a remove chungus
tag @a remove saul
# tag @a remove dmBlueFinale
# tag @a remove dmRedFinale
tag @a remove kitSounds
tag @a remove countStop
tag @a remove parry

tag @a remove monsterTarget
tag @a remove selectedTarget
tag @a remove hasOnionRing
tag @a remove slimeDeath

xp set @a 0 levels
scoreboard players set #main scoreMost 0

#RESET TEAM KOTH#
# scoreboard players reset * kothTeamTimer
#scoreboard players set Blue kothTeamTimer 0
tag @a remove kothMap
#Reset Attributes#
execute as @a run attribute @s minecraft:generic.armor base set 0
execute as @a run attribute @s minecraft:generic.armor_toughness base set 0
execute as @a run attribute @s minecraft:generic.knockback_resistance base set 0
execute as @a run attribute @s minecraft:generic.max_health base set 20
execute as @a run attribute @s minecraft:generic.attack_damage base set 0
execute as @a run attribute @s minecraft:generic.attack_speed base set 4
execute as @a run attribute @s minecraft:generic.movement_speed base set 0.10000000149

#Stop All Music#
execute as @a run function du-in:music/ingame/stop/all

##RESET GAMEPLAY SCORES AND TAGS

    #Remove Classic scores and tags#
        # tag @a remove closeWin
        # tag @a remove atHalf
        # tag @a remove ffaDone
        # scoreboard players reset * killIngame

    #Remove CTF ingame scores and tags#
        # tag @a remove ctfClose
        # tag @a remove ctfEnd

    #Reset Conquest scores and tags#
        # scoreboard players set Blue capturePoints 0
        # scoreboard players set Red capturePoints 0
        # function du-in:ingame/conquest/reset
        # tag @a remove cqHalf
        # tag @a remove cqClose
        # tag @a remove cqEnd

    # #Reset Deathmatch scores and tags
    #     scoreboard players reset * Lives



##RESET KIT SCORES AND TAGS

    #Remove Kill voiceline tag#
        tag @a remove killLine
    
    #Reset Saac scores and Tags#
        scoreboard players reset @a saacDisTimer
        tag @a remove broken
        scoreboard players set @a saacCarry 0
        tag @a remove saac
        scoreboard players reset @a kickstartDrink
        
    #Reset Flowey scores and tags#
        scoreboard players reset @a floweyHitTimer

    #Reset Asriel scores and tags#
        scoreboard players reset @a asrielHitLand
        scoreboard players reset @a asrielTimer

    #Remove chungus scores and tags#
        tag @a remove bigChungus

    #Reset Asgore scores and tags#
        scoreboard players reset * tridentTimer
        tag @a remove thrown

    #Remove Zombie scores and tags
        tag @a remove badBlock

    #Reset Impostor Scores and Tags#
        scoreboard players set @a vent 0
        scoreboard players set @a ventCooldown 0

    #Jack Horner#
        scoreboard players set @a magicCount 1
        tag @a remove umbrella
        tag @a remove magicBag
        tag @a remove poisonApple
        tag @a remove unicornBow
        scoreboard players reset @a crossbowShoot


tag @a remove charged
tag @a remove kitDone
scoreboard players set @a yharimRage 0
tag @a remove falseWin
gamerule doWeatherCycle false
weather clear
stopsound @a ambient

scoreboard players reset @a ranMode
scoreboard players reset @a spamMode
scoreboard players reset @a timedMode

tag @a remove ranMode
tag @a remove timedMode
tag @a remove spamMode

tag @a remove springLock


tag @a remove lorde
scoreboard players reset @a yharimTimer
tag @a remove runza
tag @a remove notEaten
tag @a remove ready
tag @a remove kitMenu
tag @a remove kitsListed
tag @a remove teamPicked
tag @a remove drip
function du-in:lobby/item_reset
scoreboard players reset @a secKitUse

scoreboard players set @a ralseiTP 0
tag @a remove undead
scoreboard players set @a TPSounds 0
scoreboard players reset @a jermaTimer
tag @a remove peepedHorror
tag @a remove secKitActions
tag @a remove sus
scoreboard players reset @a villagerEmeralds
execute as @a[tag=!timeFree] run function du-in:lobby/actions/stats

tag @a remove maxTP
tag @a remove rageMeter
scoreboard players set @a cardPower 0
tag @a remove darwin
tag @a remove maskless
scoreboard players reset * gumballClassicFake
tag @a remove super
tag @a remove magma

scoreboard players reset @a card
# tag @a remove kothEnd
scoreboard players set @a weaponTier 0
tag @a remove fortniteCard

tag @a remove parried
tag @a remove parryStart
scoreboard players set @a parryDuration 0
scoreboard players set @a parryCooldown 0

#Create new gamemode select label
kill @e[type=area_effect_cloud,tag=gamemodeLabel]
summon area_effect_cloud -983 16 517 {Duration:2147483647,Tags:["gamemodeLabel"],CustomNameVisible:1b}
function du-in:lobby/display/default/text

scoreboard players reset #main matchDeaths
scoreboard players set #main markTimer 0

tag @a remove deathMark
tag @a remove deathDouble
tag @a remove deathAbility
scoreboard players reset @a deathSwapTimer
tag @a remove sabotaged
tag @a remove empower
tag @a remove gatitoBlade

scoreboard players reset @a ambience
scoreboard players reset @a localAmb
#WINEND#

#END ROUND#
#tp @a[tag=!working] -999 13 517 -90 0
#spawnpoint @a -999 13 517
title @a[tag=partyLeader,tag=!timeFree] title {"text":"","color":"red","bold":true}
title @a[tag=partyLeader,tag=!timeFree] subtitle {"text":"Open inventory for more options!","color":"red","bold":true}
title @a[tag=partyLeader,tag=!timeFree] actionbar {"text":"Open inventory for more options!","color":"red","bold":true}
execute as @a run function du-in:lobby/item_reset
#tag @a[tag=!timeFree] add givenStats
clear @a
tag @a remove void
tag @a remove voidOut
scoreboard players reset @a[tag=lobby] killStreakDeaths
tag @a remove voidReady
scoreboard players set @a voidReadyOnline 0

tag @a remove midasHand
tag @a remove ethicalBug
tag @a remove hornerWeapon

#scoreboard players reset #main gonersKilled
scoreboard players reset #main gonersCount
scoreboard players set #main leastDeaths 0
scoreboard players reset @a realDeath
scoreboard players reset @a gonersKilled
scoreboard players set @a gameGonerKills 0
tag @a remove voidLose
tag @a remove phoenix
tag @a remove caveSpider
tag @a remove sus
tag @a remove suicide
scoreboard players reset @a dmDeath
scoreboard players set @a diedIngame 0

tag @a remove boneAttack

#Remove all Attributes
##Springtrap
execute as @a run attribute @s generic.attack_damage modifier remove f90a6e5b-203f-440c-9f8c-6bb52cc3ab56

##Yharim
execute as @a run attribute @s generic.movement_speed modifier remove cbda016f-2c7a-4655-a93f-e336ba656dd8
execute as @a run attribute @s generic.knockback_resistance modifier remove 1234f0a5-4a45-44d9-aa8b-45aed1442cd4
execute as @a run attribute @s minecraft:generic.armor modifier remove 3b5418c1-b839-4693-af55-f8a28778e52a
execute as @a run attribute @s minecraft:generic.armor_toughness modifier remove a9f75a0f-575c-4576-9d89-255823159571 
#Damage (sabotage)
execute as @a run attribute @s minecraft:generic.attack_damage modifier remove 9a9dafc4-1c54-4fd8-b2cb-0b8dd39dab5a

##Clairen
execute as @a run attribute @s generic.attack_damage modifier remove 0320fc2c-83b1-45dd-beb9-48f8d0236db2

##Puss
execute as @a run attribute @s generic.knockback_resistance modifier remove cd29f460-195f-43fe-8c60-48ef046cc7fa

##Death
execute as @a run attribute @s minecraft:generic.armor modifier remove b36faec5-3a6b-4564-ba7d-2787df4abace

##Cuphead
execute as @a run attribute @s generic.knockback_resistance modifier remove 8e7bcc8e-a4aa-4d1f-8828-cbea3350bd41

#Clear Effects#
effect clear @a
stopsound @a ambient
execute if score #main pylonsDestroyed matches 3.. run function du-in:lobby/void/wind

function du-in:lobby/scheduled/gamemode_select
#scoreboard players set #main onPoint 0