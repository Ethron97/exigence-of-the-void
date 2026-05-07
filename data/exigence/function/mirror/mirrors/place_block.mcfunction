# Place block for mirror parkour

## INPUT
#   INT X
#   INT Y
#   INT Z
#   STR current_id - block of to place

#====================================================================================================

$execute if score toggle.mirror debug matches 1 if score debug.level debug matches 4.. run say (D4) Place block $(X) $(Y) $(Z) $(current_id)

# Place block
$setblock $(X) $(Y) $(Z) $(current_id)

# Summon hidden block marker for glow/discover tracking
$execute positioned $(X) $(Y) $(Z) run function exigence:mirror/hidden_blocks/summon_hidden_block with storage exigence:mirror