title @a times 20t 100t 20t

title @a title ""
# $title @a subtitle [{"color":"red","italic":true,"text":"..."},{"color":"red","italic":true,"selector":"@a[scores={Marked=1}]"},{"color":"red","italic":true,"text":"$(execution_message)"}]
$title @a subtitle [{"color":"red","italic":true,"text":"$(execution_message_prefix)"},{"color":"red","italic":true,"selector":"@a[scores={Marked=1}]"},{"color":"red","italic":true,"text":"$(execution_message_suffix)"}]

schedule function setup:reset_title_times 240t

schedule function execution:execution_messages/replace_scoreboard 160t