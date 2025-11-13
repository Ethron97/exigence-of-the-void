# Check if this player head should ignore the ordering
#   Usually because they were already invited by this menu

## CONSTRAINTS
#   AS player head display

## INPUT
#   data

#=============================================================================================================

# If player.node.invited_by score of (player whose career.player_id = data.head_player_id) = data.player_id, then add Ignore tag
$execute if score @a[scores={career.player_id=$(head_player_id)},limit=1] player.node.invited_by matches $(player_id) run tag @s add Ignore
