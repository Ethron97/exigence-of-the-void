# Start grow of block display

## CONSTRAINTS
#   AS Pizza Line

## INPUT
#   Length

#====================================================================================================

# DEBUG
$execute if score toggle.trial debug matches 1 if score debug.level debug matches 4.. run say (D4) Interpolate $(length)

$data merge entity @s {start_interpolation:-1,transformation:{translation:[-1.0f,-0.1f,0.0f],scale:[2.0f,0.2f,$(length)f]}}
