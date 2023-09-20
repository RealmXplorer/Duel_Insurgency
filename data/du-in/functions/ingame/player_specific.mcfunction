#Run Ability give and secondary gives
    execute if entity @s[scores={kitUse=1..},tag=!startgame,tag=!win,tag=!lose,tag=!kitMenu] run function du-in:kit/all/ability/init
    execute if entity @s[scores={secKitUse=1..},tag=!startgame,tag=!win,tag=!lose,tag=!kitMenu] run function du-in:kit/all/ability/activate_sec


#Return ability
execute if entity @s[level=1..2,gamemode=!spectator,tag=!lobby,tag=!win,tag=!lose,tag=!kitMenu,tag=!cooldown] run function du-in:kit/all/ability/return

# Stating Game Functions #
    execute if entity @s[tag=startgame,tag=!working] run function du-in:ingame/start_seq

# If a player is dead in team mode #
    execute if entity @s[tag=teamDead,tag=!void] run function du-in:ingame/team_dead

#Give glow if sneaking, remove glow if not
    execute if entity @s[predicate=du-in:is_sneaking] run function du-in:ingame/is_sneaking
    execute if entity @s[predicate=!du-in:is_sneaking] run function du-in:ingame/is_not_sneaking

    #Parry Mechanics
    execute if entity @s[tag=parryStart] run function du-in:kit/all/parry/parry_buffer
    execute if entity @s[tag=parry,scores={parryDuration=1..}] run function du-in:kit/all/parry/in_parry
    scoreboard players reset @s[scores={parryHit=1..}] parryHit

# REGEN TIMER (Except for Zombie) #
    execute if entity @s[scores={healthTimer=200..}] unless entity @s[tag=undead] unless entity @s[scores={kit=19}] run scoreboard players add @s regenTimer 1
    execute if entity @s[scores={healthTimer=140..},tag=!stolen,tag=undead] run scoreboard players add @s regenTimer 1
    execute if entity @s[scores={regenTimer=99..}] run function du-in:ingame/regentimer/timer

    #Reset health timer if player is hit or deals damage
    execute if entity @s[scores={healthHit=1..}] run function du-in:ingame/regentimer/health_dam
#

execute if entity @s[level=1..,tag=!teamDead,tag=!win,tag=!lose,tag=!kitMenu,tag=!startgame] unless entity @s[tag=deathDouble,level=..3] unless entity @s[scores={deathTimer=0..}] run xp add @s -1 levels

#KILL COMBOS
execute if entity @s[tag=killCombo] run function du-in:ingame/killstreaks/combo/timer

#HIT COMBO#
    execute if entity @s[scores={comboBreak=1..}] run function du-in:ingame/killstreaks/combo/reset1
    execute if entity @s[scores={comboHitTimer=20..,comboScore=1..}] run function du-in:ingame/killstreaks/combo/reset3
    execute if entity @s[scores={comboHitTimer=10..,comboScore=9..}] run function du-in:ingame/killstreaks/combo/reset3


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
#scoreboard players set @s[scores={spawnpoint=8..}] spawnpoint 0


#STEP STOP#
    execute if entity @s[scores={simStep=..0}] run function du-in:ingame/steptrack/step_stop
    execute if entity @s[scores={simStep=1..}] run function du-in:ingame/steptrack/step_go


#SPRINT STOP#
    execute if entity @s[scores={simSprint=..0}] run function du-in:ingame/steptrack/sprint_stop
    execute if entity @s[scores={simSprint=1..}] run function du-in:ingame/steptrack/sprint_go

#SANS HIT#
execute if entity @s[scores={sansHitTimer=0..}] run function du-in:kit/sans/ability/timer

#Kill and Death functions
    execute if entity @s[scores={justdied=1..}] run function du-in:ingame/death

#Peep the Horror
execute if entity @s[scores={jermaTimer=0..}] run function du-in:kit/jerma/ability/timer

#Ralsei Sleep#
execute if entity @s[scores={ralseiTimer=..70}] run function du-in:kit/ralsei/ability/sleep

#Darwin Timer#
execute if entity @s[scores={darwinTimer=0..}] run function du-in:kit/gumball/ability/darwin/timer

#Give hunger for Runza Rex ability
execute if entity @s[tag=notEaten] run function du-in:kit/runza/ability/the_hunger

#Iron Golem float timer (this helps makes the effect shorter than 1 second)
execute if entity @s[scores={golemFloat=-1..}] run function du-in:kit/golem/ability/float

#Venting Mechanics
scoreboard players add @s[tag=sus,scores={ventCooldown=..61}] ventCooldown 1
execute if entity @s[tag=vented] run function du-in:kit/all/vent/init

#Chara ability head
execute if entity @s[scores={charaTimer=-1..}] run function du-in:kit/chara/ability/head

#Kylo ability
execute if entity @s[tag=kyloHit,scores={kyloTimer=-99..}] run function du-in:kit/kylo/ability/freeze

#Paz Ability
execute if entity @s[scores={blakeTimer=-99..}] run function du-in:kit/paz/ability/rubberband

#Jack Horner abilities
execute if entity @s[scores={unicornTimer=1..}] run function du-in:kit/jack_horner/ability/unicorn_bow/timer
execute if entity @s[tag=midasTouched] run function du-in:kit/jack_horner/ability/midas/freeze

#Death ability
execute if entity @s[scores={deathAbilityTimer=-99..}] run function du-in:kit/death/ability/ability_timer

#Nick Sabotage ability
execute if entity @s[scores={sabotageTimer=1..}] run function du-in:kit/nick/ability/sabotage/timer

#Puss ability
execute if entity @s[scores={pussFearTimer=1..}] run function du-in:kit/puss/ability/fear_timer

#Sans chestplate
execute if entity @s[scores={sansHitTimer=0..}] unless entity @s[scores={gasterTimer=..79}] unless entity @s[scores={floweyHitTimer=1..}] unless entity @s[scores={deathTimer=0..}] run item replace entity @s armor.chest with minecraft:leather_chestplate{display:{Name:'{"text":"Gravity","color":"blue","bold":true}',color:2228479},Unbreakable:1b,weaponItem:1b,AttributeModifiers:[{AttributeName:"generic.knockbackResistance",Name:"generic.knockbackResistance",Amount:1,Operation:0,UUIDLeast:928037,UUIDMost:684643}]} 1

execute if entity @s[tag=inField] run function du-in:kit/clairen/ability/field_effects
execute if entity @s[tag=sabotagedField] run function du-in:kit/clairen/ability/sabotaged_field

execute if entity @s[tag=devMode,scores={thrownBarrier=1..}] run tag @s add win 