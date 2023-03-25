#End one and five second Loops#
schedule clear du-in:ingame/other/one_sec_loop
schedule clear du-in:ingame/other/five_loop

#DELAY 1#
tag @a remove startgame
tag @a remove cl
tag @a remove dml
tag @a remove kothl
tag @a remove ctfl
tag @a remove cql
#tag @a remove exl
tag @a remove cmap
tag @a remove kitPicked
tag @a remove classicEnd
#advancement grant @a[tag=win,tag=!falseWin,scores={kit=1..8}] only du-in:minecraftwin
#advancement grant @a[tag=win,tag=!falseWin,scores={kit=9..16}] only du-in:undertalewin
#advancement grant @a[tag=win,tag=!falseWin,scores={kit=17..23}] only du-in:starwarswin
#advancement grant @a[tag=win,tag=!falseWin,scores={kit=24..32}] only du-in:zootopiawin
advancement grant @a[tag=win,tag=!falseWin,scores={kit=1000..1007}] only du-in:unlockwin
advancement grant @a[scores={Wins=100..}] only du-in:unstop
advancement grant @a[scores={Wins=250..}] only du-in:champion
advancement grant @a[scores={Wins=500..}] only du-in:champion
advancement grant @a[scores={Wins=750..}] only du-in:ender
advancement grant @a[scores={Diamonds=100..}] only du-in:diamond
advancement grant @a[scores={Diamonds=1000..}] only du-in:diamondblock
advancement grant @a[scores={Diamonds=5000..}] only du-in:netherite
advancement grant @a[scores={Diamonds=10000..}] only du-in:netheriteblock
advancement grant @a[scores={Kills=500..}] only du-in:genocide
advancement grant @a[scores={Kills=1000..}] only du-in:death
advancement grant @a[scores={Kills=5000..}] only du-in:destroyer
scoreboard players set Red classicTeamKills 0
scoreboard players set Blue classicTeamKills 0
scoreboard players set #main classicMost 0
scoreboard players reset #voting
scoreboard players set #voting mapWinner 0
scoreboard players reset @a mapVote
#scoreboard players reset #main kitCountdown
scoreboard players reset #main mapCountdown
scoreboard players reset #gamemode gamemode
bossbar set minecraft:classicred visible false
bossbar set minecraft:classicblue visible false
bossbar set conquest:blue visible false
bossbar set conquest:red visible false
bossbar set conquest:blue color white
bossbar set conquest:red color white
scoreboard players set #main cRedPoints 0
tag @a remove teamMode
tag @a remove asrielCharge
tag @a remove dmOut
tag @a remove dmClose
scoreboard players set #main cBluePoints 0
scoreboard players reset * trident
tag @a remove asrielSaber
tag @a remove dmClose
scoreboard players set #main kBluePoints 0
scoreboard players set #main kRedPoints 0

#DELAY 2#
scoreboard players reset * kitUse
scoreboard players reset * kitTimer
scoreboard players reset * ctfKills
scoreboard players reset #main redPoints
scoreboard players reset #main bluePoints
scoreboard players reset * ctfMap
tag @a remove blueFlag
tag @a remove redFlag
bossbar set du-in:bluectf value 0
bossbar set du-in:redctf value 0
bossbar set du-in:bluectf visible false
bossbar set du-in:redctf visible false
tag @e remove taken
scoreboard players reset * team
scoreboard players reset * deathTimer
scoreboard players reset * teamDeaths
tag @a remove teamDead
scoreboard players add @a[tag=win] Diamonds 100
scoreboard players add @a[tag=lose] Losses 1
tag @a remove dmFinale
scoreboard players reset * flagGot
scoreboard players set @e kBluePoints 0
scoreboard players set @e kRedPoints 0
tag @a remove cdone
tag @a remove chalf
tag @a remove kothHalf

#DELAY 3#
tag @a remove blue
tag @a remove red
tag @a remove live
scoreboard players reset * kothTimer
tag @a remove dmDead
scoreboard players reset #main playerCount
scoreboard players reset * hitFail
scoreboard players reset * killStreak
scoreboard players reset * killStreakDeaths
scoreboard players reset * cMap
scoreboard players reset * kMap
scoreboard players reset * ctfMap
scoreboard players reset * cqMap
scoreboard players reset #main map
tag @a remove flagGot
scoreboard players reset #main redTeamCount
bossbar set minecraft:classicblue color white
bossbar set minecraft:classicred color white
tag @a remove dmClose
#execute as @a run scoreboard players operation @s compScore = @s winRatio
#execute as @a run scoreboard players operation @s compScore += @s killDeathRatio

