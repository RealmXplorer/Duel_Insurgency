# 1. Fetch group string into storage from themes array
$data modify storage du-in:temp active_group set from storage du-in:main themes[$(theme_index)]

# 2. Invoke refresh_theme with storage context
function du-in:lobby/kitmenu/skins/presets/refresh_theme with storage du-in:temp