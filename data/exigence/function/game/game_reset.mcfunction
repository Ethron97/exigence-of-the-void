# TURN GAME OFF. RESET DUNGEON.
# Dungeon should be ready to run within a few seconds of this being called.
say Game Reset



# Reset players
execute as @a[tag=ActivePlayer] run function exigence:player/utility/game_reset

# ENTITY CLEANUP
# Kill item drops
kill @e[type=minecraft:item]

# Kill leftover hovers
kill @e[type=minecraft:armor_stand,tag=Hover]

# Kill eyeballs
kill @e[type=minecraft:armor_stand,tag=Eyeball,tag=!Tutorial]
# Kill eyeball mounts
kill @e[type=minecraft:vex]
# Kill wardens (dont like listening to them after game, can't have em goin amok)
kill @e[type=minecraft:warden]
kill @e[type=minecraft:creaking]
kill @e[type=ender_pearl]
kill @e[type=endermite]

# Kill phantom item previews
kill @e[type=minecraft:block_display,tag=ItemPreview]

# Reset web ball related stuff
function exigence:hub/item_shop/item/item_web_ball/reset

# Reset start/exit armorstand rotation
execute as @e[type=minecraft:armor_stand,tag=Start] at @s run tp @s ~ ~ ~ 135 0

# Reset altars
execute as @e[type=minecraft:armor_stand,tag=AltarNode] run function exigence:altar/node/deactivate
execute as @e[type=minecraft:armor_stand,tag=BeaconNode] run function exigence:beacon/node/deactivate

scoreboard objectives setdisplay sidebar.team.dark_aqua
scoreboard objectives setdisplay sidebar.team.dark_red

function exigence:npc/game/reset_npcs

# Reset vaults
function exigence:vault/reset_vaults

# Reset mirror hidden blocks
function exigence:mirror/hidden_blocks/reset_hidden_blocks

# Kill floating flames
kill @e[type=minecraft:vex,tag=FloatingFlame]

# Kill clock markers
kill @e[type=minecraft:marker,tag=ClockMarker]

# Reset void cache
execute as @e[type=minecraft:armor_stand,tag=VoidCache] run function exigence:cards/void_cache/reset

# Clear ward/crystals
execute as @e[type=interaction,tag=Crystal] run function exigence:game/other/wards/crystal/remove

# Set time to night
time set 18000
