
scoreboard players set @s give_mana 0

tag @s[scores={cmd_state_givemana=0}] add cmd_potion_changed
scoreboard players set @s[scores={cmd_state_givemana=0}] cmd_state_givemana 1

scoreboard players set @s[tag=!cmd_potion_changed,scores={cmd_state_givemana=1}] cmd_state_givemana 0

tellraw @s[scores={cmd_state_givemana=1}] {"text":"[클래스 PVP] 클래스 리셋 시 마나 포션 64개가 지급됩니다.","color":"gray","bold":false,"italic":false}

tellraw @s[scores={cmd_state_givemana=0}] {"text":"[클래스 PVP] 클래스 리셋 시 마나 포션 64개가 지급되지 않습니다.","color":"gray","bold":false,"italic":false}

tag @s remove cmd_potion_changed
scoreboard players enable @s give_mana