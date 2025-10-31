# Generic begin function for trials
#   Handles repeated code that doesn't change between the different trials

## CONSTRAINTS
#   AS player

#==============================================================================================================

# DEBUG
#say Begin generic

# Play teleport sound
execute at @s run playsound minecraft:entity.player.teleport player @s ~ ~ ~ 1 1

# Begin sound
execute at @s run playsound minecraft:block.trial_spawner.about_to_spawn_item ambient @s ~ ~1000 ~ 1000 0.8

# Update bossbars to only show for players who are not in a vault
#   Effectively, hide other bossbars for players within the vault
bossbar set exigence:bossbar players @a[scores={game.player.vault_code=0}]
bossbar set exigence:last_card players @a[scores={game.player.vault_code=0,career.settings.card_display_bossbar=1}]
bossbar set exigence:resources players @a[scores={game.player.vault_code=0,career.settings.resource_bossbar_style=1..}]
