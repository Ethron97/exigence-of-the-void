# Iterates of all mail lines and sends them to player

## CONSTRAINTS
#   AS player node

#====================================================================================================
# Validate
execute unless data entity @s data.custom_data.mail[0] run return fail
#====================================================================================================

#say Read mail recursive

data modify storage exigence:temp mail set from entity @s data.custom_data.mail[0]

scoreboard players operation #compare164 profile.node.player_id = @s profile.node.player_id
execute as @a if score @s career.player_id = #compare164 profile.node.player_id run function exigence:profile/player/read_mail_message with storage exigence:temp

data remove entity @s data.custom_data.mail[0]

# Recurse
function exigence:profile/player_node/calls/private/read_mail_recursive