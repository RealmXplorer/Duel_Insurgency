#Count Stone Axes (tridentCount is used as a filler score)
execute store result score @s[gamemode=!spectator] tridentCount run clear @s stone_axe 0

#End Ability
execute if entity @s[scores={tridentCount=..0}] run function du-in:kit/jack_horner/ability/hatchet/end