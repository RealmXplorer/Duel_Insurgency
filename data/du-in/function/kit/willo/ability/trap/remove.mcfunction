advancement revoke @s only du-in:kit/interact_trap


execute if score @s player = @n[type=interaction,tag=willoRemove] player as @n[type=marker,tag=willoTrap] run function du-in:kit/willo/ability/trap/reset_start
execute unless score @s player = @n[type=interaction,tag=willoRemove] player run function du-in:kit/willo/ability/not_owner