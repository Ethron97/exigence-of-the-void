# Teleport this pot marker offshore
# Used when we first converted pot markers from being located physically on the pot
# vs being "off shore" in the game controller area, as to not cause undue game-ticks

## CONSTRAINTS
#   AS pot marker

#====================================================================================================
execute unless entity @s[type=minecraft:marker,tag=PotMarker] run return run say I am not a pot marker!
#----------------------------------------------------------------------------------------------------

## SWITCH
execute if entity @s[tag=bolt] run return run tp @s 487.5 0.0 455.5
execute if entity @s[tag=dune] run return run tp @s 487.5 0.00 471.5
execute if entity @s[tag=eye] run return run tp @s 487.5 0.00 487.5
execute if entity @s[tag=flow] run return run tp @s 488.5 0.00 504.5
execute if entity @s[tag=silence] run return run tp @s 487.5 0.0 519.5
execute if entity @s[tag=spire] run return run tp @s 488.5 0.00 535.5

execute if entity @s[tag=snout] run return run tp @s 472.5 0.0 456.5
execute if entity @s[tag=wild] run return run tp @s 471.5 0.00 471.5
execute if entity @s[tag=sentry] run return run tp @s 473.5 0.0 487.5
execute if entity @s[tag=ward] run return run tp @s 471.5 0.0 503.5
execute if entity @s[tag=coast] run return run tp @s 472.5 0.0 518.5
execute if entity @s[tag=vex] run return run tp @s 472.5 0.0 535.5

execute if entity @s[tag=host] run return run tp @s 456.5 0.0 455.5
execute if entity @s[tag=wayfinder] run return run tp @s 457.5 0.0 471.5
execute if entity @s[tag=shaper] run return run tp @s 455.5 0.0 486.5
execute if entity @s[tag=raiser] run return run tp @s 455.5 0.0 503.5
execute if entity @s[tag=tide] run return run tp @s 456.5 0.0 518.5
execute if entity @s[tag=rib] run return run tp @s 455.5 0.0 535.5