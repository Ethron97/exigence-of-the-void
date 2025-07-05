# Cleans up everything after a trial, win or lose

# Kill entities
kill @e[type=minecraft:block_display,tag=DropBlock]
kill @e[type=minecraft:block_display,tag=PizzaLine]
kill @e[type=minecraft:marker,tag=BoltTrialSetup]
kill @e[type=minecraft:marker,tag=PizzaLightning]

# Clone grond
clone -419 125 -23 -409 125 -13 -419 151 -23

# Hide bossbar
bossbar set exigence:trial_bolt visible false

# Replace end portal
fill -422 148 -26 -405 148 -10 black_concrete replace end_portal

# Reset fire
fill -407 158 -25 -421 158 -11 minecraft:chiseled_tuff replace minecraft:soul_soil
setblock -414 159 -25 fire
setblock -409 159 -23 fire
setblock -407 159 -18 fire
setblock -409 159 -13 fire
setblock -414 159 -11 fire
setblock -419 159 -13 fire
setblock -421 159 -18 fire
setblock -419 159 -23 fire
