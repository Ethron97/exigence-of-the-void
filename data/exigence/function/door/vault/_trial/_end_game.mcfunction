# End game

## CONSTRAINTS
#   AS player (tag=Game)

#====================================================================================================

# DEBUG
execute if score toggle.vault debug matches 1 if score debug.level debug matches 3.. run say (D3) Game trial end

# Reset vault code
scoreboard players set @s game.player.vault_code 0

# Reset team (if not invisible)
execute unless score @s game.player.effects.invisibility matches 1.. run team join Player @s

# Update bossbars to only show for players who are not in a vault
function exigence:bossbar/deck/update_visibility
function exigence:bossbar/objective/update_visibility
function exigence:bossbar/last_card/update_visibility
