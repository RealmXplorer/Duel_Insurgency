scoreboard players remove @s willoRecoilTimer 1


execute if entity @s[scores={willoRecoilTimer=5}] run return run tp @s ~ ~ ~ ~ ~3

execute if entity @s[scores={willoRecoilTimer=4}] run item modify entity @s armor.head du-in:flash_clear
execute if entity @s[scores={willoRecoilTimer=4}] run return run tp @s ~ ~ ~ ~ ~3

execute if entity @s[scores={willoRecoilTimer=3}] run return run tp @s ~ ~ ~ ~ ~3
execute if entity @s[scores={willoRecoilTimer=2}] run return run tp @s ~ ~ ~ ~ ~3
execute if entity @s[scores={willoRecoilTimer=1}] run return run tp @s ~ ~ ~ ~ ~3

scoreboard players reset @s willoRecoilTimer