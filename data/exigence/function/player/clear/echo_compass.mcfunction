## CONSTRAINTS
#   AS player

## INPUT
#   INT echo_id

#====================================================================================================

# DEBVUG
$execute if score toggle.echo debug matches 1 if score debug.level debug matches 3.. run say (D3) Clear echo compass $(echo_id)

$clear @s compass[custom_data~{echo_id:$(echo_id),is_soulbound:1b}]
