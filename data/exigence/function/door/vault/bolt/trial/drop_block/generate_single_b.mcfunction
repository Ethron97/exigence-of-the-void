# Called by generate_single
#   Macro to calculate position based on arc/length

## CONSTRAINTS
#   AS BoltThrower marker

## INPUT
#   INT RotA
#   FLOAT length

#=========================================================================================================

# DEBUG
#$say Generate drop block $(RotA) $(length)

# Create new drop block
$execute at @s rotated ~$(RotA) ~ positioned ^ ^-0.5 ^$(length) run function exigence:door/vault/bolt/trial/drop_block/new_drop_block
