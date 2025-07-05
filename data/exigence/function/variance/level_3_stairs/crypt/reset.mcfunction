
#say Crypt reset

# Testing model
#setblock -383 152 -18 birch_slab
#setblock -383 153 -19 birch_slab

# Reset temp blocks
#fill -354 138 25 -354 140 21 air
#fill -369 157 15 -369 159 19 air

# Reset temp hazard
#fill -364 145 25 -364 155 21 air replace sculk
#fill -363 160 15 -363 170 19 air replace sculk

# Clone stairs
#   1 lower
clone -353 26 20 -374 0 14 -374 151 14
#   2 upper
clone -352 27 30 -374 0 24 -374 136 21
