# Handles player escaping from the dungeon on an individual level

## CONSTRAINTS
#   AS Player

#====================================================================================================

say (D3) I escaped

# If portal is not yet opened, and game is coop, open the portal
execute if score game.escape_portal game.state matches 0 if score game.player_count game.state matches 2.. at @s as @n[type=minecraft:marker,tag=ExitNode,distance=..10] run function exigence:game/exit/exit_portal/open

# Teleport the player to the Ember Shop.
execute in exigence:hub run tp @s 0.5 200.0 19.5

# Add "Won" tag
tag @s add Won

# Reset gamemode
gamemode adventure @s

# Clear specific items
clear @s #exigence:win_clear

# If VaultKeep is 1, do not clear vault keys
clear @s[scores={game.player.mod.vault_keep=0}] #exigence:trim_templates

# Give appropriate advancement if rescued NPC
execute if entity @s[tag=Carrying] if score npc.supplier game.dialogue matches 5.. as @a[tag=ActivePlayer,sort=arbitrary,limit=1] run function exigence:profile/profile_node/story/grant {story:'rescue_supplier'}
execute if entity @s[tag=Carrying] if score npc.scientist game.dialogue matches 8.. as @a[tag=ActivePlayer,sort=arbitrary,limit=1] run function exigence:profile/profile_node/story/grant {story:'rescue_scientist'}
execute if entity @s[tag=Carrying] if score npc.petitioner game.dialogue matches 7.. as @a[tag=ActivePlayer,sort=arbitrary,limit=1] run function exigence:profile/profile_node/story/grant {story:'rescue_petitioner'}

# If solo, just win
execute if score game.player_count game.state matches 1 run function exigence:game/game_win