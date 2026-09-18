#INIT Function
#Test for traps
execute if entity @s[scores={willoTrapCount=3..}] run return run function du-in:kit/willo/ability/titles/max_traps

#Place traps if less than 3
function du-in:kit/willo/ability/set_trap

#Test if 3 traps have been placed, if so, cancel ability (Or trigger smoke bomb?)
#If not, run place trap function

#PLACE function
#Summon marker
#Tie marker to this Willo
#Summon object portraying trap
#Play sound and particles
#Add 1 to traps
#Start cooldown
#Remove stolen

#SMOKE BOMB function
#Put large cloud around Willo.
#Willo invisible
#Any player in cloud's radius is revealed
#Start cooldown
#Remove stolen

#TRIP Function
#Deal Damage to player using damage source from saved Willo
#Remove 1 from placed traps in saved Willo
#Slow enemy?
#Play sounds
#Kill display
#Kill marker