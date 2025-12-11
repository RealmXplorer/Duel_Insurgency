#Empty Venom Injector. 
tag @s add venomEmpty
function du-in:kit/pawbert/secondary/item

#End ability if Pawbert lands venom hit
execute if entity @s[tag=pawbertInvisible] run function du-in:kit/pawbert/ability/end

advancement revoke @s only du-in:kit/venom_used