#If Blue team is capturing or owns a point
execute unless entity @a[scores={team=1},distance=..3,tag=!teamDead] if entity @s[scores={pointCap=..-101}] run title @a[distance=..3,tag=!teamDead] actionbar {"text":"Blue Team Point!","bold":true,"color":"blue"}
execute unless entity @a[scores={team=1},distance=..3,tag=!teamDead] unless entity @s[scores={pointCap=..-101}] run title @a[distance=..3,tag=!teamDead] actionbar {"text":"Blue Capturing!","bold":true,"color":"aqua"}

#If both teams are on point
execute if entity @a[scores={team=2},distance=..3,tag=!teamDead] if entity @a[scores={team=1},distance=..3,tag=!teamDead] unless entity @s[scores={pointCap=101..}] unless entity @s[scores={pointCap=..-101}] run title @a[distance=..3,tag=!teamDead] actionbar {"text":"Contested Point!","bold":true,"color":"gold"}

#If Red team is capturing or owns a point
execute unless entity @a[scores={team=2},distance=..3,tag=!teamDead] if entity @s[scores={pointCap=101..}] run title @a[distance=..3,tag=!teamDead] actionbar {"text":"Red Team Point!","bold":true,"color":"dark_red"}
execute unless entity @a[scores={team=2},distance=..3,tag=!teamDead] unless entity @s[scores={pointCap=101..}] run title @a[distance=..3,tag=!teamDead] actionbar {"text":"Red Capturing!","bold":true,"color":"red"}