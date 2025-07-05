
#say Main reset

# Testing Model
#setblock -385 152 -22 birch_slab
#setblock -386 153 -21 birch_slab

# Reset temp blocks
#fill -382 140 -57 -388 142 -57 air
#fill -401 157 -37 -401 159 -33 air

# Reset temp hazard
#fill -388 145 -49 -382 156 -49 air replace sculk
#fill -407 160 -33 -407 170 -37 air replace sculk

# Clone staircases
#   1 (lower main)
clone -398 15 -16 -423 0 -22 -421 136 -32
#   2 (upper main)
clone -401 26 -32 -412 0 -38 -412 151 -38

# Middle/l0ower main always varianced now
#clone -381 23 -45 -389 0 -56 -389 139 -56
