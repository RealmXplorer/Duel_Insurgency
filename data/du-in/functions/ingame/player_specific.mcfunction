#Run Ability give and secondary gives
    execute if entity @s[scores={kitUse=1..},tag=!startgame,tag=!win,tag=!lose,tag=!kitMenu] run function du-in:kit/all/ability/init
    execute if entity @s[scores={secKitUse=1..}] run function du-in:kit/all/ability/activate_sec


#Return ability
execute if entity @s[level=1..2,tag=!lobby,tag=!win,tag=!lose,tag=!winend,tag=!kitMenu,tag=!chungus] unless entity @s[scores={gasterTimer=-99..}] run function du-in:kit/all/ability/return

#Return ability if player does not have it
execute if entity @s[tag=!startgame,tag=!chungus] unless entity @s[scores={Acount=1}] run xp set @s 2 levels

# Stating Game Functions #
    execute if entity @s[tag=startgame] run function du-in:ingame/start_seq

# If a player is dead in team mode #
    execute if entity @s[tag=teamDead] run function du-in:ingame/team_dead

#Give glow if sneaking, remove glow if not
    execute if entity @s[predicate=du-in:is_sneaking] run function du-in:ingame/is_sneaking
    execute if entity @s[predicate=!du-in:is_sneaking] run function du-in:ingame/is_not_sneaking

    execute if entity @s[tag=parryStart] run function du-in:kit/all/parry_buffer
    #execute if entity @s[predicate=du-in:is_sneaking,tag=!gasterInvisible,gamemode=adventure,tag=!inField] unless entity @s[scores={floweyHitTimer=0..}] unless entity @s[scores={gasterTimer=0..}] run effect give @s minecraft:glowing 1 0 true
    #execute if entity @s[predicate=!du-in:is_sneaking,tag=!gasterInvisible,gamemode=adventure,tag=!inField,tag=!flagGot] run effect clear @s minecraft:glowing
    #execute if entity @s[scores={floweyHitTimer=0..},tag=inField] run effect give @s minecraft:glowing 1 0 true
    #execute if entity @s[scores={gasterTimer=0..},tag=inField] run effect give @s minecraft:glowing 1 0 true


# REGEN TIMER (Except for Zombie) #
    execute if entity @s[scores={healthTimer=200..}] unless entity @s[tag=undead] unless entity @s[scores={kit=19}] run scoreboard players add @s regenTimer 1
    execute if entity @s[scores={healthTimer=140..},tag=!stolen,tag=undead] run scoreboard players add @s regenTimer 1
    execute if entity @s[scores={regenTimer=99..}] run function du-in:ingame/regentimer/timer

    #Reset health timer if player is hit or deals damage
    execute if entity @s[scores={healthHit=1..}] run function du-in:ingame/regentimer/health_dam
#

execute if entity @s[level=1..,tag=!teamDead,tag=!win,tag=!lose,tag=!winend,tag=!kitMenu,tag=!chungus,tag=!startgame] unless entity @s[scores={deathTimer=0..}] run xp add @s -1 levels

#KILL COMBOS
    #Initialize and run combo test if player has kill
        #execute if entity @s[scores={quickKill=1..}] run function du-in:ingame/killstreaks/combo

    #Add to timer if player has kill
        scoreboard players add @s[tag=killCombo] comboTimer 1

    #Reset Combo scores if timer is reached without kill
        execute if entity @s[tag=killCombo,scores={comboTimer=60..}] run function du-in:ingame/killstreaks/combo/reset

#HIT COMBO#
    execute if entity @s[scores={comboBreak=1..}] run function du-in:ingame/killstreaks/combo/reset1
    execute if entity @s[scores={comboHitTimer=20..,comboScore=1..}] run function du-in:ingame/killstreaks/combo/reset3
#

#Give armor if player is missing any#
execute if entity @s[predicate=!du-in:has_armor,gamemode=adventure,tag=!lobby,tag=!teamDead,tag=!working,tag=!kitMenu,tag=!noClothes] unless entity @s[scores={gasterTimer=-99..}] run function du-in:kit/all/armor

