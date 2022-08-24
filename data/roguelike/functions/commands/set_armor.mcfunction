scoreboard players set @a[scores={get_red=1..}] cmd_armor_state 1
scoreboard players set @a[scores={get_blue=1..}] cmd_armor_state 2
scoreboard players set @a[scores={get_wolf=1..}] cmd_armor_state 3

function roguelike:commands/apply_armor
tellraw @s {"text":"[클래스 PVP] 장비를 자동 장착하였습니다.","color":"gray","bold":false,"italic":false}
tellraw @s[scores={cmd_armor_state=1}] {"text":"[클래스 PVP] 클래스 리셋 시 블러드 나이츠 장비 세트가 지급됩니다.","color":"gray","bold":false,"italic":false}
tellraw @s[scores={cmd_armor_state=2}] {"text":"[클래스 PVP] 클래스 리셋 시 푸른 밤 장비 세트가 지급됩니다.","color":"gray","bold":false,"italic":false}
tellraw @s[scores={cmd_armor_state=3}] {"text":"[클래스 PVP] 클래스 리셋 시 마법 늑대 장비 세트가 지급됩니다.","color":"gray","bold":false,"italic":false}


scoreboard players set @s get_blue 0
scoreboard players set @s get_red 0
scoreboard players set @s get_wolf 0
scoreboard players enable @s get_blue
scoreboard players enable @s get_red
scoreboard players enable @s get_wolf