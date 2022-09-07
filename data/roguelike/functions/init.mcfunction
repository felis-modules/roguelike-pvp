scoreboard objectives add HP health
scoreboard objectives setdisplay belowName HP
scoreboard objectives modify HP displayname {"translate":"♥","color":"red"}
# gamerule sendCommandFeedback false
# gamerule showDeathMessages false

## 스킬 관련
scoreboard objectives add RP_USED_FSTICK minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add RP_USED_CSTICK minecraft.used:carrot_on_a_stick
scoreboard objectives add RP_USED_CBOW minecraft.used:crossbow
scoreboard objectives add RP_ON_DEATH deathCount

## 알파 이후 변경 1. 커스텀 공속 추가
scoreboard objectives add RP_WEAPON_COOL dummy
scoreboard objectives add RP_DMG_DEALT minecraft.custom:damage_dealt

## 이거는 평타 데미지를 파싱할 변수.
## 플레이어별로 데미지 상태 (사용한 무기) 를 character playerhitmatching 함수에서
## type 별로 인식하여 피격자,공격자의 정보를 넘겨준다.
## 자세한건 roguelike:character/player_hit, hurt 참고
scoreboard objectives add RP_DMG_PARSE dummy

scoreboard objectives add RP_COOL1 dummy
scoreboard objectives add RP_COOL2 dummy
scoreboard objectives add RP_COOL3 dummy
scoreboard objectives add RP_HURT_COOL dummy
scoreboard objectives add RP_ITEM_COOL1 dummy
scoreboard objectives add RP_ITEM_COOL2 dummy
## temp는 다용도 버퍼 직업별로 아무데나 쓰3
scoreboard objectives add temp dummy


## Event Listeners
scoreboard objectives add RP_USED_LPOTION minecraft.used:minecraft.lingering_potion
scoreboard objectives add RP_USED_PEARL minecraft.used:minecraft.ender_pearl




## Detect Damage Taken Player
# scoreboard objectives add DMG_TAKEN minecraft.custom:damage_taken
# scoreboard objectives add DMG_DEALT minecraft.custom:damage_dealt
scoreboard objectives add SHIELD_BLOCKED minecraft.used:shield

function roguelike:commands/load
function roguelike:character/load
function roguelike:multiplayer/load
function roguelike:armor/load

function roguelike:schedule