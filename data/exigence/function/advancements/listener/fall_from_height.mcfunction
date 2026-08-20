# Revoke the advanancement so they can get it again
advancement revoke @s only exigence:listener/fall_from_height

# If they had temp attribute from enchanted feather, remove it
attribute @s minecraft:gravity modifier remove exigence:feather
scoreboard players set @s game.player.feather_gravity 0
