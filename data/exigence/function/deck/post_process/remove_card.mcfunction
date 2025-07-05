# Removes card from deck

## INPUT
#   STR card_name

#================================================================================================

#$say Remove card $(card_name)

$data modify storage exigence:give card_name set value $(card_name)

# Start iteration
$function exigence:deck/post_process/remove_card_loop {card_name:$(card_name),index:0}
