# Update wall signs with deck analysis data

## CARDS
$execute if score CardsTotal DeckAnalysis matches 10.. run data modify block -257 19 -75 front_text.messages[0] set value "Total Cards:  $(CardsTotal)"
$execute if score CardsTotal DeckAnalysis matches 0..9 run data modify block -257 19 -75 front_text.messages[0] set value "Total Cards:   $(CardsTotal)"
#execute if score CardsTotal DeckAnalysis matches 0 run data modify block -257 19 -75 front_text.messages[0] set value "Total Cards:    "
$execute if score CardsVoid DeckAnalysis matches 10.. run data modify block -257 19 -75 front_text.messages[1] set value "Void:           $(CardsVoid)"
$execute if score CardsVoid DeckAnalysis matches 0..9 run data modify block -257 19 -75 front_text.messages[1] set value "Void:            $(CardsVoid)"
#execute if score CardsVoid DeckAnalysis matches 0 run data modify block -257 19 -75 front_text.messages[1] set value "Void:              "
$execute if score CardsInstant DeckAnalysis matches 10.. run data modify block -257 19 -75 front_text.messages[2] set value "Instant:       $(CardsInstant)"
$execute if score CardsInstant DeckAnalysis matches 0..9 run data modify block -257 19 -75 front_text.messages[2] set value "Instant:        $(CardsInstant)"
#execute if score CardsInstant DeckAnalysis matches 0 run data modify block -257 19 -75 front_text.messages[2] set value "Instant:            "
$execute if score CardsAscend DeckAnalysis matches 10.. run data modify block -257 19 -75 front_text.messages[3] set value "Ascendent:   $(CardsAscend)"
$execute if score CardsAscend DeckAnalysis matches 0..9 run data modify block -257 19 -75 front_text.messages[3] set value "Ascendent:    $(CardsAscend)"
#execute if score CardsAscend DeckAnalysis matches 0 run data modify block -257 19 -75 front_text.messages[3] set value "Ascendent:      "

## LEVEL RELATED
$data modify block -257 18 -75 front_text.messages[0] set value "Difficulty Mod: $(DifficultyMod)"
$data modify block -257 18 -75 front_text.messages[1] set value "Level 1 Keys: +$(Level1Keys)"
$data modify block -257 18 -75 front_text.messages[2] set value "Level 2 Keys: +$(Level2Keys)"
$data modify block -257 18 -75 front_text.messages[3] set value "Level 3 Keys: +$(Level3Keys)"

## DROPS
$execute if score Treasure DeckAnalysis matches 100.. run data modify block -257 19 -74 front_text.messages[0] set value "🍪 Treasure: $(Treasure)"
$execute if score Treasure DeckAnalysis matches 10..99 run data modify block -257 19 -74 front_text.messages[0] set value "🍪 Treasure:  $(Treasure)"
$execute if score Treasure DeckAnalysis matches 1..9 run data modify block -257 19 -74 front_text.messages[0] set value "🍪 Treasure:   $(Treasure)"
$execute if score Treasure DeckAnalysis matches 0 run data modify block -257 19 -74 front_text.messages[0] set value "🍪 Treasure:    $(Treasure)"

$execute if score Ember DeckAnalysis matches 100.. run data modify block -257 19 -74 front_text.messages[1] set value "🔥 Ember:     $(Ember)"
$execute if score Ember DeckAnalysis matches 10..99 run data modify block -257 19 -74 front_text.messages[1] set value "🔥 Ember:      $(Ember)"
$execute if score Ember DeckAnalysis matches 1..9 run data modify block -257 19 -74 front_text.messages[1] set value "🔥 Ember:       $(Ember)"
$execute if score Ember DeckAnalysis matches 0 run data modify block -257 19 -74 front_text.messages[1] set value "🔥 Ember:        $(Ember)"

$execute if score Berry DeckAnalysis matches 100.. run data modify block -257 19 -74 front_text.messages[2] set value "🍒 Berry:     $(Berry)"
$execute if score Berry DeckAnalysis matches 10..99 run data modify block -257 19 -74 front_text.messages[2] set value "🍒 Berry:      $(Berry)"
$execute if score Berry DeckAnalysis matches 1..9 run data modify block -257 19 -74 front_text.messages[2] set value "🍒 Berry:       $(Berry)"
$execute if score Berry DeckAnalysis matches 0 run data modify block -257 19 -74 front_text.messages[2] set value "🍒 Berry:        $(Berry)"

## NEGATIVES
$execute if score Hazard DeckAnalysis matches 10.. run data modify block -257 19 -73 front_text.messages[2] set value "☢ Hazard:     +$(Hazard)"
$execute if score Hazard DeckAnalysis matches 1..9 run data modify block -257 19 -73 front_text.messages[2] set value "☢ Hazard:      +$(Hazard)"
$execute if score Hazard DeckAnalysis matches 0 run data modify block -257 19 -73 front_text.messages[2] set value "☢ Hazard:         $(Hazard)"

