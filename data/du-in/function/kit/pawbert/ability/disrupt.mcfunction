#If taken damage by player or mob, cancel ability
tag @s add pawbertDisrupt
effect clear @s resistance

#Empty Venom Injector. 
tag @s add venomEmpty
function du-in:kit/pawbert/secondary/item

function du-in:kit/pawbert/ability/end