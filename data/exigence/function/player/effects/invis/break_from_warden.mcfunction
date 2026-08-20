# Break invis from aggroing a Warden

## CONSTRAINTS
#   AS player

#====================================================================================================

# Call generic function to remove invis
function exigence:player/effects/invis/private/break

# Message (just the specific part)
tellraw @s [{text:"└ ",color:"red"},{text:"Reason: ",color:"gray",italic:false},{text:"Angered a warden",color:"red"}]
