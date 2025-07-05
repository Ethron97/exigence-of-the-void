# Update displays showing health of remaining wards

## INPUT
#   INT HighestWin

#===============================================================================================================

$data modify block -262 20 -77 front_text.messages[3] set value "Highest Win: $(HighestWin)"
