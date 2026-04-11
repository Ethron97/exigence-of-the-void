# Called by calls/left_clicked and calls/right_clicked
#   (Currently we don't care which type of click you did)
#   Only if this is the Exigent selector, and locked

#====================================================================================================

# Inform locked
tellraw @p[tag=ProfileSelecting,tag=Interacting,distance=..16] {text:"✖ You must beat the game at least once to unlock this difficulty.",color:"red"}

# Sound
execute at @s run playsound block.fire.extinguish ui @p[tag=ProfileSelecting,tag=Interacting,distance=..16] ~ ~ ~
