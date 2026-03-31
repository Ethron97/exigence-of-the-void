# Update pupil looking at

## CONSTRAINTS
#   AS/AT player sensor

#====================================================================================================

# Update this sensors pupil to look at the player with the looking_at id

scoreboard players operation #compare IDID = @s IDID

execute as @a[tag=Predungeon,distance=..10] if score @s shop.player.looking_at_idid = #compare IDID run tag @s add MeMeMe

execute facing entity @p[tag=MeMeMe,distance=..16] eyes positioned ^ ^ ^0.15 as @n[distance=..0.5,type=item_display,tag=PlayerSensorPupil] align z run tp @s ~ ~ ~0.82

tag @p[tag=Predungeon,tag=MeMeMe,distance=..10] remove MeMeMe