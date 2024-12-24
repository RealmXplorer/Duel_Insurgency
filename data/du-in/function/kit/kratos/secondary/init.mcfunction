#Fail
execute unless entity @s[scores={kratosRage=..19},tag=!kratosRage] run function du-in:kit/kratos/secondary/fail

#Success
execute if entity @s[scores={kratosRage=20..},tag=!kratosRage] run function du-in:kit/kratos/secondary/success

execute if entity @s[tag=kratosRage] run function du-in:kit/kratos/secondary/leave_rage

tag @s remove secKitActions