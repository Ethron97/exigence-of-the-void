# Break invis from getting too close to an enemy

## CONSTRAINTS
#   AS player

#====================================================================================================

# Call generic function to remove invis
function exigence:player/effects/invis/private/break

# Message (just the specific part)
tellraw @s [{text:"└ ",color:"red"},{text:"Reason: ",color:"gray",italic:false},{text:"Got too close to an enemy",color:"red"}]
