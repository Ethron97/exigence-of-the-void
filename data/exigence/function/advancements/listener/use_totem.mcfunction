# Reset advancement
advancement revoke @s only exigence:listener/use_totem

#say Used totem

# Return if the game is not active or this player is not active
execute if score game.is_active game.state matches 0 run return 1
execute unless entity @s[tag=ActivePlayer] run return 1
#----------------------------------------------------------------------------------------------------

# Trigger use
function exigence:menu/item_display/void_shop_display/items/totem_of_undying/teleport

# Reset effects
#   Totem of undying clears all status effects in vanilla, so we will clear all Custom effects too
function exigence:player/effects/reset_active_effects

scoreboard players set @s game.player.heighten 0

tag @s add GiveGlow
schedule function exigence:player/utility/give_glow_after_totem 1t

# If game.player.mod.regen_mantle = 6, +1 max health
# (Totem gives regen naturally, bypassing our trigger)
execute if score @s game.player.mod.regen_mantle matches 6 run function exigence:player/attributes/health_boost/increase_health {boost:2}