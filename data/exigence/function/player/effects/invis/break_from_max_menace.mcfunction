# Break invis from max menace

## CONSTRAINTS
#   AS player

#====================================================================================================

# Call generic function to remove invis
function exigence:player/effects/invis/private/break

# Message (just the specific part)
tellraw @s [{text:"└ ",color:"red"},{text:"Reason: ",color:"gray",italic:false},{text:"Reached max menace",color:"red"}]
