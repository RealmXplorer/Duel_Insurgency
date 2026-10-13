# Copy @s marker data into temporary storage
data modify storage du-in:temp end_rod set from entity @s data

# Run restore macro instantly
function du-in:kit/freddy/ability/light/restore/end_rod_data with storage du-in:temp end_rod

# Clean up marker entity
kill @s