#Give ability item#
#execute if entity @s[level=1] run function du-in:kit/gumball/ability/item

#Gumball and Darwin abilities#
#execute if entity @s[tag=kitActions,tag=!darwin] run function du-in:kit/gumball/ability/gum_init
#execute if entity @s[tag=kitActions,tag=darwin] run function du-in:kit/gumball/ability/dar_init

#Gumball pursue ability constants
execute if entity @s[tag=pursue,tag=!darwin] run function du-in:kit/gumball/ability/gumball/pursue

#Darwin ability constants
scoreboard players remove @s[scores={darwinSound=-1..}] darwinSound 1
execute if entity @s[scores={darwinSound=..0}] run function du-in:kit/gumball/ability/darwin/hide

#NON VILLAGER
execute if entity @s[tag=!stolen] run function du-in:kit/gumball/constant