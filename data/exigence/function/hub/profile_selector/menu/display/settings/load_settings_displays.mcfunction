# Load the settings menu

## CONSTRAINTS
#   AS/AT profile selector node

## INPUT
#   exigence:temp INT player_id
#   exigence:temp INT profile_selector_id

#====================================================================================================

## TOGGLE
#   Left side
execute positioned ~5.49 ~2.5 ~-1.3 run function exigence:hub/profile_selector/menu/display/settings/load/show_resource_consume
execute positioned ~5.49 ~2.2 ~-1.3 run function exigence:hub/profile_selector/menu/display/settings/load/show_resource_generate
execute positioned ~5.49 ~1.9 ~-1.3 run function exigence:hub/profile_selector/menu/display/settings/load/show_resource_overflow
execute positioned ~5.49 ~1.6 ~-1.3 run function exigence:hub/profile_selector/menu/display/settings/load/show_resource_underflow

execute positioned ~5.49 ~1.0 ~-1.3 run function exigence:hub/profile_selector/menu/display/settings/load/ravager_glass_break
execute positioned ~5.49 ~0.7 ~-1.3 run function exigence:hub/profile_selector/menu/display/settings/load/return_compass
execute positioned ~5.49 ~0.4 ~-1.3 run function exigence:hub/profile_selector/menu/display/settings/load/coin_conversion_style

#   Lower middle
execute positioned ~5.49 ~0.7 ~0.325 run function exigence:hub/profile_selector/menu/display/settings/load/currency_warn
execute positioned ~5.49 ~0.4 ~0.325 run function exigence:hub/profile_selector/menu/display/settings/load/allow_coop_invites

#   Right side
execute positioned ~5.49 ~2.5 ~1.3 run function exigence:hub/profile_selector/menu/display/settings/load/card_display_bossbar
execute positioned ~5.49 ~2.2 ~1.3 run function exigence:hub/profile_selector/menu/display/settings/load/card_display_sidebar
## CYCLE
execute positioned ~5.49 ~1.8 ~1.3 run function exigence:hub/profile_selector/menu/display/settings/load/resource_bossbar_style
execute positioned ~5.49 ~1.4 ~1.3 run function exigence:hub/profile_selector/menu/display/settings/load/resource_actionbar_style

#====================================================================================================
## PREVIEW
execute positioned ~5.49 ~1.0 ~ run function exigence:hub/profile_selector/menu/display/settings/preview/setup_preview