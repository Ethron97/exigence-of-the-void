# Clean up hidden block objects
kill @e[type=minecraft:marker,tag=HiddenBlock,tag=laboratory]
kill @e[type=minecraft:block_display,tag=HiddenBlockDebug,tag=laboratory]

# Clear barriers and real blocks
$fill -450 61 -204 -478 81 -182 minecraft:air replace $(real_id)
$fill -450 61 -204 -478 81 -182 minecraft:air replace $(mirror_id)