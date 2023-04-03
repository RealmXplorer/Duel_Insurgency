tag @a add startgame
stopsound @a record
tag @a[tag=!kitPicked,tag=!working] add spectating
clear @a
execute as @a[tag=spectating] run function du-in:ingame/spect
scoreboard players reset @a justdied
tag @a[tag=!working,tag=!spectating] add playing
scoreboard players set @a[tag=playing,gamemode=!spectator] weapCount 0
scoreboard players set @a[scores={kit=22}] gumballSwitch 2
scoreboard players set @a[scores={kit=27}] pussWeapSwitch 2
scoreboard players set @a[scores={kit=28}] deathWeapSwitch 2
scoreboard players set #main titleTimer2 80
scoreboard players set @a cardPower 0
#tag @a[tag=exl] add exIngame
#tag @a[tag=exl] add exl

tag @a remove wonGame
tag @a remove wasSpect
#tag @a remove mapOverride
tag @a[scores={kit=1000},tag=!legMusicOff] add saac
scoreboard players reset @a[tag=specating] Lives
#tag @a[scores={kit=20},tag=!stolen] add flamethrower
#scoreboard players set @a[tag=flamethrower] flamethrowerAmmo 7

tag @a[scores={kit=2}] add undead
tag @a[scores={kit=5}] add undead

xp set @a[tag=playing] 100 levels
tag @a add armor
tag @a remove voteRandom
execute at @a run playsound minecraft:soundeffect.countdown master @a[tag=!dmend] ~ ~ ~ 1000000 1 1
#bossbar set minecraft:kit_countdown visible false
bossbar set minecraft:map_countdown visible false
#advancement grant @a[tag=!mystery,tag=!mysteryHead,scores={kit=24}] only du-in:zootopia
#advancement grant @a[tag=!mystery,tag=!mysteryHead,scores={kit=9..16}] only du-in:undertale
#advancement grant @a[tag=!mystery,tag=!mysteryHead,scores={kit=1..8}] only du-in:minecraft
advancement grant @a[tag=!mystery,tag=!mysteryHead,scores={kit=1000..1007}] only du-in:unlock/unlock
advancement grant @a[scores={kit=42069}] only du-in:chungus
#tag @a remove mysteryHead
execute as @a run attribute @s minecraft:generic.attack_damage base set 1

bossbar set bossbar:gametimer players @a

tag @a[tag=!working,tag=!musicOff] add song
execute if entity @a[tag=cl,tag=!teamMode,tag=!timedMode,tag=partyLeader] run function du-in:ingame/startround/classic
execute if entity @a[tag=cl,tag=teamMode,tag=!timedMode,tag=partyLeader] run function du-in:ingame/startround/team_classic

execute if entity @a[tag=cl,tag=timedMode,tag=!teamMode,tag=partyLeader] run function du-in:ingame/startround/timed_classic
execute if entity @a[tag=cl,tag=timedMode,tag=teamMode,tag=partyLeader] run function du-in:ingame/startround/timed_team_classic

execute if entity @a[tag=dml] run function du-in:ingame/startround/deathmatch

execute if entity @a[tag=kothl,tag=!teamMode,tag=!timedMode,tag=partyLeader] run function du-in:ingame/startround/koth
execute if entity @a[tag=kothl,tag=teamMode,tag=partyLeader] run function du-in:ingame/startround/team_koth

execute if entity @a[tag=kothl,tag=!teamMode,tag=timedMode,tag=partyLeader] run function du-in:ingame/startround/timed_koth
execute if entity @a[tag=kothl,tag=teamMode,tag=timedMode,tag=partyLeader] run function du-in:ingame/startround/timed_team_koth

execute if entity @a[tag=ctfl] run function du-in:ingame/startround/ctf
execute if entity @a[tag=cql] run function du-in:ingame/startround/conquest


execute as @a[scores={kit=1000}] run function du-in:ingame/startround/saac_reset
scoreboard players set @a[scores={kit=20}] yharimRage 0
scoreboard players reset #main lobby
scoreboard players reset @a lobby
#execute as @a at @a run function du-in:music/lobby/stop/kitselect
scoreboard players reset @a asrielTimer
scoreboard players add #main gameNum 1
scoreboard players set @a gameDam 0
scoreboard players set @a gameHit 0
scoreboard players set @a gameDeaths 0
scoreboard players set @a gameKills 0
scoreboard players set @a gameParries 0
#execute unless entity @a[tag=partyLeader,tag=weatherOff] run gamerule doWeatherCycle true
tag @a remove ready
tag @a remove teamPicked
tag @a remove countStop
schedule function du-in:ingame/scheduled/one_sec_loop 1s
#schedule function du-in:ingame/scheduled/five_loop 5s
execute as @a run function du-in:lobby/item_reset
tag @a remove noItem
tag @a remove kitMenu
#tag @a remove mapOverride
team join Red @a[scores={team=1}]
team join Blue @a[scores={team=2}]
execute if entity @a[scores={kit=21}] at @a[scores={kit=21},limit=1] run playsound minecraft:cuphead.announce.start master @a ~ ~ ~ 10 1
tag @a remove fromVoid
scoreboard players set #main voidReadyOnline 0