$execute if score Menace DeckAnalysis matches 10.. run data modify block -257 19 -73 front_text.messages[3] set value "? Menace:     $(Menace)"
$execute if score Menace DeckAnalysis matches 1..9 run data modify block -257 19 -73 front_text.messages[3] set value "? Menace:      $(Menace)"
$execute if score Menace DeckAnalysis matches 0 run data modify block -257 19 -73 front_text.messages[3] set value "? Menace:       $(Menace)"
$execute if score Menace DeckAnalysis matches -9..-1 run data modify block -257 19 -73 front_text.messages[3] set value "? Menace:     $(Menace)"


## RESOURCES
$execute if score GreenConsume DeckAnalysis matches 10.. run data modify block -257 18 -74 front_text.messages[1] set value "❂ Green:    $(GreenConsume)"
$execute if score GreenConsume DeckAnalysis matches ..9 run data modify block -257 18 -74 front_text.messages[1] set value "❂ Green:     $(GreenConsume)"

$execute if score RedConsume DeckAnalysis matches 10.. run data modify block -257 18 -74 front_text.messages[2] set value "❂ Red:       $(RedConsume)"
$execute if score RedConsume DeckAnalysis matches ..9 run data modify block -257 18 -74 front_text.messages[2] set value "❂ Red:        $(RedConsume)"

$execute if score AquaConsume DeckAnalysis matches 10.. run data modify block -257 18 -74 front_text.messages[3] set value "❂ Aqua:     $(AquaConsume)"
$execute if score AquaConsume DeckAnalysis matches ..9 run data modify block -257 18 -74 front_text.messages[3] set value "❂ Aqua:      $(AquaConsume)"


## POTION EFFECTS A
$execute if score speedS FormatTime matches 10.. run data modify block -257 19 -72 front_text.messages[0] set value "Speed 1      $(speedM):$(speedS)"
$execute if score speedS FormatTime matches ..9 run data modify block -257 19 -72 front_text.messages[0] set value "Speed 1      $(speedM):0$(speedS)"
$execute if score speed2S FormatTime matches 10.. run data modify block -257 19 -72 front_text.messages[1] set value "Speed 2      $(speed2M):$(speed2S)"
$execute if score speed2S FormatTime matches ..9 run data modify block -257 19 -72 front_text.messages[1] set value "Speed 2      $(speed2M):0$(speed2S)"
$execute if score jumpS FormatTime matches 10.. run data modify block -257 19 -72 front_text.messages[2] set value "Jump Boost  $(jumpM):$(jumpS)"
$execute if score jumpS FormatTime matches ..9 run data modify block -257 19 -72 front_text.messages[2] set value "Jump Boost  $(jumpM):0$(jumpS)"
$execute if score regenS FormatTime matches 10.. run data modify block -257 19 -72 front_text.messages[3] set value "Regen         $(regenM):$(regenS)"
$execute if score regenS FormatTime matches ..9 run data modify block -257 19 -72 front_text.messages[3] set value "Regen         $(regenM):0$(regenS)"

## POTION EFFECTS B
$execute if score invisibilityS FormatTime matches 10.. run data modify block -257 19 -71 front_text.messages[0] set value "Invisibility    $(invisibilityM):$(invisibilityS)"
$execute if score invisibilityS FormatTime matches ..9 run data modify block -257 19 -71 front_text.messages[0] set value "Invisibility    $(invisibilityM):0$(invisibilityS)"

## DETECTION EFFECTS
$execute if score glimmerS FormatTime matches 10.. run data modify block -257 18 -72 front_text.messages[0] set value "Glimmer        $(glimmerM):$(glimmerS)"
$execute if score glimmerS FormatTime matches ..9 run data modify block -257 18 -72 front_text.messages[0] set value "Glimmer        $(glimmerM):0$(glimmerS)"
$execute if score flickerS FormatTime matches 10.. run data modify block -257 18 -72 front_text.messages[1] set value "Flicker        $(flickerM):$(flickerS)"
$execute if score flickerS FormatTime matches ..9 run data modify block -257 18 -72 front_text.messages[1] set value "Flicker        $(flickerM):0$(flickerS)"
$execute if score beastSenseS FormatTime matches 10.. run data modify block -257 18 -72 front_text.messages[2] set value "Beastsense  $(beastSenseM):$(beastSenseS)"
$execute if score beastSenseS FormatTime matches ..9 run data modify block -257 18 -72 front_text.messages[2] set value "Beastsense  $(beastSenseM):0$(beastSenseS)"
$execute if score detectionS FormatTime matches 10.. run data modify block -257 18 -72 front_text.messages[3] set value "Clairvoyance $(detectionM):$(detectionS)"
$execute if score detectionS FormatTime matches ..9 run data modify block -257 18 -72 front_text.messages[3] set value "Clairvoyance $(detectionM):0$(detectionS)"