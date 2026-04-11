# Move chest block data from temporary storage for saving chest contents

## CONSTRAINTS
#   AT profile node

## INPUT
#   exigence:profile.chests
#   SCORE #remove_tag Temp

#====================================================================================================

#say (D3) Data to chest

execute if score #remove_tag Temp matches 1 run tag @n[tag=ProfileNode,distance=..0.1] remove ChestsLoaded
#execute if score #remove_tag Temp matches 1 run say (D3) REMOVING CHESTS LOADED TAG

data modify block ~4 ~ ~ Items set from storage exigence:profile chests.blue_left
data modify block ~5 ~ ~ Items set from storage exigence:profile chests.blue_right

data modify block ~4 ~1 ~ Items set from storage exigence:profile chests.orange_left
data modify block ~5 ~1 ~ Items set from storage exigence:profile chests.orange_right

data modify block ~4 ~2 ~ Items set from storage exigence:profile chests.green_left
data modify block ~5 ~2 ~ Items set from storage exigence:profile chests.green_right

data modify block ~1 ~1 ~ Items set from storage exigence:profile chests.deck_left
data modify block ~2 ~1 ~ Items set from storage exigence:profile chests.deck_right
