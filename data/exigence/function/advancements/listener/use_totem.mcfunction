# Reset advancement
advancement revoke @s only exigence:listener/use_totem

#say Used totem

# If game not active, return
execute unless entity @s[tag=ActivePlayer] unless data storage exigence:dungeon {is_active:1} run return 1

# Trigger use
function exigence:menu/item_display/void_shop_display/items/totem_of_undying/teleport

# Reset effects
#   Totem of undying clears all status effects in vanilla
function exigence:player/effects/reset_active_effects

scoreboard players set @s game.player.heighten 0

tag @s add GiveGlow
schedule function exigence:player/utility/give_glow_after_totem 1t
