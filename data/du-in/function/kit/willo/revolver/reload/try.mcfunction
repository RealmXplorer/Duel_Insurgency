#Get reserve
execute store result score @s willoStock run clear @s copper_nugget 0

#Test Reload
execute if entity @s[scores={willoAmmo=6}] run function du-in:kit/willo/revolver/reload/full_ammo

#execute if entity @s[scores={willoReloadTimer=..19}] run function du-in:kit/willo/revolver/reload/on_cooldown

execute if entity @s[scores={willoStock=1..,willoAmmo=..5,willoReloadTimer=20..}] run function du-in:kit/willo/revolver/reload/reload

execute if entity @s[scores={willoStock=0,willoAmmo=..5}] run function du-in:kit/willo/revolver/reload/no_reserve

