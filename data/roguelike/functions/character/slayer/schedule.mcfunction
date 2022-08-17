

tellraw @a[tag=slayer,scores={RP_COOL2=0},nbt=!{Inventory:[{id:"minecraft:splash_potion",tag:{sl_potion:1b}}]}] {"text":"[클래스 PVP] 붉은 피로 물든 포션 사용 가능","color":"gray","bold":false,"italic":false}
tellraw @a[tag=slayer,scores={RP_COOL1=1}] {"text":"[클래스 PVP] 다크 룬 검 사용 가능","color":"gray","bold":false,"italic":false}

execute as @a[tag=slayer,scores={RP_COOL2=0},nbt=!{Inventory:[{id:"minecraft:splash_potion",tag:{sl_potion:1b}}]}] run function roguelike:character/slayer/blood_potion

effect give @a[tag=slayer,nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{darkrune:1b}}}] speed 2 1 false

execute store result score @a[tag=slayer,scores={RP_COOL2=0}] RP_COOL2 run data get storage minecraft:rp rp_sl_cool2



