# Update displays showing health of remaining wards

## INPUT
#   INT SapphireWard
#   INT EmeraldWard
#   INT TopazWard
#   INT AmethystWard
#   INT RubyWard

#===============================================================================================================

$data modify block -259 17 -77 front_text.messages[0] set value "Amethyst: $(AmethystWard)"
$data modify block -259 17 -77 front_text.messages[1] set value "Sapphire: $(SapphireWard)"
$data modify block -259 17 -77 front_text.messages[2] set value "Topaz: $(TopazWard)  Ruby: $(RubyWard)"
$data modify block -259 17 -77 front_text.messages[3] set value "Emerald: $(EmeraldWard)"
