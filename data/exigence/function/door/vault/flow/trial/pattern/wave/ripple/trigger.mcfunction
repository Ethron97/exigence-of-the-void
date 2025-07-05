# Called each tick to check for player
#   Only call if player is touching the ground

## CONSTRAINTS
#   AS/AT ripple block_display

#=============================================================================================================

# Start trigger loop, left and right from center of ripple

execute facing ^90 ^ ^ run function exigence:door/vault/flow/trial/pattern/wave/ripple/trigger_loop

execute facing ^-90 ^ ^ run function exigence:door/vault/flow/trial/pattern/wave/ripple/trigger_loop