#DELAY 4#
execute unless entity @a[tag=partyLeader,tag=sidebarDisplay] run scoreboard objectives setdisplay sidebar Kills
scoreboard players reset @a[tag=!working] kit
tag @a[tag=!working] remove playing


# team join lobby @a
# scoreboard players set #main lobby 1 
# scoreboard players set @a lobby 1


scoreboard objectives setdisplay belowName winStreak
scoreboard players reset * hitLand
scoreboard players reset * hit
tag @a remove armor
scoreboard objectives setdisplay list Diamonds
tag @a remove stolen
tag @a remove givenStolen
#tag @a remove abilities
tag @a remove gasterUse
scoreboard players set #main blueFlagCooldown 0
scoreboard players set #main redFlagCooldown 0
scoreboard players reset #main blueFlagTimer
scoreboard players reset #main redFlagTimer
bossbar set bossbar:classic color white
scoreboard players reset #main blueTeamCount
scoreboard players set @a wildeTimer 0
tag @a remove sans
bossbar set minecraft:redkoth visible false
bossbar set minecraft:bluekoth visible false
scoreboard players reset * saacMoneyChance
scoreboard players set #main kitOnline 0

#DELAY 5#
tag @a[tag=win,tag=!falseWin] add wonGame
tag @a[tag=spectating] add wasSpect
tag @a remove dmIngame
tag @a remove ctfIngame
tag @a remove cqIngame
tag @a remove kothIngame
tag @a remove cIngame
#tag @a remove exIngame
tag @a remove team1
tag @a remove team2
scoreboard players reset @e teamCount
scoreboard players add @a[tag=!spectating,tag=!falseWin] gamesPlayed 1
scoreboard players add @a[tag=win,tag=!falseWin] Wins 1
scoreboard players add @a[tag=win,tag=!falseWin] winStreak 1
scoreboard players set @a[tag=lose,tag=!spectating] winStreak 0
tag @a remove spectating
tag @a remove killstreak3
tag @a remove kothHalf
tag @a remove kickstarted
tag @a remove vended
scoreboard players set @a saacMoneyCheck 0
scoreboard players set @a saacMoney 0
scoreboard players set @a saacMoneyDollar 0
tag @a remove wilde
tag @a remove gaster
tag @e remove shutDown
tag @a remove spect
scoreboard players reset * healthHit
scoreboard players reset * healthTimer
tag @a remove grave
tag @a remove chungus
tag @a remove saul
tag @a remove dmBlueFinale
tag @a remove dmRedFinale
tag @a remove kitParticles
tag @a remove kitSounds
tag @a remove countStop
xp set @a 0 levels
scoreboard players set #main classicMost 0

#RESET TEAM KOTH#
execute if entity @a[tag=lobby,tag=!playing] run scoreboard players set Red kothTeamTimer 0
execute if entity @a[tag=lobby,tag=!playing] run scoreboard players set Blue kothTeamTimer 0
execute store result score Red kothTeamTimer run scoreboard players get #main kRedPoints
execute store result score Blue kothTeamTimer run scoreboard players get #main kBluePoints

#Reset Attributes#
execute as @a run attribute @s minecraft:generic.armor base set 0
execute as @a run attribute @s minecraft:generic.armor_toughness base set 0
execute as @a run attribute @s minecraft:generic.knockback_resistance base set 0
execute as @a run attribute @s minecraft:generic.max_health base set 20
execute as @a run attribute @s minecraft:generic.attack_damage base set 0
execute as @a run attribute @s minecraft:generic.attack_speed base set 4
execute as @a run attribute @s minecraft:generic.movement_speed base set 0.10000000149

#Clear Effects#
effect clear @a

#Stop All Music#
execute as @a run function du-in:music/ingame/stop/all

