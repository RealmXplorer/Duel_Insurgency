#Papyrus Bones
execute if entity @s[scores={papyrusHitTimer=-1..}] run function du-in:kit/papyrus/ability/bones/stand

#Asgore Fire Wall
execute if entity @s[tag=asgoreFire,scores={asgoreFire=-99..}] run function du-in:kit/asgore/ability/fire_wall

#Death's fire cone
execute if entity @s[tag=susieAbility,scores={susieTimer=0..}] run function du-in:kit/susie/ability/buster/timer

#Desolate Dive
execute if entity @s[type=armor_stand,tag=desolateDive] run function du-in:kit/knight/ability/dive
