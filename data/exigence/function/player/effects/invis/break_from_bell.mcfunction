# Break invis from ringing a bell

## CONSTRAINTS
#   AS player

#====================================================================================================

# Call generic function to remove invis
function exigence:player/effects/invis/private/break

# Message (just the specific part)
tellraw @s [{text:"└ ",color:"red"},{text:"Reason: ",color:"gray",italic:false},{text:"Rang a bell",color:"red"}]
