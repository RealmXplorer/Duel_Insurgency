#Gives tag "kitActions" when carrot on a stick is rightclicked
#execute if entity @s[predicate=!du-in:second_held] run tag @s add kitActions
execute unless items entity @s weapon.mainhand #du-in:secondary run tag @s add kitActions

scoreboard players reset @s kitUse