# KIT FUNCTIONS #
    # General UNLOCK int functions #
        execute if entity @s[scores={kit=1000..}] run function du-in:kit/all/setleg

    # General Set 1 int functions #
        execute if entity @s[scores={kit=1..8},tag=!kitMenu] run function du-in:kit/all/set1
        execute if entity @s[tag=stolen,tag=!kitMenu] run function du-in:kit/villager/constant

    # General Set 2 int functions #
        execute if entity @s[scores={kit=9..16},tag=!kitMenu] run function du-in:kit/all/set2

    # General Set 3 int functions #
        execute if entity @s[scores={kit=17..24},tag=!kitMenu] run function du-in:kit/all/set3

    # General Set 4 functions #
        execute if entity @s[scores={kit=25..999},tag=!kitMenu] run function du-in:kit/all/set4

#Reset spawnpoint score
scoreboard players set @s[scores={spawnpoint=8..}] spawnpoint 0


#STEP STOP#
    execute if entity @s[scores={simStep=..0}] run function du-in:ingame/steptrack/step_stop
    execute if entity @s[scores={simStep=1..}] run function du-in:ingame/steptrack/step_go


#SPRINT STOP#
    execute if entity @s[scores={simSprint=..0}] run function du-in:ingame/steptrack/sprint_stop
    execute if entity @s[scores={simSprint=1..}] run function du-in:ingame/steptrack/sprint_go

#SANS HIT#
execute if entity @s[scores={sansHitTimer=0..}] run function du-in:kit/sans/ability/timer
    #scoreboard players remove @s[scores={sansHitTimer=-1..}] sansHitTimer 1
    #execute if entity @s[scores={sansHitTimer=..0}] unless entity @s[tag=!teamDead,scores={gasterTimer=..79}] run tag @s add armor
    #scoreboard players reset @s[scores={sansHitTimer=..0}] sansHitTimer

#Kill and Death functions
    execute if entity @s[scores={justdied=1..}] run function du-in:ingame/death



#Set spawnpoints
execute at @e[type=minecraft:marker,tag=spawnPoint,sort=nearest] facing entity @r[tag=playing] eyes run spawnpoint @s[tag=!grave,tag=!teamMode] ~ ~ ~ ~

#End Yharim Ability
execute if entity @s[scores={yharimTimer=..0}] run function du-in:kit/yharim/timer_reset

#Use vending Machine#
execute if entity @a[scores={kit=1000..1001}] if entity @s[scores={ksMachineUse=1..}] run function du-in:kit/saac/vending/init

#Peep the Horror
    execute if entity @a[scores={kit=1002},tag=playing] run scoreboard players remove @s[scores={jermaTimer=-1..}] jermaTimer 1
    execute if entity @a[scores={kit=1002},tag=playing] if entity @s[tag=peepedHorror,scores={jermaTimer=..1}] run function du-in:kit/jerma/ability/peeped_horror


#Give player kit if they don't have one
execute unless entity @s[scores={kit=1..}] run tag @s add random

#Remove 1 from Yharim Timer
scoreboard players remove @s[scores={yharimTimer=1..}] yharimTimer 1

#Ralsei Sleep#
execute if entity @s[scores={ralseiTimer=..70}] run function du-in:kit/ralsei/ability/sleep

scoreboard players reset @s[scores={parryHit=1..}] parryHit
scoreboard players reset @s[scores={parryDam=1..}] parryDam

#Darwin Timer#
execute if entity @s[scores={darwinTimer=0..}] run function du-in:kit/gumball/ability/darwin/timer

#Give hunger for Runza Rex ability
execute if entity @s[tag=notEaten] run function du-in:kit/runza/ability/the_hunger

#Iron Golem float timer (this helps makes the effect shorter than 1 second)
execute if entity @s[scores={golemFloat=-1..}] run function du-in:kit/golem/ability/float

#Venting Mechanics
    #If on cooldown
    execute if entity @s[tag=sus,scores={ventCooldown=..59},tag=vented] run function du-in:kit/impostor/vent/vent_cooldown
    #If not on cooldown and sus
    execute if entity @s[tag=sus,tag=playing,tag=vented,scores={ventCooldown=60..}] run function du-in:kit/impostor/vent/vent_success
    #If not sus
    execute if entity @s[tag=vented,tag=!sus] run function du-in:kit/impostor/vent/vent_fail

#Chara ability head
execute if entity @s[scores={charaTimer2=-1..}] run function du-in:kit/chara/ability/head

#Kylo ability
execute if entity @s[tag=kyloHit,scores={kyloTimer=-99..}] run function du-in:kit/kylo/ability/freeze

#Paz Ability
execute if entity @s[scores={blakeTimer=-99..}] run function du-in:kit/paz/ability/rubberband