#Summon Fire wall
    #This one is tagged to play the extinguish and burning sounds.
    summon minecraft:armor_stand ^ ^ ^2 {Fire:100,Invulnerable:1b,Invisible:1b,Tags:["asgoreFire","projectile","audio","ingame"],NoGravity:1b,DisabledSlots:4144959}
    summon minecraft:armor_stand ^1 ^ ^2 {Fire:100,Invulnerable:1b,Invisible:1b,Tags:["asgoreFire","projectile","ingame"],NoGravity:1b,DisabledSlots:4144959}
    summon minecraft:armor_stand ^-1 ^ ^2 {Fire:100,Invulnerable:1b,Invisible:1b,Tags:["asgoreFire","projectile","ingame"],NoGravity:1b,DisabledSlots:4144959}
    summon minecraft:armor_stand ^-.5 ^ ^2 {Fire:100,Invulnerable:1b,Invisible:1b,Tags:["asgoreFire","projectile","ingame"],NoGravity:1b,DisabledSlots:4144959}
    summon minecraft:armor_stand ^.5 ^ ^2 {Fire:100,Invulnerable:1b,Invisible:1b,Tags:["asgoreFire","projectile","ingame"],NoGravity:1b,DisabledSlots:4144959}
    summon minecraft:armor_stand ^-1.5 ^ ^2 {Fire:100,Invulnerable:1b,Invisible:1b,Tags:["asgoreFire","projectile","ingame"],NoGravity:1b,DisabledSlots:4144959}
    summon minecraft:armor_stand ^1.5 ^ ^2 {Fire:100,Invulnerable:1b,Invisible:1b,Tags:["asgoreFire","projectile","ingame"],NoGravity:1b,DisabledSlots:4144959}
    summon minecraft:armor_stand ^ ^1 ^2 {Fire:100,Invulnerable:1b,Invisible:1b,Tags:["asgoreFire","projectile","ingame"],NoGravity:1b,DisabledSlots:4144959}
    summon minecraft:armor_stand ^1 ^1 ^2 {Fire:100,Invulnerable:1b,Invisible:1b,Tags:["asgoreFire","projectile","ingame"],NoGravity:1b,DisabledSlots:4144959} 
    summon minecraft:armor_stand ^-1 ^1 ^2 {Fire:100,Invulnerable:1b,Invisible:1b,Tags:["asgoreFire","projectile","ingame"],NoGravity:1b,DisabledSlots:4144959}
    summon minecraft:armor_stand ^-.5 ^1 ^2 {Fire:100,Invulnerable:1b,Invisible:1b,Tags:["asgoreFire","projectile","ingame"],NoGravity:1b,DisabledSlots:4144959}
    summon minecraft:armor_stand ^.5 ^1 ^2 {Fire:100,Invulnerable:1b,Invisible:1b,Tags:["asgoreFire","projectile","ingame"],NoGravity:1b,DisabledSlots:4144959}
    summon minecraft:armor_stand ^-1.5 ^1 ^2 {Fire:100,Invulnerable:1b,Invisible:1b,Tags:["asgoreFire","projectile","ingame"],NoGravity:1b,DisabledSlots:4144959}
    summon minecraft:armor_stand ^1.5 ^1 ^2 {Fire:100,Invulnerable:1b,Invisible:1b,Tags:["asgoreFire","projectile","ingame"],NoGravity:1b,DisabledSlots:4144959}

#Play Particles and sounds
function du-in:kit/asgore/particle

#Start cooldown
scoreboard players set @e[type=armor_stand,tag=asgoreFire,tag=!fireTimer] asgoreFire 100
execute as @e[type=armor_stand,tag=asgoreFire,tag=!fireTimer] run execute store result score @s team run scoreboard players get @a[scores={kit=14},tag=kitActions,sort=nearest,limit=1] team
tag @e[type=armor_stand,tag=asgoreFire,tag=!fireTimer,scores={asgoreFire=-99..}] add fireTimer
clear @s minecraft:carrot_on_a_stick
xp set @s[tag=!stolen] 380 levels

#End ability
tag @s[tag=stolen] add kitDone
tag @s remove kitActions