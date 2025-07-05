# Start grow of block display

## CONSTRAINTS
#   AS Pizza Line

## INPUT
#   Length

#========================================================================================================

# DEBUG
#$say INterpolate $(length)

$data merge entity @s {start_interpolation:-1,transformation:{translation:[-1.0f,-0.1f,0.0f],scale:[2.0f,0.2f,$(length)f]}}
