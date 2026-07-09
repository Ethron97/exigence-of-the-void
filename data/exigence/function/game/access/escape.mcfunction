# Handles player escaping from the dungeon on an individual level
# from entering the escape portal

## CONSTRAINTS
#   AS Player

#====================================================================================================

execute if score toggle.player debug matches 1 if score debug.level debug matches 3.. run say (D3) I escaped

# If portal is not yet opened, and game is coop, open the portal
execute if score game.escape_portal game.state matches 0 if score game.player_count game.state matches 2.. at @s as @n[type=minecraft:marker,tag=ExitNode,distance=..10] run function exigence:game/exit/exit_portal/open

# Add "Won" tag
tag @s add Won

# Reset gamemode
gamemode adventure @s

# Clear specific items
clear @s #exigence:win_clear

# If VaultKeep is 1, do not clear vault keys
clear @s[scores={game.player.mod.vault_keep=0}] #exigence:vault_key

# Escaped with NPC?
execute if entity @s[tag=Carrying] run function exigence:game/access/escaped_with_npc

# Teleport the player to limbo
function exigence:hub/limbo/access/enter
#execute if score @s profile.player.coop_profile_id matches 1.. in exigence:hub run tp @s -1000.5 100 -1000.5
#   Teleports to the OLD HUB for temp card purchasing
#execute in exigence:hub run tp @s 986.5 100.0 1000.5

# Clear effects
effect clear @s

# Convert placeholder void items to actual armor loot
execute at @s positioned ~ ~10 ~ run function exigence:player/utility/armor/void_armor/check_for_placeholders
