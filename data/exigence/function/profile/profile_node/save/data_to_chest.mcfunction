# Move chest block data from temporary storage for saving chest contents

## CONSTRAINTS
#   AT profile node

## INPUT
#   exigence:profile.chests

#=============================================================================================================

say Data to chest

tag @n[distance=..0.1,tag=ProfileNode] remove ChestsLoaded

data modify block ~4 ~ ~ Items set from storage exigence:profile chests.blue_left
data modify block ~5 ~ ~ Items set from storage exigence:profile chests.blue_right

data modify block ~4 ~1 ~ Items set from storage exigence:profile chests.orange_left
data modify block ~5 ~1 ~ Items set from storage exigence:profile chests.orange_right

data modify block ~4 ~2 ~ Items set from storage exigence:profile chests.green_left
data modify block ~5 ~2 ~ Items set from storage exigence:profile chests.green_right

data modify block ~1 ~1 ~ Items set from storage exigence:profile chests.deck_left
data modify block ~2 ~1 ~ Items set from storage exigence:profile chests.deck_right
