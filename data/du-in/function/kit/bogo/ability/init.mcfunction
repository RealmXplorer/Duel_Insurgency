##Runs kit's ability. These commands are necessary

execute if items entity @s hotbar.* #du-in:weapon run function du-in:kit/bogo/ability/success
execute unless items entity @s hotbar.* #du-in:weapon run function du-in:kit/all/ability/titles/weapon

tag @s remove kitActions