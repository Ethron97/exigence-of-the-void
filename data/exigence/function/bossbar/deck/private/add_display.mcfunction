# Add single ▌ display in name

## CONSTRAINTS
#   AS Card armorstand

## INPUT
#   STR color - minecraft color code
#   BOOL italic - 'true' or 'false'

#======================================================================================

# Reset data
$data modify storage exigence:bossbar_deck cards append value {text:"▌",color:"$(color)",italic:$(italic)}
