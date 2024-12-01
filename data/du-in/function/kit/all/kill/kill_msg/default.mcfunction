#KILL MESSAGE#
execute unless entity @s[scores={kit=9}] unless entity @s[scores={kit=15..16}] unless entity @s[scores={kit=5}] unless entity @s[scores={kit=20}] unless entity @s[scores={kit=1000..}] unless entity @a[scores={justdied=1,kit=28}] run tellraw @a {"selector":"@s","color":"red","bold":false,"extra":[{"text":" eliminated ","color":"white","bold":false},{"selector":"@a[scores={justdied=1}]","color":"dark_red","bold":false}]}
execute if entity @s[scores={kit=5}] unless entity @a[scores={justdied=1,kit=28}] run tellraw @a {"selector":"@s","color":"red","bold":false,"extra":[{"text":" slaughtered ","color":"white","bold":false},{"selector":"@a[scores={justdied=1}]","color":"dark_red","bold":false}]}
execute if entity @s[scores={kit=9}] unless entity @a[scores={justdied=1,kit=28}] run tellraw @a {"selector":"@s","color":"red","bold":false,"extra":[{"text":" erased ","color":"white","bold":false},{"selector":"@a[scores={justdied=1}]","color":"dark_red","bold":false}]}
execute if entity @s[scores={kit=15}] unless entity @a[scores={justdied=1,kit=28}] run tellraw @a {"selector":"@s","color":"red","bold":false,"extra":[{"text":" spared ","color":"white","bold":false},{"selector":"@a[scores={justdied=1}]","color":"dark_red","bold":false}]}
execute if entity @s[scores={kit=16}] unless entity @a[scores={justdied=1,kit=28}] run tellraw @a {"selector":"@s","color":"red","bold":false,"extra":[{"text":" dunked on ","color":"white","bold":false},{"selector":"@a[scores={justdied=1}]","color":"dark_red","bold":false}]}
execute if entity @s[scores={kit=20}] unless entity @a[scores={justdied=1,kit=28}] run tellraw @a {"selector":"@s","color":"red","bold":false,"extra":[{"text":" ascended beyond ","color":"white","bold":false},{"selector":"@a[scores={justdied=1}]","color":"dark_red","bold":false},{"text":"'s control","color":"white","bold":false}]}
execute if entity @s[scores={kit=1000}] unless entity @a[scores={justdied=1,kit=28}] run tellraw @a {"selector":"@s","color":"red","bold":false,"extra":[{"text":" ruined ","color":"white","bold":false},{"selector":"@a[scores={justdied=1}]","color":"dark_red","bold":false}]}
execute if entity @s[scores={kit=1001}] unless entity @a[scores={justdied=1,kit=28}] run tellraw @a {"selector":"@s","color":"red","bold":false,"extra":[{"text":" goofed ","color":"white","bold":false},{"selector":"@a[scores={justdied=1}]","color":"dark_red","bold":false}]}
execute if entity @s[scores={kit=1002}] unless entity @a[scores={justdied=1,kit=28}] run tellraw @a {"selector":"@s","color":"red","bold":false,"extra":[{"text":" zerked ","color":"white","bold":false},{"selector":"@a[scores={justdied=1}]","color":"dark_red","bold":false}]}
execute if entity @s[scores={kit=1003}] unless entity @a[scores={justdied=1,kit=28}] run tellraw @a {"selector":"@s","color":"red","bold":false,"extra":[{"text":" ejected ","color":"white","bold":false},{"selector":"@a[scores={justdied=1}]","color":"dark_red","bold":false}]}
execute if entity @s[scores={kit=1004}] unless entity @a[scores={justdied=1,kit=28}] run tellraw @a {"selector":"@s","color":"red","bold":false,"extra":[{"text":" tackled ","color":"white","bold":false},{"selector":"@a[scores={justdied=1}]","color":"dark_red","bold":false}]}
execute if entity @s[scores={kit=42069}] unless entity @a[scores={justdied=1,kit=28}] run tellraw @a {"selector":"@s","color":"red","bold":false,"extra":[{"text":" had sex with ","color":"white","bold":false},{"selector":"@a[scores={justdied=1}]","color":"dark_red","bold":false}]}

execute if entity @a[scores={justdied=1,kit=28}] run tellraw @a {"selector":"@s","color":"red","bold":false,"extra":[{"text":" escaped ","color":"white","bold":false},{"selector":"@a[scores={justdied=1,kit=28}]","color":"dark_red","bold":false}]}

#execute if entity @s[scores={killedByCreeper=1..}] unless entity @s[scores={killedByPlayer=1..}] run tellraw @a {"selector":"@s","color":"dark_red","bold":false,"extra":[{"text":" was blown up","color":"white","bold":false}]}
#execute if entity @s[scores={justdied=1..}] unless entity @s[scores={killedByPlayer=1..}] unless entity @s[scores={killedByCreeper=1..}] run tellraw @a {"selector":"@s","color":"dark_red","bold":false,"extra":[{"text":" died","color":"white","bold":false}]}

#advancement revoke @s only du-in:utility/kill