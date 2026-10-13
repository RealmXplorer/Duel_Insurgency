#execute unless entity @s[scores={floweyArrowTimer=-99..}] run scoreboard players set @s floweyArrowTimer 10
scoreboard players remove @s floweyArrowTimer 1

execute if entity @s[scores={floweyArrowTimer=..0}] run function du-in:kit/flowey/ability/stem/end
kill @s[scores={floweyArrowTimer=..1}]