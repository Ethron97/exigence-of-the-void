# Clear door (and ender-pearl proofing barriers)
fill -421 66 -145 -419 68 -143 air replace barrier
fill -421 66 -145 -419 68 -143 air destroy

# Surrounding effects
fill -442 64 -132 -431 75 -123 minecraft:sea_lantern replace warped_hyphae
setblock -420 68 -144 light[level=10]