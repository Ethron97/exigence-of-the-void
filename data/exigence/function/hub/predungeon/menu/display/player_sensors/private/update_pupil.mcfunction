# Update pupil looking at

## CONSTRAINTS
#   AS/AT player sensor

#====================================================================================================

# Update this sensors pupil to look at the player with the looking_at id

scoreboard players operation #compare IDID = @s IDID

execute as @a[distance=..10,tag=Predungeon] if score @s shop.player.looking_at_idid = #compare IDID run tag @s add MeMeMe

execute facing entity @p[distance=..16,tag=MeMeMe] eyes positioned ^ ^ ^0.15 as @n[distance=..0.5,type=item_display,tag=PlayerSensorPupil] align z run tp @s ~ ~ ~0.82

tag @p[distance=..10,tag=Predungeon,tag=MeMeMe] remove MeMeMe