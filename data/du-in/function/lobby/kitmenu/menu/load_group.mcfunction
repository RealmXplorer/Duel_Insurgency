#Fetch active group string from du-in:main themes using theme_index
$data modify storage du-in:temp active_group set from storage du-in:main themes[$(theme_index)]

#Pass du-in:temp compound to display_group_kits
function du-in:lobby/kitmenu/menu/display_group with storage du-in:temp