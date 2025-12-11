advancement revoke @s only du-in:kit/venom_reload

execute if entity @s[tag=!hasVial] run function du-in:kit/pawbert/secondary/reload_fail
execute if entity @s[tag=hasVial] run function du-in:kit/pawbert/secondary/reload_injector