# TURN GAME OFF. RESET DUNGEON.
# Dungeon should be ready to run within a few seconds of this being called.
say Game Reset


# ENTITY CLEANUP

# Kill phantom item previews
kill @e[type=minecraft:block_display,tag=ItemPreview]

# Reset web ball related stuff
function exigence:hub/item_shop/item/item_web_ball/reset

scoreboard objectives setdisplay sidebar.team.dark_aqua
scoreboard objectives setdisplay sidebar.team.dark_red

# Reset vaults
function exigence:vault/reset_vaults

# Kill floating flames
kill @e[type=minecraft:vex,tag=FloatingFlame]

# Kill clock markers
kill @e[type=minecraft:marker,tag=ClockMarker]

# Reset void cache
execute as @e[type=minecraft:armor_stand,tag=VoidCache] run function exigence:cards/void_cache/reset
