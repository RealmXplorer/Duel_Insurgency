#execute store result score @s secCount run clear @s #du-in:secondary 0
#execute unless entity @s[scores={secCount=1}] run function du-in:kit/all/secondary/give

# execute if items entity @s container.* #du-in:secondary run say HAS
# execute unless items entity @s container.* #du-in:secondary run say NO

execute unless items entity @s container.* #du-in:secondary run function du-in:kit/all/secondary/give
##Test moving to "execute if items"