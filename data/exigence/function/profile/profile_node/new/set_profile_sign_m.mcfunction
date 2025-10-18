# MACRO
# Sets the player/profile ids on the sign for a new profile

## CONSTRAINTS
#   AT location

## INPUT
#   INT player_id
#   INT profile_id
#   INT local_profile_id

#=============================================================================================================

$data modify block ~ ~ ~ front_text.messages[1] set value [{text:"Player ID: $(player_id)"}]
$data modify block ~ ~ ~ front_text.messages[2] set value [{text:"Profile ID: $(profile_id)"}]
$data modify block ~ ~ ~ front_text.messages[3] set value [{text:"Profile ID: $(local_profile_id)/5"}]