#Run Ability and Secondaries
    execute if entity @s[scores={kitUse=1..},tag=!win,tag=!lose,tag=!kitMenu,tag=!startgame] run function du-in:kit/all/ability/init
    execute if entity @s[scores={secKitUse=1..},tag=!win,tag=!lose,tag=!kitMenu,tag=!startgame] run function du-in:kit/all/ability/activate_sec

    #Ability timer
    execute if entity @s[level=1..] run function du-in:kit/all/ability/timer

# Stating Game Functions #
    execute if entity @s[tag=startgame] run function du-in:ingame/start_seq

# If a player is dead in team mode #
    execute if entity @s[tag=teamDead,tag=!void,scores={deathTimer=0..}] run function du-in:ingame/team_death/dead_effects

#Give glow if sneaking, remove glow if not
    execute if entity @s[predicate=du-in:is_sneaking] run function du-in:ingame/is_sneaking
    execute if entity @s[predicate=!du-in:is_sneaking,tag=!glowing] run effect clear @s minecraft:glowing

    #Parry Mechanics
    execute if entity @s[tag=parryStart] run function du-in:kit/all/parry/buffer
    execute if entity @s[tag=parry,scores={parryDuration=0..}] run function du-in:kit/all/parry/in_parry
    scoreboard players reset @s[scores={parryHit=1..}] parryHit

# REGEN TIMER (Except for undead) #
    execute if entity @s[scores={healthTimer=140..}] run function du-in:ingame/regentimer/start_regen
    execute if entity @s[scores={regenTimer=100..}] run function du-in:ingame/regentimer/timer

    #Reset health timer if player is hit or deals damage
    execute if entity @s[scores={healthHit=1..}] run function du-in:ingame/regentimer/health_dam

#KILL COMBOS
execute if entity @s[tag=killCombo] run function du-in:ingame/kill_combo/timer

#HIT COMBO#
    execute if entity @s[scores={comboBreak=1..}] run function du-in:ingame/kill_combo/reset1
    execute if entity @s[scores={comboHitTimer=10..,comboScore=1..}] run function du-in:ingame/kill_combo/expire

#Give armor if player is missing any#
execute if entity @s[predicate=!du-in:has_armor,predicate=!du-in:effect/is_invisible,tag=!teamDead,tag=!kitMenu,tag=!noClothes] run function du-in:kit/all/armor/armor_reset

# KIT FUNCTIONS #
    # General Set 1 int functions #
        execute if entity @s[scores={kit=1..8},tag=!kitMenu] run function du-in:kit/all/set1
        execute if entity @s[tag=stolen,tag=!kitMenu] run function du-in:kit/villager/constant

    # General Set 2 int functions #
        execute if entity @s[scores={kit=9..16},tag=!kitMenu] run function du-in:kit/all/set2

    # General Set 3 int functions #
        execute if entity @s[scores={kit=17..24},tag=!kitMenu] run function du-in:kit/all/set3

    # General Set 4 functions #
        execute if entity @s[scores={kit=25..999},tag=!kitMenu] run function du-in:kit/all/set4

    # General UNLOCK int functions #
        execute if entity @s[scores={kit=1000..},tag=!kitMenu] run function du-in:kit/all/set_legend

#STEP STOP#
    execute if entity @s[scores={simStep=..0}] run function du-in:ingame/steptrack/step_stop
    execute if entity @s[scores={simStep=1..}] run function du-in:ingame/steptrack/step_go


#SPRINT STOP#
    execute if entity @s[scores={simSprint=..0}] run function du-in:ingame/steptrack/sprint_stop
    execute if entity @s[scores={simSprint=1..}] run function du-in:ingame/steptrack/sprint_go

#Different events
    execute if entity @s[scores={hit=5..}] run function du-in:kit/all/hit/init
    execute if entity @s[scores={step=150..}] run function du-in:kit/all/step/init
    execute if entity @s[scores={sprint=150..}] run function du-in:kit/all/step/init
    execute if entity @s[scores={jump=1..}] run function du-in:kit/all/jump/init

#Kill and Death functions
    execute if entity @s[scores={justdied=1..}] run function du-in:kit/all/death/init

#SANS HIT#
    execute if entity @s[scores={sansHitTimer=0..}] run function du-in:kit/sans/ability/hit/timer

#Peep the Horror
    execute if entity @s[scores={jermaTimer=0..}] run function du-in:kit/jerma/ability/timer

#Ralsei Sleep#
    execute if entity @s[scores={ralseiTimer=..70}] run function du-in:kit/ralsei/ability/sleep

#Darwin Timer#
    execute if entity @s[scores={darwinTimer=0..}] run function du-in:kit/gumball/ability/darwin/timer

#JACK BLACK Timer#
    execute if entity @s[scores={jockeyTimer=0..}] run function du-in:kit/jack_black/ability/timer


#Give hunger for Runza Rex ability
    execute if entity @s[tag=notEaten] run function du-in:kit/runza/ability/the_hunger

#Iron Golem float timer (this helps makes the effect shorter than 1 second)
    execute if entity @s[scores={golemFloat=0..}] run function du-in:kit/golem/ability/float

#Kylo ability
    execute if entity @s[tag=kyloHit,scores={kyloTimer=0..}] run function du-in:kit/kylo/ability/freeze

#Paz Ability
    execute if entity @s[scores={blakeTimer=0..}] run function du-in:kit/paz/ability/rubberband

#Jack Horner abilities
    execute if entity @s[scores={unicornTimer=0..}] run function du-in:kit/jack_horner/ability/unicorn_bow/timer
    execute if entity @s[tag=midasTouched] run function du-in:kit/jack_horner/ability/midas/freeze

#Nick Sabotage ability
    execute if entity @s[scores={sabotageTimer=0..}] run function du-in:kit/nick/ability/sabotage/timer

#Puss ability
    execute if entity @s[scores={pussFearTimer=0..}] run function du-in:kit/puss/ability/fear_timer

#Sauron
    execute if entity @s[scores={seenTimer=0..}] run function du-in:kit/sauron/ability/no_ring/timer
    execute if entity @s[tag=hasRing] run function du-in:kit/sauron/ring/has_ring

#Clairen Field
    execute if entity @s[tag=inField] run function du-in:kit/clairen/ability/field_effects
    execute if entity @s[tag=sabotagedField] run function du-in:kit/clairen/ability/sabotaged_field

# SPAM CLICK MODE #
    execute if entity @a[tag=partyLeader,tag=spamClick] run attribute @s minecraft:attack_speed base set 100