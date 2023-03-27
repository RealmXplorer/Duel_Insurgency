execute unless entity @a[scores={kit=10}] if entity @s[tag=!teamMode,tag=!win,tag=!falseWin] unless score #main matchDeaths matches 2.. run function du-in:ingame/void/interact/success
execute if entity @s[scores={kit=10}] run function du-in:ingame/void/interact/fail_is_gaster
execute if entity @a[scores={kit=10}] unless entity @s[scores={kit=10}] run function du-in:ingame/void/interact/fail_gaster
execute if score #main matchDeaths matches 2.. run function du-in:ingame/void/interact/fail_deaths

advancement revoke @s only du-in:void/interact_void