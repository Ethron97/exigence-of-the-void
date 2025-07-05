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
kill @e[type=block_display,tag=ItemPreview]

# Reset web ball related stuff
function exigence:hub/item_shop/frame/item/item_web_ball/reset

# Kill Ravager Glass stands (function both respawns and kills)
execute as @e[type=minecraft:marker,tag=RavagerGlass] run function exigence:game/game_tick/ravager_glass/respawn_ravager_glass

# Reset start/exit armorstand rotation
execute as @e[type=minecraft:armor_stand,tag=Start] at @s run tp @s ~ ~ ~ 135 0

# Reset scores
function exigence:game/game_reset/reset_scores

# Reset teams
function exigence:game/game_reset/reset_teams

# Reset advancements
function exigence:game/game_reset/reset_advancements

# Hide bossbar(s)
function exigence:bossbar/deck/hide
function exigence:bossbar/last_card/hide
function exigence:bossbar/resource/hide
function exigence:bossbar/objective/hide

# Reset hazards
execute as @e[type=minecraft:armor_stand,tag=HazardNode] run function exigence:hazard/node/reset

# Reset altars
execute as @e[type=minecraft:armor_stand,tag=AltarNode] run function exigence:altar/node/deactivate
execute as @e[type=minecraft:armor_stand,tag=BeaconNode] run function exigence:beacon/node/deactivate

scoreboard objectives setdisplay sidebar.team.dark_aqua
scoreboard objectives setdisplay sidebar.team.dark_red

function exigence:npc/game/reset_npcs

# Return deck
function exigence:deck/return_deck
kill @e[type=minecraft:armor_stand,tag=Card]

# Reset vaults
function exigence:vault/reset_vaults

# Kill any berry glow block displays
kill @e[type=minecraft:block_display,tag=BerryGlow]
execute as @e[type=armor_stand,tag=BerryNode] run function exigence:botany/node/berry_bush_inactive

# Reset mirror hidden blocks
function exigence:mirror/hidden_blocks/reset_hidden_blocks

# After player gets their deck back, reanalyze so ember shop info is updated
execute as @a[tag=PrimaryPlayer] run function exigence:deck/process/analyze_deck
function exigence:hub/predungeon/private/update_analysis_display

# Clear cake from all echo nodes
execute at @e[type=minecraft:armor_stand,tag=EchoNode] run fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:air replace minecraft:cake

# Setblock above echonodes to air (clear light)
execute at @e[type=minecraft:armor_stand,tag=ChosenEchoNode] run setblock ~ ~1 ~ air

# Kill exit armorstnads (and clear light)
execute at @e[type=minecraft:armor_stand,tag=ExitNode] run fill ~ ~1 ~ ~ ~1 ~ air replace light
kill @e[type=armor_stand,tag=ExitNode]
kill @e[type=block_display,tag=ExitPortalDisplay]

# Kill floating flames
kill @e[type=minecraft:vex,tag=FloatingFlame]

# Kill clock markers
kill @e[type=minecraft:marker,tag=ClockMarker]

# Clear CartCache tags
tag @e[type=minecraft:armor_stand,tag=CartCache] remove CartCache

# Reset void cache
execute as @e[type=armor_stand,tag=VoidCache] run function exigence:cards/void_cache/reset

# Clear Wards
execute as @e[type=interaction,tag=Crystal] run function exigence:game/other/wards/crystal/remove

# Remove active tag from playernode
tag @e[type=armor_stand,tag=PlayerNode] remove Active

# Set time to night
time set 18000

# Clear items inside barrels/brewing stands/
#   SO LAGGY
#function exigence:misc/general/block_reset/block_reset

# Reset room token
scoreboard players set Game RoomToken 0
