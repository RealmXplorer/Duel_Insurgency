execute if entity @s[tag=!void] if entity @s[scores={killedByCreeper=1..}] unless entity @s[scores={killedByPlayer=1..}] run tellraw @a {"selector":"@s","color":"green","bold":false,"extra":[{"text":" was blown up","color":"white","bold":false}]}
execute if entity @s[tag=!void] unless entity @s[scores={killedByPlayer=1..}] unless entity @s[scores={killedByCreeper=1..}] run tellraw @a {"selector":"@s","color":"green","bold":false,"extra":[{"text":" died","color":"white","bold":false}]}
