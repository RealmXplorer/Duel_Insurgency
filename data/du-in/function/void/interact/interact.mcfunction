execute unless entity @a[scores={kit=10}] if entity @s[tag=!win,tag=!falseWin] run function du-in:void/interact/success
#tag=!teamMode,
execute if entity @s[scores={kit=10}] run function du-in:void/interact/fail_is_gaster
execute if entity @a[scores={kit=10}] unless entity @s[scores={kit=10}] run function du-in:void/interact/fail_gaster
#execute if score #main matchDeaths matches 2.. run function du-in:void/interact/fail_deaths