#If too many kickstarts
execute if entity @s[scores={weaponTier=2..}] run function du-in:kit/paz/vending/max

#If no money
execute if entity @s[tag=!fortniteCard] run function du-in:ingame/vending_machine/titles/poor

#If success
execute if entity @s[tag=fortniteCard] unless entity @s[scores={weaponTier=2..}] run function du-in:kit/paz/vending/give