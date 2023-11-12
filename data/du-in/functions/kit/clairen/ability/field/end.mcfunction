#clear tags
execute as @a[tag=inField] run function du-in:kit/clairen/ability/remove_infield
tag @a remove sabotagedField

#Kill marker
kill @s