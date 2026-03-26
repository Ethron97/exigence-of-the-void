# Call as player trying to select a slot when they have too many cards in the deck

## CONSTRAINTS
#   AS player

#====================================================================================================

tellraw @s [{text:"✖ Too many cards in the deck!",color:red}]
playsound block.sculk_sensor.clicking ui @s ~ ~ ~ 1 1.3