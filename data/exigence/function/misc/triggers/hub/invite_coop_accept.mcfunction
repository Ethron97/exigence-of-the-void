# Called by player who accepts a coop invite, either via tellraw or /trigger

## CONSTRAINTS
#   AS player

#=============================================================================================================

say Accept invite

# Reset trigger score
scoreboard players set @s AcceptCoopInvite 0

# Clear queried score
#scoreboard players reset @s hub.player.query_selector_slot_id

