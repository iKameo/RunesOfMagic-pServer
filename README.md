# Runes of Magic-pServer-Commands
A collection of usefull commands for a Runes of Magic Admin/GM

---

### Database Queries
INSERT INTO [ROM_Account].[dbo].[PlayerAccount]
([Account_ID],[Password],[IsMd5Password],[IsAutoConvertMd5])
VALUES
('accountname','password',0,1)
GO

`accountname`: Account used to Login  
`password`: exampe: 123456ABC  

---

### Ingame GM commands
_all typed into the GM chat: /gm_

**/run GM_ObjEdit_Frame:Show()**  
(_start the gm_ObjectEdit addon_)

**? setvalue lv 90**  
(_sets the character level to the given level: here lvl90_)  

**? setvalue job 0**  
(_change your first class to a new one_)

**? setvalue subjob 0**  
(_change your second class to a new one_)

| ID    | Class |
| -------- | ------- |
| 0  | GM / Knight    |
| 1 | Warrior     |
| 2    | Scout    |
| 3    | Rogue    |
| 4    | Mage    |
| 5    | Priest    |
| 6    | Knight    |
| 7    | Warden    |
| 8    | Druid    |
| 9    | Warlock    |
| 10    | Champion    |

**? givemoney 999999999**  
(_give money to yourself _)

**? givemoney_bonus 99999**  
(_give rubies to yourself 99999 is max. amount_)

**? setvalue TpExp 999999999**  
(set talent points to the given number_)

**? setvalue Exp 999999999**  
(set experience points to the given number_)

**? give itemID / monsterID /bossID**  
(_give item to yourself or spawn monster/boss with ID_)

**? setvalue stat 999999**  
(_insert STA, STR, AGI, INT, MND for stat_)

**? Zone ID**  
(_teleports you to the specified zone. Exchange ID for the ZoneID_)


---

## Enchanting
_all typed into the GM chat: /gm_  

**Sys209581_name**  
(_weapon enchanting_)

**Sys209582_name**  
(_armor enchanting_)

**Sys209583_name**  
(_accessory enchanting_)

**Sys209584_name**  
(_wings enchanting_)

**Sys209585_name**  
(_driller item_)

**Sys240233_name**  
(_attribute cleaner enchanting_)

---

## Player interaction
_all typed into the GM chat: /gm_  

**? gotoplayername Player**  
(_teleport to player_)

**? callplayername Player**  
(_teleport player to you_)

**? killid %t_id**   
(_kill target_)

**? callid %t_id**  
(_teleport target to you_)

**? delobj %t_id**  
(_delete target NPC_)

**? kickid %t_id**  
(_kick target player_)

**? setvalue race 0/1/2**  
(_change race (0- human, 1- elf, 2- dwarf)_)

**? setvalue sex 0/1**  
(_change gender (0- male, 1- female)_)

**? gmhide**  
(_make yourself invisible_)

**? attackflag**  
(_"hide" yourself from mobs, so they wont attack you_)

**? full**  
(_heal MP / HP / etc.._)

**? skillFull**  
(_upgrades all of your weapon skills to maximum value_)

**? cardFul**  
(_unlock your whole monster compendium_)

**? bcast <SampleText>**  
(_send serverwide message in the center of the screen_)

**? resetColdown**  
(_this is not a typo!! - resets all of your cooldowns_)

**? spellMagic <targetId> <skillId>**  
(_cast skillID to targetID_)

**? createPet <ID> [Level] [PetType(???)]**  
(_create a oet with given values_)

**? changeJob**  
(_shows standard class change dialog._)

**? setTitleStr <TitleString>**  
(_ - sets your title_)

**? randTransport**  
(_ transports you to a random place in current location_)

---

## Jobs / Professions
_all typed into the GM chat: /gm_  

**? give ID**  

| ID    | Profession | Artisan | Expert | Master | Legend |
| -------- | ------- | ------- | ------- | ------- | ------- |
| SkillValue 16  | Blacksmith    | 540340 | 504349 | 540358 | 540368 |
| SkillValue 17 | Carpentry     | 540341 | 504350 | 540359 | 540369 |
| SkillValue 18    | Armorcrafting    | 540342 | 504351 | 540360 | 540370 |
| SkillValue 19    | Tailoring    | 540343 | 504352 | 540361 | 540371 |
| SkillValue 20    | Cooking    | 540344 | 504353 | 540362 | 540372 |
| SkillValue 21    | Alchemy    | 540345 | 504354 | 540363 | 540373 |
| SkillValue 22    | Mining    | 540346 | 504355 | 540364 | 540374 |
| SkillValue 23    | Woodcutting    | 540347 | 504356 | 540365 | 540375 |
| SkillValue 24    | Herbalist    | 540348 | 504357 | 540366 | 540376|
| SkillValue 26    | Planting    | 542887 | 542888 | 542889 | --- |



