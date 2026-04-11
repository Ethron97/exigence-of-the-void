# If player left a profile, inform other player

## CONSTRAINTS
#   AS player node

## INPUT
#   STR(item id) profile_identifier
#   STR name

## OUTPUT
#   SCORE #player_found Temp

#====================================================================================================

#say (D3) Add message to mail

$data modify entity @s data.custom_data.mail append value [{text:"[CO-OP PROFILE] ",color:red,bold:true},{text:"$(name)",bold:false,color:gold},{text:" has left co-op profile <",color:gray,italic:true,bold:false}\
,{text:"$(profile_identifier)",color:aqua,bold:false},{text:">",color:gray,bold:false}]