##RESET GAMEPLAY SCORES AND TAGS

    #Reset ability use score#
        scoreboard players reset * abilityUse

    #Remove Classic scores and tags#
        tag @a remove closeWin
        tag @a remove atHalf
        tag @a remove ffaDone
        scoreboard players reset * killIngame

    #Remove CTF ingame scores and tags#
        tag @a remove ctfClose
        tag @a remove ctfEnd


    #Reset Ring scores and tags#
        scoreboard players reset @a ringDeath
        tag @a remove inRing
        tag @a remove ring1
        tag @a remove ring2
        tag @a remove ringMap
        tag @a remove justInRing

    #Reset different hit scores#
        scoreboard players reset @a palpsHit

    #Reset Conquest scores and tags#
        scoreboard players set Blue capturePoints 0
        scoreboard players set Red capturePoints 0
        function du-in:ingame/conquest/reset
        tag @a remove cqHalf
        tag @a remove cqClose
        tag @a remove cqEnd

    #Reset Deathmatch scores and tags
        scoreboard players reset * Lives



##RESET KIT SCORES AND TAGS

    #Remove Kill voiceline tag#
        tag @a remove killLine
    
    #Reset Saac scores and Tags#
        scoreboard players reset @a saacDisTimer
        tag @a remove broken
        scoreboard players set @a saacCarry 0
        scoreboard players reset @a saacHit
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
tag @a remove springLock
tag @a remove lorde
scoreboard players reset @a yharimTimer
tag @a remove runza
tag @a remove notEaten
tag @a remove ready
tag @a remove kitMenu
tag @a remove kitsListed
tag @a remove kitPicked
tag @a remove teamPicked
function du-in:lobby/item_reset
scoreboard players reset @a secKitUse
scoreboard players reset #main startSeq
tag @a add givenStats

#Kill Entities#
tp @e[type=!player,tag=mapSpecific] 216 0 40
kill @e[type=!player,tag=mapSpecific]
kill @e[tag=asgoreFire]
kill @e[nbt={inGround:1b}]
kill @e[type=item,nbt={Item:{tag:{weaponItem:1b}}}]
kill @e[type=!player,tag=grave]
kill @e[tag=redFlagItem]
kill @e[tag=blueFlagItem]
kill @e[type=armor_stand,tag=papyrusBone]
kill @e[type=marker,tag=kyloHitPos]
kill @e[type=ender_pearl,tag=blakeTP]
#kill @e[type=marker,tag=spawnPoint]
kill @e[tag=clairenField]
kill @e[tag=slime]

bossbar set minecraft:map_countdown visible false
scoreboard players set @a ralseiTP 0
tag @a remove undead
scoreboard players set @a TPSounds 0
scoreboard players reset @a jermaTimer
tag @a remove peepedHorror
tag @a remove secKitActions
tag @a remove sus
scoreboard players reset @a villagerEmeralds
execute as @a run function du-in:lobby/actions/stats
tag @a remove maxTP
tag @a remove rageMeter
scoreboard players set @a cardPower 0
tag @a remove darwin
tag @a remove maskless
scoreboard players reset * gumballClassicFake
tag @a remove super
tag @a remove magma

scoreboard players reset @a card
tag @a remove kothEnd
scoreboard players set @a weaponTier 0
tag @a remove fortniteCard

tag @a remove parried
tag @a remove parryStart
scoreboard players set @a parryCooldown 0

#Create new gamemode select label
kill @e[type=area_effect_cloud,tag=gamemodeLabel]
summon area_effect_cloud -983 16 517 {Duration:2147483647,Tags:["gamemodeLabel"],CustomNameVisible:1b}
function du-in:lobby/display/default/text

scoreboard players reset #main matchDeaths
scoreboard players set #main matchKills 0
scoreboard players set #main markTimer 0
scoreboard players reset @a matchKills
tag @a remove deathMark
tag @a remove deathDouble
tag @a remove deathAbility
scoreboard players reset @a deathSwapTimer
tag @a remove sabotaged
scoreboard players reset @a pussDeaths
tag @a remove gatitoBlade

scoreboard players reset @a ambience
#WINEND#

#END ROUND#
#tp @a[tag=!working] -999 13 517 -90 0
#spawnpoint @a -999 13 517
title @a[tag=partyLeader] title {"text":"","color":"red","bold":true}
title @a[tag=partyLeader] subtitle {"text":"Open inventory for more options!","color":"red","bold":true}
title @a[tag=partyLeader] actionbar {"text":"Open inventory for more options!","color":"red","bold":true}
execute as @a run function du-in:lobby/item_reset
tag @a add givenStats
clear @a
scoreboard players reset @a[tag=lobby] killStreakDeaths