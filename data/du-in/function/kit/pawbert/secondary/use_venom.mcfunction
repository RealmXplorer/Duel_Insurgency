#Empty Venom Injector. 
tag @s add venomEmpty
execute if entity @s[tag=void] run damage @n[distance=0.3..4,type=skeleton] 20 arrow by @s
function du-in:kit/pawbert/secondary/item

#End ability if Pawbert lands venom hit
execute if entity @s[tag=pawbertInvisible] run function du-in:kit/pawbert/ability/end

advancement revoke @s only du-in:kit/venom_used