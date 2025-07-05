# Call the effect from card function with duration macro

## CONSTRAINTS
#   AS Player

## INPUT
#   STR effect
#   INT duration (Ticks)
#   STR display

#========================================================================================================

# Add tag so the card effect only applies to self
tag @s add CardEffecting

# Call effect giver
$function exigence:player/effects/add_effect_time_card {effect:"$(effect)",duration:$(ticks)}

# Convert ticks to h:m:s
$scoreboard players set in.ticks TickConvert $(ticks)
function exigence:misc/general/convert_tick_to_time

# Display amount of time gained in chat since it is variable
$tellraw @s [{text:"   Gained +",color:"gray",italic:true,bold:false}\
,{"score":{"name":"out.m","objective":"TickConvert"}},{text:"m ",italic:true,bold:false,color:"gray"}\
,{"score":{"name":"out.s","objective":"TickConvert"}},{text:"s ",italic:true,bold:false,color:"gray"}\
,{text:"$(display)",color:"yellow",italic:true,bold:false}]
