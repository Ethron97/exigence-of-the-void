## CONSTRAINTS
#   AS player

## INPUT
#   INT echo_id

#=================================================================================================

# DEBVUG
#$say Clear echo compass $(echo_id)

$clear @s compass[custom_data={echo_id:$(echo_id),is_soulbound:1b}]
