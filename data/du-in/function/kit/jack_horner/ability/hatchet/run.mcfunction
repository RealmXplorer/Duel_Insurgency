#Count Tridents
execute store result score @s[gamemode=!spectator] tridentCount run clear @s stone_axe 0

#Test throw
#execute if entity @s[scores={trident=1..}] run function du-in:kit/asgore/passive/trident

#End Ability
execute if entity @s[scores={tridentCount=..0}] run function du-in:kit/jack_horner/ability/hatchet/end