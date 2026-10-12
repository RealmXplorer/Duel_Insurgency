# Copy @s marker data into temporary storage
data modify storage du-in:temp candle set from entity @s data

# Run restore macro instantly
function du-in:kit/freddy/ability/light/restore/candle_data with storage du-in:temp candle

# Clean up marker entity
kill @s