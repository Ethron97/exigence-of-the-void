
#say Guard reset

# Testing model
#setblock -382 152 -25 birch_slab
#setblock -383 153 -24 birch_slab

# Reset temp blocks
#fill -323 138 -77 -319 140 -77 air
#fill -325 153 -56 -325 155 -52 air

# Reset temp hazard
#fill -323 145 -67 -319 155 -67 air replace sculk
#fill -335 160 -52 -335 170 -56 air replace sculk

# Clone staircase
#   1 (lower)
clone -318 24 -61 -324 0 -78 -324 136 -78
#   2 (upper)
clone -326 25 -51 -343 0 -57 -343 151 -57
