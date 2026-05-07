# Handles player escaping from the dungeon on an individual level
# from entering the escape portal

## CONSTRAINTS
#   AS Player

#====================================================================================================

execute if score debug.level debug matches 3.. run say (D3) I escaped

# If portal is not yet opened, and game is coop, open the portal
execute if score game.escape_portal game.state matches 0 if score game.player_count game.state matches 2.. at @s as @n[type=minecraft:marker,tag=ExitNode,distance=..10] run function exigence:game/exit/exit_portal/open

# Add "Won" tag
tag @s add Won

# Reset gamemode
gamemode adventure @s

# Clear specific items
clear @s #exigence:win_clear

# If VaultKeep is 1, do not clear vault keys
clear @s[scores={game.player.mod.vault_keep=0}] #exigence:trim_templates

# Escaped with NPC?
execute if entity @s[tag=Carrying] run function exigence:game/access/escaped_with_npc

# Teleport the player to the Ember Shop.
#   Currently, teleports to the OLD HUB for temp card purchasing
execute in exigence:hub run tp @s 986.5 100.0 1000.5

# If solo, just win
#execute if score game.player_count game.state matches 1 run function exigence:game/game_win