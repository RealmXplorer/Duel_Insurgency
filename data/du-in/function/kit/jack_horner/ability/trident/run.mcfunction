#Count Tridents
execute store result score @s[gamemode=!spectator] tridentCount run clear @s trident 0

#End Ability
execute if entity @s[scores={tridentCount=..0}] run function du-in:kit/jack_horner/ability/trident/end