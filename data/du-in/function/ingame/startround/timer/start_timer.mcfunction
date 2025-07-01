#Clear lobby schedule
schedule clear du-in:lobby/scheduled/one_sec_loop
schedule clear du-in:lobby/void/wind
stopsound @a ambient

#Mark all players as in start game sequence
tag @a add startgame

#Stop all other music
stopsound @a record

#Set all spectators into spectator mode
#tag @a[tag=!kitPicked] add spectating
execute as @a[tag=spectating] run function du-in:ingame/spect
scoreboard players reset @a[tag=specating] Lives

#Clear all items
clear @a

#Reset justdied score
scoreboard players reset @a justdied
scoreboard players reset @a mapVote

#Give all players in game the "playing" tag
tag @a[tag=!spectating] add playing


##Kit stuff
    #Give player kit if they don't have one
    execute unless entity @s[scores={kit=1..}] run tag @s add random

    #Give all players weapons
    tag @a[scores={kit=31},limit=1] add hasRing
    scoreboard players set @a[tag=playing,gamemode=!spectator] weapCount 0
    #advancement revoke @s only du-in:utility/weap_count
    function du-in:kit/all/weapon/give
    execute as @a[tag=playing,gamemode=!spectator] run function du-in:kit/all/weapon/init
    execute as @a[tag=hasRing] run function du-in:kit/sauron/ring/give_ring

    #Set swap for secondary kits/weapons to 2 (this is to ensure that the weapon actually switches when rightclicked)
    scoreboard players set @a[scores={kit=22}] gumballSwitch 2
    scoreboard players set @a[scores={kit=27}] pussWeapSwitch 2
    scoreboard players set @a[scores={kit=28}] deathWeapSwitch 2

    #Reset scores for certain kits
    scoreboard players set @a[scores={kit=20}] yharimRage 0
    scoreboard players set @a[scores={kit=33}] kratosRage 0
    scoreboard players reset @a[scores={kit=11}] asrielTimer

    #Give Saac the "saac" tag
    #tag @a[scores={kit=1000},tag=!legMusicOff] add saac
    #execute as @a[scores={kit=1000}] run function du-in:ingame/startround/saac_reset

    #Mark Zombie and Springtrap as undead
    tag @a[scores={kit=2}] add undead
    tag @a[scores={kit=5}] add undead
    tag @a[scores={kit=30}] add undead
    tag @a[scores={kit=34}] add undead

    #Set Cuphead card power to 0 and play announcer
    scoreboard players set @a cardPower 0
    execute as @a[scores={kit=21}] at @s run playsound minecraft:cuphead.announce.start master @s ~ ~ ~ 10 1

##


#Start next title timer
scoreboard players set #main titleTimer2 80

#Remove all previous game tags, and start new game stats
tag @a remove wonGame
tag @a remove tiedGame
tag @a remove wasSpect
scoreboard players add #main gameNum 1
scoreboard players set @a gameDeaths 0
scoreboard players set @a gameKills 0
scoreboard players set @a gameParries 0

#Start initial ability cooldown
xp set @a[tag=playing] 100 levels

#Play countdown sound
execute as @a at @s run playsound minecraft:soundeffect.countdown master @s[tag=!dmend] ~ ~ ~ 0.5 1 1

#Hide map countdown
bossbar set minecraft:map_countdown visible false

#Set all players' attributes
execute as @a run function du-in:kit/all/attribute/set

#Make sure all players can see the game timer
bossbar set bossbar:gametimer players @a

#Start music
tag @a[tag=!musicOff] add song

#Non-timed classic
execute if entity @a[tag=cl,tag=!teamMode,tag=!timedMode,tag=partyLeader] run function du-in:ingame/startround/classic
execute if entity @a[tag=cl,tag=teamMode,tag=!timedMode,tag=partyLeader] run function du-in:ingame/startround/team_classic
#Timed classic
execute if entity @a[tag=cl,tag=timedMode,tag=!teamMode,tag=partyLeader] run function du-in:ingame/startround/timed_classic
execute if entity @a[tag=cl,tag=timedMode,tag=teamMode,tag=partyLeader] run function du-in:ingame/startround/timed_team_classic

#Non-timed Deathmatch
execute if entity @a[tag=dml,tag=!teamMode,tag=!timedMode] run function du-in:ingame/startround/deathmatch
execute if entity @a[tag=dml,tag=teamMode,tag=!timedMode] run function du-in:ingame/startround/team_deathmatch
#Timed Deathmatch
execute if entity @a[tag=dml,tag=timedMode,tag=!teamMode] run function du-in:ingame/startround/timed_deathmatch
execute if entity @a[tag=dml,tag=timedMode,tag=teamMode] run function du-in:ingame/startround/timed_team_deathmatch

#Non-timed KOTH
execute if entity @a[tag=kothl,tag=!teamMode,tag=!timedMode,tag=partyLeader] run function du-in:ingame/startround/koth
execute if entity @a[tag=kothl,tag=teamMode,tag=partyLeader] run function du-in:ingame/startround/team_koth
#Timed KOTH
execute if entity @a[tag=kothl,tag=!teamMode,tag=timedMode,tag=partyLeader] run function du-in:ingame/startround/timed_koth
execute if entity @a[tag=kothl,tag=teamMode,tag=timedMode,tag=partyLeader] run function du-in:ingame/startround/timed_team_koth

#CTF
execute if entity @a[tag=ctfl,tag=!timedMode] run function du-in:ingame/startround/ctf
execute if entity @a[tag=ctfl,tag=timedMode] run function du-in:ingame/startround/timed_ctf

#Conquest
execute if entity @a[tag=cql,tag=!timedMode] run function du-in:ingame/startround/conquest
execute if entity @a[tag=cql,tag=timedMode] run function du-in:ingame/startround/timed_conquest

#Reset Lobby functions, tags, and scores
scoreboard players reset #main lobby
scoreboard players reset @a lobby
execute as @a run function du-in:lobby/item_reset
tag @a remove ready
tag @a remove teamPicked
tag @a remove countStop
tag @a remove kitMenu

#Schedule ingame functions
schedule function du-in:ingame/scheduled/one_sec_loop 1s
schedule function du-in:ingame/scheduled/half_sec_loop 10t
function du-in:ingame/scheduled/five_sec_loop

function du-in:ingame/scheduled/ambience/init

#schedule function du-in:ingame/scheduled/five_loop 5s

advancement grant @a[tag=playing,tag=!devMode] only du-in:challenge/duel_reborn

#Join teams
team join Red @a[scores={team=1}]
team join Blue @a[scores={team=2}]

#Reset void functions
tag @a remove fromVoid
scoreboard players set #main voidReadyOnline 0

execute store result score @a map run scoreboard players get #main map