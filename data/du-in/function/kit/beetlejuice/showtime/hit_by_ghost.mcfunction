#Add charge to Beetlejuice secondary if non-beetlejuice is hurt.
execute unless entity @s[scores={kit=1006},tag=showTime] if entity @s[gamemode=adventure,tag=playing] run function du-in:kit/beetlejuice/showtime/add_charge

advancement revoke @s only du-in:kit/beetle_damage