# Generic end function for trials
#   Handles repeated code that doesn't change between the different trials

## CONSTRAINTS
#   AS player

#====================================================================================================

# DEBUG
execute if score toggle.vault debug matches 1 if score debug.level debug matches 3.. run say (D3) Generic trial end

# Play teleport sound
execute at @s run playsound minecraft:entity.player.teleport player @s ~ ~ ~ 1 1

# Reset vault code
scoreboard players set @s[tag=Game] game.player.vault_code 0
scoreboard players reset @s[tag=Hub] game.player.vault_code

# Remove tag
tag @s remove Crucible
tag @s remove Trial
tag @s remove Game
tag @s remove Hub

# Set gamemode creative
gamemode creative @s[tag=Admin]

# Update bossbars to only show for players who are not in a vault
#   Effectively, hide other bossbars for players within the vault
# TODO have separate function handle re-visibility
bossbar set exigence:bossbar players @a[tag=ActivePlayer,scores={game.player.vault_code=0}]
bossbar set exigence:last_card players @a[tag=ActivePlayer,scores={game.player.vault_code=0,career.settings.card_display_bossbar=1}]
bossbar set exigence:resources players @a[tag=ActivePlayer,scores={game.player.vault_code=0,career.settings.resource_bossbar_style=1..}]
