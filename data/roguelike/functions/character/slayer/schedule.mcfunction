# 포션 코드

tellraw @s[scores={RP_COOL2=1},nbt=!{Inventory:[{tag:{sl_potion:1b}}]}] {"text":"[클래스 PVP] 붉은 피로 물든 포션 사용 가능","color":"gray","bold":false,"italic":false}

execute as @s[scores={RP_COOL2=1},nbt=!{Inventory:[{tag:{sl_potion:1b}}]}] run function roguelike:character/slayer/blood_potion

execute store result score @s[nbt={Inventory:[{tag:{sl_potion:1b}}]}] RP_COOL2 run data get storage roguelike:rp rp_sl_cool2

execute store result score @s[scores={RP_COOL2=..1}] RP_COOL2 run data get storage roguelike:rp rp_sl_cool2

# 다크룬 검 관련 코드

tellraw @s[scores={RP_COOL1=1}] {"text":"[클래스 PVP] 다크 룬 검 사용 가능","color":"gray","bold":false,"italic":false}

effect give @a[tag=slayer,nbt={SelectedItem:{tag:{darkrune:1b}}}] speed 2 0 false