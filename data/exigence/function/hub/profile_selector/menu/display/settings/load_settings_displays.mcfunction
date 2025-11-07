# Load the settings menu

## CONSTRAINTS
#   AS/AT profile selector node

## INPUT
#   INT player_id
#   INT profile_selector_id

#=============================================================================================================

## TOGGLE
#   Left side
$execute positioned ~5.49 ~2.5 ~-1.3 run function exigence:hub/profile_selector/menu/display/settings/load/show_resource_consume {player_id:$(player_id),profile_selector_id:$(profile_selector_id)}
$execute positioned ~5.49 ~2.2 ~-1.3 run function exigence:hub/profile_selector/menu/display/settings/load/show_resource_generate {player_id:$(player_id),profile_selector_id:$(profile_selector_id)}
$execute positioned ~5.49 ~1.9 ~-1.3 run function exigence:hub/profile_selector/menu/display/settings/load/show_resource_overflow {player_id:$(player_id),profile_selector_id:$(profile_selector_id)}
$execute positioned ~5.49 ~1.6 ~-1.3 run function exigence:hub/profile_selector/menu/display/settings/load/show_resource_underflow {player_id:$(player_id),profile_selector_id:$(profile_selector_id)}

$execute positioned ~5.49 ~1.0 ~-1.3 run function exigence:hub/profile_selector/menu/display/settings/load/ravager_glass_break {player_id:$(player_id),profile_selector_id:$(profile_selector_id)}
$execute positioned ~5.49 ~0.7 ~-1.3 run function exigence:hub/profile_selector/menu/display/settings/load/return_compass {player_id:$(player_id),profile_selector_id:$(profile_selector_id)}
$execute positioned ~5.49 ~0.4 ~-1.3 run function exigence:hub/profile_selector/menu/display/settings/load/coin_conversion_style {player_id:$(player_id),profile_selector_id:$(profile_selector_id)}

#   Right side
$execute positioned ~5.49 ~2.5 ~1.3 run function exigence:hub/profile_selector/menu/display/settings/load/card_display_bossbar {player_id:$(player_id),profile_selector_id:$(profile_selector_id)}
$execute positioned ~5.49 ~2.2 ~1.3 run function exigence:hub/profile_selector/menu/display/settings/load/card_display_sidebar {player_id:$(player_id),profile_selector_id:$(profile_selector_id)}
## CYCLE
$execute positioned ~5.49 ~1.8 ~1.3 run function exigence:hub/profile_selector/menu/display/settings/load/resource_bossbar_style {player_id:$(player_id),profile_selector_id:$(profile_selector_id)}
$execute positioned ~5.49 ~1.4 ~1.3 run function exigence:hub/profile_selector/menu/display/settings/load/resource_actionbar_style {player_id:$(player_id),profile_selector_id:$(profile_selector_id)}


#=============================================================================================================
## PREVIEW
$execute positioned ~5.49 ~1.0 ~ run function exigence:hub/profile_selector/menu/display/settings/preview/setup_preview {profile_selector_id:$(profile_selector_id)}
