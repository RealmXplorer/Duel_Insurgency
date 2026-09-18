##Runs kit's ability. These commands are necessary

tag @s remove kitActions

#End if no weapon
execute unless items entity @s hotbar.* #du-in:weapon run return run function du-in:kit/all/ability/titles/weapon

#Run if has weapon
function du-in:kit/bogo/ability/success

