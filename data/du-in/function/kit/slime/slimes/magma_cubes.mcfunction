#Kill Small slimes
execute if entity @s[scores={slimeTimer=-99..}] run function du-in:kit/slime/death/magma

#Teleport small slimes into the void.
tp @s[nbt={Size:0}] 216 -100 40