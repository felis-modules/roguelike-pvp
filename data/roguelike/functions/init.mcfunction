scoreboard objectives add HP health
scoreboard objectives setdisplay belowName HP
scoreboard objectives modify HP displayname {"translate":"♥","color":"red"}
gamerule sendCommandFeedback false

## 스킬 관련
scoreboard objectives add RP_USED_FSTICK minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add RP_USED_CSTICK minecraft.used:carrot_on_a_stick
scoreboard objectives add RP_USED_CBOW minecraft.used:crossbow
scoreboard objectives add RP_COOL1 dummy
scoreboard objectives add RP_COOL2 dummy
scoreboard objectives add RP_COOL3 dummy
scoreboard objectives add RP_HURT_COOL dummy

## Event Listeners




## Detect Damage Taken Player
# scoreboard objectives add DMG_TAKEN minecraft.custom:damage_taken
# scoreboard objectives add DMG_DEALT minecraft.custom:damage_dealt
scoreboard objectives add SHIELD_BLOCKED minecraft.used:shield

function roguelike:commands/load

function roguelike:character/load

function roguelike:schedule