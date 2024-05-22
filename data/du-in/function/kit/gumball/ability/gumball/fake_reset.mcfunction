scoreboard players remove @s[scores={fakeTimer=0..}] fakeTimer 1
execute if entity @s[tag=cIngame,scores={fakeTimer=..0}] run scoreboard objectives setdisplay sidebar killIngame
scoreboard players reset @s[scores={fakeTimer=..0}] fakeTimer