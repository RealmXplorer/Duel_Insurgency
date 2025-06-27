#Movement sounds
execute if entity @s[scores={hit=5..}] run function du-in:kit/paz/events/hit
execute if entity @s[scores={step=150..}] run function du-in:kit/paz/events/step
execute if entity @s[scores={sprint=150..}] run function du-in:kit/paz/events/step
execute if entity @s[scores={jump=1..}] run function du-in:kit/paz/events/jump

#Give Fortnite card
execute if entity @s[tag=fortniteCard,tag=!teamDead] unless entity @s[scores={triCount=1}] run item replace entity @s hotbar.8 with minecraft:gunpowder[item_name={text:"$19 Fortnite Card",color:gray,bold:true},lore=[{text:"Who wants it?",color:gray,bold:false},{text:"Use at Vending machine to upgrade weapon!",color:green,bold:true}],item_model="du-in:other/fortnite"] 1

execute store result score @s triCount run clear @s gunpowder 0

#     GET SHIT ON      #
#   ABSOLUTE SHIITER   #