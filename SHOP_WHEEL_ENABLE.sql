/*

-*** WARNING ***-
This file will TRUNCATE StringDB , NewShopInfo, SlotMachine_TypeInfo and SlotMachineBase.
Based off "Chronicles of Arcadia" Shops..

Created By : Janebug
Speacial thanks to : Mageoski, andelwol26, Beerpyrs and Lifefire. For all there help, Breaking down the tables, and columns

world 30 to 1, SortNumber, NeedMemberID, SellType, SellType1, SellType2, Sell_BeginTime, Sell_EndTime, Sell_Count, Sell_Max_Count, Sell_Cost, Sell_Cost_Bonus,
 Sell_Cost_Free, Sell_Cost_Get_Bonus, Icon, Item_DisplayerObjID, Item_Name, Item_Note, Item_OrgObjID1 - 8, Item_Count1 to 8, Gamble_Count, Gamele_Rate1 to 8, (not 10000 = 100%), EffectDay


([World1], [SellType], [SellType1], [Sell_BeginTime], [Sell_EndTime], [Sell_Count], [Sell_MaxCount], [Sell_Cost], [Sell_Cost_Bonus], [Sell_Cost_Free] )


These values are for Dias, 		Ruby, 			Tokens
					Sell_Cost, Sell_Cost_Bonus, Sell_Cost_Free

*/ 

USE [ROM_ImportDB]
GO

TRUNCATE TABLE [dbo].[StringDB]
GO

INSERT [dbo].[StringDB] ([KeyStr], [Content], [level], [sort]) VALUES
-- Main Catagorys Diamonds --	
-- Sub folder Consumables
	(N'SYS_ACCOUNTSTORE_TYPE_01', N'Consumables', 1, 1),
	(N'SYS_ACCOUNTSTORE_TYPE_01_01', N'TP & XP', 2, 1),
	(N'SYS_ACCOUNTSTORE_TYPE_01_02', N'Transportation', 2, 2),
	(N'SYS_ACCOUNTSTORE_TYPE_01_03', N'Must-Haves', 2, 3),
	(N'SYS_ACCOUNTSTORE_TYPE_01_04', N'Transformation', 2, 4),
	(N'SYS_ACCOUNTSTORE_TYPE_01_05', N'BackPack Tickets', 2, 5),
	(N'SYS_ACCOUNTSTORE_TYPE_01_06', N'Food', 2, 6),
	(N'SYS_ACCOUNTSTORE_TYPE_01_07', N'Potions', 2, 7),
	(N'SYS_ACCOUNTSTORE_TYPE_01_08', N'Sigils', 2, 8),
	(N'SYS_ACCOUNTSTORE_TYPE_01_09', N'Reset Scrolls', 2, 9),
	(N'SYS_ACCOUNTSTORE_TYPE_01_10', N'Bank Space Tickets', 2, 10),
	
-- Sub Folder Upgrading	
	(N'SYS_ACCOUNTSTORE_TYPE_02', N'Upgrading', 1, 2),
	(N'SYS_ACCOUNTSTORE_TYPE_02_01', N'Accessories', 2, 1),
	(N'SYS_ACCOUNTSTORE_TYPE_02_01_01', N'Rune Slot Drillers', 3, 1),
	(N'SYS_ACCOUNTSTORE_TYPE_02_01_02', N'Stones for Lv1-90', 4, 2),
	(N'SYS_ACCOUNTSTORE_TYPE_02_01_03', N'Stones for Lv1-100', 5, 3),
	(N'SYS_ACCOUNTSTORE_TYPE_02_02', N'Armor', 2, 2),
	(N'SYS_ACCOUNTSTORE_TYPE_02_02_01', N'Rune Slot Drillers', 3, 1),
	(N'SYS_ACCOUNTSTORE_TYPE_02_02_02', N'Stones for Lv1-90', 4, 2),
	(N'SYS_ACCOUNTSTORE_TYPE_02_02_03', N'Stones for Lv1-100', 5, 3),
	(N'SYS_ACCOUNTSTORE_TYPE_02_03', N'Weapons', 2, 3),
	(N'SYS_ACCOUNTSTORE_TYPE_02_03_01', N'Rune Slot Drillers', 3, 1),
	(N'SYS_ACCOUNTSTORE_TYPE_02_03_02', N'Stones for Lv1-90', 4, 2),
	(N'SYS_ACCOUNTSTORE_TYPE_02_03_03', N'Stones for Lv1-100', 5, 3),
	(N'SYS_ACCOUNTSTORE_TYPE_02_04', N'Back Slot', 2, 4),
	(N'SYS_ACCOUNTSTORE_TYPE_02_04_01', N'Rune Slot Drillers', 3, 1),
	(N'SYS_ACCOUNTSTORE_TYPE_02_04_02', N'Reguler Stones', 4, 2),
	(N'SYS_ACCOUNTSTORE_TYPE_02_05', N'Must-Haves', 2, 5),
	(N'SYS_ACCOUNTSTORE_TYPE_02_06', N'Runes', 2, 6),
-- Sub Folder Costumes
	(N'SYS_ACCOUNTSTORE_TYPE_03', N'Costumes', 1, 3),	
	(N'SYS_ACCOUNTSTORE_TYPE_03_01', N'Packages', 2, 1),
	(N'SYS_ACCOUNTSTORE_TYPE_03_01_01', N'Male', 3, 1),
	(N'SYS_ACCOUNTSTORE_TYPE_03_01_02', N'Female', 4, 2),		
	(N'SYS_ACCOUNTSTORE_TYPE_03_02', N'Single Pieces', 2, 2),	
	(N'SYS_ACCOUNTSTORE_TYPE_03_02_01', N'Male', 3, 1),
	(N'SYS_ACCOUNTSTORE_TYPE_03_02_02', N'Female', 4, 2),		
	(N'SYS_ACCOUNTSTORE_TYPE_03_03', N'Weapon', 2, 3),
	(N'SYS_ACCOUNTSTORE_TYPE_03_03_01', N'Female', 3, 1),
	(N'SYS_ACCOUNTSTORE_TYPE_03_03_02', N'UniSex', 4, 2),		
	(N'SYS_ACCOUNTSTORE_TYPE_03_04', N'Magic Wings', 2, 4),	
	(N'SYS_ACCOUNTSTORE_TYPE_03_04_01', N'UniSex', 3, 1),
	(N'SYS_ACCOUNTSTORE_TYPE_03_04_02', N'Male', 4, 2),
	(N'SYS_ACCOUNTSTORE_TYPE_03_04_03', N'Female', 5, 3),
		
	-- Sub Folder Crafting
	(N'SYS_ACCOUNTSTORE_TYPE_04', N'Crafting', 1, 4),	
	(N'SYS_ACCOUNTSTORE_TYPE_04_01', N'Furnitures', 2, 1),	
	(N'SYS_ACCOUNTSTORE_TYPE_04_01_01', N'Alchemy Bonus', 3, 1),
	(N'SYS_ACCOUNTSTORE_TYPE_04_01_02', N'Blacksmithing Bonus', 4, 2),
	(N'SYS_ACCOUNTSTORE_TYPE_04_01_03', N'Carpentry Bonus', 5, 3),
	(N'SYS_ACCOUNTSTORE_TYPE_04_01_04', N'Cooking Bonus', 6, 4),
	(N'SYS_ACCOUNTSTORE_TYPE_04_01_05', N'Armorcrafting Bonus', 7, 5),
	(N'SYS_ACCOUNTSTORE_TYPE_04_01_06', N'Tailering Bonus', 8, 6),	
	(N'SYS_ACCOUNTSTORE_TYPE_04_02', N'Resources', 2, 2),	
	(N'SYS_ACCOUNTSTORE_TYPE_04_03', N'Runes', 2, 3),
	(N'SYS_ACCOUNTSTORE_TYPE_04_04', N'Potions', 2, 4),
	(N'SYS_ACCOUNTSTORE_TYPE_04_05', N'Recipes', 2, 5),	
	(N'SYS_ACCOUNTSTORE_TYPE_04_06', N'Planting', 2, 6),	
	(N'SYS_ACCOUNTSTORE_TYPE_04_06_01', N'Pots', 3, 1),
	(N'SYS_ACCOUNTSTORE_TYPE_04_06_02', N'Consumables', 4, 2),	
	(N'SYS_ACCOUNTSTORE_TYPE_04_07', N'Others', 2, 7),	

-- Sub Encyclopedias
	(N'SYS_ACCOUNTSTORE_TYPE_05', N'Encyclopedias', 1, 5),	
	(N'SYS_ACCOUNTSTORE_TYPE_05_01', N'Crafting I', 2, 1),
	(N'SYS_ACCOUNTSTORE_TYPE_05_02', N'Crafting II', 2, 2),
	(N'SYS_ACCOUNTSTORE_TYPE_05_03', N'Skills I', 2, 3),
	(N'SYS_ACCOUNTSTORE_TYPE_05_04', N'Skills II', 2, 4),	
	
-- Sub Housing
	(N'SYS_ACCOUNTSTORE_TYPE_06', N'Housing', 1, 6),
	(N'SYS_ACCOUNTSTORE_TYPE_06_01', N'Storage', 2, 1),
	(N'SYS_ACCOUNTSTORE_TYPE_06_02', N'Beds', 2, 2),
	(N'SYS_ACCOUNTSTORE_TYPE_06_03', N'Tables & Chairs', 2, 3),
	(N'SYS_ACCOUNTSTORE_TYPE_06_04', N'Decorations', 2, 4),
	(N'SYS_ACCOUNTSTORE_TYPE_06_05', N'Cabinets', 2, 5),
	(N'SYS_ACCOUNTSTORE_TYPE_06_06', N'Fireplaces', 2, 6),
	(N'SYS_ACCOUNTSTORE_TYPE_06_07', N'Plants', 2, 7),
	(N'SYS_ACCOUNTSTORE_TYPE_06_08', N'Carpets', 2, 8),
	(N'SYS_ACCOUNTSTORE_TYPE_06_09', N'Guild Furnitures', 2, 9),
	(N'SYS_ACCOUNTSTORE_TYPE_06_10', N'Guild Resources', 2, 10),
	(N'SYS_ACCOUNTSTORE_TYPE_06_11', N'House Contracts', 2, 11),	
-- Pets
	(N'SYS_ACCOUNTSTORE_TYPE_07', N'Pets', 1, 7),
	(N'SYS_ACCOUNTSTORE_TYPE_07_01', N'Pet Eggs', 2, 1),
	(N'SYS_ACCOUNTSTORE_TYPE_07_01_01', N'Zodiac Pets', 3, 1),
	(N'SYS_ACCOUNTSTORE_TYPE_07_01_02', N'Normal Pets', 4, 2),
	(N'SYS_ACCOUNTSTORE_TYPE_07_01_03', N'Pets with Buff', 5, 3),	
	(N'SYS_ACCOUNTSTORE_TYPE_07_01_04', N'Others', 6, 4),	
	(N'SYS_ACCOUNTSTORE_TYPE_07_02', N'Pet System', 2, 2),
	(N'SYS_ACCOUNTSTORE_TYPE_07_02_01', N'Transformation', 3, 1),
	(N'SYS_ACCOUNTSTORE_TYPE_07_02_02', N'Others', 4, 2),	
	(N'SYS_ACCOUNTSTORE_TYPE_07_03', N'Pet Consume', 3, 3),

-- Mounts 
	(N'SYS_ACCOUNTSTORE_TYPE_08', N'Mounts', 1, 8),
	(N'SYS_ACCOUNTSTORE_TYPE_08_01', N'7 Days', 2, 1),
	(N'SYS_ACCOUNTSTORE_TYPE_08_01_01', N'Multi-Passenger', 3, 1),
	(N'SYS_ACCOUNTSTORE_TYPE_08_01_02', N'Single Passenger', 4, 2),	
	(N'SYS_ACCOUNTSTORE_TYPE_08_02', N'30 Days', 3, 2),
	(N'SYS_ACCOUNTSTORE_TYPE_08_02_01', N'Multi-Passenger', 4, 1),
	(N'SYS_ACCOUNTSTORE_TYPE_08_02_02', N'Single Passenger', 5, 2),	
	(N'SYS_ACCOUNTSTORE_TYPE_08_03', N'Permanent', 4, 3),
	(N'SYS_ACCOUNTSTORE_TYPE_08_03_01', N'Multi-Passenger', 5, 1),
	(N'SYS_ACCOUNTSTORE_TYPE_08_03_02', N'Single Passenger', 6, 2),
	
-- Packages
	(N'SYS_ACCOUNTSTORE_TYPE_09', N'Packages', 1, 9),
	(N'SYS_ACCOUNTSTORE_TYPE_09_01', N'Starter Packages', 2, 1),	
	(N'SYS_ACCOUNTSTORE_TYPE_09_02', N'Premium Packages', 3, 2),
	
-- Special Items	
	(N'SYS_ACCOUNTSTORE_TYPE_10', N'Special Items', 1, 10),
	(N'SYS_ACCOUNTSTORE_TYPE_10_01', N'Promotion', 2, 1),
	(N'SYS_ACCOUNTSTORE_TYPE_10_02', N'Music Insturments', 3, 2),
	(N'SYS_ACCOUNTSTORE_TYPE_10_03', N'Elite Skills', 4, 3),
	(N'SYS_ACCOUNTSTORE_TYPE_10_04', N'Janebugs Orginal', 5, 4);


GO


USE [ROM_ImportDB]
GO

TRUNCATE TABLE [dbo].[NewShopInfo]
GO


/*     rubys Sales */
INSERT INTO dbo.NewShopInfo
([World1], [SellType], [SellType1], [SellType2], [Sell_Cost_Bonus], [Sell_Get_Bonus], [Item_DisplayerObjID], [Item_OrgObjID1], [Item_Count1]) VALUES
-- Sub Folder xp tp
(1, 1, 1, -1, 280, 0, 0, 203574, 1),   /* High Quality Experience Potion */
(1, 1, 1, -1, 140, 0, 0, 201618, 1),   /* Master skill potion */
(1, 1, 1, -1, 160, 0, 0, 201460, 1),   /* Party Experience Potion */

-- Sub folder Must-Have
(1, 1, 3, -1, 10, 0, 0, 203490, 1),  /* Phirious Special Water Type B */
(1, 1, 3, -1, 15, 0, 0, 201085, 1),   /* Illusory Hair Chest */
(1, 1, 3, -1, 35, 0, 0, 202322, 1),   /* Potent Luck Potion  */
(1, 1, 3, -1, 399, 0, 0, 208792, 1),   /* Convenient Mailbox (7Days) */
(1, 1, 3, -1, 15, 0, 0, 201137, 1),   /* Convenient Bank */
(1, 1, 3, -1, 10, 0, 0, 203503, 1),   /* Phirius Elixir - Type E*/

-- Sub Folder Transformation
(1, 1, 4, -1, 5, 0, 0, 203091, 1),   /* Transformation Potion - Little Death                  */
(1, 1, 4, -1, 5, 0, 0, 206225, 1),   /* Transformation Potion - Vicious Night Shadow Bat      */
(1, 1, 4, -1, 5, 0, 0, 206221, 1),   /* Transformation Potion - Zombie                 */
(1, 1, 4, -1, 5, 0, 0, 206224, 1),   /* Transformation Potion - Prisoner's Shadow          */
(1, 1, 4, -1, 5, 0, 0, 205078, 1),   /* Transformation Potion - Hammertooth Sage              */
(1, 1, 4, -1, 10, 0, 0, 203196, 1),   /* Transformation Potion - Donichuka                  */
(1, 1, 4, -1, 10, 0, 0, 203415, 1),   /* Transformation Potion - Giant Guardian                */
(1, 1, 4, -1, 10, 0, 0, 203416, 1),   /* Transformation Potion - Gingerbreadman               */
(1, 1, 4, -1, 10, 0, 0, 240465, 1),   /* Transformation Potion - Rock Guardian                 */
(1, 1, 4, -1, 10, 0, 0, 203513, 1),   /* Transformation Potion - Snowman                       */
(1, 1, 4, -1, 5, 0, 0, 203163, 1),   /* Transformation Potion - Shaggy Bear                  */
(1, 1, 4, -1, 5, 0, 0, 203153, 1),   /* Transformation Potion - Giant Guardian               */
(1, 1, 4, -1, 5, 0, 0, 203088, 1),   /* Transformation Potion - Obsessive Shadow              */
(1, 1, 4, -1, 5, 0, 0, 203154, 1),   /* Transformation Potion - Ice Witch                     */
(1, 1, 4, -1, 5, 0, 0, 203162, 1),   /* Transformation Potion - Ent                      */
(1, 1, 4, -1, 5, 0, 0, 203164, 1),   /* Transformation Potion - Demonthorn Vine               */
(1, 1, 4, -1, 5, 0, 0, 203087, 1),   /* Transformation Potion - Fungus                     */
(1, 1, 4, -1, 5, 0, 0, 203086, 1),   /* Transformation Potion - Goblin                    */
(1, 1, 4, -1, 5, 0, 0, 203085, 1),   /* Transformation Potion - Frog                    */
(1, 1, 4, -1, 5, 0, 0, 240450, 1),   /* Transformation Potion - Evil Teddy Bear             */
(1, 1, 4, -1, 5, 0, 0, 240451, 1),   /* Transformation Potion - Smirking Castle Clown        */
(1, 1, 4, -1, 5, 0, 0, 240471, 1),   /* Transformation Potion - Annelia                     */
(1, 1, 4, -1, 5, 0, 0, 241252, 1),   /* Transformation Potion - Sacred Ice Crystal JuJu     */
(1, 1, 4, -1, 5, 0, 0, 241253, 1),   /* Transformation Potion - Breaking Dawn JuJu           */
(1, 1, 4, -1, 5, 0, 0, 241264, 1),   /* Transformation Potion - Exuberant Celebration JuJu    */
(1, 1, 4, -1, 5, 0, 0, 241265, 1),   /* Transformation Potion - Greenfeather Sparrow JuJu     */

-- Sub Folder BackPackTickets
(1, 1, 5, -1, 599, 0, 0, 206698, 1),   /* Backpack Scroll III (30 Days)       */
(1, 1, 5, -1, 599, 0, 0, 206699, 1),   /* Backpack Scroll IV (30 Days)       */
(1, 1, 5, -1, 599, 0, 0, 206700, 1),   /* Backpack Scroll V (30 Days)       */
(1, 1, 5, -1, 599, 0, 0, 206701, 1),   /* Backpack Scroll VI (30 Days)       */


-- Sub Folder Bank Space Tickets
(1, 1, 10, -1, 25, 0, 0, 207747, 1),   /* Bank Space Scroll II (7 Days)       */
(1, 1, 10, -1, 25, 0, 0, 207748, 1),   /* Bank Space Scroll III (7 Days)       */
(1, 1, 10, -1, 25, 0, 0, 207749, 1),   /* Bank Space Scroll IV (7 Days)       */
(1, 1, 10, -1, 25, 0, 0, 207750, 1),   /* Bank Space Scroll V (7 Days)       */
(1, 1, 10, -1, 55, 0, 0, 207743, 1),   /* Bank Space Scroll II (30 Days)       */
(1, 1, 10, -1, 55, 0, 0, 207744, 1),   /* Bank Space Scroll III (30 Days)       */
(1, 1, 10, -1, 55, 0, 0, 207745, 1),   /* Bank Space Scroll IV (30 Days)        */
(1, 1, 10, -1, 55, 0, 0, 207746, 1),   /* Bank Space Scroll V  (30 Days)       */

-- Sub Folder Upgrading/ Accessories
(1, 2, 1, -1, 50, 0, 0, 203063, 1),   /* Master Accessory Driller */
(1, 2, 1, -1, 199, 0, 0, 242834, 1),   /* Perfect Sun Jewel +6 - Elven */
(1, 2, 1, -1, 399, 0, 0, 242837, 1),   /* Perfect Advanced Sun Jewel +12 - Elven */
(1, 2, 1, -1, 599, 0, 0, 242840, 1),   /* Perfect Enhanced Sun Jewel +16 - Elven */
(1, 2, 1, -1, 999, 0, 0, 242843, 1),   /* Perfect Tempered Sun Jewel +20 - Elven */
-- Sub Folder Upgrading / Armor
(1, 2, 2, -1, 50, 0, 0, 203062, 1),   /* Master Armor Driller */
(1, 2, 2, -1, 199, 0, 0, 242833, 1),   /* Perfect Moon Jewel +6 - Elven */
(1, 2, 2, -1, 399, 0, 0, 242836, 1),   /* Perfect Advanced Moon Jewel +12 - Elven */
(1, 2, 2, -1, 599, 0, 0, 242839, 1),   /* Perfect Enhanced Moon Jewel +16 - Elven */
(1, 2, 2, -1, 999, 0, 0, 242842, 1),   /* Perfect Tempered Moon Jewel +20 - Elven */
-- Sub Folder Upgrading / Weapons
(1, 2, 3, -1, 50, 0, 0, 203061, 1),   /* Master Weapon Driller */
(1, 2, 3, -1, 199, 0, 0, 242832, 1),   /* Perfect Star Jewel +6 - Elven */
(1, 2, 3, -1, 399, 0, 0, 242835, 1),   /* Perfect Advanced Star Jewel +12 - Elven */
(1, 2, 3, -1, 599, 0, 0, 242838, 1),   /* Perfect Enhanced Star Jewel +16 - Elven */
(1, 2, 3, -1, 999, 0, 0, 242841, 1),   /* Perfect Tempered Star Jewel +20 - Elven */
-- Sub Folder Upgrading / BackPackTicket
(1, 2, 4, -1, 115, 0, 0, 207498, 1),   /* Master Back Slot Item Driller */
(1, 2, 4, -1, 130, 0, 0, 207492, 1),   /* Perfect Nebula Jewel +6 */
(1, 2, 4, -1, 150, 0, 0, 207493, 1),   /* Perfect Advanced Nebula Jewel +12 */
(1, 2, 4, -1, 195, 0, 0, 240148, 1),   /* Perfect Advanced Nebula Jewel +16 */
(1, 2, 4, -1, 220, 0, 0, 240164, 1),   /* Perfect Tempered Nebula Jewel +20 */
-- Folder Costumes / Sub Single Pieces
(1, 3, 2, 1, 65, 0, 0, 224324, 1),   /* Oriental Military Silver Shield  */
-- Sub Weapons (Male)
(1, 3, 2, 2, 65, 0, 0, 211487, 1),   /* Oriental Royal Militiary Long Sword (Male)  */
-- Sub Weapon (Female)
(1, 3, 3, 1, 65, 0, 0, 211488, 1),   /* Oriental Fashionable Militiary Long Sword (Female) */
(1, 3, 3, 1, 65, 0, 0, 211489, 1),   /* Oriental Royal Militiary Dagger (Female)  */
-- Sub Weapons (unisex)
(1, 3, 3, 2, 65, 0, 0, 211474, 1),   /* Flower Thorn */
(1, 3, 3, 2, 65, 0, 0, 211837, 1),   /* Giant Kabo's Oboe */
(1, 3, 3, 2, 65, 0, 0, 212138, 1),   /* Igor's Axe */
(1, 3, 3, 2, 65, 0, 0, 211469, 1),   /* Little Devil's Staff */
(1, 3, 3, 2, 65, 0, 0, 211866, 1),   /* Maddening Consciousness Staff */
(1, 3, 3, 2, 65, 0, 0, 211476, 1),   /* Maid's Umbrella */
(1, 3, 3, 2, 65, 0, 0, 211468, 1),   /* Nobleman's Cane */
(1, 3, 3, 2, 65, 0, 0, 212192, 1),   /* Rainbow Lollipop */
(1, 3, 3, 2, 65, 0, 0, 211479, 1),   /* Scarlte Sickle */
(1, 3, 3, 2, 65, 0, 0, 213240, 1),   /* Snowflake Handbell */
(1, 3, 3, 2, 65, 0, 0, 211477, 1),   /* Doomlord's Blade (Male) */
(1, 3, 3, 2, 65, 0, 0, 211840, 1),   /* Alpenhorn */
(1, 3, 3, 2, 65, 0, 0, 212136, 1),   /* Ancient Silverblade */
(1, 3, 3, 2, 65, 0, 0, 211470, 1),   /* Angel Blade */
(1, 3, 3, 2, 65, 0, 0, 212189, 1),   /* Beer Jug */
(1, 3, 3, 2, 65, 0, 0, 211834, 1),   /* Chime wood Guitar */
(1, 3, 3, 2, 65, 0, 0, 211475, 1),   /* Cowboy Blade */
(1, 3, 3, 2, 65, 0, 0, 211835, 1),   /* Dimitar's Sound */
(1, 3, 3, 2, 65, 0, 0, 212137, 1),   /* Elders' Long Sword */
(1, 3, 3, 2, 65, 0, 0, 211471, 1),   /* Flower Fairy's Bee Staff */
(1, 3, 3, 2, 65, 0, 0, 211481, 1),   /* Spirit of the Cheetah */
(1, 3, 3, 2, 65, 0, 0, 211473, 1),   /* Sword of the Lost Butterfly */
(1, 3, 3, 2, 65, 0, 0, 211478, 1),   /* Tip of Purle Flame */
(1, 3, 3, 2, 65, 0, 0, 211480, 1),   /* Wild Thorn Long Sword */
(1, 3, 3, 2, 65, 0, 0, 222905, 1),   /* Kuokuo's Shield */
(1, 3, 3, 2, 65, 0, 0, 211486, 1),   /* Green Wabbit Baton */
(1, 3, 3, 2, 65, 0, 0, 211506, 1),   /* Red-Eyed Wabbit Baton */
(1, 3, 3, 2, 65, 0, 0, 224324, 1),   /* Oriental Military Silver Shield */

-- Costume Sub / Magic Wings
(1, 3, 4, 1, 115, 0, 0, 222899, 1),   /* Flower Fairy's Wings */
(1, 3, 4, 1, 115, 0, 0, 222997, 1),   /* Holy Angel's Wings */
(1, 3, 4, 1, 115, 0, 0, 222865, 1),   /* Little Devil's Wings */
(1, 3, 4, 1, 115, 0, 0, 224987, 1);   /* Mighty Phoenix Wings */

GO
/* DONE RUBYS Above */



/*    Diamond Sales    */

INSERT [dbo].[NewShopInfo]
([World1], [SellType], [SellType1], [SellType2], [Sell_Cost], [Sell_Get_Bonus], [Item_DisplayerObjID], [Item_OrgObjID1], [Item_Count1])
VALUES
/*+++++ First 10 items with [SellType]=1 & [SellType1]=1 have a HOT icon +++++*/
/* if [Sell_BeginTime] is set to getdate() a NEW icon will be used */

/*+++++ Consumables +++++*/
-- TP & XP Sub folder 
(1, 1, 1, -1, 13, 2, 0, 201134, 10),	/* Experience Potion */
(1, 1, 1, -1, 2, 0, 0, 201134, 1),		/* Experience Potion */
(1, 1, 1, -1, 23, 4, 0, 201609, 10),	/* Powerful Experience Potion */
(1, 1, 1, -1, 3, 0, 0, 201609, 1),		/* Powerful Experience Potion */
(1, 1, 1, -1, 10, 2, 0, 201460, 1),		/* Party Experience Potion */
(1, 1, 1, -1, 13, 2, 0, 201610, 10),	/* 10 Skill Potion */
(1, 1, 1, -1, 2, 0, 0, 201610, 1),		/* Skill Potion */
(1, 1, 1, -1, 23, 4, 0, 201617, 10),	/* 10 Expert Skill Potion */
(1, 1, 1, -1, 3, 0, 0, 201617, 1),		/* Expert Skill Potion */
(1, 1, 1, -1, 23, 5, 0, 222925, 1),		/* Basic Experience Charm */
(1, 1, 1, -1, 37, 6, 0, 222927, 1),		/* Advanced Experiece Charm */
(1, 1, 1, -1, 97, 18, 0, 225216, 1),	/* Superior Experience Charm */
(1, 1, 1, -1, 23, 4, 0, 222926, 1),		/* Basic Talent Charm */
(1, 1, 1, -1, 37, 6, 0, 222928, 1),		/* Advanced Talent Charm */
(1, 1, 1, -1, 97, 18, 0, 225217, 1),	/* Superior Talent Charm */
(1, 1, 1, -1, 17, 2, 0, 201971, 1),		/* Basic Skill Reset Stone */
(1, 1, 1, -1, 197, 27, 0, 201086, 1),	/* Advanced Skill Reset Stone */
(1, 1, 1, -1, 75, 7, 0, 242628, 1),		/* Dual-Function Daily Quest Potion */
(1, 1, 1, -1, 350, 35, 0, 242628, 5),	/* 5 Dual-Function Daily Quest Potion */
(1, 1, 1, -1, 10, 0, 0, 203276, 10),	/* Experience Orb(10,000 Points) */
(1, 1, 1, -1, 1599, 65, 0, 202677, 1),	/* Power Up Pill - Level 50 */
(1, 1, 1, -1, 79, 7, 0, 242548, 1),		/* Experience Orb(10,000,000 Points) */
(1, 1, 1, -1, 69, 6, 0, 242551, 1),		/* Talent Orb(1,000,000 Points)  */
(1, 1, 1, -1, 49, 5, 0, 242631, 1),		/* Basic Daily Quest Skill Potion */
(1, 1, 1, -1, 69, 6, 0, 242629, 1),		/* Daily Quest Skill Potion */
(1, 1, 1, -1, 59, 4, 0, 242630, 1),		/* Basic Dual-Function Daily Quest Potion */

-- Transportation Sub Folder
(1, 1, 2, -1, 27, 8, 0, 202545, 10),	/* Love Crystal */
(1, 1, 2, -1, 7, 2, 0, 202902, 10),		/* 10 Marking Ink */
(1, 1, 2, -1, 27, 5, 0, 202903, 10),	/* 10 Transport Rune */
(1, 1, 2, -1, 3, 1, 0, 202903, 1),		/* Transport Rune */
(1, 1, 2, -1, 53, 10, 0, 202904, 10),	/* 10 Transport Portal Rune */
(1, 1, 2, -1, 6, 2, 0, 202904, 1),		/* Transport Portal Rune */
(1, 1, 2, -1, 27, 5, 0, 202435, 10),	/* 10 Home-sweet-home */
(1, 1, 2, -1, 3, 1, 0, 202435, 1),		/* Home-sweet-home */
(1, 1, 2, -1, 27, 5, 0, 203784, 10),	/* 10 Guid Castle Transport Stone */
(1, 1, 2, -1, 3, 1, 0, 203784, 1),		/* Guid Castle Transport Stone */
(1, 1, 2, -1, 75, 11, 0, 202905, 10),	/* 10 Passageway Rune */
(1, 1, 2, -1, 8, 2, 0, 202905, 1),		/* Passageway Rune */
(1, 1, 2, -1, 222, 22, 0, 202903, 99),	/* Transport Rune */
(1, 1, 2, -1, 299, 25, 0, 208783, 1),	/* Home-sweet-home(30 Days) */
(1, 1, 2, -1, 299, 25, 0, 208786, 1),	/* Guild Castle Transport Stone (30 Day) */

-- Must-Haves Sub Folder
(1, 1, 3, -1, 5, 1, 0, 203178, 1),		/* Ancient Treasure Key */
(1, 1, 3, -1, 135, 30, 0, 203605, 10),	/* Golden Amulet */
(1, 1, 3, -1, 14, 3, 0, 203605, 1),		/* Golden Amulet */
(1, 1, 3, -1, 195, 30, 0, 203283, 1),	/* Fruit of Forgetting */
(1, 1, 3, -1, 8, 2, 0, 202544, 1),		/* Exquisite Wedding Ring of the Moonlight */
(1, 1, 3, -1, 8, 2, 0, 202543, 1),		/* Exquisite Wedding Ring of the Sunrise */
(1, 1, 3, -1, 17, 2, 0, 203591, 1),		/* Lesser Mount Speed Potion (7 Days) */
(1, 1, 3, -1, 37, 6, 0, 203592, 1),		/* Lesser Mount Speed Potion (30 Days) */
(1, 1, 3, -1, 24, 2, 0, 202434, 1),		/* Daily Quest Ticket */
(1, 1, 3, -1, 13, 3, 0, 203525, 1),		/* God's Redemption Ticket */
(1, 1, 3, -1, 13, 3, 0, 201445, 25),	/* Megaphone */
(1, 1, 3, -1, 9, 3, 0, 202928, 1),		/* 10 Arcane Transmutor Charges */
(1, 1, 3, -1, 45, 8, 0, 202800, 1),		/* Application Form for a Custom Title */
(1, 1, 3, -1, 197, 30, 0, 202831, 1),	/* Class Maximum Expansion Ticket */
(1, 1, 3, -1, 265, 30, 0, 241601, 1),	/* Production Lucky Potion */
(1, 1, 3, -1, 75, 7, 0, 202670, 1),		/* Mount Speed Potion (30 Days) */
(1, 1, 3, -1, 13, 3, 0, 221384, 1),		/* Primary Amulet of Superior Life */
(1, 1, 3, -1, 10, 1, 0, 241126, 1),		/* Phirisus Shell Package (Large) */
(1, 1, 3, -1, 148, 5, 0, 240737, 5),	/* Badge of the Worldwide Flame */
(1, 1, 3, -1, 128, 4, 0, 240733, 5),	/* Knowledge Gem */
(1, 1, 3, -1, 261, 15, 0, 240181, 350),	/* Phirius Shell */
(1, 1, 3, -1, 149, 12, 0, 241598, 1),	/* Equipment Swap Expansion Ticket */
(1, 1, 3, -1, 13, 0, 0, 221386, 1),		/* Primary Amulet of Superior Magic */
(1, 1, 3, -1, 65, 4, 0, 202930, 1);		/* 100 Arcane Transmuter Charges */

GO

INSERT [dbo].[NewShopInfo]
([World1], [SellType], [SellType1],  [SellType2],[Sell_BeginTime], [Sell_Cost], [Sell_Get_Bonus], [Item_DisplayerObjID], [Item_OrgObjID1], [Item_Count1])
VALUES
/* if [Sell_BeginTime] is set to getdate() a NEW icon will be used */

(1, 1, 3, -1,getdate(),50,10,0,231885,1),		/* Pet Experience Charm */
(1, 1, 3, -1,getdate(),50,10,0,231886,1),		/* Pet Training Charm */
(1, 1, 3, -1,getdate(),50,10,0,222925,1),		/* Basic Experience Charm */
(1, 1, 3, -1,getdate(),50,10,0,222927,1),		/* Advanced Experience Charm */
(1, 1, 3, -1,getdate(),50,10,0,225216,1),		/* Superior Experience Charm */
(1, 1, 3, -1,getdate(),50,10,0,231887,1),		/* Powerful Basic Experience Charm */
(1, 1, 3, -1,getdate(),50,10,0,231888,1),		/* Powerful Advanced Experience Charm */
(1, 1, 3, -1,getdate(),50,10,0,231889,1),		/* Powerful Superior Experience Charm */
(1, 1, 3, -1,getdate(),50,10,0,231890,1),		/* Enhanced Basic Experience Charm */
(1, 1, 3, -1,getdate(),50,10,0,231891,1),		/* Enhanced Advanced Experience Charm */
(1, 1, 3, -1,getdate(),50,10,0,231892,1),		/* Enhanced Superior Experience Charm */
(1, 1, 3, -1,getdate(),50,10,0,231910,1),		/* Intermediate Experience Charm */
(1, 1, 3, -1,getdate(),50,10,0,231911,1),		/* Powerful Intermediate Experience Charm */
(1, 1, 3, -1,getdate(),50,10,0,231912,1),		/* Enhanced Intermediate Experience Charm */
(1, 1, 3, -1,getdate(),50,10,0,231913,1),		/* Superior Experience Charm */
(1, 1, 3, -1,getdate(),50,10,0,231914,1),		/* Powerful Superior Experience Charm */
(1, 1, 3, -1,getdate(),50,10,0,231915,1),		/* Enhanced Superior Experience Charm */
(1, 1, 3, -1,getdate(),100,20,0,231916,1),		/* Golden Experience Charm */
(1, 1, 3, -1,getdate(),100,20,0,231917,1),		/* Powerful Golden Experience Charm */
(1, 1, 3, -1,getdate(),100,20,0,231918,1),		/* Enhanced Golden Experience Charm */
(1, 1, 3, -1,getdate(),50,10,0,222926,1),		/* Basic Talent Charm */
(1, 1, 3, -1,getdate(),50,10,0,222928,1),		/* Advanced Talent Charm */
(1, 1, 3, -1,getdate(),50,10,0,225217,1),		/* Superior Talent Charm */
(1, 1, 3, -1,getdate(),50,10,0,231893,1),		/* Powerful Basic Talent Charm */
(1, 1, 3, -1,getdate(),50,10,0,231894,1),		/* Powerful Advanced Talent Charm */
(1, 1, 3, -1,getdate(),50,10,0,231906,1),		/* Powerful Superior Talent Charm */
(1, 1, 3, -1,getdate(),50,10,0,231907,1),		/* Enhanced Basic Talent Charm */
(1, 1, 3, -1,getdate(),50,10,0,231908,1),		/* Enhanced Advanced Talent Charm */
(1, 1, 3, -1,getdate(),50,10,0,231909,1),		/* Enhanced Superior Talent Charm */
(1, 1, 3, -1,getdate(),50,10,0,231967,1),		/* Intermediate Talent Charm */
(1, 1, 3, -1,getdate(),50,10,0,231968,1),		/* Powerful Intermediate Talent Charm */
(1, 1, 3, -1,getdate(),50,10,0,231969,1),		/* Enhanced Intermediate Talent Charm */
(1, 1, 3, -1,getdate(),50,10,0,231970,1),		/* Superior Talent Charm */
(1, 1, 3, -1,getdate(),50,10,0,231971,1),		/* Powerful Superior Talent Charm */
(1, 1, 3, -1,getdate(),50,10,0,231972,1),		/* Enhanced Superior Talent Charm */
(1, 1, 3, -1,getdate(),100,20,0,231973,1),		/* Golden Talent Charm */
(1, 1, 3, -1,getdate(),100,20,0,231974,1),		/* Powerful Golden Talent Charm */
(1, 1, 3, -1,getdate(),100,20,0,231975,1);		/* Enhanced Golden Talent Charm */

GO

INSERT [dbo].[NewShopInfo]
([World1], [SellType], [SellType1], [SellType2], [Sell_Cost], [Sell_Get_Bonus], [Item_DisplayerObjID], [Item_OrgObjID1], [Item_Count1])
VALUES


-- Transformation Sub folder
(1, 1, 4,-1,20,4,0,203196,1),		/* Transformation Potion - Donichuka */
(1, 1, 4,-1,20,4,0,203415,1),		/* Transformation Potion - Giant Guardian */
(1, 1, 4,-1,20,4,0,203416,1),		/* Transformation Potion - Gingerbread Man */
(1, 1, 4,-1,20,4,0,203417,1),		/* Transformation Potion - Jingle Brother */
(1, 1, 4,-1,20,4,0,203085,1),		/* Transformation Potion - Frog */
(1, 1, 4,-1,20,4,0,203086,1),		/* Transformation Potion - Goblin */
(1, 1, 4,-1,20,4,0,203087,1),		/* Transformation Potion - Fungus */
(1, 1, 4,-1,20,4,0,203088,1),		/* Transformation Potion - Obsessive Shadow */
(1, 1, 4,-1,20,4,0,203090,1),		/* Transformation Potion - Little Pumpkin */
(1, 1, 4,-1,20,4,0,203091,1),		/* Transformation Potion - Little Death */
(1, 1, 4,-1,20,4,0,203153,1),		/* Transformation Potion - Giant Guardian */
(1, 1, 4,-1,20,4,0,203154,1),		/* Transformation Potion - Ice Witch */
(1, 1, 4,-1,20,4,0,203155,1),		/* Transformation Potion - Cute Fungus */
(1, 1, 4,-1,20,4,0,203161,1),		/* Transformation Potion - Anteater */
(1, 1, 4,-1,20,4,0,203162,1),		/* Transformation Potion - Ent */
(1, 1, 4,-1,20,4,0,203163,1),		/* Transformation Potion - Shaggy Bear */
(1, 1, 4,-1,20,4,0,203164,1),		/* Transformation Potion - Demonthorn Vine */
(1, 1, 4,-1,20,4,0,203513,1),		/* Transformation Potion - Snowman */
(1, 1, 4,-1,20,4,0,204346,1),		/* Transformation Potion - Male Noble Wabbit */
(1, 1, 4,-1,20,4,0,204347,1),		/* Transformation Potion - Male Noble Wabbit */
(1, 1, 4,-1,20,4,0,204348,1),		/* Transformation Potion - Male Noble Wabbit */
(1, 1, 4,-1,20,4,0,204349,1),		/* Transformation Potion - Male Noble Wabbit */
(1, 1, 4,-1,20,4,0,204350,1),		/* Transformation Potion - Female Noble Wabbit */
(1, 1, 4,-1,20,4,0,204351,1),		/* Transformation Potion - Female Noble Wabbit */
(1, 1, 4,-1,20,4,0,204352,1),		/* Transformation Potion - Female Noble Wabbit */
(1, 1, 4,-1,20,4,0,204353,1),		/* Transformation Potion - Female Noble Wabbit */
(1, 1, 4,-1,20,4,0,204362,1),		/* Transformation Potion - Eagle Feather Egg */
(1, 1, 4,-1,20,4,0,204365,1),		/* Transformation Potion - Lacy Egg */
(1, 1, 4,-1,20,4,0,204366,1),		/* Transformation Potion - Lacy Egg */
(1, 1, 4,-1,20,4,0,204367,1),		/* Transformation Potion - Lacy Egg */
(1, 1, 4,-1,20,4,0,204368,1),		/* Transformation Potion - Lacy Egg */
(1, 1, 4,-1,20,4,0,205078,1),		/* Transformation Potion - Hammertooth Sage */
(1, 1, 4,-1,20,4,0,206221,1),		/* Transformation Potion - Zombie */
(1, 1, 4,-1,20,4,0,206223,1),		/* Transformation Potion - Ooze */
(1, 1, 4,-1,20,4,0,206224,1),		/* Transformation Potion - Prisoner's Shadow */
(1, 1, 4,-1,20,4,0,206225,1),		/* Transformation Potion - Vicious Night Shadow Bat */
(1, 1, 4,-1,20,4,0,208965,1),		/* Transformation Potion - White Wabbit */
(1, 1, 4,-1,20,4,0,209545,1),		/* Transformation Potion - Brown Wabbit */
(1, 1, 4,-1,20,4,0,209560,1),		/* Transformation Potion - Black Wabbit */
(1, 1, 4,-1,20,4,0,240450,1),		/* Transformation Potion - Evil Teddy Bear */
(1, 1, 4,-1,20,4,0,240451,1),		/* Transformation Potion - Smirking Castle Clown */
(1, 1, 4,-1,20,4,0,240465,1),		/* Transformation Potion - Rock Guardian */
(1, 1, 4,-1,20,4,0,240471,1),		/* Transformation Potion - Annelia */
(1, 1, 4,-1,20,4,0,241252,1),		/* Transformation Potion - Sacred Ice Crystal JuJu */
(1, 1, 4,-1,20,4,0,241253,1),		/* Transformation Potion - Breaking Dawn JuJu */
(1, 1, 4,-1,20,4,0,241264,1),		/* Transformation Potions - Exuberant Celebration JuJu */
(1, 1, 4,-1,20,4,0,241265,1),		/* Transformation Potion - Greenfeather Sparrow JuJu */
(1, 1, 4,-1,20,4,0,204371,1),		/* Transformation Potion Bag - Male Noble Wabbit */
(1, 1, 4,-1,20,4,0,204372,1),		/* Transformation Potion Bag - Male Noble Wabbit */
(1, 1, 4,-1,20,4,0,204373,1),		/* Transformation Potion Bag - Male Noble Wabbit */
(1, 1, 4,-1,20,4,0,204374,1),		/* Transformation Potion Bag - Male Noble Wabbit */
(1, 1, 4,-1,20,4,0,204375,1),		/* Transformation Potion Bag - Female Noble Wabbit */
(1, 1, 4,-1,20,4,0,204376,1),		/* Transformation Potion Bag - Female Noble Wabbit */
(1, 1, 4,-1,20,4,0,204377,1),		/* Transformation Potion Bag - Female Noble Wabbit */
(1, 1, 4,-1,20,4,0,204378,1),		/* Transformation Potion Bag - Female Noble Wabbit */
(1, 1, 4,-1,20,4,0,204381,1),		/* Transformation Potion Bag - Eagle Feather Egg */
(1, 1, 4,-1,20,4,0,204382,1),		/* Transformation Potion Bag - Eagle Feather Egg */
(1, 1, 4,-1,20,4,0,204383,1),		/* Transformation Potion Bag - Eagle Feather Egg */
(1, 1, 4,-1,20,4,0,204384,1),		/* Transformation Potion Bag - Eagle Feather Egg */
(1, 1, 4,-1,20,4,0,204385,1),		/* Transformation Potion Bag - Lacy Egg */
(1, 1, 4,-1,20,4,0,204386,1),		/* Transformation Potion Bag - Lacy Egg */
(1, 1, 4,-1,20,4,0,204387,1),		/* Transformation Potion Bag - Lacy Egg */
(1, 1, 4,-1,20,4,0,204388,1),		/* Transformation Potion Bag - Lacy Egg */

-- Backpack Tickets Sub Folder
(1, 1, 5, -1, 599, 45, 0, 206698, 1),		/* High Qualiy Leather Backpack III */
(1, 1, 5, -1, 599, 45, 0, 206699, 1),		/* High Qualiy Leather Backpack III */
(1, 1, 5, -1, 599, 45, 0, 206700, 1),		/* High Qualiy Leather Backpack III */
(1, 1, 5, -1, 599, 45, 0, 206701, 1),		/* High Qualiy Leather Backpack III */

-- Food Sub folder
(1, 1, 6, -1, 20, 4, 203714, 202240, 10),		/* Egg Rice Dumplings */
(1, 1, 6, -1, 20, 4, 203714, 200359, 10),		/* Hot Stew */
(1, 1, 6, -1, 20, 4, 203714, 241961, 10),		/* Soulmate Mixed Dessert */
(1, 1, 6, -1, 20, 4, 203714, 241967, 10),		/* Featured Cuisine Delicacy */
(1, 1, 6, -1, 20, 4, 203714, 241964, 10),		/* Everlasting Love Spiced Juice */
(1, 1, 6, -1, 20, 4, 203714, 202897, 10),		/* Chocolate Sweetheart Cake Slice */
(1, 1, 6, -1, 25, 0, 203714, 200776, 10),		/* Necropolis Cake */
(1, 1, 6, -1, 15, 0, 203714, 206248, 1);		/* Fresh Ostrich Feast */



GO

INSERT [dbo].[NewShopInfo]
([World1], [SellType], [SellType1], [SellType2], [Sell_Cost], [Sell_Get_Bonus], [Item_DisplayerObjID], [Item_OrgObjID1], [Item_Count1])
VALUES


-- Potion Sub folder
(1, 1, 7, -1, 13, 3, 0, 201139, 1),				/* Big Angel's Sigh */
(1, 1, 7, -1, 19, 3, 0, 201141, 1),				/* Phoenix's Redemption */
(1, 1, 7, -1, 7, 2, 0, 201619, 1),				/* Potion of Luck */
(1, 1, 7, -1, 19, 1, 0, 204553, 1),				/* 1 Universal Potion */
(1, 1, 7, -1, 190, 19, 0, 204553, 10),			/* 10 Universal Potion */
(1, 1, 7, -1,20,4,0,207578,1),		/* Cat-Errant Transformation Potion */
(1, 1, 7, -1,20,4,0,207579,1),		/* Fungus Transformation Potion */
(1, 1, 7, -1,20,4,0,207580,1),		/* Parrot Transformation Potion */
(1, 1, 7, -1,20,4,0,207587,1),		/* Little White Wabbit Transformation Potion */
(1, 1, 7, -1,20,4,0,207588,1),		/* Little Black Wabbit Transformation Potion */
(1, 1, 7, -1,20,4,0,207589,1),		/* Little Brown Wabbit Transformation Potion */
(1, 1, 7, -1,20,4,0,208492,1),		/* Lulu Transformation Potion */
(1, 1, 7, -1,20,4,0,208493,1),		/* Hill Bear Cub Transformation Potion */
(1, 1, 7, -1,20,4,0,208494,1),		/* Hawk Transformation Potion */
(1, 1, 7, -1,20,4,0,208495,1),		/* Kipos Transformation Potion */
(1, 1, 7, -1,20,4,0,208496,1),		/* Ystra Snow Ferret Transformation Potion */
(1, 1, 7, -1,20,4,0,208497,1),		/* Shaggy Snow Bear Transformation Potion */
(1, 1, 7, -1,20,4,0,208498,1),		/* Kal Turok King Myrmex Transformation Potion */
(1, 1, 7, -1,20,4,0,208499,1),		/* Kal Turok Termite Transformation Potion */
(1, 1, 7, -1,20,4,0,208500,1),		/* Forest Leopard Transformation Potion */
(1, 1, 7, -1,20,4,0,208501,1),		/* Rainbow Falcon Transformation Potion */
(1, 1, 7, -1,20,4,0,208502,1),		/* Big Kuman Transformation Potion */
(1, 1, 7, -1,20,4,0,208503,1),		/* Rainforest Hunter Transformation Potion */
(1, 1, 7, -1,20,4,0,208504,1),		/* Executioner Puppet Transformation Potion */
(1, 1, 7, -1,20,4,0,208505,1),		/* Savage Giant Wolf Transformation Potion */
(1, 1, 7, -1,20,4,0,208506,1),		/* Ice Plain Sabretooth Tiger Transformation Potion */
(1, 1, 7, -1,20,4,0,208507,1),		/* Snowman Transformation Potion */
(1, 1, 7, -1,20,4,0,208508,1),		/* Little Snowman King Transformation Potion */
(1, 1, 7, -1,20,4,0,208509,1),		/* Transformation Potion - Blue-Eyed Speckled Rabbit */
(1, 1, 7, -1,20,4,0,208510,1),		/* Nunu Transformation Potion */
(1, 1, 7, -1,20,4,0,208511,1),		/* Pingou Transformation Potion */
(1, 1, 7, -1,20,4,0,240186,1),		/* Evil Teddy Bear Transformation Potion */
(1, 1, 7, -1,20,4,0,240187,1),		/* Soul-Eater Clown Transformation Potion */
(1, 1, 7, -1,20,4,0,240188,1),		/* Fireboot Warrior Transformation Potion */
(1, 1, 7, -1,20,4,0,240189,1),		/* Fireboot Priest Transformation Potion */
(1, 1, 7, -1,20,4,0,240190,1),		/* Nocturnal Zombie Transformation Potion */
(1, 1, 7, -1,20,4,0,204227,1),		/* Jonesy's Transformation Potion */

-- Sigils Sub Folder
(1, 1, 8, -1, 5, 1, 205295, 203024, 1),		/* Blessing of the Flower God */
(1, 1, 8, -1, 40, 5, 205295, 200055, 1),		/* Defense Sigil */
(1, 1, 8, -1, 40, 5, 205295, 200962, 1),		/* Magic Defense Sigil */
(1, 1, 8, -1, 13, 1, 205295, 200056, 1),		/* Attack Sigil */
(1, 1, 8, -1, 13, 1, 205295, 200927, 1),		/* Magic Attack Sigil */

-- Reset Scrolls Sub folder
(1, 1, 9, -1,100,20,0,207468,1),	/* Daily Quest Ticket (1 Day) */
(1, 1, 9, -1,100,20,0,207469,1),	/* Malatina's Event Repeat Ticket (1 Day) */
(1, 1, 9, -1,100,20,0,207470,1),	/* Malatina's Dungeon Repeat Ticket (1 Day) */
(1, 1, 9, -1,100,20,0,207471,1),	/* Malatina's Course of Terror Repeat Ticket (1 Day) */
(1, 1, 9, -1,20,4,0,201291,1),		/* Furniture Exchange Ticket */
(1, 1, 9, -1,20,4,0,202434,1),		/* Daily Quest Ticket */
(1, 1, 9, -1,100,20,0,202831,1),	/* Class Maximum Expansion Ticket */
(1, 1, 9, -1,20,4,0,203525,1),		/* God's Redemption Ticket */
(1, 1, 9, -1,20,4,0,203876,1),		/* Debt Clearance Ticket */
(1, 1, 9, -1,20,4,0,203877,1),		/* Enhanced Debt Clearance Ticket */
(1, 1, 9, -1,20,4,0,203878,1),		/* Ultimate Debt Clearance Ticket */
(1, 1, 9, -1,20,4,0,204513,1),		/* Breeding Slot Ticket */
(1, 1, 9, -1,20,4,0,204922,1),		/* Pet Pair Merging Ticket */
(1, 1, 9, -1,20,4,0,205814,1),		/* Malatina Event Repeat Ticket */
(1, 1, 9, -1,20,4,0,205815,1),		/* Malatina's Dungeon Repeat Ticket */
(1, 1, 9, -1,20,4,0,205816,1),		/* Malatina's Course of Terror Repeat Ticket */
(1, 1, 9, -1,20,4,0,206351,1),		/* Guild Drill Ground Repeat Ticket */
(1, 1, 9, -1,20,4,0,206929,1),		/* White Day Repeat Ticket */
(1, 1, 9, -1,20,4,0,240043,1),		/* Fairy Tale Event Repeat Ticket */
(1, 1, 9, -1,50,10,0,241598,1),		/* Equipment Swap Expansion Ticket */
(1, 1, 9, -1,25,5,0,242687,1),		/* Crafting Skill Craftsman Expansion Ticket */
(1, 1, 9, -1,50,10,0,242688,1),		/* Crafting Skill Expert Expansion Ticket */
(1, 1, 9, -1,75,15,0,242689,1),		/* Crafting Skill Master Expansion Ticket */
(1, 1, 9, -1,100,20,0,242690,1);	/* Crafting Skill Legend Expansion Ticket */

GO

/*+++++ Upgrade +++++*/

-- Accessories Sub folder
INSERT [dbo].[NewShopInfo]
([World1], [SellType], [SellType1], [SellType2], [Sell_Cost], [Sell_Get_Bonus], [Item_DisplayerObjID], [Item_OrgObjID1], [Item_Count1])
VALUES

-- Rune Slot Dillers Sub folder
(1, 2, 1, 1,6,1, 0,203053,1),		/* Basic Accessory Driller */
(1, 2, 1, 1,23,4,0,203054,1),		/* Advanced Accessory Driller */
(1, 2, 1, 1,35,6,0,203060,1),		/* Expert Accessory Driller */
(1, 2, 1, 1,45,10,0,203063,1),		/* Master Accessory Driller */

-- Sub Stones for Lv1-90
(1, 2, 1, 2,40,4,0,203040,1),		/* Sun Jewel - Blessing */
(1, 2, 1, 2,40,4,0,203041,1),		/* Sun Jewel - Protection */
(1, 2, 1, 2,40,4,0,203042,1),		/* Sun Jewel - Wishes */
(1, 2, 1, 2,40,4,0,203043,1),		/* Sun Jewel - Holy Light */
(1, 2, 1, 2,40,4,0,242807,10),		/* Sun Jewel - Elven */
(1, 2, 1, 2,50,10,0,203046,1),		/* Perfect Sun Jewel - Blessing */
(1, 2, 1, 2,50,10,0,203049,1),		/* Perfect Sun Jewel - Protection */
(1, 2, 1, 2,50,10,0,203052,1),		/* Perfect Sun Jewel - Wishes */
(1, 2, 1, 2,50,10,0,203057,1),		/* Perfect Sun Jewel - Holy Light */
(1, 2, 1, 2,50,10,0,206334,1),		/* Mighty Sun Jewel - Blessing */
(1, 2, 1, 2,50,10,0,206337,1),		/* Mighty Sun Jewel - Protection */
(1, 2, 1, 2,50,10,0,206340,1),		/* Mighty Sun Jewel - Wishes */
(1, 2, 1, 2,50,10,0,206343,1),		/* Mighty Sun Jewel - Holy Light */
(1, 2, 1, 2,50,10,0,206956,1),		/* Advanced Sun Jewel - Blessing */
(1, 2, 1, 2,50,10,0,206959,1),		/* Advanced Sun Jewel - Protection */
(1, 2, 1, 2,50,10,0,206962,1),		/* Advanced Sun Jewel - Wishes */
(1, 2, 1, 2,50,10,0,206965,1),		/* Advanced Sun Jewel - Holy Light */
(1, 2, 1, 2,100,10,0,242810,10),    /* Advanced Sun Jewel - Elven */
(1, 2, 1, 2,50,10,0,206980,1),		/* Sun Jewel of Master's Blessing */
(1, 2, 1, 2,50,10,0,206983,1),		/* Sun Jewel of Master's Protection */
(1, 2, 1, 2,50,10,0,206986,1),		/* Sun Jewel of Master's Wishes */
(1, 2, 1, 2,50,10,0,206989,1),		/* Sun Jewel of Master's Holy Light */
(1, 2, 1, 2,50,10,0,207763,1),		/* Sun Jewel - Revelation */
(1, 2, 1, 2,50,10,0,207766,1),		/* Advanced Sun Jewel - Revelation */
(1, 2, 1, 2,50,10,0,207769,1),		/* Sun Jewel of Master's Revelation */
(1, 2, 1, 2,50,10,0,207773,1),		/* Sun Jewel - Faith */
(1, 2, 1, 2,50,10,0,207776,1),		/* Advanced Sun Jewel - Faith */
(1, 2, 1, 2,50,10,0,207779,1),		/* Sun Jewel of Master's Faith */
(1, 2, 1, 2,50,10,0,207782,1),		/* Enhanced Sun Jewel - Faith */
(1, 2, 1, 2,50,10,0,207785,1),		/* Tempered Sun Jewel - Faith */
(1, 2, 1, 2,50,10,0,207788,1),		/* Perfect Sun Jewel - Faith */
(1, 2, 1, 2,50,10,0,207791,1),		/* Perfect Advanced Sun Jewel - Faith */
(1, 2, 1, 2,50,10,0,207794,1),		/* Perfect Sun Jewel of Master's Faith */
(1, 2, 1, 2,50,10,0,207802,1),		/* Perfect Sun Jewel - Revelation */
(1, 2, 1, 2,50,10,0,207805,1),		/* Perfect Advanced Sun Jewel - Revelation */
(1, 2, 1, 2,50,10,0,207808,1),		/* Perfect Sun Jewel of Master's Revelation */
(1, 2, 1, 2,50,10,0,240115,1),		/* Enhanced Sun Jewel - Revelation */
(1, 2, 1, 2,50,10,0,240131,1),		/* Tempered Sun Jewel - Revelation */
(1, 2, 1, 2,50,10,0,240135,1),		/* Perfect Enhanced Sun Jewel - Faith */
(1, 2, 1, 2,50,10,0,240147,1),		/* Perfect Enhanced Sun Jewel - Revelation */
(1, 2, 1, 2,50,10,0,240151,1),		/* Perfect Tempered Sun Jewel - Faith */
(1, 2, 1, 2,50,10,0,240163,1),		/* Perfect Tempered Sun Jewel - Revelation */
(1, 2, 1, 2,50,10,0,240174,1),		/* Perfect Advanced Sun Jewel - Starsplinter */
(1, 2, 1, 2,50,10,0,240177,1),		/* Perfect Sun Jewel of Master's Starsplinter */
(1, 2, 1, 2,50,10,0,240180,1),		/* Perfect Enhanced Sun Jewel - Starsplinter */
(1, 2, 1, 2,50,10,0,242722,1),		/* Starsplinter Sun Jewel */
(1, 2, 1, 2,50,10,0,242725,1),		/* Advanced Starsplinter Sun Jewel */
(1, 2, 1, 2,50,10,0,242728,1),		/* Sun Jewel of Master's Starsplinter */
(1, 2, 1, 2,50,10,0,242731,1),		/* Enhanced Sun Jewel - Starsplinter */
(1, 2, 1, 2,50,10,0,242734,1),		/* Tempered Sun Jewel - Starsplinter */
(1, 2, 1, 2,50,10,0,242760,1),		/* Perfect Tempered Sun Jewel - Starsplinter */
(1, 2, 1, 2,50,10,0,242834,1),		/* Perfect Tempered Sun Jewel - Starsplinter */

-- Sub Stones for Lv1-100
(1, 2, 1, 3,50,10,0,206968,1),		/* Perfect Advanced Sun Jewel - Blessing */
(1, 2, 1, 3,50,10,0,206971,1),		/* Perfect Advanced Sun Jewel - Protection */
(1, 2, 1, 3,50,10,0,206974,1),		/* Perfect Advanced Sun Jewel - Wishes */
(1, 2, 1, 3,50,10,0,206977,1),		/* Perfect Advanced Sun Jewel - Holy Light */
(1, 2, 1, 3,50,10,0,207791,1),		/* Perfect Advanced Sun Jewel - Faith */
(1, 2, 1, 3,50,10,0,207805,1),		/* Perfect Advanced Sun Jewel - Revelation */
(1, 2, 1, 3,50,10,0,240174,1),		/* Perfect Advanced Sun Jewel - Starsplinter */
(1, 2, 1, 3,50,10,0,242837,1),		/* Perfect Advanced Sun Jewel - Elven */
(1, 2, 1, 3,45,10,0,240171,6),		/* Perfect Starsplinter Sun Jewel */
(1, 2, 1, 3,50,10,0,207479,1),		/* Perfect Sun Jewel of Master's Blessing */
(1, 2, 1, 3,50,10,0,207482,1),		/* Perfect Sun Jewel of Master's Protection */
(1, 2, 1, 3,50,10,0,207485,1),		/* Perfect Sun Jewel of Master's Wishes */
(1, 2, 1, 3,50,10,0,207488,1),		/* Perfect Sun Jewel of Master's Holy Light */
(1, 2, 1, 3,200,20,0,242819,10),	/* Sun Jewel - Elven Master */
(1, 2, 1, 3,90,10,0,242834,6),		/* Perfect Sun Jewel - Elven */
(1, 2, 1, 3,139,14,0,242837,6),		/* Perfect Advanced Sun Jewel - Elven */
(1, 2, 1, 3,120,12,0,242840,4),		/* Perfect Enhanced Sun Jewel - Elven */


-- Armor Sub sub

-- Sub Rune Slot Drillers
(1, 2, 2, 1,50,10,0,201237,1),		/* Basic Armor Driller */
(1, 2, 2, 1,50,10,0,201238,1),		/* Advanced Armor Driller */
(1, 2, 2, 1,50,10,0,203059,1),		/* Expert Armor Driller */
(1, 2, 2, 1,50,10,0,203062,1),		/* Master Armor Driller */

-- Sub Stones for Lv1-90
(1, 2, 2, 2,50,10,0,201097,1),		/* Moon Jewel - Blessing */
(1, 2, 2, 2,50,10,0,201449,1),		/* Moon Jewel - Protection */
(1, 2, 2, 2,50,10,0,201457,1),		/* Moon Jewel - Wishes */
(1, 2, 2, 2,50,10,0,201459,1),		/* Moon Jewel - Holy Light */
(1, 2, 2, 2,50,10,0,203045,1),		/* Perfect Moon Jewel - Blessing */
(1, 2, 2, 2,50,10,0,203048,1),		/* Perfect Moon Jewel - Protection */
(1, 2, 2, 2,50,10,0,203051,1),		/* Perfect Moon Jewel - Wishes */
(1, 2, 2, 2,50,10,0,203056,1),		/* Perfect Moon Jewel - Holy Light */
(1, 2, 2, 2,50,10,0,206333,1),		/* Mighty Moon Jewel - Blessing */
(1, 2, 2, 2,50,10,0,206336,1),		/* Mighty Moon Jewel - Protection */
(1, 2, 2, 2,50,10,0,206339,1),		/* Mighty Moon Jewel - Wishes */
(1, 2, 2, 2,50,10,0,206342,1),		/* Mighty Moon Jewel - Holy Light */
(1, 2, 2, 2,50,10,0,206955,1),		/* Advanced Moon Jewel - Blessing */
(1, 2, 2, 2,50,10,0,206958,1),		/* Advanced Moon Jewel - Protection */
(1, 2, 2, 2,50,10,0,206961,1),		/* Advanced Moon Jewel - Wishes */
(1, 2, 2, 2,50,10,0,206964,1),		/* Advanced Moon Jewel - Holy Light */
(1, 2, 2, 2,50,10,0,206967,1),		/* Perfect Advanced Moon Jewel - Blessing */
(1, 2, 2, 2,50,10,0,206970,1),		/* Perfect Advanced Moon Jewel - Protection */
(1, 2, 2, 2,50,10,0,206973,1),		/* Perfect Advanced Moon Jewel - Wishes */
(1, 2, 2, 2,50,10,0,206976,1),		/* Perfect Advanced Moon Jewel - Holy Light */
(1, 2, 2, 2,50,10,0,206979,1),		/* Moon Jewel of Master's Blessing */
(1, 2, 2, 2,50,10,0,206982,1),		/* Moon Jewel of Master's Protection */
(1, 2, 2, 2,50,10,0,206985,1),		/* Moon Jewel of Master's Wishes */
(1, 2, 2, 2,50,10,0,206988,1),		/* Moon Jewel of Master's Holy Light */
(1, 2, 2, 2,50,10,0,207478,1),		/* Perfect Moon Jewel of Master's Blessing */
(1, 2, 2, 2,50,10,0,207481,1),		/* Perfect Moon Jewel of Master's Protection */
(1, 2, 2, 2,50,10,0,207484,1),		/* Perfect Moon Jewel of Master's Wishes */
(1, 2, 2, 2,50,10,0,207487,1),		/* Perfect Moon Jewel of Master's Holy Light */
(1, 2, 2, 2, 50,10,0,207762,1),		/* Moon Jewel - Revelation */
(1, 2, 2, 2, 50,10,0,207765,1),		/* Advanced Moon Jewel - Revelation */
(1, 2, 2, 2, 50,10,0,207768,1),		/* Moon Jewel of Master's Revelation */
(1, 2, 2, 2, 50,10,0,207772,1),		/* Moon Jewel - Faith */
(1, 2, 2, 2, 50,10,0,207775,1),		/* Advanced Moon Jewel - Faith */
(1, 2, 2, 2, 50,10,0,207778,1),		/* Moon Jewel of Master's Faith */
(1, 2, 2, 2, 50,10,0,207781,1),		/* Enhanced Moon Jewel - Faith */
(1, 2, 2, 2, 50,10,0,207784,1),		/* Tempered Moon Jewel - Faith */
(1, 2, 2, 2, 50,10,0,207787,1),		/* Perfect Moon Jewel - Faith */
(1, 2, 2, 2, 50,10,0,207790,1),		/* Perfect Advanced Moon Jewel - Faith */
(1, 2, 2, 2, 50,10,0,207793,1),		/* Perfect Moon Jewel of Master's Faith */

-- Sub Stones for Lv1-90
(1, 2, 2, 3, 50,10,0,207801,1),		/* Perfect Moon Jewel - Revelation */
(1, 2, 2, 3, 50,10,0,207804,1),		/* Perfect Advanced Moon Jewel - Revelation */
(1, 2, 2, 3, 50,10,0,207807,1),		/* Perfect Moon Jewel of Master's Revelation */
(1, 2, 2, 3, 50,10,0,240114,1),		/* Enhanced Moon Jewel - Revelation */
(1, 2, 2, 3, 50,10,0,240130,1),		/* Tempered Moon Jewel - Revelation */
(1, 2, 2, 3, 50,10,0,240134,1),		/* Perfect Enhanced Moon Jewel - Faith */
(1, 2, 2, 3, 50,10,0,240146,1),		/* Perfect Enhanced Moon Jewel - Revelation */
(1, 2, 2, 3, 50,10,0,240150,1),		/* Perfect Tempered Moon Jewel - Faith */
(1, 2, 2, 3, 50,10,0,240162,1),		/* Perfect Tempered Moon Jewel - Revelation */
(1, 2, 2, 3, 50,10,0,240170,1),		/* Perfect Starsplinter Moon Jewel */
(1, 2, 2, 3, 50,10,0,240173,1),		/* Perfect Advanced Moon Jewel - Starsplinter */
(1, 2, 2, 3, 50,10,0,240176,1),		/* Perfect Moon Jewel of Master's Starsplinter */
(1, 2, 2, 3, 50,10,0,240179,1),		/* Perfect Enhanced Moon Jewel - Starsplinter */
(1, 2, 2, 3, 50,10,0,242721,1),		/* Starsplinter Moon Jewel */
(1, 2, 2, 3, 50,10,0,242724,1),		/* Advanced Starsplinter Moon Jewel */
(1, 2, 2, 3, 50,10,0,242727,1),		/* Moon Jewel of Master's Starsplinter */
(1, 2, 2, 3, 50,10,0,242730,1),		/* Enhanced Moon Jewel - Starsplinter */
(1, 2, 2, 3, 50,10,0,242733,1),		/* Tempered Moon Jewel - Starsplinter */
(1, 2, 2, 3, 50,10,0,242759,1),		/* Perfect Tempered Moon Jewel - Starsplinter */
(1, 2, 2, 3, 40,4,0,242806,10),		/* Moon Jewel - Elven */
(1, 2, 2, 3, 100,10,0,242809,10),	/* Advanced Moon Jewel - Elven */
(1, 2, 2, 3, 200,20,0,242818,10),	/* Moon Jewel - Elven Master */
(1, 2, 2, 3, 90,10,0,242833,6),		/* Perfect Moon Jewel - Elven */
(1, 2, 2, 3, 139,14,0,242836,6),	/* Perfect Advanced Moon Jewel - Elven */
(1, 2, 2, 3, 99,10,0,242839,4),		/* Perfect Enhanced Moon Jewel - Elven */
(1, 2, 2, 3, 200,22,0,242842,4),	/* Perfect Tempered Moon Jewel - Elven */

-- Sub Weapon

-- Sub Stones for Lv1-100
(1,2,3, 1, 17,3,0,201087,1),		/* Basic Weapon Driller */
(1, 2, 3, 1,45,6,0,201088,1),		/* Advanced Weapon Driller */
(1, 2, 3, 1,75,8,0,203058,1),		/* Expert Weapon Driller */
(1, 2, 3, 1,100,10,0,203061,1),		/* Master Weapon Driller */

-- Stones for Lv1-90
(1, 2, 3, 2,50,10,0,201095,1),		/* Star Jewel - Blessing */
(1, 2, 3, 2,50,10,0,201448,1),		/* Star Jewel - Protection */
(1, 2, 3, 2,50,10,0,201450,1),		/* Star Jewel - Wishes */
(1, 2, 3, 2,50,10,0,201458,1),		/* Star Jewel - Holy Light */
(1, 2, 3, 2,50,10,0,203044,1),		/* Perfect Star Jewel - Blessing */
(1, 2, 3, 2,50,10,0,203047,1),		/* Perfect Star Jewel - Protection */
(1, 2, 3, 2,50,10,0,203050,1),		/* Perfect Star Jewel - Wishes */
(1, 2, 3, 2,50,10,0,203055,1),		/* Perfect Star Jewel - Holy Light */
(1, 2, 3, 2,50,10,0,206332,1),		/* Mighty Star Jewel - Blessing */
(1, 2, 3, 2,50,10,0,206335,1),		/* Mighty Star Jewel - Protection */
(1, 2, 3, 2,50,10,0,206338,1),		/* Mighty Star Jewel - Wishes */
(1, 2, 3, 2,50,10,0,206341,1),		/* Mighty Star Jewel - Holy Light */
(1, 2, 3, 2,50,10,0,206954,1),		/* Advanced Star Jewel - Blessing */
(1, 2, 3, 2,50,10,0,206957,1),		/* Advanced Star Jewel - Protection */
(1, 2, 3, 2,50,10,0,206960,1),		/* Advanced Star Jewel - Wishes */
(1, 2, 3, 2,50,10,0,206963,1),		/* Advanced Star Jewel - Holy Light */
(1, 2, 3, 2,50,10,0,206966,1),		/* Perfect Advanced Star Jewel - Blessing */
(1, 2, 3, 2,50,10,0,206969,1),		/* Perfect Advanced Star Jewel - Protection */
(1, 2, 3, 2,50,10,0,206972,1),		/* Perfect Advanced Star Jewel - Wishes */
(1, 2, 3, 2,50,10,0,206975,1),		/* Perfect Advanced Star Jewel - Holy Light */
(1, 2, 3, 2,50,10,0,206978,1),		/* Star Jewel of Master's Blessing */
(1, 2, 3, 2,50,10,0,206981,1),		/* Star Jewel of Master's Protection */
(1, 2, 3, 2,50,10,0,206984,1),		/* Star Jewel of Master's Wishes */
(1, 2, 3, 2,50,10,0,206987,1),		/* Star Jewel of Master's Holy Light */
(1, 2, 3, 2,50,10,0,207477,1),		/* Perfect Star Jewel of Master's Blessing */
(1, 2, 3, 2,50,10,0,207480,1),		/* Perfect Star Jewel of Master's Protection */
(1, 2, 3, 2,50,10,0,207483,1),		/* Perfect Star Jewel of Master's Wishes */
(1, 2, 3, 2,50,10,0,207486,1),		/* Perfect Star Jewel of Master's Holy Light */
(1, 2, 3, 2,50,10,0,207761,1),		/* Star Jewel - Revelation */
(1, 2, 3, 2,50,10,0,207764,1),		/* Advanced Star Jewel - Revelation */
(1, 2, 3, 2,50,10,0,207767,1),		/* Star Jewel of Master's Revelation */
(1, 2, 3, 2,50,10,0,207771,1),		/* Star Jewel - Faith */
(1, 2, 3, 2,50,10,0,207774,1),		/* Advanced Star Jewel - Faith */
(1, 2, 3, 2,50,10,0,207777,1),		/* Star Jewel of Master's Faith */
(1, 2, 3, 2,50,10,0,207780,1),		/* Enhanced Star Jewel - Faith */
(1, 2, 3, 2,50,10,0,207783,1),		/* Tempered Star Jewel - Faith */
(1, 2, 3, 2,50,10,0,207786,1),		/* Perfect Star Jewel - Faith */
(1, 2, 3, 2,50,10,0,207789,1),		/* Perfect Advanced Star Jewel - Faith */
(1, 2, 3, 2,50,10,0,207792,1),		/* Perfect Star Jewel of Master's Faith */
(1, 2, 3, 2,50,10,0,207800,1),		/* Perfect Star Jewel - Revelation */
(1, 2, 3, 2,50,10,0,207803,1),		/* Perfect Advanced Star Jewel - Revelation */
(1, 2, 3, 2,50,10,0,207806,1),		/* Perfect Star Jewel of Master's Revelation */
(1, 2, 3, 2,50,10,0,240113,1),		/* Enhanced Star Jewel - Revelation */
(1, 2, 3, 2,50,10,0,240129,1),		/* Tempered Star Jewel - Revelation */

-- Sub Stones for Lv1-100
(1, 2, 3, 3,50,10,0,240133,1),		/* Perfect Enhanced Star Jewel - Faith */
(1, 2, 3, 3,50,10,0,240145,1),		/* Perfect Enhanced Star Jewel - Revelation */
(1, 2, 3, 3,50,10,0,240149,1),		/* Perfect Tempered Star Jewel - Faith */
(1, 2, 3, 3,50,10,0,240161,1),		/* Perfect Tempered Star Jewel - Revelation */
(1, 2, 3, 3,50,10,0,240169,1),		/* Perfect Starsplinter Star Jewel */
(1, 2, 3, 3,50,10,0,240172,1),		/* Perfect Advanced Star Jewel - Starsplinter */
(1, 2, 3, 3,50,10,0,240175,1),		/* Perfect Star Jewel of Master's Starsplinter */
(1, 2, 3, 3,50,10,0,240178,1),		/* Perfect Enhanced Star Jewel - Starsplinter */
(1, 2, 3, 3,50,10,0,242720,1),		/* Starsplinter Star Jewel */
(1, 2, 3, 3,50,10,0,242723,1),		/* Advanced Starsplinter Star Jewel */
(1, 2, 3, 3,50,10,0,242726,1),		/* Star Jewel of Master's Starsplinter */
(1, 2, 3, 3,50,10,0,242729,1),		/* Enhanced Star Jewel - Starsplinter */
(1, 2, 3, 3,50,10,0,242732,1),		/* Tempered Star Jewel - Starsplinter */
(1, 2, 3, 3,50,10,0,242758,1),		/* Perfect Tempered Star Jewel - Starsplinter */
(1, 2, 3, 3, 60,6,0,242805,10),		/* Star Jewel - Elven */
(1, 2, 3, 3, 120,12,0,242808,10),		/* Advanced Star Jewel - Elven */
(1, 2, 3, 3, 240,24,0,242817,10),		/* Star Jewel - Elven Master */
(1, 2, 3, 3, 120,12,0,242805,10),		/* Star Jewel - Elven */
(1, 2, 3, 3, 169,17,0,242835,6),		/* Perfect Advanced Star Jewel - Elven */
(1, 2, 3, 3, 132,13,0,242838,6),		/* Perfect Enhanced Star Jewel - Elven */
(1, 2, 3, 3, 200,22,0,242841,4);		/* Perfect Tempered Star Jewel - Elven */

GO

INSERT [dbo].[NewShopInfo]
([World1], [SellType], [SellType1], [SellType2], [Sell_Cost], [Sell_Get_Bonus], [Item_DisplayerObjID], [Item_OrgObjID1], [Item_Count1])
VALUES
-- Sub BackPack 
-- Rune Slot Drillers
(1,2,4,1, 50,10,0,207495,1),		/* Basic Back Slot Item Driller */
(1,2,4,1, 50,10,0,207496,1),		/* Advanced Back Slot Item Driller */
(1,2,4,1, 50,10,0,207497,1),		/* Expert Back Slot Item Driller */
(1,2,4,1, 50,10,0,207498,1),		/* Master Back Slot Item Driller */

(1,2,4, 2,50,10,0,207489,1),		/* Nebula Jewel */
(1,2,4, 2,50,10,0,207490,1),		/* Advanced Nebula Jewel */
(1,2,4, 2,50,10,0,207491,1),		/* Master's Nebula Jewel */
(1,2,4, 2,50,10,0,207492,1),		/* Perfect Nebula Jewel */
(1,2,4, 2,50,10,0,207493,1),		/* Perfect Advanced Nebula Jewel */
(1,2,4, 2,50,10,0,207494,1),		/* Perfect Master's Nebula Jewel */
(1,2,4, 2,50,10,0,209712,1),		/* Nebula Jewel Package */
(1,2,4, 2,50,10,0,209713,1),		/* Advanced Nebula Jewel Package */
(1,2,4, 2,50,10,0,209714,1),		/* Master's Nebula Jewel Package */
(1,2,4, 2,50,10,0,240116,1),		/* Enhanced Nebula Jewel */
(1,2,4, 2,50,10,0,240132,1),		/* Tempered Nebula Jewel */
(1,2,4, 2,50,10,0,240148,1),		/* Perfect Enhanced Nebula Jewel */
(1,2,4, 2,50,10,0,240164,1),		/* Perfect Tempered Nebula Jewel */

-- Sub Must-Haves

(1,2,5, -1,10,2,0,201136,1),		/* Convenient Mailbox */
(1,2,5, -1,10,2,0,201137,1),		/* Convenient Bank */
(1,2,5, -1,10,2,0,201138,1),		/* Convenient Auction House */
(1,2,5, -1,10,2,0,202881,1),		/* Purified Fusion Stone */
(1,2,5, -1,100,20,0,205270,1),		/* 8x Purified Fusion Stone */
(1,2,5, -1,100,20,0,241166,1),		/* Purified Fusion Stone Package (10 Pieces) */
(1,2,5, -1,100,20,0,241168,1),		/* Purified Fusion Stone Package (12 Pieces) */
(1,2,5, -1,100,20,0,203283,1),		/* Fruit of Forgetting */
(1,2,5, -1,10,2,0,203178,1),		/* Ancient Treasure Key */
(1,2,5, -1,10,2,0,201445,10),		/* Megaphone */
(1,2,5, -1,10,2,0,201152,1),		/* Bleach */
(1,2,5, -1,10,2,0,203488,1),		/* Bind Lifter */
(1,2,5, -1,10,2,0,202520,1),		/* Advanced Bind Lifter */
(1,2,5, -1,10,2,0,204073,1),		/* Standard Aggregator */
(1,2,5, -1,10,2,0,201607,1),		/* Advanced Aggregator */
(1,2,5, -1,10,2,0,202506,1),		/* Golden Repair Hammer */
(1,2,5, -1,50,10,0,203576,1),		/* Grand Golden Repair Hammer */
(1,2,5, -1,20,4,0,241089,1),		/* Equipment Attribute-Purifying Stone */
(1,2,5, -1,10,2,0,241090,1),		/* Random Attribute Extraction Stone */
(1,2,5, -1,10,2,0,202822,1),		/* Equipment Sealing Device */
(1,2,5, -1,10,2,0,202823,1),		/* Equipment Unsealing Device */
(1,2,5, -1,10,2,0,201541,1),		/* Equipment Lock */
(1,2,5, -1,10,2,0,201542,1),		/* Equipment Release */
(1,2,5, -1,10,2,0,201093,1),		/* Rune Removal Scroll */
(1,2,5, -1,10,2,0,202928,1),		/* 10 Arcane Transmutor Charges */
(1,2,5, -1,50,10,0,202929,1),		/* 50 Arcane Transmutor Charges */
(1,2,5, -1,100,20,0,202930,1),		/* 100 Arcane Transmutor Charges */
(1,2,5, -1,10,2,0,202545,1),		/* Love Crystal */
(1,2,5, -1,20,4,0,202800,1),		/* Application Form for a Custom Title */
(1,2,5, -1,20,4,0,202825,1),		/* Declaration of Neutrality */
(1,2,5, -1,20,4,0,202826,1),		/* Position Detector */
(1,2,5, -1,20,4,0,202827,1),		/* PK-Protection */

-- Sub Runes

(1,2,6, -1,145,15,205277,520630,1),		/* Block X */
(1,2,6, -1,145,15,205277,520570,1),		/* Aggression X */
(1,2,6, -1,145,15,205277,520590,1),		/* Advance X */
(1,2,6, -1,145,15,205277,520250,1),		/* Atonement X */
(1,2,6, -1,145,15,205277,521160,1),		/* Capability X */
(1,2,6, -1,145,15,205277,521040,1),		/* Charm X */
(1,2,6, -1,145,15,205277,520330,1),		/* Rouse X */
(1,2,6, -1,145,15,205277,520610,1),		/* Revolution X */
(1,2,6, -1,145,15,205277,520410,1),		/* Resistor X */
(1,2,6, -1,145,15,205277,520710,1),		/* Reconciliation X */
(1,2,6, -1,145,15,205277,520690,1),		/* Hatred X */
(1,2,6, -1,145,15,205277,521300,1),		/* Raid X */
(1,2,6, -1,145,15,205277,520670,1),		/* Potential X */
(1,2,6, -1,145,15,205277,520830,1),		/* Miracle X */
(1,2,6, -1,145,15,205277,520730,1),		/* Loot X */
(1,2,6, -1,145,15,205277,520310,1),		/* Guts X */
(1,2,6, -1,145,15,205277,521300,1),		/* Raid X */
(1,2,6, -1,145,15,205277,520770,1),		/* Fatal X */
(1,2,6, -1,145,15,205277,521300,1),		/* Raid X */
(1,2,6, -1,145,15,205277,521260,1),		/* Enchantment X */
(1,2,6, -1,145,15,205277,521120,1),		/* Devil X */
(1,2,6, -1,145,15,205277,521240,1),		/* Dauntlessness X */
(1,2,6, -1,145,15,205277,520790,1),		/* Burst X */
(1,2,6, -1,145,15,205277,521320,1),		/* Curse X */
(1,2,6, -1,145,15,205277,520810,1),		/* Wrath X */
(1,2,6, -1,145,15,205277,521340,1),		/* Accuracy X */
(1,2,6, -1,145,15,205277,521100,1),		/* Ferocity X */
(1,2,6, -1,145,15,205277,521180,1),		/* Keenness X */
(1,2,6, -1,145,15,205277,521360,1),		/* Enlightenment X */
(1,2,6, -1,145,15,205277,520390,1),		/* Barrier X */
(1,2,6, -1,145,15,205277,520510,1),		/* Might X */
(1,2,6, -1,145,15,205277,521220,1),		/* Madness X */
(1,2,6, -1,145,15,205277,520750,1),		/* Experience X */
(1,2,6, -1,145,15,205277,521280,1),		/* Destruction X */
(1,2,6, -1,195,40,205277,521400,1),		/* Assassin X */
(1,2,6, -1,195,40,205277,521380,1),		/* Tyrant X */
(1,2,6, -1,195,40,205277,521420,1),		/* Sage X */
(1,2,6, -1,145,15,205277,520450,1),		/* Passion X */
(1,2,6, -1,195,40,205277,521440,1),		/* Enigma X */
(1,2,6, -1,195,40,205277,521460,1),		/* Judge X */
(1,2,6, -1,195,40,205277,521480,1),		/* Massacre X */
(1,2,6, -1,145,15,205277,520550,1),		/* Sorcery X */
(1,2,6, -1,145,15,205277,520490,1),		/* Fearless X */

/*****Costumes******/

-- Sub Packages Male
(1,3,1, 1,35,3,0,202027,1),		/* Blaze of the Purple Shadow Costume Package */
(1,3,1, 1,35,3,0,202028,1),		/* Scarlet Nobility Costume Package */
(1,3,1, 1,35,3,0,202029,1),		/* Burning Cheetah Costume Package */
(1,3,1, 1,35,3,0,202031,1),		/* Wild Thorn Costume Package */
(1,3,1, 1,45,4,0,202032,1),		/* Fanersai Banquet Costume Package */
(1,3,1, 1,50,5,0,202033,1),		/* Doomlord Costume Package */
(1,3,1, 1,50,5,0,202027,1),		/* Noble Ranger Costume Package */
(1,3,1, 1,35,3,0,202035,1),		/* Wild Warrior Costume Package */
(1,3,1, 1,35,3,0,202036,1),		/* Wrestler Costume Package */
(1,3,1, 1,35,3,0,202038,1),		/* Artic Costume Package */
(1,3,1, 1,50,5,0,202039,1),		/* Silver Snow Costume Package */
(1,3,1, 1,35,3,0,202042,1),		/* Mystical Costume Package */
(1,3,1, 1,50,5,0,202043,1),		/* Wanderer's Costume Package */
(1,3,1, 1,35,3,0,204810,1),		/* NightHawk Costume Package */
(1,3,1, 1,35,3,0,204811,1),		/* Vampire Costume Package */
(1,3,1, 1,50,5,0,205929,1),		/* Premium Noble Ranger Costume Package */
(1,3,1, 1,35,3,0,206344,1),		/* Stealthy Costume Package */
(1,3,1, 1,35,3,0,206345,1),		/* Costume Package of the Brave */
(1,3,1, 1,35,3,0,207151,1),		/* Fashionable Gentleman's Costume Package */
(1,3,1, 1,35,3,0,240811,1),		/* Soul-Eater Demon Clown Costume Package */
(1,3,1, 1,35,3,0,202037,1),		/* Yule Celebration Package */
(1,3,1, 1,165,16,0,209463,1),	/* Sismond Costume Package */

-- Sub Packages Female
(1,3,1, 2,35,3,0,202024,1),		/* Yule Celebration Package */
(1,3,1, 2,165,16,0,209463,1),	/* Sismond Costume Package */
(1,3,1, 2,35,3,0,202025,1),		/* Arctic Costume Package */
(1,3,1, 2,50,5,0,202026,1),		/* Silver Snow Costume Package */
(1,3,1, 2,50,5,0,202041,1),		/* Mystical Costume Package */
(1,3,1, 2,200,10,0,204812,1),	/* Costume Package */
(1,3,1, 2,35,3,0,206346,1),		/* Wanderer's Costume Package */
(1,3,1, 2,35,3,0,206347,1),		/* Stealthy Costume Package */
(1,3,1, 2,35,3,0,206348,1),		/* Costume Package of the Brave */
(1,3,1, 2,35,3,0,208176,1),		/* Fashionable Lady's Costume Package */
(1,3,1, 2,50,5,0,240812,1),		/* Soul-Eater Demon Clown Costume Package */
(1,3,1, 2,125,8,0,202003,1),	/* Angel's Dream Costume Package */
(1,3,1, 2,35,3,0,202004,1),		/* Purple Lady Costume Package */
(1,3,1, 2,35,3,0,202007,1),		/* Mysterious Butterfly Costume Package */
(1,3,1, 2,35,3,0,202008,1),		/* Cowgirl Costume Package */
(1,3,1, 2,35,3,0,202009,1),		/* Coffee Maid Costume Package */
(1,3,1, 2,35,3,0,202012,1),		/* Hot Pepper Costume Package */
(1,3,1, 2,35,3,0,202019,1),		/* Flower Fairy Costume Package */
(1,3,1, 2,35,3,0,202021,1),		/* Sexy Bunny Costume Package */
(1,3,1, 2,35,3,0,202022,1),		/* Evening Gown Costume Package */
(1,3,1, 2,35,3,0,202023,1),		/* Purple Fantasy Costume Package */
(1,3,1, 2,50,5,0,202028,1),		/* Scarlet Nobility Costume Package */


-- Sub Single Pieces Male
(1,3,2, 1,20,4,0,221900,1),		/* Blaze of the Purple Shadow Coat (Male) */
(1,3,2, 1,20,4,0,221901,1),		/* Blaze of the Purple Shadow Leggings (Male) */
(1,3,2, 1,20,4,0,221902,1),		/* Blaze of the Purple Shadow Boots (Male) */
(1,3,2, 1,20,4,0,221903,1),		/* Scarlet Coat of Nobility (Male) */
(1,3,2, 1,20,4,0,221904,1),		/* Scarlet Leggings of Nobility (Male) */
(1,3,2, 1,20,4,0,221905,1),		/* Scarlet Boots of Nobility (Male) */
(1,3,2, 1,20,4,0,221906,1),		/* Kuokuo's Cactus Hat (Male) */
(1,3,2, 1,20,4,0,221907,1),		/* Kuokuo's Cactus Coat (Male) */
(1,3,2, 1,20,4,0,221909,1),		/* Burning Cheetah Gown (Male) */
(1,3,2, 1,20,4,0,221911,1),		/* Burning Cheetah Boots (Male) */
(1,3,2, 1,20,4,0,221912,1),		/* Burning Cheetah Gloves (Male) */
(1,3,2, 1,20,4,0,221913,1),		/* Wild Thorn Diadem (Male) */
(1,3,2, 1,20,4,0,221914,1),		/* Wild Thorn Coat (Male) */
(1,3,2, 1,20,4,0,221915,1),		/* Wild Thorn Leggings (Male) */
(1,3,2, 1,20,4,0,221916,1),		/* Wild Thorn Boots (Male) */
(1,3,2, 1,20,4,0,221917,1),		/* Wild Thorn Gloves (Male) */
(1,3,2, 1,20,4,0,221918,1),		/* Wild Thorn Cloak (Male) */
(1,3,2, 1,20,4,0,221920,1),		/* Fanersai Banquet Jacket (Male) */
(1,3,2, 1,20,4,0,221921,1),		/* Fanersai Banquet Leggings (Male) */
(1,3,2, 1,20,4,0,221922,1),		/* Fanersai Banquet Boots (Male) */
(1,3,2, 1,20,4,0,221923,1),		/* Fanersai Banquet Gloves (Male) */
(1,3,2, 1,20,4,0,222727,1),		/* Green Pumpkin Jacket (Male) */
(1,3,2, 1,20,4,0,222728,1),		/* Green Pumpkin Gloves (Male) */
(1,3,2, 1,20,4,0,222729,1),		/* Green Pumpkin Shoes (Male) */
(1,3,2, 1,20,4,0,222730,1),		/* Green Pumpkin Leggings (Male) */
(1,3,2, 1,20,4,0,222737,1),		/* Vampire Count Coat (Male) */
(1,3,2, 1,20,4,0,222738,1),		/* Vampire Count Gloves (Male) */
(1,3,2, 1,20,4,0,222739,1),		/* Vampire Count Shoes (Male) */
(1,3,2, 1,20,4,0,222740,1),		/* Vampire Count Leggings (Male) */
(1,3,2, 1,20,4,0,222900,1),		/* Doomlord's Headpiece (Male) */
(1,3,2, 1,20,4,0,222901,1),		/* Doomlord's Coat (Male) */
(1,3,2, 1,20,4,0,222902,1),		/* Doomlord's Shoulder Armor (Male) */
(1,3,2, 1,20,4,0,222903,1),		/* Doomlord's Boots (Male) */
(1,3,2, 1,20,4,0,222904,1),		/* Doomlord's Gloves (Male) */
(1,3,2, 1,20,4,0,222906,1),		/* Noble Ranger's Mask Helmet (Male) */
(1,3,2, 1,20,4,0,222907,1),		/* Noble Ranger's Suit (Male) */
(1,3,2, 1,20,4,0,222908,1),		/* Noble Ranger's Leggings (Male) */
(1,3,2, 1,20,4,0,222909,1),		/* Noble Ranger's Boots (Male) */
(1,3,2, 1,20,4,0,222910,1),		/* Noble Ranger's Gloves (Male) */
(1,3,2, 1,20,4,0,222911,1),		/* White Formal Jacket (Male) */
(1,3,2, 1,20,4,0,222912,1),		/* White Formal Trousers (Male) */
(1,3,2, 1,20,4,0,222913,1),		/* White Formal Mask (Male) */
(1,3,2, 1,20,4,0,222915,1),		/* White Formal Gloves (Male) */
(1,3,2, 1,20,4,0,222969,1),		/* Snowflake Festival Holy Coat (Male) */
(1,3,2, 1,20,4,0,222970,1),		/* Snowflake Festival Holy Gloves (Male) */
(1,3,2, 1,20,4,0,222971,1),		/* Snowflake Festival Boots (Male) */
(1,3,2, 1,20,4,0,222972,1),		/* Snowflake Festival Pants (Male) */
(1,3,2, 1,20,4,0,222973,1),		/* Snowflake Festival Holy Hat (Male) */
(1,3,2, 1,20,4,0,222974,1),		/* Golden Snowflake Festival Coat (Male) */
(1,3,2, 1,20,4,0,222975,1),		/* Golden Snowflake Festival Gloves (Male) */
(1,3,2, 1,20,4,0,222976,1),		/* Golden Snowflake Festival Boots (Male) */
(1,3,2, 1,20,4,0,222977,1),		/* Golden Snowflake Festival Pants (Male) */
(1,3,2, 1,20,4,0,222978,1),		/* Golden Snowflake Festival Hat (Male) */
(1,3,2, 1,20,4,0,222979,1),		/* Golden Snowflake Festival Shoulder Guards (Male) */
(1,3,2, 1,20,4,0,222989,1),		/* Wild Warrior's Tattoo (Male) */
(1,3,2, 1,20,4,0,222990,1),		/* Wild Warrior's Pants (Male) */
(1,3,2, 1,20,4,0,222992,1),		/* Wild Warrior's Foot Ornament (Male) */
(1,3,2, 1,20,4,0,222993,1),		/* Wild Warrior's Hand Ornament (Male) */
(1,3,2, 1,20,4,0,222998,1),		/* Wrestler's Shirt (Male) */
(1,3,2, 1,20,4,0,223350,1),		/* Wrestler's Pants (Male) */
(1,3,2, 1,20,4,0,223351,1),		/* Wrestler's Boots (Male) */
(1,3,2, 1,20,4,0,223352,1),		/* Wrestler's Gloves (Male) */
(1,3,2, 1,20,4,0,223358,1),		/* Golden Music Shirt (Male) */
(1,3,2, 1,20,4,0,223359,1),		/* Golden Music Pants (Male) */
(1,3,2, 1,20,4,0,223360,1),		/* Golden Music Boots (Male) */
(1,3,2, 1,20,4,0,223361,1),		/* Magnificent Golden Music Helmet (Male) */
(1,3,2, 1,20,4,0,223362,1),		/* Golden Music Helmet (Male) */
(1,3,2, 1,20,4,0,223363,1),		/* Golden Music Gloves (Male) */
(1,3,2, 1,20,4,0,223364,1),		/* Golden Music Epaulet (Male) */
(1,3,2, 1,20,4,0,223370,1),		/* Adam's Wild Shoulders (Male) */
(1,3,2, 1,20,4,0,223371,1),		/* Adam's Gold Scale Gloves (Male) */
(1,3,2, 1,20,4,0,223372,1),		/* Adam's Gold Scale Boots (Male) */
(1,3,2, 1,20,4,0,223373,1),		/* Adam's Summer Pants (Male) */
(1,3,2, 1,20,4,0,223378,1),		/* Outfit of the Jealous Single (Male) */
(1,3,2, 1,20,4,0,223379,1),		/* Outfit of the Passionate Couple (Male) */
(1,3,2, 1,20,4,0,223388,1),		/* Eagle Feather Egg Coat (Male) */
(1,3,2, 1,20,4,0,223395,1),		/* Baroque Noble Hat (Male) */
(1,3,2, 1,20,4,0,223396,1),		/* Baroque Noble Coat (Male) */
(1,3,2, 1,20,4,0,223397,1),		/* Baroque Noble Pants (Male) */
(1,3,2, 1,20,4,0,223398,1),		/* Baroque Noble Boots (Male) */
(1,3,2, 1,20,4,0,223399,1),		/* Baroque Noble Gloves (Male) */
(1,3,2, 1,20,4,0,223413,1),		/* Wabbit Ears (Male) */
(1,3,2, 1,20,4,0,223414,1),		/* Oriental Traditional Coat (Male) */
(1,3,2, 1,20,4,0,223416,1),		/* Music Festival Jacket  (Male) */
(1,3,2, 1,20,4,0,223417,1),		/* Music Festival Trousers (Male) */
(1,3,2, 1,20,4,0,223418,1),		/* Music Festival Boots (Male) */
(1,3,2, 1,20,4,0,223419,1),		/* Music Festival Mask (Male) */
(1,3,2, 1,20,4,0,223420,1),		/* Music Festival Shoulder Guards (Male) */
(1,3,2, 1,20,4,0,223423,1),		/* Oriental Traditional Pants (Male) */
(1,3,2, 1,20,4,0,223426,1),		/* Music Festival Cape (Male) */
(1,3,2, 1,20,4,0,223430,1),		/* Oriental Traditional Cap (Male) */
(1,3,2, 1,20,4,0,223431,1),		/* Oriental Traditional Boots (Male) */
(1,3,2, 1,20,4,0,223432,1),		/* Arctic Cloak (Male) */
(1,3,2, 1,20,4,0,223433,1),		/* Eagle Dancer's Coat (Male) */
(1,3,2, 1,20,4,0,223434,1),		/* Eagle Dancer's Pants (Male) */
(1,3,2, 1,20,4,0,223436,1),		/* Eagle Dancer's Boots (Male) */
(1,3,2, 1,20,4,0,223437,1),		/* Oriental Noble Robe (Male) */
(1,3,2, 1,20,4,0,223439,1),		/* Oriental Traditional Wedding Coat (Male) */
(1,3,2, 1,20,4,0,223440,1),		/* Oriental Traditional Wedding Pants (Male) */
(1,3,2, 1,20,4,0,223441,1),		/* Oriental Traditional Wedding Cap (Male) */
(1,3,2, 1,20,4,0,223443,1),		/* Oriental Traditional Wedding Boots (Male) */
(1,3,2, 1,20,4,0,223444,1),		/* Oriental Royal Military Coat (Male) */
(1,3,2, 1,20,4,0,223445,1),		/* Oriental Royal Military Pants (Male) */
(1,3,2, 1,20,4,0,223446,1),		/* Oriental Royal Military Helmet (Male) */
(1,3,2, 1,20,4,0,223447,1),		/* Oriental Royal Military Boots (Male) */
(1,3,2, 1,20,4,0,224308,1),		/* Dark Green Oriental Military Coat (Male) */
(1,3,2, 1,20,4,0,224309,1),		/* Dark Green Oriental Military Pants (Male) */
(1,3,2, 1,20,4,0,224311,1),		/* Dark Green Oriental Military Boots (Male) */
(1,3,2, 1,20,4,0,224321,1),		/* Arctic Gloves (Male) */
(1,3,2, 1,20,4,0,224325,1),		/* Arctic Shoulderpads (Male) */
(1,3,2, 1,20,4,0,224326,1),		/* Arctic Cape (Male) */
(1,3,2, 1,20,4,0,224335,1),		/* Oriental Fashionable Military Boots (Male) */
(1,3,2, 1,20,4,0,224342,1),		/* Arctic Boots (Male) */
(1,3,2, 1,20,4,0,224343,1),		/* Arctic Trousers (Male) */
(1,3,2, 1,20,4,0,224344,1),		/* Arctic Helmet (Male) */
(1,3,2, 1,20,4,0,224345,1),		/* Cloak of the Brave (Male) */
(1,3,2, 1,20,4,0,224346,1),		/* Gloves of the Brave (Male) */
(1,3,2, 1,20,4,0,224347,1),		/* Cape of the Brave (Male) */
(1,3,2, 1,20,4,0,224348,1),		/* Shoulderpads of the Brave (Male) */
(1,3,2, 1,20,4,0,224867,1),		/* Boots of the Brave (Male) */
(1,3,2, 1,20,4,0,224868,1),		/* Trousers of the Brave (Male) */
(1,3,2, 1,20,4,0,224869,1),		/* Helmet of the Brave (Male) */
(1,3,2, 1,20,4,0,224870,1),		/* Stealthy Cloak (Male) */
(1,3,2, 1,20,4,0,224871,1),		/* Stealthy Gloves (Male) */
(1,3,2, 1,20,4,0,224872,1),		/* Stealthy Shoulderpads (Male) */
(1,3,2, 1,20,4,0,224873,1),		/* Stealthy Cape (Male) */
(1,3,2, 1,20,4,0,224874,1),		/* Stealthy Trousers (Male) */
(1,3,2, 1,20,4,0,224875,1),		/* Stealthy Boots (Male) */
(1,3,2, 1,20,4,0,224876,1),		/* Wanderer's Cloak (Male) */
(1,3,2, 1,20,4,0,224877,1),		/* Wanderer's Gloves (Male) */
(1,3,2, 1,20,4,0,224878,1),		/* Wanderer's Shoulderpads (Male) */
(1,3,2, 1,20,4,0,224879,1),		/* Wanderer's Cape (Male) */
(1,3,2, 1,20,4,0,224880,1),		/* Wanderer's Boots (Male) */
(1,3,2, 1,20,4,0,224881,1),		/* Wanderer's Trousers (Male) */
(1,3,2, 1,20,4,0,224882,1),		/* Wanderer's Helmet (Male) */
(1,3,2, 1,20,4,0,224883,1),		/* Mystical Cloak (Male) */
(1,3,2, 1,20,4,0,224884,1),		/* Mystical Gloves (Male) */
(1,3,2, 1,20,4,0,224885,1),		/* Mystical Shoulderpads (Male) */
(1,3,2, 1,20,4,0,224886,1),		/* Mystical Cape (Male) */
(1,3,2, 1,20,4,0,224952,1),		/* Mystical Boots (Male) */
(1,3,2, 1,20,4,0,224953,1),		/* Mystical Trousers (Male) */
(1,3,2, 1,20,4,0,224954,1),		/* Mystical Crown (Male) */
(1,3,2, 1,20,4,0,224955,1),		/* Silver Snow Cloak (Male) */
(1,3,2, 1,20,4,0,224956,1),		/* Silver Snow Gloves (Male) */
(1,3,2, 1,20,4,0,224957,1),		/* Silver Snow Shoulderpads (Male) */
(1,3,2, 1,20,4,0,224958,1),		/* Silver Snow Cape (Male) */
(1,3,2, 1,20,4,0,224959,1),		/* Silver Snow Boots (Male) */
(1,3,2, 1,20,4,0,224960,1),		/* Silver Snow Trousers (Male) */
(1,3,2, 1,20,4,0,224961,1),		/* Silver Snow Headdress (Male) */
(1,3,2, 1,20,4,0,224984,1),		/* Stealthy Hood (Male) */
(1,3,2, 1,20,4,0,225148,1),		/* Professional Bartender Coat (Male) */
(1,3,2, 1,20,4,0,225149,1),		/* Professional Bartender Pants (Male) */
(1,3,2, 1,20,4,0,225150,1),		/* Professional Bartender Gloves (Male) */
(1,3,2, 1,20,4,0,225151,1),		/* Professional Bartender Shoes (Male) */
(1,3,2, 1,20,4,0,225155,1),		/* Strange Clown Shoes (Male) */
(1,3,2, 1,20,4,0,225156,1),		/* Strange Clown Gloves (Male) */
(1,3,2, 1,20,4,0,225157,1),		/* Strange Clown Cap and Mask (Male) */
(1,3,2, 1,20,4,0,225158,1),		/* Strange Clown Mask (Male) */
(1,3,2, 1,20,4,0,225159,1),		/* Strange Clown Cap (Male) */
(1,3,2, 1,20,4,0,225160,1),		/* Strange Clown Pants (Male) */
(1,3,2, 1,20,4,0,225161,1),		/* Strange Clown Shoulder Armor (Male) */
(1,3,2, 1,20,4,0,225162,1),		/* Strange Clown Coat (Male) */
(1,3,2, 1,20,4,0,225307,1),		/* Elven Snowflake Festival Coat (Male) */
(1,3,2, 1,20,4,0,225308,1),		/* Elven Snowflake Festival Pants (Male) */
(1,3,2, 1,20,4,0,225309,1),		/* Elven Snowflake Festival Shoes (Male) */
(1,3,2, 1,20,4,0,225310,1),		/* Elven Snowflake Festival Headdress (Male) */
(1,3,2, 1,20,4,0,225311,1),		/* Elven Snowflake Festival Wings (Male) */
(1,3,2, 1,20,4,0,225312,1),		/* Elven Snowflake Festival Mask (Male) */
(1,3,2, 1,20,4,0,225313,1),		/* Samurai Helmet (Male) */
(1,3,2, 1,20,4,0,225314,1),		/* Samurai Armor (Male) */
(1,3,2, 1,20,4,0,225315,1),		/* Samurai Gloves (Male) */
(1,3,2, 1,20,4,0,225316,1),		/* Samurai Spaulders (Male) */
(1,3,2, 1,20,4,0,225317,1),		/* Samurai Boots (Male) */
(1,3,2, 1,20,4,0,225318,1),		/* Samurai Leg Guards (Male) */
(1,3,2, 1,20,4,0,225322,1),		/* Kimono (Male) */
(1,3,2, 1,20,4,0,225323,1),		/* Kimono Shoulder Pads (Male) */
(1,3,2, 1,20,4,0,225324,1),		/* Sumurai Hair Bun (Male) */
(1,3,2, 1,20,4,0,225325,1),		/* Samurai Braids (Male) */
(1,3,2, 1,20,4,0,225326,1),		/* Kimono Sandals (Male) */
(1,3,2, 1,20,4,0,225327,1),		/* Assassin's Cape of Azrael (Male) */
(1,3,2, 1,20,4,0,225328,1),		/* Assassin's Boots of Azrael (Male) */
(1,3,2, 1,20,4,0,225329,1),		/* Assassin's Gloves of Azrael (Male) */
(1,3,2, 1,20,4,0,225330,1),		/* Assassin's Hood of Azrael (Male) */
(1,3,2, 1,20,4,0,225331,1),		/* Assassin's Leggings of Azrael (Male) */
(1,3,2, 1,20,4,0,225332,1),		/* Assassin's Shoulder Pads of Azrael (Male) */
(1,3,2, 1,20,4,0,225333,1),		/* Assassin's Suit of Azrael (Male) */
(1,3,2, 1,20,4,0,225341,1),		/* Samurai Pointed Helmet (Male) */
(1,3,2, 1,20,4,0,225342,1),		/* Samurai Horned Helmet (Male) */
(1,3,2, 1,20,4,0,225363,1),		/* Black Aodai (Male) */
(1,3,2, 1,20,4,0,225364,1),		/* Black Shoes (Male) */
(1,3,2, 1,20,4,0,225365,1),		/* Black Bandana (Male) */
(1,3,2, 1,20,4,0,225369,1),		/* Blue Aodai (Male) */
(1,3,2, 1,20,4,0,225370,1),		/* Blue Bandana (Male) */
(1,3,2, 1,20,4,0,225371,1),		/* White Shoes (Male) */
(1,3,2, 1,20,4,0,225535,1),		/* Football Coat - Dark Red/Blue (Male) */
(1,3,2, 1,20,4,0,225536,1),		/* Football Coat - Red/White (Male) */
(1,3,2, 1,20,4,0,225537,1),		/* Football Coat - Black/White (Male) */
(1,3,2, 1,20,4,0,225538,1),		/* Football Coat - Yellow/Red (Male) */
(1,3,2, 1,20,4,0,225539,1),		/* Football Coat - Yellow/Dark Blue (Male) */
(1,3,2, 1,20,4,0,225540,1),		/* Football Coat - Green/White (Male) */
(1,3,2, 1,20,4,0,225547,1),		/* Football Pants - Dark Red/Blue (Male) */
(1,3,2, 1,20,4,0,225548,1),		/* Football Pants - Red/White (Male) */
(1,3,2, 1,20,4,0,225549,1),		/* Football Pants - Black/White (Male) */
(1,3,2, 1,20,4,0,225550,1),		/* Football Pants - Yellow/Red (Male) */
(1,3,2, 1,20,4,0,225551,1),		/* Football Pants - Yellow/Dark Blue (Male) */
(1,3,2, 1,20,4,0,225552,1),		/* Football Pants - Green/White (Male) */
(1,3,2, 1,20,4,0,225559,1),		/* Football Shoes - Dark Red/Blue (Male) */
(1,3,2, 1,20,4,0,225560,1),		/* Football Shoes - Red/White (Male) */
(1,3,2, 1,20,4,0,225561,1),		/* Football Shoes - Black/White (Male) */
(1,3,2, 1,20,4,0,225562,1),		/* Football Shoes - Yellow/Red (Male) */
(1,3,2, 1,20,4,0,225563,1),		/* Football Shoes - Yellow/Dark Blue (Male) */
(1,3,2, 1,20,4,0,225564,1),		/* Football Shoes - Green/White (Male) */
(1,3,2, 1,20,4,0,225571,1),		/* Football Hat - Dark Red/Blue (Male) */
(1,3,2, 1,20,4,0,225572,1),		/* Football Hat - Red/White (Male) */
(1,3,2, 1,20,4,0,225573,1),		/* Football Hat - Black/White (Male) */
(1,3,2, 1,20,4,0,225574,1),		/* Football Hat - Yellow/Red (Male) */
(1,3,2, 1,20,4,0,225575,1),		/* Football Hat - Yellow/Dark Blue (Male) */
(1,3,2, 1,20,4,0,225576,1),		/* Football Hat - Green/White (Male) */
(1,3,2, 1,20,4,0,225583,1),		/* Football Gloves - Dark Red/Blue (Male) */
(1,3,2, 1,20,4,0,225883,1),		/* Football Gloves - Red/White (Male) */
(1,3,2, 1,20,4,0,225884,1),		/* Football Gloves - Black/White (Male) */
(1,3,2, 1,20,4,0,225885,1),		/* Football Gloves - Yellow/Red (Male) */
(1,3,2, 1,20,4,0,225886,1),		/* Football Gloves - Yellow/Dark Blue (Male) */
(1,3,2, 1,20,4,0,225887,1),		/* Football Gloves - Green/White (Male) */
(1,3,2, 1,20,4,0,226060,1),		/* Blessed Knight Coat (Male) */
(1,3,2, 1,20,4,0,226061,1),		/* Blessed Knight Gloves (Male) */
(1,3,2, 1,20,4,0,226062,1),		/* Blessed Knight Shoulderpads (Male) */
(1,3,2, 1,20,4,0,226063,1),		/* Blessed Knight Cape (Male) */
(1,3,2, 1,20,4,0,226064,1),		/* Blessed Knight Boots (Male) */
(1,3,2, 1,20,4,0,226065,1),		/* Blessed Knight Trousers (Male) */
(1,3,2, 1,20,4,0,226066,1),		/* Blessed Knight Helmet (Male) */
(1,3,2, 1,20,4,0,226067,1),		/* War Dragon Warrior Coat (Male) */
(1,3,2, 1,20,4,0,226068,1),		/* War Dragon Warrior Gloves (Male) */
(1,3,2, 1,20,4,0,226069,1),		/* War Dragon Warrior Shoulderpads (Male) */
(1,3,2, 1,20,4,0,226070,1),		/* War Dragon Warrior Cape (Male) */
(1,3,2, 1,20,4,0,226071,1),		/* War Dragon Warrior Boots (Male) */
(1,3,2, 1,20,4,0,226072,1),		/* War Dragon Warrior Trousers (Male) */
(1,3,2, 1,20,4,0,226073,1),		/* War Dragon Warrior Helmet (Male) */
(1,3,2, 1,20,4,0,226074,1),		/* Clear Breeze Rogue Coat (Male) */
(1,3,2, 1,20,4,0,226075,1),		/* Clear Breeze Rogue Gloves (Male) */
(1,3,2, 1,20,4,0,226076,1),		/* Clear Breeze Rogue Shoulderpads (Male) */
(1,3,2, 1,20,4,0,226077,1),		/* Clear Breeze Rogue Cape (Male) */
(1,3,2, 1,20,4,0,226078,1),		/* Clear Breeze Rogue Boots (Male) */
(1,3,2, 1,20,4,0,226079,1),		/* Clear Breeze Rogue Trousers (Male) */
(1,3,2, 1,20,4,0,226080,1),		/* Clear Breeze Rogue Helmet (Male) */
(1,3,2, 1,20,4,0,226081,1),		/* Shadow Scout Armor (Male) */
(1,3,2, 1,20,4,0,226082,1),		/* Shadow Scout Gloves (Male) */
(1,3,2, 1,20,4,0,226083,1),		/* Shadow Scout Shoulder Armor (Male) */
(1,3,2, 1,20,4,0,226084,1),		/* Shadow Scout Cape (Male) */
(1,3,2, 1,20,4,0,226085,1),		/* Shadow Scout Boots (Male) */
(1,3,2, 1,20,4,0,226086,1),		/* Shadow Scout Cap (Male) */
(1,3,2, 1,20,4,0,226087,1),		/* Dark Flame Priest Coat (Male) */
(1,3,2, 1,20,4,0,226088,1),		/* Dark Flame Priest Gloves (Male) */
(1,3,2, 1,20,4,0,226089,1),		/* Dark Flame Priest Shoulderpads (Male) */
(1,3,2, 1,20,4,0,226090,1),		/* Dark Flame Priest Cape (Male) */
(1,3,2, 1,20,4,0,226091,1),		/* Dark Flame Priest Boots (Male) */
(1,3,2, 1,20,4,0,226092,1),		/* Dark Flame Priest Headscarf (Male) */
(1,3,2, 1,20,4,0,226093,1),		/* Dark Flame Priest Trousers (Male) */
(1,3,2, 1,20,4,0,226094,1),		/* Acolyte Mage Robe (Male) */
(1,3,2, 1,20,4,0,226095,1),		/* Acolyte Mage Gloves (Male) */
(1,3,2, 1,20,4,0,226096,1),		/* Acolyte Mage Shoulderpads (Male) */
(1,3,2, 1,20,4,0,226097,1),		/* Acolyte Mage Cape (Male) */
(1,3,2, 1,20,4,0,226098,1),		/* Acolyte Mage Boots (Male) */
(1,3,2, 1,20,4,0,226099,1),		/* Acolyte Mage Crown (Male) */
(1,3,2, 1,20,4,0,226245,1),		/* Paraguyan Football Shirt (Male) */
(1,3,2, 1,20,4,0,226246,1),		/* Venezuelan Football Shirt (Male) */
(1,3,2, 1,20,4,0,226247,1),		/* Peruvian Football Shirt (Male) */
(1,3,2, 1,20,4,0,226248,1),		/* Uruguyan Football Shirt (Male) */
(1,3,2, 1,20,4,0,226249,1),		/* Argentinian Football Shirt (Male) */
(1,3,2, 1,20,4,0,226250,1),		/* Bolivian Football Shirt (Male) */
(1,3,2, 1,20,4,0,226251,1),		/* Brazilian Football Shirt (Male) */
(1,3,2, 1,20,4,0,226252,1),		/* Chilean Football Shirt (Male) */
(1,3,2, 1,20,4,0,226253,1),		/* Colombian Football Shirt (Male) */
(1,3,2, 1,20,4,0,226254,1),		/* Ecuadorian Football Shirt (Male) */
(1,3,2, 1,20,4,0,226289,1),		/* Black Wedding Jacket (Male) */
(1,3,2, 1,20,4,0,226290,1),		/* Black Wedding Trousers (Male) */
(1,3,2, 1,20,4,0,226291,1),		/* Black Wedding Hat (Male) */
(1,3,2, 1,20,4,0,226292,1),		/* Black Wedding Shoes (Male) */
(1,3,2, 1,20,4,0,226585,1),		/* Aztec Coat (Male) */
(1,3,2, 1,20,4,0,226586,1),		/* Aztec Shoulder Armor (Male) */
(1,3,2, 1,20,4,0,226587,1),		/* Aztec Cape (Male) */
(1,3,2, 1,20,4,0,226588,1),		/* Aztec Shoes (Male) */
(1,3,2, 1,20,4,0,226589,1),		/* Aztec Pants (Male) */
(1,3,2, 1,20,4,0,226590,1),		/* Aztec Headdress (Male) */
(1,3,2, 1,20,4,0,226715,1),		/* South Korean Football Shirt (Male) */
(1,3,2, 1,20,4,0,226716,1),		/* Spanish Football Shirt (Male) */
(1,3,2, 1,20,4,0,226717,1),		/* French Football Shirt (Male) */
(1,3,2, 1,20,4,0,226718,1),		/* Swiss Football Shirt (Male) */
(1,3,2, 1,20,4,0,226719,1),		/* North Korean Football Shirt (Male) */
(1,3,2, 1,20,4,0,226720,1),		/* Portuguese Football Shirt (Male) */
(1,3,2, 1,20,4,0,226721,1),		/* Kiwi Football Shirt (Male) */
(1,3,2, 1,20,4,0,226722,1),		/* Slovakian Football Shirt (Male) */
(1,3,2, 1,20,4,0,226723,1),		/* Italian Football Shirt (Male) */
(1,3,2, 1,20,4,0,226724,1),		/* Greek Football Shirt (Male) */
(1,3,2, 1,20,4,0,226725,1),		/* South African Football Shirt (Male) */
(1,3,2, 1,20,4,0,226726,1),		/* Japanese Football Shirt (Male) */
(1,3,2, 1,20,4,0,226727,1),		/* Cameroonian Football Shirt (Male) */
(1,3,2, 1,20,4,0,226728,1),		/* Danish Football Shirt (Male) */
(1,3,2, 1,20,4,0,226729,1),		/* Dutch Football Shirt (Male) */
(1,3,2, 1,20,4,0,226730,1),		/* Ghanaian Football Shirt (Male) */
(1,3,2, 1,20,4,0,226731,1),		/* German  Football Shirt (Male) */
(1,3,2, 1,20,4,0,226732,1),		/* Serbian Football Shirt (Male) */
(1,3,2, 1,20,4,0,226733,1),		/* Australian Football Shirt (Male) */
(1,3,2, 1,20,4,0,226734,1),		/* Slovenian Football Shirt (Male) */
(1,3,2, 1,20,4,0,226735,1),		/* English Football Shirt (Male) */
(1,3,2, 1,20,4,0,226736,1),		/* USA Football Shirt (Male) */
(1,3,2, 1,20,4,0,226737,1),		/* Algerian Football Shirt (Male) */
(1,3,2, 1,20,4,0,226738,1),		/* Nigerian Football Shirt (Male) */
(1,3,2, 1,20,4,0,226739,1),		/* Ivory Coast Football Shirt (Male) */
(1,3,2, 1,20,4,0,226803,1),		/* Polish Football Shirt (Male) */
(1,3,2, 1,20,4,0,226896,1),		/* Honduran Football Shirt (Male) */
(1,3,2, 1,20,4,0,226897,1),		/* Mexican Football Shirt (Male) */
(1,3,2, 1,20,4,0,226898,1),		/* Nicaraguan Football Shirt (Male) */
(1,3,2, 1,20,4,0,226899,1),		/* Panamanian Football Shirt (Male) */
(1,3,2, 1,20,4,0,226900,1),		/* Belize Football Shirt (Male) */
(1,3,2, 1,20,4,0,226901,1),		/* Costa Rican Football Shirt (Male) */
(1,3,2, 1,20,4,0,226902,1),		/* Salvadorian Football Shirt (Male) */
(1,3,2, 1,20,4,0,226903,1),		/* Guatemalan Football Shirt (Male) */
(1,3,2, 1,20,4,0,227172,1),		/* Armor of the Wind Warrior (Male) */
(1,3,2, 1,20,4,0,227173,1),		/* Street Clothing (Male) */
(1,3,2, 1,20,4,0,227540,1),		/* Skeletal Siren Gloves (Male) */
(1,3,2, 1,20,4,0,227541,1),		/* Skeletal Siren Vest (Male) */
(1,3,2, 1,20,4,0,227542,1),		/* Skeletal Siren Cape (Male) */
(1,3,2, 1,20,4,0,227543,1),		/* Skeletal Siren Leggings (Male) */
(1,3,2, 1,20,4,0,227544,1),		/* Skeletal Siren Headdress (Male) */
(1,3,2, 1,20,4,0,227545,1),		/* Skeletal Siren Magic Boots (Male) */
(1,3,2, 1,20,4,0,227546,1),		/* Soul-Eater Demon Clown Gloves (Male) */
(1,3,2, 1,20,4,0,227547,1),		/* Soul-Eater Demon Clown Suit (Male) */
(1,3,2, 1,20,4,0,227548,1),		/* Soul-Eater Demon Clown Shoulder Guards (Male) */
(1,3,2, 1,20,4,0,227549,1),		/* Soul-Eater Demon Clown Leggings (Male) */
(1,3,2, 1,20,4,0,227550,1),		/* Soul-Eater Demon  Clown Mask (Male) */
(1,3,2, 1,20,4,0,227551,1),		/* Soul-Eater Demon Clown Long Boots (Male) */
(1,3,2, 1,20,4,0,228681,1),		/* Grinning Rogue Coat (Male) */
(1,3,2, 1,20,4,0,228682,1),		/* Grinning Rogue Gloves (Male) */
(1,3,2, 1,20,4,0,228683,1),		/* Grinning Rogue Shoulder Armor (Male) */
(1,3,2, 1,20,4,0,228684,1),		/* Grinning Rogue Boots (Male) */
(1,3,2, 1,20,4,0,228685,1),		/* Grinning Rogue Trousers (Male) */
(1,3,2, 1,20,4,0,228686,1),		/* Grinning Rogue Helmet (Male) */
(1,3,2, 1,20,4,0,228693,1),		/* Sismond Dress (Male) */
(1,3,2, 1,20,4,0,228694,1),		/* Sismond Mask (Male) */
(1,3,2, 1,20,4,0,229701,1),		/* Traditional Head Cover (Male) */
(1,3,2, 1,20,4,0,229702,1),		/* Traditional Garment (Male) */
(1,3,2, 1,20,4,0,229708,1),		/* Russian Football Shirt (Male) */
(1,3,2, 1,20,4,0,229709,1),		/* Bathrobe (Male) */
(1,3,2, 1,20,4,0,230170,1),		/* Cape of the Storm (Male) */
(1,3,2, 1,20,4,0,230171,1),		/* Boots of the Storm (Male) */
(1,3,2, 1,20,4,0,230172,1),		/* Gloves of the Storm (Male) */
(1,3,2, 1,20,4,0,230173,1),		/* Helm of the Storm (Male) */
(1,3,2, 1,20,4,0,230174,1),		/* Pantaloons of the Storm (Male) */
(1,3,2, 1,20,4,0,230175,1),		/* Shoulder Guards of the Storm (Male) */
(1,3,2, 1,20,4,0,230176,1),		/* Shirt of the Storm (Male) */
(1,3,2, 1,20,4,0,230765,1),		/* Redbud Academy Uniform Coat (Male) */
(1,3,2, 1,20,4,0,230766,1),		/* Redbud Academy Uniform Shoes (Male) */
(1,3,2, 1,20,4,0,230767,1),		/* Redbud Academy Uniform (Male) */
(1,3,2, 1,20,4,0,230772,1),		/* Sports Suit of Dedication (Male) */
(1,3,2, 1,20,4,0,230773,1),		/* Sports Suit of the Rising Sun (Male) */
(1,3,2, 1,20,4,0,231976,1),		/* Dark Vengeance Cloak (Male) */
(1,3,2, 1,20,4,0,231977,1),		/* Dark Vengeance Gloves (Male) */
(1,3,2, 1,20,4,0,231978,1),		/* Dark Vengeance Trousers (Male) */
(1,3,2, 1,20,4,0,231979,1),		/* Dark Vengeance Boots (Male) */
(1,3,2, 1,20,4,0,231984,1),		/* Silver Envoy's Gloves (Male) */
(1,3,2, 1,20,4,0,231985,1),		/* Silver Envoy's Headdress (Male) */
(1,3,2, 1,20,4,0,231986,1),		/* Silver Envoy's Trousers (Male) */
(1,3,2, 1,20,4,0,231987,1),		/* Silver Envoy's Shoulderpads (Male) */
(1,3,2, 1,20,4,0,231988,1),		/* Silver Envoy's Cloak (Male) */
(1,3,2, 1,20,4,0,231989,1),		/* Silver Envoy's Boots (Male) */
(1,3,2, 1,20,4,0,231996,1),		/* Colorful Violet Boots (Male) */
(1,3,2, 1,20,4,0,231997,1),		/* Colorful Violet Trousers (Male) */
(1,3,2, 1,20,4,0,231998,1),		/* Colorful Violet Cloak (Male) */
(1,3,2, 1,20,4,0,231999,1),		/* Colorful Violet Headdress (Male) */
(1,3,2, 1,20,4,0,234075,1),		/* Iranian Football Shirt (Male) */
(1,3,2, 1,20,4,0,234076,1),		/* Bosnian-Herzegovinian Football Shirt (Male) */
(1,3,2, 1,20,4,0,234077,1),		/* Croatian Football Shirt (Male) */
(1,3,2, 1,20,4,0,234078,1),		/* Belgian Football Shirt (Male) */
(1,3,2, 1,20,4,0,202037,1),		/* Yule Celebration Package (Male) */
(1,3,2, 1,20,4,0,202038,1),		/* Arctic Costume Package (Male) */
(1,3,2, 1,20,4,0,202039,1),		/* Silver Snow Costume Package (Male) */
(1,3,2, 1,20,4,0,202042,1),		/* Mystical Costume Package (Male) */
(1,3,2, 1,20,4,0,202043,1),		/* Wanderer's Costume Package (Male) */
(1,3,2, 1,20,4,0,204811,1),		/* Costume Package (Male) */
(1,3,2, 1,20,4,0,206344,1),		/* Stealthy Costume Package (Male) */
(1,3,2, 1,20,4,0,206345,1),		/* Costume Package of the Brave (Male) */
(1,3,2, 1,20,4,0,206743,1),		/* Assassin's Costume Package (Male) */
(1,3,2, 1,20,4,0,206746,1),		/* Blaze of the Purple Shadow Costume Package (Male) */
(1,3,2, 1,20,4,0,206834,1),		/* Baroque Noble Costume Potion (Male) */
(1,3,2, 1,20,4,0,206835,1),		/* Fanersai Banquet Costume Potion (Male) */
(1,3,2, 1,20,4,0,240811,1),		/* Soul-Eater Demon Clown Costume Package (Male) */
(1,3,2, 1,20,4,0,241067,1),		/* Costume of the Storm (Male) */
(1,3,2, 1,20,4,0,241069,1);		/* Basic Costume of the Storm (Male) */

GO 

INSERT [dbo].[NewShopInfo]
([World1], [SellType], [SellType1], [SellType2], [Sell_Cost], [Sell_Get_Bonus], [Item_DisplayerObjID], [Item_OrgObjID1], [Item_Count1])
VALUES
-- Female
(1,3,2, 2,20,4,0,220927,1),		/* White Wedding Dress (Female) */
(1,3,2, 2,20,4,0,220928,1),		/* White Wedding Stockings (Female) */
(1,3,2, 2,20,4,0,220929,1),		/* White Wedding Veil (Female) */
(1,3,2, 2,20,4,0,220930,1),		/* White Wedding Shoes (Female) */
(1,3,2, 2,20,4,0,220931,1),		/* White Wedding Gloves (Female) */
(1,3,2, 2,20,4,0,221438,1),		/* Maid Silk Stockings (Female) */
(1,3,2, 2,20,4,0,221439,1),		/* Maid Shoes (Female) */
(1,3,2, 2,20,4,0,221745,1),		/* Maid Sandals (Female) */
(1,3,2, 2,20,4,0,221883,1),		/* Angel's Dream Coat (Female) */
(1,3,2, 2,20,4,0,221884,1),		/* Angel's Dream Shorts (Female) */
(1,3,2, 2,20,4,0,221885,1),		/* Angel's Dream Boots (Female) */
(1,3,2, 2,20,4,0,221886,1),		/* Angel's Dream Gloves (Female) */
(1,3,2, 2,20,4,0,221889,1),		/* Purple Lady's Coat (Female) */
(1,3,2, 2,20,4,0,221890,1),		/* Purple Lady's Pantskirt (Female) */
(1,3,2, 2,20,4,0,221891,1),		/* Purple Lady's Boots (Female) */
(1,3,2, 2,20,4,0,221892,1),		/* Hairpin of the Mysterious Butterfly (Female) */
(1,3,2, 2,20,4,0,221893,1),		/* Coat of the Mysterious Butterfly (Female) */
(1,3,2, 2,20,4,0,221894,1),		/* Leggings of the Mysterious Butterfly (Female) */
(1,3,2, 2,20,4,0,221895,1),		/* Shoes of the Mysterious Butterfly (Female) */
(1,3,2, 2,20,4,0,221896,1),		/* Crown of the Mysterious Butterfly (Female) */
(1,3,2, 2,20,4,0,221897,1),		/* Wings of the Mysterious Butterfly (Female) */
(1,3,2, 2,20,4,0,221899,1),		/* Cactus Flower Bodywear (Female) */
(1,3,2, 2,20,4,0,221924,1),		/* Cowgirl Jacket (Female) */
(1,3,2, 2,20,4,0,221925,1),		/* Cowgirl Shorts (Female) */
(1,3,2, 2,20,4,0,221926,1),		/* Cowgirl Boots (Female) */
(1,3,2, 2,20,4,0,221929,1),		/* Coffee Maid Coat (Female) */
(1,3,2, 2,20,4,0,221930,1),		/* Coffee Maid Shorts (Female) */
(1,3,2, 2,20,4,0,221931,1),		/* Coffee Maid Boots (Female) */
(1,3,2, 2,20,4,0,221932,1),		/* Coffee Maid Gloves (Female) */
(1,3,2, 2,20,4,0,221933,1),		/* Coffee Maid Shoulder Guards (Female) */
(1,3,2, 2,20,4,0,221936,1),		/* Hot Pepper Shorts (Female) */
(1,3,2, 2,20,4,0,221937,1),		/* Hot Pepper Boots (Female) */
(1,3,2, 2,20,4,0,221938,1),		/* Hot Pepper Gloves (Female) */
(1,3,2, 2,20,4,0,222732,1),		/* Purple Pumpkin Gloves (Female) */
(1,3,2, 2,20,4,0,222733,1),		/* Purple Pumpkin Jacket (Female) */
(1,3,2, 2,20,4,0,222734,1),		/* Purple Pumpkin Shoes (Female) */
(1,3,2, 2,20,4,0,222735,1),		/* Purple Pumpkin Leggings (Female) */
(1,3,2, 2,20,4,0,222742,1),		/* Demon Lady Dress (Female) */
(1,3,2, 2,20,4,0,222743,1),		/* Demon Lady Gloves (Female) */
(1,3,2, 2,20,4,0,222744,1),		/* Demon Lady Boots (Female) */
(1,3,2, 2,20,4,0,222745,1),		/* Demon Lady Leggings (Female) */
(1,3,2, 2,20,4,0,222866,1),		/* Snowflake Festival Flower Head Piece (Female) */
(1,3,2, 2,20,4,0,222869,1),		/* Sexy Bunny Dress (Female) */
(1,3,2, 2,20,4,0,222897,1),		/* Flower Fairy's Leggings (Female) */
(1,3,2, 2,20,4,0,222898,1),		/* Flower Fairy's Shoes (Female) */
(1,3,2, 2,20,4,0,222916,1),		/* Snowflake Festival Coat (Female) */
(1,3,2, 2,20,4,0,222917,1),		/* Snowflake Festival Gloves (Female) */
(1,3,2, 2,20,4,0,222918,1),		/* Snowflake Festival Boots (Female) */
(1,3,2, 2,20,4,0,222919,1),		/* Snowflake Festival Pants (Female) */
(1,3,2, 2,20,4,0,222920,1),		/* Snowflake Festival Head Piece (Female) */
(1,3,2, 2,20,4,0,222922,1),		/* Snowflake Festival Flower Shoulder Guards (Female) */
(1,3,2, 2,20,4,0,222923,1),		/* Snowflake Festival Snowman Shoulder Guards (Female) */
(1,3,2, 2,20,4,0,222924,1),		/* Snowflake Festival Gingerman Shoulder Guards (Female) */
(1,3,2, 2,20,4,0,222980,1),		/* Golden Snowflake Festival Coat (Female) */
(1,3,2, 2,20,4,0,222981,1),		/* Golden Snowflake Festival Gloves (Female) */
(1,3,2, 2,20,4,0,222982,1),		/* Golden Snowflake Festival Boots (Female) */
(1,3,2, 2,20,4,0,222983,1),		/* Golden Snowflake Festival Pants (Female) */
(1,3,2, 2,20,4,0,222984,1),		/* Golden Snowflake Festival Hat (Female) */
(1,3,2, 2,20,4,0,222985,1),		/* Golden Snowflake Festival Shoulder Guards (Female) */
(1,3,2, 2,20,4,0,222986,1),		/* Sexy Bunny Stockings (Female) */
(1,3,2, 2,20,4,0,222987,1),		/* Sexy Bunny Boots (Female) */
(1,3,2, 2,20,4,0,222988,1),		/* Sexy Bunny Ears (Female) */
(1,3,2, 2,20,4,0,222994,1),		/* Evening Gown (Female) */
(1,3,2, 2,20,4,0,222995,1),		/* Evening Gown Stockings (Female) */
(1,3,2, 2,20,4,0,222996,1),		/* Evening Gown High Heels (Female) */
(1,3,2, 2,20,4,0,223353,1),		/* Purple Fantasy Dress (Female) */
(1,3,2, 2,20,4,0,223354,1),		/* Purple Fantasy Stockings (Female) */
(1,3,2, 2,20,4,0,223355,1),		/* Purple Fantasy Short Boots (Female) */
(1,3,2, 2,20,4,0,223356,1),		/* Purple Fantasy Gloves (Female) */
(1,3,2, 2,20,4,0,223357,1),		/* Sexy Black Cat Tail (Female) */
(1,3,2, 2,20,4,0,223365,1),		/* Eve's Summer Clothes (Female) */
(1,3,2, 2,20,4,0,223366,1),		/* Eve's Petal Gloves (Female) */
(1,3,2, 2,20,4,0,223367,1),		/* Eve's Grass Boots (Female) */
(1,3,2, 2,20,4,0,223368,1),		/* Eve's Summer Pants (Female) */
(1,3,2, 2,20,4,0,223375,1),		/* Romantic Rose Crown (Female) */
(1,3,2, 2,20,4,0,223376,1),		/* Outfit of the Jealous Single (Female) */
(1,3,2, 2,20,4,0,223377,1),		/* Outfit of the Passionate Couple (Female) */
(1,3,2, 2,20,4,0,223380,1),		/* Golden Music Shirt (Female) */
(1,3,2, 2,20,4,0,223381,1),		/* Golden Music Gloves (Female) */
(1,3,2, 2,20,4,0,223382,1),		/* Golden Music Boots (Female) */
(1,3,2, 2,20,4,0,223383,1),		/* Golden Music Pants (Female) */
(1,3,2, 2,20,4,0,223385,1),		/* Golden Music Epaulet (Female) */
(1,3,2, 2,20,4,0,223389,1),		/* Sexy Bunny Gloves (Female) */
(1,3,2, 2,20,4,0,223390,1),		/* Baroque Noble Hat (Female) */
(1,3,2, 2,20,4,0,223391,1),		/* Baroque Noble Coat (Female) */
(1,3,2, 2,20,4,0,223392,1),		/* Baroque Noble Pants (Female) */
(1,3,2, 2,20,4,0,223393,1),		/* Baroque Noble Boots (Female) */
(1,3,2, 2,20,4,0,223394,1),		/* Baroque Noble Gloves (Female) */
(1,3,2, 2,20,4,0,223400,1),		/* Sexy Black Cat Ears (Female) */
(1,3,2, 2,20,4,0,223409,1),		/* Lacy Egg Coat (Female) */
(1,3,2, 2,20,4,0,223415,1),		/* Wabbit Ears (Female) */
(1,3,2, 2,20,4,0,223421,1),		/* Music Festival Dress (Female) */
(1,3,2, 2,20,4,0,223422,1),		/* Music Festival Boots (Female) */
(1,3,2, 2,20,4,0,223424,1),		/* Music Festival Diadem (Female) */
(1,3,2, 2,20,4,0,223425,1),		/* Music Festival Shoulder Guards (Female) */
(1,3,2, 2,20,4,0,223442,1),		/* Green Dancer's Tiara (Female) */
(1,3,2, 2,20,4,0,223448,1),		/* Green Dancer's Foot Embellishment (Female) */
(1,3,2, 2,20,4,0,223449,1),		/* Oriental Royal Military Coat (Female) */
(1,3,2, 2,20,4,0,224312,1),		/* Oriental Traditional Wedding Coat (Female) */
(1,3,2, 2,20,4,0,224313,1),		/* Oriental Traditional Wedding Pants (Female) */
(1,3,2, 2,20,4,0,224314,1),		/* Oriental Traditional Wedding Cap (Female) */
(1,3,2, 2,20,4,0,224315,1),		/* Oriental Traditional Wedding Boots (Female) */
(1,3,2, 2,20,4,0,224316,1),		/* Oriental Lucky Days Coat (Female) */
(1,3,2, 2,20,4,0,224317,1),		/* Oriental Lucky Days Pants (Female) */
(1,3,2, 2,20,4,0,224318,1),		/* Oriental Lucky Days Headdress (Female) */
(1,3,2, 2,20,4,0,224319,1),		/* Oriental Lucky Days Foot Embellishment (Female) */
(1,3,2, 2,20,4,0,224320,1),		/* Oriental Traditional Coat (Female) */
(1,3,2, 2,20,4,0,224322,1),		/* Oriental Traditional Headscarf (Female) */
(1,3,2, 2,20,4,0,224323,1),		/* Oriental Traditional Shoes (Female) */
(1,3,2, 2,20,4,0,224327,1),		/* Beautiful Dancer's Bra (Female) */
(1,3,2, 2,20,4,0,224328,1),		/* Beautiful Dancer's Skirt (Female) */
(1,3,2, 2,20,4,0,224330,1),		/* Beautiful Dancer's Foot Embellishment (Female) */
(1,3,2, 2,20,4,0,224331,1),		/* Beautiful Dancer's Gloves (Female) */
(1,3,2, 2,20,4,0,224332,1),		/* Oriental Fashionable Military Coat (Female) */
(1,3,2, 2,20,4,0,224333,1),		/* Oriental Fashionable Military Pants (Female) */
(1,3,2, 2,20,4,0,224334,1),		/* Oriental Fashionable Military Tiara (Female) */
(1,3,2, 2,20,4,0,224336,1),		/* Oriental Royal Military Shorts (Female) */
(1,3,2, 2,20,4,0,224337,1),		/* Green Dancer's Bra (Female) */
(1,3,2, 2,20,4,0,224338,1),		/* Green Dancer's Skirt (Female) */
(1,3,2, 2,20,4,0,224339,1),		/* Oriental Royal Military Headdress (Female) */
(1,3,2, 2,20,4,0,224341,1),		/* Green Dancer's Hand Embellishment (Female) */
(1,3,2, 2,20,4,0,224932,1),		/* Cloak of the Brave (Female) */
(1,3,2, 2,20,4,0,224933,1),		/* Gloves of the Brave (Female) */
(1,3,2, 2,20,4,0,224934,1),		/* Shoulderpads of the Brave (Female) */
(1,3,2, 2,20,4,0,224935,1),		/* Cape of the Brave (Female) */
(1,3,2, 2,20,4,0,224936,1),		/* Boots of the Brave (Female) */
(1,3,2, 2,20,4,0,224937,1),		/* Trousers of the Brave (Female) */
(1,3,2, 2,20,4,0,224938,1),		/* Helmet of the Brave (Female) */
(1,3,2, 2,20,4,0,224939,1),		/* Stealthy Cloak (Female) */
(1,3,2, 2,20,4,0,224940,1),		/* Stealthy Gloves (Female) */
(1,3,2, 2,20,4,0,224941,1),		/* Stealthy Shoulderpads (Female) */
(1,3,2, 2,20,4,0,224942,1),		/* Stealthy Cape (Female) */
(1,3,2, 2,20,4,0,224943,1),		/* Stealthy Boots (Female) */
(1,3,2, 2,20,4,0,224944,1),		/* Stealthy Trousers (Female) */
(1,3,2, 2,20,4,0,224945,1),		/* Stealthy Hood (Female) */
(1,3,2, 2,20,4,0,224946,1),		/* Wanderer's Cloak (Female) */
(1,3,2, 2,20,4,0,224947,1),		/* Wanderer's Gloves (Female) */
(1,3,2, 2,20,4,0,224948,1),		/* Wanderer's Shoulderpads (Female) */
(1,3,2, 2,20,4,0,224949,1),		/* Wanderer's Cape (Female) */
(1,3,2, 2,20,4,0,224950,1),		/* Wanderer's Boots (Female) */
(1,3,2, 2,20,4,0,224951,1),		/* Wanderer's Trousers (Female) */
(1,3,2, 2,20,4,0,224962,1),		/* Arctic Cloak (Female) */
(1,3,2, 2,20,4,0,224963,1),		/* Arctic Gloves (Female) */
(1,3,2, 2,20,4,0,224964,1),		/* Arctic Shoulderpads (Female) */
(1,3,2, 2,20,4,0,224965,1),		/* Arctic Cape (Female) */
(1,3,2, 2,20,4,0,224966,1),		/* Arctic Boots (Female) */
(1,3,2, 2,20,4,0,224967,1),		/* Arctic Trousers (Female) */
(1,3,2, 2,20,4,0,224968,1),		/* Arctic Helmet (Female) */
(1,3,2, 2,20,4,0,224969,1),		/* Wanderer's Helmet (Female) */
(1,3,2, 2,20,4,0,224970,1),		/* Mystical Cloak (Female) */
(1,3,2, 2,20,4,0,224971,1),		/* Mystical Gloves (Female) */
(1,3,2, 2,20,4,0,224972,1),		/* Mystical Shoulderpads (Female) */
(1,3,2, 2,20,4,0,224973,1),		/* Mystical Cape (Female) */
(1,3,2, 2,20,4,0,224974,1),		/* Mystical Boots (Female) */
(1,3,2, 2,20,4,0,224975,1),		/* Mystical Trousers (Female) */
(1,3,2, 2,20,4,0,224976,1),		/* Mystical Crown (Female) */
(1,3,2, 2,20,4,0,224977,1),		/* Silver Snow Cloak (Female) */
(1,3,2, 2,20,4,0,224978,1),		/* Silver Snow Gloves (Female) */
(1,3,2, 2,20,4,0,224979,1),		/* Silver Snow Shoulderpads (Female) */
(1,3,2, 2,20,4,0,224980,1),		/* Silver Snow Cape (Female) */
(1,3,2, 2,20,4,0,224981,1),		/* Silver Snow Boots (Female) */
(1,3,2, 2,20,4,0,224982,1),		/* Silver Snow Trousers (Female) */
(1,3,2, 2,20,4,0,224983,1),		/* Silver Snow Headdress (Female) */
(1,3,2, 2,20,4,0,224990,1),		/* Samurai Armor (Female) */
(1,3,2, 2,20,4,0,225152,1),		/* Juice Girl Coat (Female) */
(1,3,2, 2,20,4,0,225153,1),		/* Juice Girl Boots (Female) */
(1,3,2, 2,20,4,0,225154,1),		/* Samurai Gloves (Female) */
(1,3,2, 2,20,4,0,225163,1),		/* Strange Clown Coat (Female) */
(1,3,2, 2,20,4,0,225164,1),		/* Strange Clown Shoulder Armor (Female) */
(1,3,2, 2,20,4,0,225165,1),		/* Samurai Spaulders (Female) */
(1,3,2, 2,20,4,0,225166,1),		/* Samurai Boots (Female) */
(1,3,2, 2,20,4,0,225167,1),		/* Samurai Leg Guards (Female) */
(1,3,2, 2,20,4,0,225168,1),		/* Samurai Helmet (Female) */
(1,3,2, 2,20,4,0,225169,1),		/* Strange Clown Pants (Female) */
(1,3,2, 2,20,4,0,225170,1),		/* Strange Clown Mask (Female) */
(1,3,2, 2,20,4,0,225171,1),		/* Strange Clown Cap (Female) */
(1,3,2, 2,20,4,0,225172,1),		/* Strange Clown Cap and Mask (Female) */
(1,3,2, 2,20,4,0,225173,1),		/* Strange Clown Gloves (Female) */
(1,3,2, 2,20,4,0,225174,1),		/* Strange Clown Shoes (Female) */
(1,3,2, 2,20,4,0,225302,1),		/* Elven Snowflake Festival Coat (Female) */
(1,3,2, 2,20,4,0,225303,1),		/* Elven Snowflake Festival Headdress (Female) */
(1,3,2, 2,20,4,0,225304,1),		/* Elven Snowflake Festival Shoes (Female) */
(1,3,2, 2,20,4,0,225305,1),		/* Elven Snowflake Festival Mask (Female) */
(1,3,2, 2,20,4,0,225306,1),		/* Elven Snowflake Festival Wings (Female) */
(1,3,2, 2,20,4,0,225319,1),		/* Kimono (Female) */
(1,3,2, 2,20,4,0,225320,1),		/* Geisha Hairdo (Female) */
(1,3,2, 2,20,4,0,225321,1),		/* Kimono Sandals (Female) */
(1,3,2, 2,20,4,0,225334,1),		/* Assassin's Suit of Azrael (Female) */
(1,3,2, 2,20,4,0,225335,1),		/* Assassin's Shoulder Pads of Azrael (Female) */
(1,3,2, 2,20,4,0,225336,1),		/* Assassin's Leggings of Azrael (Female) */
(1,3,2, 2,20,4,0,225337,1),		/* Assassin's Mask of Azrael (Female) */
(1,3,2, 2,20,4,0,225338,1),		/* Assassin's Boots of Azrael (Female) */
(1,3,2, 2,20,4,0,225339,1),		/* Assassin's Cape of Azrael (Female) */
(1,3,2, 2,20,4,0,225340,1),		/* Assassin's Gloves of Azrael (Female) */
(1,3,2, 2,20,4,0,225366,1),		/* Blue Dress (Female) */
(1,3,2, 2,20,4,0,225367,1),		/* Blue Straw Hat (Female) */
(1,3,2, 2,20,4,0,225368,1),		/* Blue Cloth Shoes (Female) */
(1,3,2, 2,20,4,0,225372,1),		/* Aodai Dress (Female) */
(1,3,2, 2,20,4,0,225373,1),		/* Nonla Hat (Female) */
(1,3,2, 2,20,4,0,225374,1),		/* Grey Cloth Shoes (Female) */
(1,3,2, 2,20,4,0,225541,1),		/* Football Coat - Dark Red/Blue (Female) */
(1,3,2, 2,20,4,0,225542,1),		/* Football Coat - Red/White (Female) */
(1,3,2, 2,20,4,0,225543,1),		/* Football Coat - Black/White (Female) */
(1,3,2, 2,20,4,0,225544,1),		/* Football Coat - Yellow/Red (Female) */
(1,3,2, 2,20,4,0,225545,1),		/* Football Coat - Yellow/Dark Blue (Female) */
(1,3,2, 2,20,4,0,225546,1),		/* Football Coat - Green/White (Female) */
(1,3,2, 2,20,4,0,225553,1),		/* Football Pants - Dark Red/Blue (Female) */
(1,3,2, 2,20,4,0,225554,1),		/* Football Pants - Red/White (Female) */
(1,3,2, 2,20,4,0,225555,1),		/* Football Pants - Black/White (Female) */
(1,3,2, 2,20,4,0,225556,1),		/* Football Pants - Yellow/Red (Female) */
(1,3,2, 2,20,4,0,225557,1),		/* Football Pants - Yellow/Dark Blue (Female) */
(1,3,2, 2,20,4,0,225558,1),		/* Football Pants - Green/White (Female) */
(1,3,2, 2,20,4,0,225565,1),		/* Football Shoes - Dark Red/Blue (Female) */
(1,3,2, 2,20,4,0,225566,1),		/* Football Shoes - Red/White (Female) */
(1,3,2, 2,20,4,0,225567,1),		/* Football Shoes - Black/White (Female) */
(1,3,2, 2,20,4,0,225568,1),		/* Football Shoes - Yellow/Red (Female) */
(1,3,2, 2,20,4,0,225569,1),		/* Football Shoes - Yellow/Dark Blue (Female) */
(1,3,2, 2,20,4,0,225570,1),		/* Football Shoes - Green/White (Female) */
(1,3,2, 2,20,4,0,225577,1),		/* Football Hat - Dark Red/Blue (Female) */
(1,3,2, 2,20,4,0,225578,1),		/* Football Hat - Red/White (Female) */
(1,3,2, 2,20,4,0,225579,1),		/* Football Hat - Black/White (Female) */
(1,3,2, 2,20,4,0,225580,1),		/* Football Hat - Yellow/Red (Female) */
(1,3,2, 2,20,4,0,225581,1),		/* Football Hat - Yellow/Dark Blue (Female) */
(1,3,2, 2,20,4,0,225582,1),		/* Football Hat - Green/White (Female) */
(1,3,2, 2,20,4,0,225888,1),		/* Football Gloves - Dark Red/Blue (Female) */
(1,3,2, 2,20,4,0,225889,1),		/* Football Gloves - Red/White (Female) */
(1,3,2, 2,20,4,0,225890,1),		/* Football Gloves - Black/White (Female) */
(1,3,2, 2,20,4,0,225891,1),		/* Football Gloves - Yellow/Red (Female) */
(1,3,2, 2,20,4,0,225892,1),		/* Football Gloves - Yellow/ Dark Blue (Female) */
(1,3,2, 2,20,4,0,225893,1),		/* Football Gloves - Green/White (Female) */
(1,3,2, 2,20,4,0,226100,1),		/* Blessed Knight Coat (Female) */
(1,3,2, 2,20,4,0,226101,1),		/* Blessed Knight Gloves (Female) */
(1,3,2, 2,20,4,0,226102,1),		/* Blessed Knight Shoulderpads (Female) */
(1,3,2, 2,20,4,0,226103,1),		/* Blessed Knight Cape (Female) */
(1,3,2, 2,20,4,0,226104,1),		/* Blessed Knight Boots (Female) */
(1,3,2, 2,20,4,0,226105,1),		/* Blessed Knight Trousers (Female) */
(1,3,2, 2,20,4,0,226106,1),		/* Blessed Knight Helmet (Female) */
(1,3,2, 2,20,4,0,226107,1),		/* War Dragon Warrior Jacket (Female) */
(1,3,2, 2,20,4,0,226108,1),		/* War Dragon Warrior Gloves (Female) */
(1,3,2, 2,20,4,0,226109,1),		/* War Dragon Warrior Shoulder Guards (Female) */
(1,3,2, 2,20,4,0,226110,1),		/* War Dragon Warrior Cape (Female) */
(1,3,2, 2,20,4,0,226111,1),		/* War Dragon Warrior Boots (Female) */
(1,3,2, 2,20,4,0,226112,1),		/* War Dragon Warrior Pants (Female) */
(1,3,2, 2,20,4,0,226113,1),		/* War Dragon Warrior Helmet (Female) */
(1,3,2, 2,20,4,0,226130,1),		/* Clear Breeze Rogue Jacket (Female) */
(1,3,2, 2,20,4,0,226131,1),		/* Clear Breeze Rogue Gloves (Female) */
(1,3,2, 2,20,4,0,226132,1),		/* Clear Breeze Rogue Shoulder Armor (Female) */
(1,3,2, 2,20,4,0,226133,1),		/* Clear Breeze Rogue Cape (Female) */
(1,3,2, 2,20,4,0,226134,1),		/* Clear Breeze Rogue Boots (Female) */
(1,3,2, 2,20,4,0,226135,1),		/* Clear Breeze Rogue Shorts (Female) */
(1,3,2, 2,20,4,0,226136,1),		/* Clear Breeze Rogue Helmet (Female) */
(1,3,2, 2,20,4,0,226137,1),		/* Shadow Scout Armor (Female) */
(1,3,2, 2,20,4,0,226138,1),		/* Shadow Scout Gloves (Female) */
(1,3,2, 2,20,4,0,226139,1),		/* Shadow Scout Shoulder Armor (Female) */
(1,3,2, 2,20,4,0,226140,1),		/* Shadow Scout Cape (Female) */
(1,3,2, 2,20,4,0,226141,1),		/* Shadow Scout Boots (Female) */
(1,3,2, 2,20,4,0,226142,1),		/* Shadow Scout Cap (Female) */
(1,3,2, 2,20,4,0,226143,1),		/* Dark Flame Priest Jacket (Female) */
(1,3,2, 2,20,4,0,226144,1),		/* Dark Flame Priest Gloves (Female) */
(1,3,2, 2,20,4,0,226145,1),		/* Dark Flame Priest Shoulder Armor (Female) */
(1,3,2, 2,20,4,0,226146,1),		/* Dark Flame Priest Cape (Female) */
(1,3,2, 2,20,4,0,226147,1),		/* Dark Flame Priest Boots (Female) */
(1,3,2, 2,20,4,0,226148,1),		/* Dark Flame Priest Hood (Female) */
(1,3,2, 2,20,4,0,226149,1),		/* Dark Flame Priest Shorts (Female) */
(1,3,2, 2,20,4,0,226150,1),		/* Acolyte Mage Robe (Female) */
(1,3,2, 2,20,4,0,226151,1),		/* Acolyte Mage Gloves (Female) */
(1,3,2, 2,20,4,0,226152,1),		/* Acolyte Mage Shoulder Armor (Female) */
(1,3,2, 2,20,4,0,226153,1),		/* Acolyte Mage Cape (Female) */
(1,3,2, 2,20,4,0,226154,1),		/* Acolyte Mage Boots (Female) */
(1,3,2, 2,20,4,0,226155,1),		/* Acolyte Mage Crown (Female) */
(1,3,2, 2,20,4,0,226255,1),		/* Paraguyan Football Shirt (Female) */
(1,3,2, 2,20,4,0,226256,1),		/* Venezuelan Football Shirt (Female) */
(1,3,2, 2,20,4,0,226257,1),		/* Peruvian Football Shirt (Female) */
(1,3,2, 2,20,4,0,226258,1),		/* Uruguyan Football Shirt (Female) */
(1,3,2, 2,20,4,0,226259,1),		/* Argentinian Football Shirt (Female) */
(1,3,2, 2,20,4,0,226260,1),		/* Bolivian Football Shirt (Female) */
(1,3,2, 2,20,4,0,226261,1),		/* Brazilian Football Shirt (Female) */
(1,3,2, 2,20,4,0,226262,1),		/* Chilean Football Shirt (Female) */
(1,3,2, 2,20,4,0,226263,1),		/* Colombian Football Shirt (Female) */
(1,3,2, 2,20,4,0,226264,1),		/* Ecuadorian Football Shirt (Female) */
(1,3,2, 2,20,4,0,226285,1),		/* Lacy Wedding Dress (Female) */
(1,3,2, 2,20,4,0,226286,1),		/* Feathered Wedding Bonnet (Female) */
(1,3,2, 2,20,4,0,226287,1),		/* Silk Wedding Shoes (Female) */
(1,3,2, 2,20,4,0,226288,1),		/* Silk Wedding Gloves (Female) */
(1,3,2, 2,20,4,0,226591,1),		/* Aztec Coat (Female) */
(1,3,2, 2,20,4,0,226592,1),		/* Aztec Shoulder Armor (Female) */
(1,3,2, 2,20,4,0,226593,1),		/* Aztec Cape (Female) */
(1,3,2, 2,20,4,0,226594,1),		/* Aztec Shoes (Female) */
(1,3,2, 2,20,4,0,226595,1),		/* Aztec Pants (Female) */
(1,3,2, 2,20,4,0,226596,1),		/* Aztec Headdress (Female) */
(1,3,2, 2,20,4,0,226690,1),		/* South Korean Football Shirt (Female) */
(1,3,2, 2,20,4,0,226691,1),		/* Spanish Football Shirt (Female) */
(1,3,2, 2,20,4,0,226692,1),		/* French Football Shirt (Female) */
(1,3,2, 2,20,4,0,226693,1),		/* Swiss Football Shirt (Female) */
(1,3,2, 2,20,4,0,226694,1),		/* North Korean Football Shirt (Female) */
(1,3,2, 2,20,4,0,226695,1),		/* Portuguese Football Shirt (Female) */
(1,3,2, 2,20,4,0,226696,1),		/* Kiwi Football Shirt (Female) */
(1,3,2, 2,20,4,0,226697,1),		/* Slovakian Football Shirt (Female) */
(1,3,2, 2,20,4,0,226698,1),		/* Italian Football Shirt (Female) */
(1,3,2, 2,20,4,0,226699,1),		/* Greek Football Shirt (Female) */
(1,3,2, 2,20,4,0,226700,1),		/* South African Football Shirt (Female) */
(1,3,2, 2,20,4,0,226701,1),		/* Japanese Football Shirt (Female) */
(1,3,2, 2,20,4,0,226702,1),		/* Cameroonian Football Shirt (Female) */
(1,3,2, 2,20,4,0,226703,1),		/* Danish Football Shirt (Female) */
(1,3,2, 2,20,4,0,226704,1),		/* Dutch Football Shirt (Female) */
(1,3,2, 2,20,4,0,226705,1),		/* Ghanaian Football Shirt (Female) */
(1,3,2, 2,20,4,0,226706,1),		/* German  Football Shirt (Female) */
(1,3,2, 2,20,4,0,226707,1),		/* Serbian Football Shirt (Female) */
(1,3,2, 2,20,4,0,226708,1),		/* Australian Football Shirt (Female) */
(1,3,2, 2,20,4,0,226709,1),		/* Slovenian Football Shirt (Female) */
(1,3,2, 2,20,4,0,226710,1),		/* English Football Shirt (Female) */
(1,3,2, 2,20,4,0,226711,1),		/* USA Football Shirt (Female) */
(1,3,2, 2,20,4,0,226712,1),		/* Algerian Football Shirt (Female) */
(1,3,2, 2,20,4,0,226713,1),		/* Nigerian Football Shirt (Female) */
(1,3,2, 2,20,4,0,226714,1),		/* Ivory Coast Football Shirt (Female) */
(1,3,2, 2,20,4,0,226802,1),		/* Polish Football Shirt (Female) */
(1,3,2, 2,20,4,0,226888,1),		/* Honduran Football Shirt (Female) */
(1,3,2, 2,20,4,0,226889,1),		/* Mexican Football Shirt (Female) */
(1,3,2, 2,20,4,0,226890,1),		/* Nicaraguan Football Shirt (Female) */
(1,3,2, 2,20,4,0,226891,1),		/* Panamanian Football Shirt (Female) */
(1,3,2, 2,20,4,0,226892,1),		/* Belize Football Shirt (Female) */
(1,3,2, 2,20,4,0,226893,1),		/* Costa Rican Football Shirt (Female) */
(1,3,2, 2,20,4,0,226894,1),		/* Salvadorian Football Shirt (Female) */
(1,3,2, 2,20,4,0,226895,1),		/* Guatemalan Football Shirt (Female) */
(1,3,2, 2,20,4,0,227169,1),		/* Cloth Corset (Female) */
(1,3,2, 2,20,4,0,227170,1),		/* Green Rattan Dress (Female) */
(1,3,2, 2,20,4,0,227171,1),		/* Green Rattan Hat (Female) */
(1,3,2, 2,20,4,0,227552,1),		/* Skeletal Siren Gloves (Female) */
(1,3,2, 2,20,4,0,227553,1),		/* Skeletal Siren Bodice (Female) */
(1,3,2, 2,20,4,0,227554,1),		/* Skeletal Siren Cape (Female) */
(1,3,2, 2,20,4,0,227555,1),		/* Skeletal Siren Leggings (Female) */
(1,3,2, 2,20,4,0,227556,1),		/* Skeletal Siren Magic Boots (Female) */
(1,3,2, 2,20,4,0,228674,1),		/* Skeletal Siren Headdress (Female) */
(1,3,2, 2,20,4,0,228675,1),		/* Soul-Eater Demon Clown Gloves (Female) */
(1,3,2, 2,20,4,0,228676,1),		/* Soul-Eater Demon Clown Suit (Female) */
(1,3,2, 2,20,4,0,228677,1),		/* Soul-Eater Demon Clown Shoulder Guards (Female) */
(1,3,2, 2,20,4,0,228678,1),		/* Soul-Eater Demon  Clown Boots (Female) */
(1,3,2, 2,20,4,0,228679,1),		/* Soul-Eater Demon Clown Shorts (Female) */
(1,3,2, 2,20,4,0,228680,1),		/* Soul-Eater Demon Clown Mask (Female) */
(1,3,2, 2,20,4,0,228687,1),		/* Grinning Rogue Coat (Female) */
(1,3,2, 2,20,4,0,228688,1),		/* Grinning Rogue Gloves (Female) */
(1,3,2, 2,20,4,0,228689,1),		/* Grinning Rogue Shoulder Armor (Female) */
(1,3,2, 2,20,4,0,228690,1),		/* Grinning Rogue Boots (Female) */
(1,3,2, 2,20,4,0,228691,1),		/* Grinning Rogue Trousers (Female) */
(1,3,2, 2,20,4,0,228692,1),		/* Grinning Rogue Helmet (Female) */
(1,3,2, 2,20,4,0,228695,1),		/* Sismond Dress (Female) */
(1,3,2, 2,20,4,0,228696,1),		/* Sismond Mask (Female) */
(1,3,2, 2,20,4,0,229705,1),		/* Traditional Head Cover (Female) */
(1,3,2, 2,20,4,0,229706,1),		/* Traditional Dress (Female) */
(1,3,2, 2,20,4,0,229707,1),		/* Russian Football Shirt (Female) */
(1,3,2, 2,20,4,0,229714,1),		/* Bathing Headdress (Female) */
(1,3,2, 2,20,4,0,229715,1),		/* Bathrobe (Female) */
(1,3,2, 2,20,4,0,230177,1),		/* Hood of the Storm (Female) */
(1,3,2, 2,20,4,0,230178,1),		/* Cape of the Storm (Female) */
(1,3,2, 2,20,4,0,230179,1),		/* Boots of the Storm (Female) */
(1,3,2, 2,20,4,0,230180,1),		/* Gloves of the Storm (Female) */
(1,3,2, 2,20,4,0,230181,1),		/* Leggings of the Storm (Female) */
(1,3,2, 2,20,4,0,230182,1),		/* Shoulder Guards of the Storm (Female) */
(1,3,2, 2,20,4,0,230183,1),		/* Camisole of the Storm (Female) */
(1,3,2, 2,20,4,0,230768,1),		/* Redbud Academy Uniform Coat (Female) */
(1,3,2, 2,20,4,0,230769,1),		/* Redbud Academy Uniform Shoes (Female) */
(1,3,2, 2,20,4,0,230774,1),		/* Sports Suit of Dedication (Female) */
(1,3,2, 2,20,4,0,230775,1),		/* Sports Suit of the Rising Sun (Female) */
(1,3,2, 2,20,4,0,231980,1),		/* Dark Vengeance Skirt (Female) */
(1,3,2, 2,20,4,0,231981,1),		/* Dark Vengeance Gloves (Female) */
(1,3,2, 2,20,4,0,231982,1),		/* Dark Vengeance Trousers (Female) */
(1,3,2, 2,20,4,0,231983,1),		/* Dark Vengeance Boots (Female) */
(1,3,2, 2,20,4,0,231990,1),		/* Silver Envoy's Gloves (Female) */
(1,3,2, 2,20,4,0,231991,1),		/* Silver Envoy's Headdress (Female) */
(1,3,2, 2,20,4,0,231992,1),		/* Silver Envoy's Trousers (Female) */
(1,3,2, 2,20,4,0,231993,1),		/* Silver Envoy's Shoulderpads (Female) */
(1,3,2, 2,20,4,0,231994,1),		/* Silver Envoy's Cloak (Female) */
(1,3,2, 2,20,4,0,231995,1),		/* Silver Envoy's Boots (Female) */
(1,3,2, 2,20,4,0,232000,1),		/* Colorful Violet Boots (Female) */
(1,3,2, 2,20,4,0,232001,1),		/* Colorful Violet Trousers (Female) */
(1,3,2, 2,20,4,0,232002,1),		/* Colorful Violet Cloak (Female) */
(1,3,2, 2,20,4,0,232003,1),		/* Colorful Violet Headdress (Female) */
(1,3,2, 2,20,4,0,234071,1),		/* Iranian Football Shirt (Female) */
(1,3,2, 2,20,4,0,234072,1),		/* Bosnian-Herzegovinian Football Shirt (Female) */
(1,3,2, 2,20,4,0,234073,1),		/* Croatian Football Shirt (Female) */
(1,3,2, 2,20,4,0,234074,1),		/* Belgian Football Shirt (Female) */
(1,3,2, 2,20,4,0,202024,1),		/* Yule Celebration Package (Female) */
(1,3,2, 2,20,4,0,202025,1),		/* Arctic Costume Package (Female) */
(1,3,2, 2,20,4,0,202026,1),		/* Silver Snow Costume Package (Female) */
(1,3,2, 2,20,4,0,202041,1),		/* Mystical Costume Package (Female) */
(1,3,2, 2,20,4,0,204812,1),		/* Costume Package (Female) */
(1,3,2, 2,20,4,0,206346,1),		/* Wanderer's Costume Package (Female) */
(1,3,2, 2,20,4,0,206347,1),		/* Stealthy Costume Package (Female) */
(1,3,2, 2,20,4,0,206348,1),		/* Costume Package of the Brave (Female) */
(1,3,2, 2,20,4,0,206744,1),		/* Assassin's Costume Package (Female) */
(1,3,2, 2,20,4,0,206747,1),		/* Purple Lady Costume Package (Female) */
(1,3,2, 2,20,4,0,206837,1),		/* Baroque Noble Costume Potion (Female) */
(1,3,2, 2,20,4,0,206838,1),		/* Evening Gown Costume Potion (Female) */
(1,3,2, 2,20,4,0,206839,1),		/* Dark Magic Costume Potion (Female) */
(1,3,2, 2,20,4,0,240812,1),		/* Soul-Eater Demon Clown Costume Package (Female) */
(1,3,2, 2,20,4,0,241068,1),		/* Costume of the Storm (Female) */
(1,3,2, 2,20,4,0,241070,1);		/* Basic Costume of the Storm (Female) */

GO

INSERT [dbo].[NewShopInfo]
([World1], [SellType], [SellType1], [SellType2], [Sell_Cost], [Sell_Get_Bonus], [Item_DisplayerObjID], [Item_OrgObjID1], [Item_Count1])
VALUES
-- Sub Costume Weapons Unisex
(1,3,3, 2,100,20,0,211477,1),		/* Doomlord's Blade (Male) */
(1,3,3, 2,100,20,0,211469,1),		/* Little Devil's Staff */
(1,3,3, 2,100,20,0,211471,1),		/* Flower Fairy's Bee Staff */
(1,3,3, 2,100,20,0,211472,1),		/* Staff of the Purple Lady */
(1,3,3, 2,100,20,0,211479,1),		/* Scarlet Sickle */
(1,3,3, 2,100,20,0,211480,1),		/* Wild Thorn Long Sword */
(1,3,3, 2,100,20,0,211481,1),		/* Spirit of the Cheetah */
(1,3,3, 2,100,20,0,211483,1),		/* New Year's Star Stick */
(1,3,3, 2,100,20,0,211835,1),		/* Dimitar's Sound */
(1,3,3, 2,100,20,0,211840,1),		/* Alpenhorn */
(1,3,3, 2,100,20,0,211866,1),		/* Maddening Consciousness Staff */
(1,3,3, 2,100,20,0,212132,1),		/* Kaz Madness Wand */
(1,3,3, 2,100,20,0,212192,1),		/* Rainbow Lollipop */
(1,3,3, 2,100,20,0,212136,1),		/* Ancient Silverblade */
(1,3,3, 2,100,20,0,211470,1),		/* Angel Blade */
(1,3,3, 2,100,20,0,212713,1),		/* Bronze Trophy */
(1,3,3, 2,100,20,0,211485,1),		/* Carret Blade */
(1,3,3, 2,100,20,0,211834,1),		/* Chime Wood Guitar */
(1,3,3, 2,100,20,0,211475,1),		/* Cowboy Blade */
(1,3,3, 2,100,20,0,211835,1),		/* Dimitar's Sound */
(1,3,3, 2,100,20,0,212137,1),		/* Elders Long Sword */
(1,3,3, 2,100,20,0,212711,1),		/* Gold Trophy */
(1,3,3, 2,100,20,0,211833,1),		/* Golden Wind Instrument */
(1,3,3, 2,100,20,0,212138,1),		/* Igor's Axe */
(1,3,3, 2,100,20,0,212132,1),		/* Kaz Madness Wand */
(1,3,3, 2,100,20,0,211826,1),		/* Lute Sword */
(1,3,3, 2,100,20,0,211836,1),		/* Lute Hammer */
(1,3,3, 2,100,20,0,211866,1),		/* Maddening Consciousness Staff */
(1,3,3, 2,100,20,0,211476,1),		/* Maid's Umbrella */
(1,3,3, 2,100,20,0,213238,1),		/* Molten Chocolate Cone */
(1,3,3, 2,100,20,0,211841,1),		/* Pengo */
(1,3,3, 2,100,20,0,211678,1),		/* Purple Rose Bouquet of Romance */
(1,3,3, 2,100,20,0,211823,1),		/* Rattle 1 Handed */
(1,3,3, 2,100,20,0,211838,1),		/* Rattle Dagger */
(1,3,3, 2,100,20,0,211677,1),		/* Red Rose Bouquet of love Sword */
(1,3,3, 2,100,20,0,212446,1),		/* Red Rose Bouquet Sword */
(1,3,3, 2,100,20,0,223533,1),		/* Red Rose Shield of Love  */
(1,3,3, 2,100,20,0,211824,1),		/* Saxophone Sword */
(1,3,3, 2,100,20,0,211839,1),		/* Saxophone Hammer */
(1,3,3, 2,100,20,0,211479,1),		/* Scarlet Sickle Axe */
(1,3,3, 2,100,20,0,212712,1),		/* Silver Trophy */
(1,3,3, 2,100,20,0,212135,1),		/* Snake Charmer Sword */
(1,3,3, 2,100,20,0,213239,1),		/* Snowdust Strawberry Ice Cream */
(1,3,3, 2,100,20,0,211482,1),		/* Snowflake Festival Cane */
(1,3,3, 2,100,20,0,213240,1),		/* Snowflake Handbell */
(1,3,3, 2,100,20,0,212191,1),		/* Spirit Commanding Blade */
(1,3,3, 2,100,20,0,211825,1),		/* Tambourine Sword */
(1,3,3, 2,100,20,0,223429,1),		/* Tambourine Shield */
(1,3,3, 2,100,20,0,211676,1),		/* Yellow Rose Bouquet of Fortune Sword */
(1,3,3, 2,100,20,0,223531,1),		/* Yellow Rose Shield of Blessing */
(1,3,3, 2,100,20,0,230324,1),		/* Feather of Adult Virgo Pet */
(1,3,3, 2,100,20,0,230325,1),		/* Feather of Newborn Virgo Pet */

-- Sub Costume Magic Wings Male
(1,3,4, 2,140,25,0,225311,1),		/* Elven Snowflake Festival Wings */

-- Sub Costume Magic Wings Female
(1,3,4, 3,140,25,0,221897,1),		/* Wings of the Mysterious Butterfly */
(1,3,4, 3,140,25,0,225306,1),		/* Elven Snowflake Festival Wings */
(1,3,4, 3,140,25,0,221887,1),		/* Angel's Dream Wings */

-- Sub Costume Magic Wings Unisex  1, 3, 4, 1
(1,3,4, 1,200,40,0,221887,1),		/* Angel's Dream Wings */
(1,3,4, 1,200,40,0,222865,1),		/* Little Devil's Wings */
(1,3,4, 1,200,40,0,222899,1),		/* Flower Fairy's Wings */
(1,3,4, 1,200,40,0,222921,1),		/* Snowflake Festival Wings */
(1,3,4, 1,200,40,0,222997,1),		/* Holy Angel's Wings */
(1,3,4, 1,200,40,0,223427,1),		/* Heavenly Black Wings */
(1,3,4, 1,200,40,0,224865,1),		/* Sparkling Wings */
(1,3,4, 1,200,40,0,224866,1),		/* Amethyst Wings */
(1,3,4, 1,200,40,0,224985,1),		/* Silver Corona Wings */
(1,3,4, 1,200,40,0,224986,1),		/* Wings of Divine Incarnation */
(1,3,4, 1,200,40,0,224987,1),		/* Mighty Phoenix Wings */
(1,3,4, 1,200,40,0,224988,1),		/* Wings of the Flaming Inferno */
(1,3,4, 1,200,40,0,224989,1),		/* Wings of the Silver Sky */
(1,3,4, 1,200,40,0,225242,1),		/* Experimental Wings */
(1,3,4, 1,200,40,0,226229,1),		/* Wings of the Skystormer */
(1,3,4, 1,200,40,0,226295,1),		/* Azure Wings */
(1,3,4, 1,200,40,0,227537,1),		/* Wings of the Dark Master */
(1,3,4, 1,200,40,0,228697,1),		/* Sismond Wings */
(1,3,4, 1,200,40,0,230163,1),		/* Wings of the Storm */
(1,3,4, 1,200,40,0,241939,1),		/* Sealed Legendary Virgo Pet Wings */
(1,3,4, 1,200,40,0,230324,1),		/* Feather of Adult Virgo Pet */
(1,3,4, 1,200,40,0,230325,1),		/* Feather of Newborn Virgo Pet */
(1,3,4, 1,200,40,0,226910,1),		/* Sword Soul */
(1,3,4, 1,200,40,0,227538,1),		/* Viscum Leaf */
(1,3,4, 1,200,40,0,230762,1),		/* Rainbow Light Feather */
(1,3,4, 1,200,40,0,230763,1),		/* Blue Flame Feather */
(1,3,4, 1,200,40,0,230764,1),		/* Red Flame Feather */

/***** Sub Crafting *****/

-- Sub Furnitures / Alchemy Bonus
(1,4,1, 1,55,5,0,201391,1),		/* Alchemy Bottle */
(1,4,1, 1,55,5,0,201392,1),		/* Large Alchemy Furnace */

-- Sub Furnitures / Blacksmithing Bonus
(1,4,1, 2,55,5,0,201393,1),		/* Blacksmith Anvil */
(1,4,1, 2,55,5,0,201395,1),		/* Cooling Anvil */
(1,4,1, 2,55,5,0,201394,1),		/* Branded Anvil */

-- Sub Furnitures / Carpentry Bonus
(1,4,1, 3,55,5,0,201396,1),		/* Carpenter's Toolbox */
(1,4,1, 3,55,5,0,201397,1),		/* Sawing Table */
(1,4,1, 3,55,5,0,201398,1),		/* Carpenter's Toolbox */

-- Sub Furnitures / Cooking Bonus
(1,4,1, 4,55,5,0,201400,1),		/* Stone Dual Oven Stove */
(1,4,1, 4,55,5,0,201399,1),		/* Small Cooking Oven */
(1,4,1, 4,55,5,0,201451,1),		/* Stone Barbecue Grill */

-- Sub Furnitures / Armorcrafting Bonus
(1,4,1, 5,55,5,0,201456,1),		/* Iron Armorcrafting Table */
(1,4,1, 5,55,5,0,201455,1),		/* Leather Side Horse */

-- Sub Furnitures / Tailering Bonus
(1,4,1, 6,55,5,0,201452,1),		/* Weaving Machine */
(1,4,1, 6,55,5,0,201454,1),		/* Cloth Cutting Table */


-- Sub Resources / 
(1,4,2, -1,55,6,203701,202113,99),		/* Steel Nail */
(1,4,2, -1,55,6,203701,240422,99),		/* Fine Perfect Adept's Tailoring Chest */
(1,4,2, -1,55,6,203701,240419,99),		/* Fine Perfect Adept's Iron Chest */
(1,4,2, -1,55,6,203701,240416,99),		/* Fine Perfect Adept's Wooden Chest */
(1,4,2, -1,35,5,203701,207405,99),		/* Fine Arcane Adept's Tailoring Chest */
(1,4,2, -1,35,5,203701,207402,99),		/* Fine Arcane Adept's Iron Chest */
(1,4,2, -1,35,5,203701,207408,99),		/* Fine Arcane Adept's Armorcrafting Chest */
(1,4,2, -1,35,5,203701,207399,99),		/* Fine Arcane Adept's Wood Chest */
(1,4,2, -1,35,5,203701,208264,99),		/* Fine Enigma Adept's Tailoring Chest */
(1,4,2, -1,35,5,203701,208267,99),		/* Fine Enigma Adept's Armor Chest */
(1,4,2, -1,36,5,205263,208248,100),		/* Verbena Juice */
(1,4,2, -1,36,5,205263,201808,100),		/* Thorn Apple Juice */
(1,4,2, -1,36,5,205263,201822,100),		/* Thorn Apple Extract */
(1,4,2, -1,36,5,205263,202649,100),		/* Straw Mushroom Extract */
(1,4,2, -1,39,5,205263,201806,100),		/* Sinners Palm Sap */
(1,4,2, -1,35,5,205263,201820,100),		/* Sinners Palm Extract */
(1,4,2, -1,35,5,205263,208236,100),		/* Olivine Nugget */
(1,4,2, -1,35,5,205263,201732,100),		/* Rune Obsidian Nugget */
(1,4,2, -1,35,5,205263,202580,100),		/* Frost Crystal Ingot */
(1,4,2, -1,35,5,205263,201745,100),		/* Rune Obsidian Ingot */
(1,4,2, -1,35,5,205263,202581,100),		/* Mica Ingot */
(1,4,2, -1,35,5,205263,201744,100),		/* Abyss-Mercury Ingot */
(1,4,2, -1,35,5,205263,208242,100),		/* Fastan Banyan Lumber */
(1,4,2, -1,35,5,205263,201782,100),		/* Ancient Spirit Oak Plank */
(1,4,2, -1,35,5,205263,202609,100),		/* Aeontree Lumber */
(1,4,2, -1,35,5,205263,202616,100),		/* Aeontree Plank */
(1,4,2, -1,35,5,205263,208243,100),		/* Fastan Banyan Plank */
(1,4,2, -1,35,5,205263,202610,100),		/* Chime Wood Plank */
(1,4,2, -1,29,3,205263,202599,100),		/* Dragon Beard Root Timber */
(1,4,2, -1,48,4,205263,202632,100),		/* Bison Grass Bundle */
(1,4,2, -1,30,3,205263,208059,1),		/* Foloin Nut Butter Material Package */
(1,4,2, -1,35,7,205263,202114,99),		/* Silver Nail */
(1,4,2, -1,35,7,205263,242315,99),		/* Tin Nail */
(1,4,2, -1,35,7,205263,242319,99),		/* Silver-Mercury Nail */
(1,4,2, -1,35,7,205263,242323,99),		/* Wolfram Gold Nail */
(1,4,2, -1,35,7,205263,240325,99),		/* Janost Cypress Lumber */
(1,4,2, -1,35,7,205263,241422,99),		/* Todo Ginkgo Lumber */
(1,4,2, -1,10,1,205263,205689,5),		/* 5 Hardwork Crystal */
(1,4,2, -1,100,10,205263,205689,50),	/* 50 Hardwork Crystal */
(1,4,2, -1,35,7,205263,242066,99),		/* Mulbery Fiber */
(1,4,2, -1,35,7,205263,242317,99),		/* Green Fibre */
(1,4,2, -1,35,7,205263,242321,99),		/* Cotton Fiber */
(1,4,2, -1,35,7,205263,242325,99),		/* Beech Fiber */
(1,4,2, -1,35,7,205263,242324,99),		/* Floyd Metal Stone */
(1,4,2, -1,35,7,205263,242322,99),		/* Lotus Star */
(1,4,2, -1,35,7,205263,242292,99),		/* Blood Palm Lumber */
(1,4,2, -1,35,7,205263,242296,99),		/* Ironaxe Stone Nugget */
(1,4,2, -1,35,5,205263,201802,100),		/* Moxa Sap */
(1,4,2, -1,35,5,205263,201764,100),		/* Oak Lumber */
(1,4,2, -1,573,45,205263,208237,255),	/* 255 Olivine Ingot */
(1,4,2, -1,573,45,205263,208249,255),	/* 255 Verbena Extract */
(1,4,2, -1,223,23,205263,202615,100),	/* 100 Fairywood Plank */

(1,4,2, -1,1,1,205263,200293,100),	/* 100 Ash Wood */
(1,4,2, -1,1,1,205263,200508,100),	/* 100 Chime Wood */
(1,4,2, -1,1,1,205263,200295,100),	/* 100 Willow Wood */
(1,4,2, -1,1,1,205263,200509,100),	/* 100 Stone Rotan Wood */
(1,4,2, -1,1,1,205263,200297,100),	/* 100 Maple Wood */
(1,4,2, -1,1,1,205263,200300,100),	/* 100 Oak Wood */
(1,4,2, -1,1,1,205263,200326,100),	/* 100 Redwood */
(1,4,2, -1,1,1,205263,200304,100),	/* 100 Pine Wood */
(1,4,2, -1,1,1,205263,200332,100),	/* 100 Dragon Beard Root Wood */
(1,4,2, -1,1,1,205263,200298,100),	/* 100 Holly Wood */
(1,4,2, -1,1,1,205263,200306,100),	/* 100 Yew Wood */
(1,4,2, -1,1,1,205263,200331,100),	/* 100 Sagewood */
(1,4,2, -1,1,1,205263,200307,100),	/* 100 Tarslin Demon Wood */
(1,4,2, -1,1,1,205263,200310,100),	/* 100 Dragonlair Wood */
(1,4,2, -1,1,1,205263,202317,100),	/* 100 Fairywood */
(1,4,2, -1,1,1,205263,200312,100),	/* 100 Ancient Spirit Oak Wood */
(1,4,2, -1,1,1,205263,202318,100),	/* 100 Aentree Wood */
(1,4,2, -1,1,1,205263,208240,100),	/* 100 Fastan Banyan */
(1,4,2, -1,1,1,205263,240323,100),	/* 100 Janost Cypress Wood */
(1,4,2, -1,1,1,205263,241426,100),	/* 100 Stone Pine */
(1,4,2, -1,1,1,205263,241420,100),	/* 100 Todo Ginkgo Tree */
(1,4,2, -1,1,1,205263,242242,100),	/* 100 Nadal Wisteria Wood */
(1,4,2, -1,1,1,205263,242290,100),	/* 100 Blood Palm Wood */
(1,4,2, -1,1,1,205263,242254,100),	/* 100 Summer Oak */
(1,4,2, -1,1,1,205263,242266,100),	/* 100 Fire Mountain Tree */
(1,4,2, -1,1,1,205263,242278,100),	/* 100 Kandi Tree */

(1,4,2, -1,1,1,205263,200335,100),	/* 100 Mountain Demon Grass */
(1,4,2, -1,1,1,205263,202552,100),	/* 100 Rosemary */
(1,4,2, -1,1,1,205263,200342,100),	/* 100 Barsaleaf */
(1,4,2, -1,1,1,205263,200334,100),	/* 100 Beetroot */
(1,4,2, -1,1,1,205263,202553,100),	/* 100 Bison Grass*/
(1,4,2, -1,1,1,205263,200333,100),	/* 100 Bitterleaf */
(1,4,2, -1,1,1,205263,242262,100),	/* 100 Cold Psilotum*/
(1,4,2, -1,1,1,205263,241414,100),	/* 100 Dovetail Flower*/
(1,4,2, -1,1,1,205263,200349,100),	/* 100 Dragon Mallow*/
(1,4,2, -1,1,1,205263,242298,100),	/* 100 Dragonsprout Grass*/
(1,4,2, -1,1,1,205263,200343,100),	/* 100 Dusk Orchid */
(1,4,2, -1,1,1,205263,202554,100),	/* 100 Foloin Nut */
(1,4,2, -1,1,1,205263,202558,100),	/* 100 Goblin Grass */
(1,4,2, -1,1,1,205263,202555,100),	/* 100 Green Thistle */
(1,4,2, -1,1,1,205263,242250,100),	/* 100 Isyeh Grass */
(1,4,2, -1,1,1,205263,202557,100),	/* 100 Mirror Sedge */
(1,4,2, -1,1,1,205263,242310,100),	/* 100 Moon Grass */
(1,4,2, -1,1,1,205263,200345,100),	/* 100 Moon Orchid */
(1,4,2, -1,1,1,205263,200338,100),	/* 100 Moxa*/
(1,4,2, -1,1,1,205263,240329,100),	/* 100 Nocturnal Lantern Grass */
(1,4,2, -1,1,1,205263,242286,100),	/* 100 Shell Flower */
(1,4,2, -1,1,1,205263,200346,100),	/* 100 Sinners Palm */
(1,4,2, -1,1,1,205263,242274,100),	/* 100 Snow Grass */
(1,4,2, -1,1,1,205263,202556,100),	/* 100 Straw Mushroom */
(1,4,2, -1,1,1,205263,200350,100),	/* 100 Thorn Apple */
(1,4,2, -1,1,1,205263,241408,100),	/* 100 Thunderhoof Grass */
(1,4,2, -1,1,1,205263,208246,100),	/* 100 Verbena */

(1,4,2, -1,1,1,205263,200230,100),	/* 100 Zinc Ore */
(1,4,2, -1,1,1,205263,200507,100),	/* 100 Flame Dust */
(1,4,2, -1,1,1,205263,200232,100),	/* 100 Tin Ore */
(1,4,2, -1,1,1,205263,200234,100),	/* 100 Iron Ore */
(1,4,2, -1,1,1,205263,200264,100),	/* 100 Abyss-Mercury */
(1,4,2, -1,1,1,205263,242282,100),	/* 100 Argyrite */
(1,4,2, -1,1,1,205263,200236,100),	/* 100 Copper Ore */
(1,4,2, -1,1,1,205263,200506,100),	/* 100 Cyanide */
(1,4,2, -1,1,1,205263,200238,100),	/* 100 Dark Crystal */
(1,4,2, -1,1,1,205263,242258,100),	/* 100 Dust of Mutation */
(1,4,2, -1,1,1,205263,202315,100),	/* 100 Frost Crystal */
(1,4,2, -1,1,1,205263,242294,100),	/* 100 Ironaxe Stone */
(1,4,2, -1,1,1,205263,202316,100),	/* 100 Mica */
(1,4,2, -1,1,1,205263,200265,100),	/* 100 Mithril */
(1,4,2, -1,1,1,205263,200244,100),	/* 100 Moon Silver Ore */
(1,4,2, -1,1,1,205263,200269,100),	/* 100 Mysticite */
(1,4,2, -1,1,1,205263,241432,100),	/* 100 Olegan Stone */
(1,4,2, -1,1,1,205263,208234,100),	/* 100 Olivine */
(1,4,2, -1,1,1,205263,240314,100),	/* 100 Purple Agate Crystal */
(1,4,2, -1,1,1,205263,242270,100),	/* 100 Rainbow Stone */
(1,4,2, -1,1,1,205263,241438,100),	/* 100 Rein Crystal */
(1,4,2, -1,1,1,205263,200249,100),	/* 100 Rock Crystal */
(1,4,2, -1,1,1,205263,200268,100),	/* 100 Rune Obsidian Ore */
(1,4,2, -1,1,1,205263,242306,100),	/* 100 Sea Crystal */
(1,4,2, -1,1,1,205263,200239,100),	/* 100 Silver Ore */
(1,4,2, -1,1,1,205263,242246,100),	/* 100 Silver Star Stone */
(1,4,2, -1,1,1,205263,200242,100),	/* 100 Wizard-Iron Ore */

-- Sub Runes
(1,4,3, -1,9,3,0,202086,1),		/* Bag of Link Runes */
(1,4,3, -1,9,3,0,202087,1),		/* Bag of Frost Runes */
(1,4,3, -1,9,3,0,202088,1),		/* Bag of Activate Runes */
(1,4,3, -1,9,3,0,202089,1),		/* Bag of Disenchant Runes */
(1,4,3, -1,9,3,0,202090,1),		/* Bag of Purify Runes */
(1,4,3, -1,9,3,0,202091,1),		/* Bag of Blend Runes */

-- Sub Potions
(1,4,4, -1,175,20,0,208657,1),		/* Production Speed Potion (30 Days) */
(1,4,4, -1,20,2,0,242085,1),		/* Gathering Speed Increase Potion */
(1,4,4, -1,20,2,0,242086,1),		/* Gathering XP Increase Potion */
(1,4,4, -1,30,1,0,241601,1),		/* Production Luck Potion (1 Day) */
(1,4,4, -1,30,1,0,241602,1),		/* Production Speed Potion (1 Days) */
(1,4,4, -1,10,1,0,242686,1),		/* Production XP potion */

-- Sub Recipes
(1,4,5, -1,35,7,205295,550481,1),		/* Recipe - Laor Forest Tart */
(1,4,5, -1,35,7,205295,551228,1),		/* Recipe - Serenstum */
(1,4,5, -1,35,7,205295,550728,1),		/* Recipe - Hero Potion */
(1,4,5, -1,35,7,205295,551462,1),		/* Recipe - Deadly Potion */
(1,4,5, -1,35,7,205295,550712,1),		/* Recipe - Touch of the Unicorn */
(1,4,5, -1,10,1,205295,551204,1),		/* Recipe - Henolid's Staff of Admiration */
(1,4,5, -1,10,1,205295,551191,1),		/* Recipe - Wing of the Dragonking */
(1,4,5, -1,35,7,205295,552837,1),		/* Recipe - Fire Mountain Tree Timber */
(1,4,5, -1,35,7,205295,552872,1),		/* Recipe - Rainbow Stone Nugget Blue */
(1,4,5, -1,35,7,205295,552873,1),		/* Recipe - Rainbow Stone Nugget Purple*/
(1,4,5, -1,35,7,205295,552876,1),		/* Recipe - Snow Grass Juice Blue */
(1,4,5, -1,35,7,205295,552877,1),		/* Recipe - Snow Grass Extract Purple */
(1,4,5, -1,35,7,205295,552854,1),		/* Recipe - Rainbow Stone Sand */
(1,4,5, -1,35,7,205295,552860,1),		/* Recipe - Snow Grass Bundle */
(1,4,5, -1,35,7,205295,552863,1),		/* Recipe - Seas Crystal Sand */
(1,4,5, -1,35,7,205295,552864,1),		/* Recipe - Seas Crystal Nugget */
(1,4,5, -1,35,7,205295,552865,1),		/* Recipe - Sea Crystal Ingot */
(1,4,5, -1,35,7,205295,552866,1),		/* Recipe - Bleak Fir Timber */
(1,4,5, -1,35,7,205295,552867,1),		/* Recipe - Bleak Fir Lumber */
(1,4,5, -1,35,7,205295,552868,1),		/* Recipe - Bleak Fir Plank */
(1,4,5, -1,35,7,205295,552818,1),		/* Recipe - Legendary Iron Chest */
(1,4,5, -1,35,7,205295,552819,1),		/* Recipe - Legendary Wooden Chest */
(1,4,5, -1,35,7,205295,552820,1),		/* Recipe - Legendary Armor Chest */
(1,4,5, -1,35,7,205295,552821,1),		/* Recipe - Legendary Tailor Chest */
(1,4,5, -1,35,7,205295,552822,1),		/* Recipe - Ultimate Iron Chest */
(1,4,5, -1,35,7,205295,552823,1),		/* Recipe - Ultimate Wooden Chest */
(1,4,5, -1,35,7,205295,552824,1),		/* Recipe - Ultimate Armor Chest */
(1,4,5, -1,35,7,205295,552825,1),		/* Recipe - Ultimate Tailor Chest */


-- Sub Planting
(1,4,6,1, 20,4,0,203910,1),		/* Incan Magic Pot */
(1,4,6,1, 20,4,0,204253,1),		/* Tall Winter Plant Pot */
(1,4,6,1, 20,4,0,203907,1),		/* Tenochtitlan Gold Pot */
(1,4,6,1, 20,4,0,204244,1),		/* Zeus Pot */
(1,4,6,1, 20,4,0,204254,1),		/* Tall Autumn Plant Pot */
(1,4,6,1, 20,4,0,204257,1),		/* Decorative Pine Pot */
(1,4,6,1, 20,4,0,242718,1),		/* Jade Green Shroud FlowerPot */
(1,4,6,1, 20,4,0,204255,1),		/* Tall Green Plant Pot */
(1,4,6,1, 20,4,0,203834,1),		/* Modern Landscaping Plant Pot */
(1,4,6,1, 20,4,0,203901,1),		/* Passionate Long-Legged Plant Pot */
(1,4,6,1, 20,4,0,203903,1),		/* Blue Stone Hexagonal Plant Pot */
(1,4,6,1, 20,4,0,203909,1),		/* Blue Dream Plant Pot */
(1,4,6,1, 20,4,0,242716,1),		/* Nocturnal Shroud Flowerpot */
(1,4,6,1, 20,4,0,242717,1),		/* Gorgeous Shroud Flowerpot */
(1,4,6,1, 20,4,0,242718,1),		/* Jade Green Shroud flowerPot */
(1,4,6,1, 20,4,0,208577,1),		/* Crescent Oasis flowerPot */
(1,4,6,1, 20,4,0,208578,1),		/* Azure Thunderclap flowerPot */
(1,4,6,1, 20,4,0,208579,1),		/* Jade Green Shroud flowerPot */


-- Sub Consumables
(1,4,6,2, 3,0,0,203881,1),		/* Low-Class Plant Growing Agent */
(1,4,6,2, 6,1,0,203882,1),		/* Medium-Class Plant Growing Agent */
(1,4,6,2, 10,2,0,203883,1),		/* High-Class Plant Growing Agent */
(1,4,6,2, 20,4,0,208624,1),		/* Superior Plant Growing Agent */
(1,4,6,2, 3,0,0,203884,1),		/* Low-Class Plant Protection */
(1,4,6,2, 6,1,0,203885,1),		/* Medium-Class Plant Protection */
(1,4,6,2, 10,2,0,203886,1),		/* High-Class Plant Protection */
(1,4,6,2, 20,4,0,208625,1),		/* Superior-Class Plant Protection */
(1,4,6,2, 25,3,205295,242779,100),		/* Seed - Fire Lily of Luck */
(1,4,6,2, 25,3,205295,242773,100),		/* Seed - Fire Lily of Hope */
(1,4,6,2, 25,3,205295,242776,100),		/* Seed - Fire Lily of Love */

-- Sub Others
(1,4,7,-1, 79,7,0,242687,1),		/* Crafting Skill Craftsman Expansion Ticket */
(1,4,7,-1, 99,9,0,242688,1),		/* Crafting Skill Expert Expansion Ticket */
(1,4,7,-1, 129,12,0,242689,1),		/* Crafting Skill Master Expansion Ticket */
(1,4,7,-1, 179,17,0,242690,1);		/* Crafting Skill Legend Expansion Ticket */


GO

INSERT [dbo].[NewShopInfo]
([World1], [SellType], [SellType1], [SellType2], [Sell_Cost], [Sell_Get_Bonus], [Item_DisplayerObjID], [Item_OrgObjID1], [Item_Count1])
VALUES

/* *** Encylopedias *** */

-- Sub Crafting I
(1,5,1,-1, 15,3,0,202720,1),		/* Tailering Encylopedia I (30 Day) */
(1,5,1,-1, 15,3,0,202726,1),		/* Armor Crafting Encylopedia I (30 Day) */
(1,5,1,-1, 15,3,0,202714,1),		/* Blacksmith Encylopedia I (30 Day) */
(1,5,1,-1, 15,3,0,202711,1),		/* Carpentry Encylopedia I (30 Day) */
(1,5,1,-1, 15,3,0,202717,1),		/* Cooking Encylopedia I (30 Day) */
(1,5,1,-1, 15,3,0,202708,1),		/* Ore Mining Encylopedia (30 Day) */
(1,5,1,-1, 15,3,0,202707,1),		/* Medical Herbs Encyclopedia (30 Day) */
(1,5,1,-1, 15,3,0,202706,1),		/* Forest Trees Encylopedia (30 Day) */

-- Sub Crafting II
(1,5,2,-1, 30,6,0,202724,1),		/* Alchemy Encylopedia II (30 Day) */
(1,5,2,-1, 30,6,0,202727,1),		/* Armor Crafting Encylopedia II (30 Day) */
(1,5,2,-1, 30,6,0,202715,1),		/* Blacksmithing Encylopedia II (30 Day) */
(1,5,2,-1, 30,6,0,202712,1),		/* Carpentry Encylopedia II (30 Day) */
(1,5,2,-1, 30,6,0,202718,1),		/* Cooking Encylopedia II (30 Day) */
(1,5,2,-1, 30,6,0,202721,1),		/* Tailoring Encylopedia II (30 Day) */

-- Sub Skills I
(1,5,3,-1, 15,3,0,202733,1),		/* Unarmed Combat Encylopedia (30 Day) */
(1,5,3,-1, 15,3,0,202734,1),		/* Sword Encylopedia (30 Day) */
(1,5,3,-1, 15,3,0,202739,1),		/* Two-Handed Sword Encylopedia (30 Day) */
(1,5,3,-1, 15,3,0,202735,1),		/* Dagger Encylopedia (30 Day) */
(1,5,3,-1, 15,3,0,202736,1),		/* Wand Encylopedia (30 Day) */
(1,5,3,-1, 15,3,0,202737,1),		/* Axe Encylopedia (30 Day) */
(1,5,3,-1, 15,3,0,202741,1),		/* Two-handed Axe Encylopedia (30 Day) */
(1,5,3,-1, 15,3,0,202738,1),		/* Blunt Weapon Encylopedia (30 Day) */
(1,5,3,-1, 15,3,0,202740,1),		/* Staff Encylopedia (30 Day) */
(1,5,3,-1, 15,3,0,202742,1),		/* Two-handed Hammer Encylopedia (30 Day) */
(1,5,3,-1, 15,3,0,202744,1),		/* Bow Encylopedia (30 Day) */
(1,5,3,-1, 15,3,0,202745,1),		/* Crossbow Encylopedia (30 Day) */
(1,5,3,-1, 15,3,0,202747,1),		/* Defense Encylopedia (30 Day) */
(1,5,3,-1, 15,3,0,202702,1),		/* Skill Practice Encylopedia (30 Day) */
(1,5,3,-1, 15,3,0,202699,1),		/* Battle Instruction Encylopedia (30 Day) */

-- Sub Skill II
(1,5,4,-1, 30,6,0,202700,1),		/* Battle Instruction Encylopedia II (30 Day) */
(1,5,4,-1, 30,6,0,202703,1),		/* Skill Practice Encylopedia II (30 Day) */



/* **** Housing **** */
(1,6,1, -1, 10,2,0,201292,1),		/* Shield-shaped Weapon Rack */
(1,6,1, -1, 10,2,0,201293,1),		/* Cross Weapon Rack */
(1,6,1, -1, 10,2,0,201294,1),		/* Luxury Weapon Rack */
(1,6,1, -1, 110,21,0,201382,1),		/* Lionhead Treasure Chest */
(1,6,1, -1, 125,24,0,201384,1),		/* Classical Wooden Chest */
(1,6,1, -1, 160,30,0,201383,1),		/* Storage Chest */
(1,6,1, -1, 45,8,0,201381,1),		/* Brown Wooden Treasure Chest */
(1,6,1, -1, 55,10,0,201386,1),		/* Juniper Treasure Chest */
(1,6,1, -1, 65,11,0,201385,1),		/* Cowhide Chest */
(1,6,1, -1, 75,12,0,201387,1),		/* Tan Copper Chest */
(1,6,1, -1, 45,8,0,201285,1),		/* Men's Clothes Rack */
(1,6,1, -1, 45,8,0,201286,1),		/* Women's Clothes Rack */
(1,6,1, -1, 45,8,0,204763,1),		/* Topaz Carved Treasure Box */
(1,6,1, -1, 45,8,0,204764,1),		/* Round-Topped Square Box */

-- Sub Beds
(1,6,2, -1, 55,10,0,204783,1),		/* Twin Cloth Bed with Wooden Headboard */
(1,6,2, -1, 35,6,0,204687,1),		/* Simple Wooden Twin Bed */
(1,6,2, -1, 45,8,0,201343,1),		/* Sweetheart's Pink Bed */
(1,6,2, -1, 55,10,0,201345,1),		/* Caesar Bed */
(1,6,2, -1, 45,8,0,201346,1),		/* Pink Sleeping Bed */
(1,6,2, -1, 55,10,0,201344,1),		/* Luxurious Aritocrat bed */
(1,6,2, -1, 15,2,0,201347,1),		/* Elegant Wooden Engraved Bed */
(1,6,2, -1, 25,4,0,201348,1),		/* Wood-Patterned Tester Bed */
(1,6,2, -1, 20,2,0,204686,1),		/* Aritocratic Gold Twin Bed */

-- Sub Tables & Chairs
(1,6,3, -1, 7,1,0,204675,1),		/* Decorative Square Table */
(1,6,3, -1, 10,2,0,204676,1),		/* End Table with Blue Patterned Table Cloth */
(1,6,3, -1, 15,3,0,204674,1),		/* Square Table with Table Cloth */
(1,6,3, -1, 10,2,0,201492,1),		/* Long Beech Table */
(1,6,3, -1, 10,3,0,201328,1),		/* Chessboard Table */
(1,6,3, -1, 15,3,0,201327,1),		/* Yachi Curved Table */
(1,6,3, -1, 20,4,0,201326,1),		/* Table with Sheena's Dishes */
(1,6,3, -1, 20,4,0,201329,1),		/* Elegant Engraved Square Table */
(1,6,3, -1, 10,3,0,201506,1),		/* Exquisite Sofa End Table */
(1,6,3, -1, 10,2,0,201324,1),		/* Elegant Square Table */
(1,6,3, -1, 7,1,0,201325,1),		/* Oriental Wooden Table */
(1,6,3, -1, 7,1,0,201330,1),		/* Oven-shaped Table */
(1,6,3, -1, 4,1,0,201504,1),		/* Snack End Table */
(1,6,3, -1, 4,1,0,201508,1),		/* Simple Rotan Chair */
(1,6,3, -1, 7,1,0,201509,1),		/* Pink Star Glory Chair */
(1,6,3, -1, 7,1,0,201510,1),		/* Royal Blue Leisure Chair */
(1,6,3, -1, 7,1,0,201549,1),		/* Rococo Engraved Chair */
(1,6,3, -1, 7,1,0,201601,1),		/* Magnificent Footstool Chest */
(1,6,3, -1, 7,1,0,201602,1),		/* Engraved Emerald Chair */
(1,6,3, -1, 7,1,0,201603,1),		/* Simple Stool */
(1,6,3, -1, 5,1,0,201604,1),		/* Simple Fitting Stool */
(1,6,3, -1, 5,1,0,201605,1),		/* Violet Round Stool */
(1,6,3, -1, 7,1,0,201606,1),		/* Rococo Stool */
(1,6,3, -1, 7,1,0,201503,1),		/* Mint Green Sofa */
(1,6,3, -1, 10,2,0,201336,1),		/* Lady's Red Cushioned Sleeping Sofa */
(1,6,3, -1, 15,3,0,201335,1),		/* Engraved Red Cloth Sofa */
(1,6,3, -1, 7,1,0,201337,1),		/* Violet Love Seat */
(1,6,3, -1, 7,1,0,201501,1),		/* Elegant Patterned Red Sofa */
(1,6,3, -1, 7,1,0,204677,1),		/* Orange Checkered Bench */
(1,6,3, -1, 7,1,0,204678,1),		/* Wooden Flower Bench */
(1,6,3, -1, 15,3,0,204683,1),		/* Six-person Wooden Leisure Seat */
(1,6,3, -1, 10,2,0,204681,1),		/* Elegant Red Corner Sofa */
(1,6,3, -1, 7,1,0,201505,1),		/* Violet Lady's Chair */
(1,6,3, -1, 7,1,0,201340,1),		/* Comfortable Rocking Chair */
(1,6,3, -1, 5,1,0,201334,1),		/* Engraved Wooden Chair */
(1,6,3, -1, 7,1,0,201338,1),		/* Elegant Engraved Chair */
(1,6,3, -1, 7,1,0,201507,1),		/* Baroque Chair */
(1,6,3, -1, 15,2,0,204679,1),		/* Elegant Red Long Sofa */
(1,6,3, -1, 15,2,0,204680,1),		/* Elegant Red Sofa */
(1,6,3, -1, 20,2,0,206489,1),		/* Large Snowflake Festival Decorator Table */
(1,6,3, -1, 7,1,0,206498,1),		/* Classic Snowflake Festival Wooden Chair */
(1,6,3, -1, 15,2,0,206497,1),		/* Classic Snowflake Festival Sofa */
(1,6,3, -1, 20,2,0,206499,1),		/* Romantic Snowflake Festival Table */
(1,6,3, -1, 7,1,0,204685,1),		/* Forest-green Triangle Chair */
(1,6,3, -1, 25,3,0,204684,1),		/* Splended Low Sofa */

-- Sub Decorations
(1,6,4, -1, 15,3,0,201416,1),		/* Screen of three Fairis' Wings */
(1,6,4, -1, 25,4,0,201415,1),		/* Screen of the King's Lake */
(1,6,4, -1, 11,2,0,201411,1),		/* Screen of Jewel Memories */
(1,6,4, -1, 7,1,0,201412,1),		/* Screen of Earthly Trees */
(1,6,4, -1, 15,3,0,201413,1),		/* Screen of Heavenly Lakes */
(1,6,4, -1, 7,1,0,204749,1),		/* Broad Azure Juice Bottle */
(1,6,4, -1, 7,1,0,204741,1),		/* Blue Flower Garden Platter */
(1,6,4, -1, 7,1,0,204769,1),		/* Magic Spirit Light */
(1,6,4, -1, 7,1,0,204770,1),		/* Uncle Sheperd Mask */
(1,6,4, -1, 7,1,0,204757,1),		/* Mysterious Totem Tea Bottle */
(1,6,4, -1, 7,1,0,204766,1),		/* Wooden Deer Carving */
(1,6,4, -1, 7,1,0,204767,1),		/* Wooden Young Deer Carving */
(1,6,4, -1, 7,1,0,204774,1),		/* Wooden Horse */
(1,6,4, -1, 7,1,0,201318,1),		/* Tiger Head Trophy */
(1,6,4, -1, 7,1,0,201407,1),		/* Copper Candleholder */
(1,6,4, -1, 10,1,0,201408,1),		/* Grandfather Clock */
(1,6,4, -1, 5,1,0,201402,1),		/* Yellow Gemstone Sphere */
(1,6,4, -1, 5,1,0,201403,1),		/* Blue Gemstone Sphere */
(1,6,4, -1, 5,1,0,201404,1),		/* Red Gemstone Sphere */
(1,6,4, -1, 45,10,0,203936,1),		/* Refreshing Shisha */
(1,6,4, -1, 7,1,0,206496,1),		/* Ancient Gramophone */
(1,6,4, -1, 7,1,0,206495,1),		/* Amcient Upright Gramophone */
(1,6,4, -1, 7,1,0,204722,1),		/* Painted Paper Lantern */
(1,6,4, -1, 7,1,0,204737,1),		/* Embroidered Ornamental Platter */
(1,6,4, -1, 7,1,0,204748,1),		/* Blue-flower Vase */
(1,6,4, -1, 11,2,0,206491,1),		/* Blue Snowflake Festival Tree */
(1,6,4, -1, 7,1,0,204735,1),		/* Flowery Ornamental Platter */
(1,6,4, -1, 7,1,0,204778,1),		/* Flowery Bamboo Lantern */
(1,6,4, -1, 50,5,0,208205,1),		/* Bust of Sirloth */
(1,6,4, -1, 7,1,0,204773,1),		/* Head Statue Remains */
(1,6,4, -1, 7,1,0,204740,1),		/* Deep-red Bouquet Platter */
(1,6,4, -1, 7,1,0,204731,1),		/* Transparent Fruit Platter */
(1,6,4, -1, 7,1,0,209620,1),		/* Simple Rainbow Egg Plate Decoration */
(1,6,4, -1, 7,1,0,209627,1),		/* Simple Rainbow Egg Ratten-Basket */
(1,6,4, -1, 20,2,0,203935,1),		/* Cozy Shisha */
(1,6,4, -1, 20,2,0,206509,1),		/* Reindeer Ice Sculpture */
(1,6,4, -1, 20,2,0,206510,1),		/* Snowflake Festival Reindeer Ice Sculpture */
(1,6,4, -1, 20,2,0,206511,1),		/* Royal Reindeer Ice Sculpture */
(1,6,4, -1, 7,1,0,204732,1),		/* Elegant Floral Platter */
(1,6,4, -1, 7,1,0,204721,1),		/* Exquisite Patterned Lantern */
(1,6,4, -1, 7,1,0,206272,1),		/* Exquisite Cupcake */
(1,6,4, -1, 7,1,0,203938,1),		/* Framed Evil Eye Ornament */
(1,6,4, -1, 7,1,0,206512,1),		/* Lobster Feast */
(1,6,4, -1, 7,1,0,206503,1),		/* Roast Rib Feast */
(1,6,4, -1, 50,5,0,205784,1),		/* Myrmex Queen's Wing Ornament */
(1,6,4, -1, 7,1,0,204753,1),		/* Springtime Patterned Bucket */
(1,6,4, -1, 7,1,0,206268,1),		/* Roast Ostrich Feast */
(1,6,4, -1, 7,1,0,204730,1),		/* Green-leaf Yellow Platter */
(1,6,4, -1, 7,1,0,206271,1),		/* Vegetable Salad */
(1,6,4, -1, 7,1,0,206269,1),		/* Smoked Ostrich */
(1,6,4, -1, 15,2,0,204772,1),		/* Lucky Amulet */
(1,6,4, -1, 7,1,0,204760,1),		/* Lucky Patterned Vase */
(1,6,4, -1, 15,2,0,204728,1),		/* Golden Luxury Lantern */
(1,6,4, -1, 15,2,0,206471,1),		/* Gramophone */
(1,6,4, -1, 15,2,0,206472,1),		/* Gramophone 2 */
(1,6,4, -1, 7,1,0,204752,1),		/* Tall Flower Juice Bottle */
(1,6,4, -1, 7,1,0,204781,1),		/* Green Sphere Lantern */
(1,6,4, -1, 7,1,0,204746,1),		/* Green Carved Vase */
(1,6,4, -1, 7,1,0,204727,1),		/* Green Spinning Lantern */
(1,6,4, -1, 7,1,0,209628,1),		/* Green Rainbow Egg Basket */
(1,6,4, -1, 15,3,0,201416,1),		/* Screen of three Fairies Wings */
(1,6,4, -1, 25,4,0,201415,1),		/* Screen of the Kings Lake */
(1,6,4, -1, 11,2,0,201411,1),		/* Screen of Jewel Memories */
(1,6,4, -1, 7,1,0,201412,1),		/* Screen of Earthly Trees */
(1,6,4, -1, 15,3,0,201413,1),		/* Screen of Heavenly Lakes */
(1,6,4, -1, 7,1,0,204749,1),		/* Broad Azure Juice Bottle */
(1,6,4, -1, 7,1,0,204741,1),		/* Blue Flower Garden Platter */
(1,6,4, -1, 7,1,0,204769,1),		/* Magic Spirit Light */
(1,6,4, -1, 7,1,0,204770,1),		/* Uncle Shepherd Mask */
(1,6,4, -1, 7,1,0,204757,1),		/* Mysterious Totem Tea Bottle */
(1,6,4, -1, 7,1,0,206273,1),		/* Hand-Picked Cranberry */
(1,6,4, -1, 7,1,0,204750,1),		/* Gem Crown Juice Glass */
(1,6,4, -1, 7,1,0,204758,1),		/* Classic Wooden Tea Bottle */
(1,6,4, -1, 7,1,0,204743,1),		/* Crystal Dream Fruit Dish */
(1,6,4, -1, 50,5,0,205781,1),		/* Krodamars Head Ornament */
(1,6,4, -1, 7,1,0,204780,1),		/* Sunrise Lantern */
(1,6,4, -1, 7,1,0,204765,1),		/* Lute */
(1,6,4, -1, 50,5,0,205779,1),		/* Lyoths Chandelier Ornament */
(1,6,4, -1, 7,1,0,204744,1),		/* Multicolor Flower Garden Fruit Dish */
(1,6,4, -1, 7,1,0,204724,1),		/* Multicolor Rich Lantern */
(1,6,4, -1, 7,1,0,204768,1),		/* Multicolor Wooden Knife */
(1,6,4, -1, 7,1,0,209624,1),		/* Fashionable Rainbow Egg Vase Decoration */
(1,6,4, -1, 15,2,0,204776,1),		/* Nine-color Spice Material Cabinet */
(1,6,4, -1, 15,2,0,204777,1),		/* Twelve-color Spice Cabinet */
(1,6,4, -1, 7,1,0,209621,1),		/* Nest Rainbow Egg Decoration */
(1,6,4, -1, 7,1,0,209625,1),		/* Rattan-weaved Rainbow Egg Decoration */
(1,6,4, -1, 50,5,0,205712,1),		/* Giant Guardian Wrist Model */
(1,6,4, -1, 7,1,0,204751,1),		/* Ring-sahped Juice Bottle */
(1,6,4, -1, 7,1,0,204779,1),		/* Romantic */
(1,6,4, -1, 7,1,0,209622,1),		/* Romantic Rainbow Egg Pot */
(1,6,4, -1, 7,1,0,204739,1),		/* Pink Rose Platter */
(1,6,4, -1, 7,1,0,204754,1),		/* Rose Juice Bottle */
(1,6,4, -1, 7,1,0,204726,1),		/* Pink Dream Lantern */
(1,6,4, -1, 50,5,0,205783,1),		/* Rune Guardian Leader Model */
(1,6,4, -1, 7,1,0,206504,1),		/* Ham Platter Feast */
(1,6,4, -1, 15,2,0,204771,1),		/* Safety Amulet */
(1,6,4, -1, 50,5,0,201417,1),		/* Swan Bathtub */
(1,6,4, -1, 15,2,0,208206,1),		/* Sword of Fear Ornament */
(1,6,4, -1, 7,1,0,204729,1),		/* Beautiful Purple Lantern */
(1,6,4, -1, 7,1,0,204761,1),		/* Silvery Patterned Vase */
(1,6,4, -1, 50,5,0,208207,1),		/* Sirloths Armband Ornament */
(1,6,4, -1, 50,5,0,208204,1),		/* Sirloths Wings */
(1,6,4, -1, 7,1,0,203940,1),		/* Emerald Green Evil Eye Ornament */
(1,6,4, -1, 15,2,0,206270,1),		/* Spaghetti Bolognese */
(1,6,4, -1, 15,2,0,201453,1),		/* Spinning Machine */
(1,6,4, -1, 50,5,0,208203,1),		/* Statue of Sirloth (small) */
(1,6,4, -1, 7,1,0,201311,1),		/* Zodiac Stone Plate */
(1,6,4, -1, 15,2,0,206274,1),		/* Osterich Egg */
(1,6,4, -1, 15,2,0,206267,1),		/* Charcoal-Roasted Ostrich Platter */
(1,6,4, -1, 7,1,0,204755,1),		/* Tambourine-Shaped Juice Bottle */
(1,6,4, -1, 7,1,0,204745,1),		/* Traditional Patterned Fruit Dish */
(1,6,4, -1, 7,1,0,204747,1),		/* Traditional Carved Vase */
(1,6,4, -1, 7,1,0,204756,1),		/* Traditional Green Patterend Tea Bottle */
(1,6,4, -1, 50,5,0,205714,1),		/* Trophy of Minotaur Warcur */
(1,6,4, -1, 50,5,0,205782,1),		/* Cursed Iron Golem Model */
(1,6,4, -1, 7,1,0,204734,1),		/* Wooden Ornamental Platter */
(1,6,4, -1, 7,1,0,204738,1),		/* Violet Platter */
(1,6,4, -1, 7,1,0,204725,1),		/* Warm Checkered Lantern */
(1,6,4, -1, 7,1,0,204742,1),		/* Whiteware Ceramic Floral Fruit Dish */
(1,6,4, -1, 7,1,0,204723,1),		/* Splendid Bright Lantern */
(1,6,4, -1, 15,2,0,204777,1),		/* Twelve-color Spice Cabinet */
(1,6,4, -1, 7,1,0,204759,1),		/* Rich Golden Vase */

-- Cabinets
(1,6,5, -1, 15,2,0,201493,1),		/* Antique Dresser */
(1,6,5, -1, 25,3,0,201475,1),		/* Bar Cabinet */
(1,6,5, -1, 15,2,0,201472,1),		/* Tall Engraved Wooden Cabinet */
(1,6,5, -1, 15,2,0,201477,1),		/* Exquisite Engraved Wooden Cabinet */
(1,6,5, -1, 15,2,0,201478,1),		/* Double Door Wood Pattern Cabinet */
(1,6,5, -1, 25,3,0,201480,1),		/* Superior Floor Cabinet */
(1,6,5, -1, 25,3,0,201370,1),		/* Marble Magic Cabinet */
(1,6,5, -1, 25,3,0,201369,1),		/* Magic Cabinet of Revelation */
(1,6,5, -1, 15,2,0,201511,1),		/* Simple Storage Cabinet */
(1,6,5, -1, 15,2,0,201512,1),		/* Classical Engraved Cabinet */
(1,6,5, -1, 7,1,0,201359,1),		/* Double-door Wooden Kitchen Cabinet */
(1,6,5, -1, 7,1,0,201471,1),		/* Engraved Wooden Cabinet */
(1,6,5, -1, 7,1,0,201473,1),		/* Multilevel Engraved Wooden Cabinet */
(1,6,5, -1, 7,1,0,201474,1),		/* Tall Double Door Kitchen Cabinet */
(1,6,5, -1, 5,1,0,201476,1),		/* Elegant Wooden Cabinet */
(1,6,5, -1, 10,2,0,201479,1),		/* Short Combination Cabinet */
(1,6,5, -1, 25,3,0,201517,1),		/* Elegant Two-door Wardrobe */
(1,6,5, -1, 15,2,0,201514,1),		/* Short Exquisite Engraved Wooden Cabinet */
(1,6,5, -1, 15,2,0,201471,1),		/* Engraved Wooden Cabinet */
(1,6,5, -1, 25,3,0,201516,1),		/* Classic Engraved Wood Two-door Wardrobe */
(1,6,5, -1, 15,2,0,204688,1),		/* Cool-Colored Checkered Carpet */
(1,6,5, -1, 25,3,0,201515,1),		/* Short Splendid Totem Cabinet */



-- Fireplaces
(1,6,6, -1, 25,3,0,201410,1),		/* Aristocratic Engraved Fireplace */
(1,6,5, -1, 35,4,0,201422,1),		/* White Roses Stone Fireplace */
(1,6,5, -1, 45,5,0,201424,1),		/* Classical Stone Fireplace */
(1,6,5, -1, 35,4,0,201423,1),		/* Elegant Romance Wooden Fireplace */
(1,6,5, -1, 45,5,0,201421,1),		/* Royal Stone Fireplace */
(1,6,5, -1, 15,2,0,201418,1),		/* Safty Fireplace */
(1,6,5, -1, 15,2,0,201419,1),		/* Fire Pit Heater */


-- Plants
(1, 6, 7, -1, 7,1,0,201380,1),		/* Checkered Pot Plant */
(1, 6, 7, -1, 5,1,0,201375,1),		/* Marble Pot Plant */
(1, 6, 7, -1, 5,1,0,201377,1),		/* Twin-ringed Pot Plant */
(1, 6, 7, -1, 7,1,0,201379,1),		/* Glazed Pot Plant */
(1, 6, 7, -1, 7,1,0,201371,1),		/* Potted Sago Palm */
(1, 6, 7, -1, 10,2,0,201372,1),		/* Folksy Potted Plant */
(1, 6, 7, -1, 7,1,0,201373,1),		/* Primitive Stone Pot Plant */
(1, 6, 7, -1, 7,1,0,201374,1),		/* Limestone Pot Plant */
(1, 6, 7, -1, 7,1,0,201376,1),		/* Potted Floor Plant */
(1, 6, 7, -1, 7,1,0,201378,1),		/* Square Pot Plant */
(1, 6, 7, -1, 7,1,0,205715,1),		/* Giant Flower Cactus Pot */
(1, 6, 7, -1, 20,4,0,203901,1),		/* Passionate Long-Legged Plant Pot */
(1, 6, 7, -1, 20,4,0,203903,1),		/* Blue Stone Hexagonal Plant Pot */
(1, 6, 7, -1, 20,4,0,203907,1),		/* Tenochtitlan Gold Pot */
(1, 6, 7, -1, 20,4,0,203909,1),		/* Blue Dream Plant Pot */
(1, 6, 7, -1, 20,4,0,203910,1),		/* Incan Magic Pot */
(1, 6, 7, -1, 10,2,0,204253,1),		/* Tall Winter Plant Pot */
(1, 6, 7, -1, 10,2,0,204254,1),		/* Tall Autumn Plant Pot */
(1, 6, 7, -1, 10,2,0,204255,1),		/* Tall Green Plant Pot */
(1, 6, 7, -1, 7,1,0,203834,1),		/* Modern Landscaping Plant Pot */
(1, 6, 7, -1, 7,1,0,203835,1),		/* Elegant Square Plant Pot */
(1, 6, 7, -1, 7,1,0,203837,1),		/* Totem Plant Pot */
(1, 6, 7, -1, 7,1,0,203838,1),		/* Large Mayan Plant Pot */


-- Carpets

(1, 6, 8, -1, 15,2,0,204693,1),		/* Elegant Floral Carpet */
(1, 6, 8, -1, 25,3,0,204706,1),		/* Black Totem Carpet */
(1, 6, 8, -1, 25,3,0,204713,1),		/* Round Rug of Carpet */
(1, 6, 8, -1, 25,3,0,204708,1),		/* Water-colored Wide Carpet */
(1, 6, 8, -1, 15,2,0,204690,1),		/* Warm Fleece Carpet */
(1, 6, 8, -1, 25,3,0,204691,1),		/* Aristocratic Red Checkered Fleece Carpet */
(1, 6, 8, -1, 25,3,0,204692,1),		/* Deep-red Flower Fleece Carpet */
(1, 6, 8, -1, 15,2,0,201365,1),		/* Four-leaf Knights Fleece Carpet */
(1, 6, 8, -1, 15,2,0,201362,1),		/* Quality Fleece Carpet */
(1, 6, 8, -1, 7,1,0,201297,1),		/* Simple Carpet */
(1, 6, 8, -1, 10,2,0,201361,1),		/* Sun and Stars Carpet */
(1, 6, 8, -1, 15,2,0,204709,1),		/* Oriental Wide Woolen Carpet */
(1, 6, 8, -1, 15,2,0,204707,1),		/* Patterned Wide Carpet */
(1, 6, 8, -1, 20,2,0,204711,1),		/* Deep-red Flower Long Carpet */
(1, 6, 8, -1, 15,2,0,206506,1),		/* Elegant Purple Carpet */
(1, 6, 8, -1, 15,2,0,204695,1),		/* Mysterious Traditional Carpet */
(1, 6, 8, -1, 15,2,0,204712,1),		/* Patterned Long Carpet */
(1, 6, 8, -1, 15,2,0,204689,1),		/* High-class Embroidered Carpet */
(1, 6, 8, -1, 20,2,0,204718,1),		/* Small Set of Patterned Carpet */
(1, 6, 8, -1, 20,2,0,206508,1),		/* Long Classic Snowflake Festival Carpet */
(1, 6, 8, -1, 15,2,0,204701,1),		/* Fashionable Blue Knitted Carpet */
(1, 6, 8, -1, 15,2,0,204697,1),		/* Oriental Carpet */
(1, 6, 8, -1, 20,2,0,204698,1),		/* Pink and Green Carpet */
(1, 6, 8, -1, 15,2,0,204696,1),		/* Red Embroidered Carpet */
(1, 6, 8, -1, 15,2,0,204714,1),		/* Simple but Elegant Patterend Round Rug */
(1, 6, 8, -1, 15,1,0,204715,1),		/* Light-orange Spring Round Rug */
(1, 6, 8, -1, 15,2,0,204716,1),		/* Red Checkered Round Carpet with Intriguing Symbols */
(1, 6, 8, -1, 20,2,0,204717,1),		/* Set of Patterned Carpet */
(1, 6, 8, -1, 15,2,0,204705,1),		/* Simple Woven Carpet */
(1, 6, 8, -1, 15,2,0,204694,1),		/* Simple Traditional Carpet */
(1, 6, 8, -1, 15,2,0,204710,1),		/* Summer Knitted Carpet */
(1, 6, 8, -1, 20,2,0,206507,1),		/* Starry Sky Carpet */
(1, 6, 8, -1, 15,2,0,204710,1),		/* Summer Knitted Carpet */
(1, 6, 8, -1, 20,2,0,206507,1),		/* Starry Sky Carpet */
(1, 6, 8, -1, 15,2,0,204702,1),		/* Forrest-green Flower Garden Carpet */
(1, 6, 8, -1, 15,2,0,204699,1),		/* Warm Knitted Carpet */
(1, 6, 8, -1, 15,2,0,204704,1),		/* Splendid Woven Carpet */
(1, 6, 8, -1, 15,2,0,204700,1),		/* Splendid Wine-colored Fleece Carpet */
(1, 6, 8, -1, 15,2,0,204733,1),		/* Rich Ornamental Platter */


-- Sub Guild Furnitures
(1, 6, 9, -1, 75,9,0,203928,1),		/* Majestic Water Fountain */
(1, 6, 9, -1, 50,7,0,203927,1),		/* Gorgeous Water Fountain */
(1, 6, 9, -1, 35,5,0,203926,1),		/* Big Water Fountain */
(1, 6, 9, -1, 20,4,0,203925,1),		/* Scenic Water Fountain */
(1, 6, 9, -1, 10,2,0,203929,1),		/* Hero Statue */
(1, 6, 9, -1, 10,2,0,203930,1),		/* Warlock Statue */
(1, 6, 9, -1, 10,2,0,203931,1),		/* Sage Statue */
(1, 6, 9, -1, 10,2,0,203932,1),		/* Angel Girl Statue */
(1, 6, 9, -1, 10,2,0,203933,1),		/* Little Demon Statue */
(1, 6, 9, -1, 10,2,0,203934,1),		/* Masked Witch Statue */
(1, 6, 9, -1, 100,20,0,208208,1),	/* Statue of Sirloth (Big) */
(1, 6, 9, -1, 10,2,0,204773,1),		/* Head Statue Remains */

-- Sub Guild Resources
(1, 6, 10, -1, 49,5,0,207932,1),		/* Flawless Ruby */
(1, 6, 10, -1, 17,3,0,207326,1),		/* Nightmare Essence */
(1, 6, 10, -1, 175,30,0,207328,1),	/* Original Sin Essence */
(1, 6, 10, -1, 17,3,0,207330,1),		/* Wisdom Core */
(1, 6, 10, -1, 175,30,0,207332,1),	/* Soul Core */
(1, 6, 10, -1, 88,15,0,207331,1),	/* Power Core */
(1, 6, 10, -1, 17,3,0,207329,1),		/* Dauntless Core */

-- Sub House Contracts
(1, 6, 11, -1, 95,16,0,205417,1),		/* Contract for a Two-Story Mud House */
(1, 6, 11, -1, 95,16,0,206130,1),		/* Contract for a Two-Story Wooden Family House */
(1, 6, 11, -1, 95,16,0,203073,1),		/* Contract for a Elegant Two-Story Wooden House */
(1, 6, 11, -1, 95,16,0,205859,1),		/* Elegant Hotel Contract  */
(1, 6, 11, -1, 95,16,0,205585,1),		/* Expansive Luxury Villa Contract  */
(1, 6, 11, -1, 95,16,0,206129,1),		/* Luxurios Two-Story Wooden House with Basement Contract  */


/* *** Pets *** */

-- Pet Eggs
(1, 7, 1, 1, 378,37,0,241349,1),		/* Summoning Stone - Legendary Gemini Pet  */
(1, 7, 1, 1, 195,40,0,241348,1),		/* Summoning Stone - Adult Gemini Pet  */
(1, 7, 1, 1, 195,40,0,241501,1),		/* Summoning Stone - Adult Libra Pet  */
(1, 7, 1, 1, 195,40,0,241513,1),		/* Summoning Stone - Adult Aquarius Pet  */
(1, 7, 1, 1, 195,40,0,241518,1),		/* Summoning Stone - Adult Aries Pet  */
(1, 7, 1, 1, 195,40,0,241445,1),		/* Summoning Stone - Adult Cancer Pet  */
(1, 7, 1, 1, 195,40,0,241448,1),		/* Summoning Stone - Adult Leo Pet  */
(1, 7, 1, 1, 195,40,0,241515,1),		/* Summoning Stone - Adult Pisces Pet  */
(1, 7, 1, 1, 195,40,0,241507,1),		/* Summoning Stone - Adult Sagittarius Pet  */
(1, 7, 1, 1, 195,40,0,241504,1),		/* Summoning Stone - Adult Scorpio Pet  */
(1, 7, 1, 1, 195,40,0,241498,1),		/* Summoning Stone - Adult Virgo Pet  */
(1, 7, 1, 1, 195,40,0,241510,1),		/* Summoning Stone - Adult Capricorn Pet  */
(1, 7, 1, 1, 195,40,0,241521,1),		/* Summoning Stone - Adult Taurus Pet  */
(1, 7, 1, 1, 378,37,0,241523,1),		/* Summoning Stone - Legendary Aquarius Pet  */
(1, 7, 1, 1, 378,37,0,241519,1),		/* Summoning Stone - Legendary Aries Pet  */
(1, 7, 1, 1, 378,37,0,241446,1),		/* Summoning Stone - Legendary Cancer Pet  */
(1, 7, 1, 1, 378,37,0,241511,1),		/* Summoning Stone - Legendary Capricorn Pet  */
(1, 7, 1, 1, 378,37,0,241449,1),		/* Summoning Stone - Legendary Leo Pet  */
(1, 7, 1, 1, 378,37,0,241502,1),		/* Summoning Stone - Legendary Libra Pet  */
(1, 7, 1, 1, 378,37,0,241516,1),		/* Summoning Stone - Legendary Pisces Pet  */
(1, 7, 1, 1, 378,37,0,241508,1),		/* Summoning Stone - Legendary Sagittarius Pet  */
(1, 7, 1, 1, 378,37,0,241505,1),		/* Summoning Stone - Legendary Scorpio Pet  */
(1, 7, 1, 1, 378,37,0,241522,1),		/* Summoning Stone - Legendary Taurus Pet  */
(1, 7, 1, 1, 378,37,0,241499,1),		/* Summoning Stone - Legendary Virgo Pet  */
(1, 7, 1, 1, 195,40,0,241347,1),		/* Summoning Stone - Newborn Gemini Pet  */
(1, 7, 1, 1, 195,40,0,241444,1),		/* Summoning Stone - Newborn Cancer Pet  */
(1, 7, 1, 1, 195,40,0,241447,1),		/* Summoning Stone - Newborn Leo Pet  */
(1, 7, 1, 1, 195,40,0,241497,1),		/* Summoning Stone - Newborn Virgo Pet  */
(1, 7, 1, 1, 195,40,0,241500,1),		/* Summoning Stone - Newborn Libra Pet  */
(1, 7, 1, 1, 195,40,0,241503,1),		/* Summoning Stone - Newborn Scorpio Pet  */
(1, 7, 1, 1, 195,40,0,241506,1),		/* Summoning Stone - Newborn Sagittarius Pet  */
(1, 7, 1, 1, 195,40,0,241509,1),		/* Summoning Stone - Newborn Capricorn Pet  */
(1, 7, 1, 1, 195,40,0,241512,1),		/* Summoning Stone - Newborn Aquarius Pet  */
(1, 7, 1, 1, 195,40,0,241514,1),		/* Summoning Stone - Newborn Pisces Pet  */
(1, 7, 1, 1, 195,40,0,241517,1),		/* Summoning Stone - Newborn Aries Pet  */
(1, 7, 1, 1, 195,40,0,241520,1),		/* Summoning Stone - Newborn Taurus Pet  */

-- Sub Normal Pets
(1, 7, 1, 2, 95,20,0,203244,1),		/* Pink Ball - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,205747,1),		/* Little Demon - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,205743,1),		/* Little Angel - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,203228,1),		/* Little Giant - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,203241,1),		/* Newt - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,203242,1),		/* Goblin - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,203243,1),		/* Wolf Cub - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,203273,1),		/* Black Boar - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,208716,1),		/* YOOHOO Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,207736,1),		/* Tomasso - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,241006,1),		/* Stormforce Snowman - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,208721,1),		/* PAMMEE - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,206024,1),		/* Golden Ostrich - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,241219,1),		/* Magic Technician - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,243274,1),		/* Berserker Little Giant - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,206177,1),		/* Weeping Coast Lakoso - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,243271,1),		/* Rock n Roll Little Giant - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,242495,1),		/* Treasure Box Monster - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,242365,1),		/* Jazz Musician Cat - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,241762,1),		/* Fairytale Tonton Sheep - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,241759,1),		/* Fairytale Cotton Sheep - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,208726,1),		/* ROODEE Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,208756,1),		/* CHEWOO - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,208761,1),		/* LEMMEE- Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,203229,1),		/* Little Pumpkin - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,204102,1),		/* Frog - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,204103,1),		/* Red Frog - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,205675,1),		/* Little Goat of War - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,207091,1),		/* Boca - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,207094,1),		/* Ice Lizard - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,207710,1),		/* Little Footie - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,208455,1),		/* Little Frost - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,208460,1),		/* Little Snowman King - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,208649,1),		/* Permanent Wicked Ballon Monster Pet Egg  */
(1, 7, 1, 2, 95,20,0,209546,1),		/* Wabbit - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,209547,1),		/* Black Wabbit - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,209548,1),		/* Brown Wabbit - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,209549,1),		/* Spotted Wabbit - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,241007,1),		/* Festival Snowman - Pet Egg (Permanent)  */

(1, 7, 1, 2, 95,20,0,241233,1),		/* Sacred Ice Crystal Julu - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,241236,1),		/* Breaking Dawn Julu - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,241239,1),		/* Exuberant Celebration Julu - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,241242,1),		/* Greenfeather Sparrow Julu - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,241765,1),		/* Fairytale Angry Sheep - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,241837,1),		/* Pankster 300 - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,241842,1),		/* Cerberus - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,241971,1),		/* Romance Elemental - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,241972,1),		/* True Love Crystal - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,242009,1),		/* Gift Snowman - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,242010,1),		/* Piper Snowman - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,242011,1),		/* Drummer Snowman - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,242362,1),		/* Latin Musician Cat - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,241220,1),		/* Intoxicated Kobold - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,203216,1),		/* Gryphon - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,205853,1),		/* Sand Manticore - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,205854,1),		/* Dune Manticore - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,205855,1),		/* Fire Manticore - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,205856,1),		/* Flame Manticore - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,205857,1),		/* Indigo Manticore - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,205858,1),		/* Ruby Manticore - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,207101,1),		/* Golden Marmoset - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,207104,1),		/* Tropical Toucan - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,208463,1),		/* Gingerbread Man - Pet Egg (Permanent)  */


-- Pets with Buff
(1, 7, 1, 3, 95,20,0,208734,1),		/* Dune Manticore - Pet Egg (Permanent)  */
(1, 7, 1, 3, 95,20,0,208535,1),		/* Loyal Golden Marmoset - Pet Egg (Permanent)  */
(1, 7, 1, 3, 95,20,0,209644,1),		/* Red Monarch - Pet Egg (Permanent)  */
(1, 7, 1, 3, 95,20,0,208743,1),		/* Eggshell Julu - Pet Egg (Permanent)  */
(1, 7, 1, 3, 95,20,0,208537,1),		/* Loyal Little Death - Pet Egg (Permanent)  */
(1, 7, 1, 3, 95,20,0,241380,1),		/* Red Note Cavy - Pet Egg (Permanent)  */
(1, 7, 1, 3, 95,20,0,241381,1),		/* Blue Note Cavy - Pet Egg (Permanent)  */
(1, 7, 1, 3, 95,20,0,204108,1),		/* Nayarimah - Pet Egg (Permanent)  */
(1, 7, 1, 3, 95,20,0,240914,1),		/* Pumpkin Little Death - Pet Egg (Permanent)  */
(1, 7, 1, 3, 95,20,0,209642,1),		/* Darkmurmur - Pet Egg (Permanent)  */
(1, 7, 1, 3, 95,20,0,240913,1),		/* Moonshadow Black Kitten - Pet Egg (Permanent)  */
(1, 7, 1, 3, 95,20,0,240915,1),		/* Devils Little Helper - Pet Egg (Permanent)  */
(1, 7, 1, 3, 95,20,0,203284,1),		/* Icy Horned Lion - Pet Egg (Permanent)  */
(1, 7, 1, 3, 95,20,0,208530,1),		/* Loyal Little Goat of War - Pet Egg (Permanent)  */
(1, 7, 1, 3, 95,20,0,208532,1),		/* Loyal Little Demon - Pet Egg (Permanent)  */
(1, 7, 1, 3, 95,20,0,208533,1),		/* Loyal Pink Ball - Pet Egg (Permanent)  */
(1, 7, 1, 3, 95,20,0,208534,1),		/* Loyal Orange Ball - Pet Egg (Permanent)  */
(1, 7, 1, 3, 95,20,0,208536,1),		/* Loyal Tropical Toucan - Pet Egg (Permanent)  */
(1, 7, 1, 3, 95,20,0,208742,1),		/* Moonspirit Wabbit - Pet Egg (Permanent)  */
(1, 7, 1, 3, 95,20,0,207735,1),		/* Greywolf - Pet Egg (Permanent)  */
(1, 7, 1, 3, 95,20,0,208741,1),		/* Frog Prince - Pet Egg (Permanent)  */
(1, 7, 1, 3, 95,20,0,204826,1),		/* Boca - Pet Egg (Permanent)  */
(1, 7, 1, 3, 95,20,0,205683,1),		/* Strong Boca - Pet Egg (Permanent)  */
(1, 7, 1, 3, 95,20,0,240182,1),		/* Evil Teddy Bear - Pet Egg (Permanent)  */
(1, 7, 1, 3, 95,20,0,240183,1),		/* Soul Eater clown - Pet Egg (Permanent)  */
(1, 7, 1, 3, 95,20,0,240184,1),		/* Fireboot Warrior - Pet Egg (Permanent)  */
(1, 7, 1, 3, 95,20,0,240185,1),		/* Fireboot Priest - Pet Egg (Permanent)  */
(1, 7, 1, 3, 95,20,0,240512,1),		/* Smirking Clown - Pet Egg (Permanent)  */
(1, 7, 1, 3, 95,20,0,240513,1),		/* Filthy Soul Corpse - Pet Egg (Permanent)  */
(1, 7, 1, 3, 95,20,0,240728,1),		/* Fungus Pet - Pet Egg */
(1, 7, 1, 3, 95,20,0,241173,1),		/* Mini Flower Cactus - Pet Egg (Permanent)  */
(1, 7, 1, 3, 95,20,0,242200,1),		/* Little Jumping Flower - Pet Egg (Permanent)  */
(1, 7, 1, 3, 95,20,0,208531,1),		/* Loyal Little Angel - Pet Egg (Permanent)  */
(1, 7, 1, 3, 95,20,0,208733,1),		/* Sand Manticore - Pet Egg (Permanent)  */
(1, 7, 1, 3, 95,20,0,208735,1),		/* Fire Manticore - Pet Egg (Permanent)  */
(1, 7, 1, 3, 95,20,0,208736,1),		/* Flame Manticore - Pet Egg (Permanent)  */
(1, 7, 1, 3, 95,20,0,208737,1),		/* Ruby Manticore - Pet Egg (Permanent)  */
(1, 7, 1, 3, 95,20,0,208738,1),		/* Golden Ostrich - Pet Egg (Permanent)  */

-- Sub Others
(1, 7, 1, 4, 95,10,0,207583,1),		/* Aurora Pet Egg */
(1, 7, 1, 4, 95,10,0,207584,1),		/* Aurora Pet Egg */


-- /* Pet System */

-- Transformation
(1, 7, 2, 1,20,4,0,207578,1),		/* Cat-Errant Transformation Potion */
(1, 7, 2, 1,20,4,0,207579,1),		/* Fungus Transformation Potion */
(1, 7, 2, 1,20,4,0,207580,1),		/* Parrot Transformation Potion */
(1, 7, 2, 1,20,4,0,207587,1),		/* Little White Wabbit Transformation Potion */
(1, 7, 2, 1,20,4,0,207588,1),		/* Little Black Wabbit Transformation Potion */
(1, 7, 2, 1,20,4,0,207589,1),		/* Little Brown Wabbit Transformation Potion */
(1, 7, 2, 1,20,4,0,208492,1),		/* Lulu Transformation Potion */
(1, 7, 2, 1,20,4,0,208493,1),		/* Hill Bear Cub Transformation Potion */
(1, 7, 2, 1,20,4,0,208494,1),		/* Hawk Transformation Potion */
(1, 7, 2, 1,20,4,0,208495,1),		/* Kipos Transformation Potion */
(1, 7, 2, 1,20,4,0,208496,1),		/* Ystra Snow Ferret Transformation Potion */
(1, 7, 2, 1,20,4,0,208497,1),		/* Shaggy Snow Bear Transformation Potion */
(1, 7, 2, 1,20,4,0,208498,1),		/* Kal Turok King Myrmex Transformation Potion */
(1, 7, 2, 1,20,4,0,208499,1),		/* Kal Turok Termite Transformation Potion */
(1, 7, 2, 1,20,4,0,208500,1),		/* Forest Leopard Transformation Potion */
(1, 7, 2, 1,20,4,0,208501,1),		/* Rainbow Falcon Transformation Potion */
(1, 7, 2, 1,20,4,0,208502,1),		/* Big Kuman Transformation Potion */
(1, 7, 2, 1,20,4,0,208503,1),		/* Rainforest Hunter Transformation Potion */
(1, 7, 2, 1,20,4,0,208504,1),		/* Executioner Puppet Transformation Potion */
(1, 7, 2, 1,20,4,0,208505,1),		/* Savage Giant Wolf Transformation Potion */
(1, 7, 2, 1,20,4,0,208506,1),		/* Ice Plain Sabretooth Tiger Transformation Potion */
(1, 7, 2, 1,20,4,0,208507,1),		/* Snowman Transformation Potion */
(1, 7, 2, 1,20,4,0,208508,1),		/* Little Snowman King Transformation Potion */
(1, 7, 2, 1,20,4,0,208509,1),		/* Transformation Potion - Blue-Eyed Speckled Rabbit */
(1, 7, 2, 1,20,4,0,208510,1),		/* Nunu Transformation Potion */
(1, 7, 2, 1,20,4,0,208511,1),		/* Pingou Transformation Potion */
(1, 7, 2, 1,20,4,0,240186,1),		/* Evil Teddy Bear Transformation Potion */
(1, 7, 2, 1,20,4,0,240187,1),		/* Soul-Eater Clown Transformation Potion */
(1, 7, 2, 1,20,4,0,240188,1),		/* Fireboot Warrior Transformation Potion */
(1, 7, 2, 1,20,4,0,240189,1),		/* Fireboot Priest Transformation Potion */
(1, 7, 2, 1,20,4,0,240190,1),		/* Nocturnal Zombie Transformation Potion */
(1, 7, 2, 1,20,4,0,204227,1),		/* Jonesy's Transformation Potion */


-- Sub Others
(1, 7, 2, 2, 35,6,0,204513,1),		/* Breeding Slot Ticket */
(1, 7, 2, 2, 35,6,0,204922,1),		/* Pet Pair Merging Ticket */
(1, 7, 2, 2, 5,1,0,204231,999),		/* Lightweight Spade */
(1, 7, 2, 2, 5,1,0,204233,1),		/* Lightweight Hatchet */
(1, 7, 2, 2, 5,1,0,204229,1),		/* Lightweight Hoe */
(1, 7, 2, 2, 10,1,0,231885,1),		/* Pet Experiece Chamr */
(1, 7, 2, 2, 79,8,205295,231885,8),		/* Breeding Slot Ticket */

-- Sub Pet Consume
(1, 7, 3, -1,20,3,205278,204510,1),		/* Dessert of Happiness */
(1, 7, 3, -1,25,5,0,204511,1),			/* Favorite Meal */
(1, 7, 3, -1,20,3,205278,204925,1),		/* Nutritious Cheese */
(1, 7, 3, -1,20,3,205278,204924,1),		/* Low-Fat Goat's Milk */
(1, 7, 3, -1,20,3,205278,204234,1),		/* Beef Skewer */
(1, 7, 3, -1,20,3,0,204515,1),			/* Neutralization Bar */
(1, 7, 3, -1,240,50,0,207575,99),		/* Powerful Pet Growth Potion */
(1, 7, 3, -1,20,3,0,207576,1),			/* Enhancement Potion */
(1, 7, 3, -1,20,3,0,231885,1),			/* Pet Experiece Charm */
(1, 7, 3, -1,99,15,0,207582,1),			/* Magic Perfume (1 day) */
(1, 7, 3, -1,999,140,0,209529,1),		/* Magic Perfume (30 day) */



-- /* Mounts */

-- 7 Days - Multi-Passender
(1, 8, 1, 1,35,5,0,208700,1),		/* Damnation Bunga Mount (7 day) */
(1, 8, 1, 1,35,5,0,241934,1),		/* Drag-4000 Mount (7 day) */
(1, 8, 1, 1,35,5,0,207569,1),		/* Overlord Ankylar Mount (7 day) */
(1, 8, 1, 1,35,5,0,241937,1),		/* Little Demon Mount (7 day) */
(1, 8, 1, 1,35,5,0,241997,1),		/* Snowflake Sleigh Bear Mount (7 day) */
(1, 8, 1, 1,35,5,0,208691,1),		/* Thunder Hippogriff Mount (7 day) */
(1, 8, 1, 1,35,5,0,206934,1),		/* Storm Hippogriff Mount (7 day) */
(1, 8, 1, 1,35,5,0,207563,1),		/* Giant Eagle Mount (7 day) */

-- 7 days - Single Passenger
(1, 8, 1, 2,28,4,0,207853,1),		/* Thunder War Tiger Mount in a Bag (7 day) */
(1, 8, 1, 2,28,4,0,207852,1),		/* Flame War Tiger Mount in a Bag (7 day) */
(1, 8, 1, 2,28,4,0,203331,1),		/* Fire Ostrich Mount in a Bag (7 day) */
(1, 8, 1, 2,28,4,0,203321,1),		/* Ostrich Mount in a Bag (7 day) */
(1, 8, 1, 2,28,4,0,204288,1),		/* Wild Lion King Mount in a Bag (7 day) */
(1, 8, 1, 2,28,4,0,204290,1),		/* Night Lion King Mount in a Bag (7 day) */
(1, 8, 1, 2,28,4,0,203332,1),		/* Blood Ostrich Mount in a Bag (7 day) */
(1, 8, 1, 2,28,4,0,203333,1),		/* Golden Ostrich Mount in a Bag (7 day) */
(1, 8, 1, 2,28,4,0,207895,1),		/* Mammoth Mount with Steel Armor (7 day) */
(1, 8, 1, 2,28,4,0,206201,1),		/* Mammoth mount with woodeen Armor (7 day) */
(1, 8, 1, 2,28,4,0,207849,1),		/* Black Warhorse in a Bag (7 day) */
(1, 8, 1, 2,28,4,0,207848,1),		/* White horse in a Bag (7 day) */
(1, 8, 1, 2,18,4,0,202232,1),		/* Black Horse (7 day) */
(1, 8, 1, 2,18,4,0,202246,1),		/* Brown Horse (7 day) */
(1, 8, 1, 2,18,4,0,203326,1),		/* Piebald horse in a Bag (7 day) */
(1, 8, 1, 2,18,4,0,207856,1),		/* Golden Ostrich Mount in a Bag (7 day) */
(1, 8, 1, 2,18,4,0,204961,1),		/* Grey Rhinoceros Mount (7 day) */
(1, 8, 1, 2,18,4,0,204964,1),		/* Grassland Rhinoceros Mount (7 day) */
(1, 8, 1, 2,18,4,0,204967,1),		/* Wisdom Rhinoceros Mount (7 day) */
(1, 8, 1, 2,30,5,0,202475,1),		/* Purple Berhu Mount (7 day) */
(1, 8, 1, 2,30,5,0,202477,1),		/* Red Armored Berhu Mount (7 day) */
(1, 8, 1, 2,30,5,0,202478,1),		/* Fiery Berhu Mount (7 day) */
(1, 8, 1, 2,30,5,0,203563,1),		/* Wild Horned Lion Mount (7 day) */
(1, 8, 1, 2,18,4,0,204278,1),		/* Black Rhinoceros Mount (7 day) */
(1, 8, 1, 2,18,4,0,204970,1),		/* White Rhinoceros Mount (7 day) */
(1, 8, 1, 2,30,5,0,204934,1),		/* Red Mane Boar Mount (7 day) */
(1, 8, 1, 2,30,5,0,204937,1),		/* Golden Mane Boar Mount (7 day) */
(1, 8, 1, 2,30,5,0,204946,1),		/* Piebald Boar Mount (7 day) */
(1, 8, 1, 2,30,5,0,204952,1),		/* Striped Boar Mount (7 day) */
(1, 8, 1, 2,30,5,0,204955,1),		/* Flame Boar Mount (7 day) */
(1, 8, 1, 2,30,5,0,204958,1),		/* Yellow Mane Boar Mount (7 day) */
(1, 8, 1, 2,30,5,0,203285,1),		/* Green dragonfang ice beast Mount (7 day) */
(1, 8, 1, 2,30,5,0,204083,1),		/* Sea of snow berhu cub Mount (7 day) */
(1, 8, 1, 2,30,5,0,204142,1),		/* Golden Armored Berhu Cub Mount (7 day) */
(1, 8, 1, 2,30,5,0,204143,1),		/* Red Armored Berhu cub Mount (7 day) */
(1, 8, 1, 2,30,5,0,206204,1),		/* Red Bunga Mount (7 day) */
(1, 8, 1, 2,30,5,0,206207,1),		/* Purple Bunga Mount (7 day) */
(1, 8, 1, 2,30,5,0,206239,1),		/* Drag-3000 Mount (7 day) */
(1, 8, 1, 2,30,5,0,202471,1),		/* Dark Shadow Ferret Mount (7 day) */
(1, 8, 1, 2,30,5,0,206715,1),		/* Phantom ferret mount (7 day) */
(1, 8, 1, 2,30,5,0,206718,1),		/* Dawn ferret mount (7 day) */
(1, 8, 1, 2,30,5,0,206949,1),		/* Ancient Mammoth mount (7 day) */
(1, 8, 1, 2,30,5,0,207509,1),		/* Bighorn Boshi Mount (7 day) */
(1, 8, 1, 2,30,5,0,207512,1),		/* red-eyed bull mount (7 day) */
(1, 8, 1, 2,30,5,0,207537,1),		/* Speckled jaguar mount (7 day) */
(1, 8, 1, 2,30,5,0,207540,1),		/* hunting night pard mount (7 day) */
(1, 8, 1, 2,30,5,0,207543,1),		/* dark night pard mount (7 day) */
(1, 8, 1, 2,30,5,0,207558,1),		/* Snow-white war bear mount (7 day) */
(1, 8, 1, 2,30,5,0,208570,1),		/* swift raptor mount (7 day) */
(1, 8, 1, 2,30,5,0,208695,1),		/* Thunder ostrich mount (7 day) */
(1, 8, 1, 2,30,5,0,209964,1),		/* magic wabbit mount (7 day) */
(1, 8, 1, 2,30,5,0,209961,1),		/* wabbit mount (7 day) */
(1, 8, 1, 2,30,5,0,209480,1),		/* little demon 2000 mount (7 day) */
(1, 8, 1, 2,30,5,0,206556,1),		/* purgatory nightmare mount (7 day) */
(1, 8, 1, 2,30,5,0,206559,1),		/* infernal nightmare mount (7 day) */
(1, 8, 1, 2,30,5,0,206562,1),		/* evilblood nightmare mount (7 day) */
(1, 8, 1, 2,30,5,0,206568,1),		/* golden nightmare mount (7 day) */
(1, 8, 1, 2,30,5,0,207531,1),		/* Forest Alpaca mount (7 day) */
(1, 8, 1, 2,30,5,0,207528,1),		/* Snow alpaca mount (7 day) */
(1, 8, 1, 2,30,5,0,207534,1),		/* highland alpaca mount (7 day) */
(1, 8, 1, 2,30,5,0,240036,1),		/* Spinel chimera mount (7 day) */
(1, 8, 1, 2,30,5,0,240081,1),		/* Sapphire chimera mount (7 day) */
(1, 8, 1, 2,30,5,0,240086,1),		/* jasper chimera mount (7 day) */
(1, 8, 1, 2,30,5,0,240499,1),		/* rune beetle mount (7 day) */
(1, 8, 1, 2,30,5,0,241620,1),		/* spirit sharptooth mount(7 day) */
(1, 8, 1, 2,30,5,0,204998,1),		/* black pegasus mount (7 day) */

-- /* 30 days */
-- multi-passenger
(1, 8, 2, 1,85,20,0,209501,1),		/* Dagger Skeleton mount (30 day) */
(1, 8, 2, 1,80,15,0,206714,1),		/* star in a bag (30 day) */
(1, 8, 2, 1,80,15,0,206712,1),		/* Flame in a bag (30 day) */
(1, 8, 2, 1,80,15,0,206598,1),		/* steel-flame warhorse in a bag (30 day) */
(1, 8, 2, 1,80,15,0,206943,1),		/* ground gryphon mount in a bag (30 day) */
(1, 8, 2, 1,80,15,0,207570,1),		/* overlord ankylar mount (30 day) */
(1, 8, 2, 1,80,15,0,241998,1),		/* snowflake sleigh bear mount (30 day) */
(1, 8, 2, 1,80,15,0,208693,1),		/* thunder hippogriff mount (30 day) */
(1, 8, 2, 1,80,15,0,206935,1),		/* storm hippogriff mount (30 day) */
(1, 8, 2, 1,80,15,0,207564,1),		/* giant eagle mount (30 day) */

-- Single passenger
(1, 8, 2, 2,75,13,0,202482,1),		/* golden ostrich mount (30 day) */
(1, 8, 2, 2,75,13,0,206197,1),		/* Mammoth Mount with Steel amror mount (30 day) */
(1, 8, 2, 2,75,13,0,209494,1),		/* flame war tiger mount in a bag (30 day) */
(1, 8, 2, 2,75,13,0,209497,1),		/* thunder war tiger mount in a bag (30 day) */
(1, 8, 2, 2,75,13,0,203298,1),		/* ostrich mount in a bage (30 day) */
(1, 8, 2, 2,75,13,0,204289,1),		/* wild lion king mount in a bag (30 day) */
(1, 8, 2, 2,75,13,0,204291,1),		/* night lion king mount in a bag (30 day) */
(1, 8, 2, 2,75,13,0,207828,1),		/* black warhorse in a bag (30 day) */
(1, 8, 2, 2,75,13,0,207829,1),		/* white warhorse in a bag (30 day) */
(1, 8, 2, 2,75,13,0,207827,1),		/* white horse in a bag (30 day) */
(1, 8, 2, 2,75,13,0,207826,1),		/* black horse in a bag (30 day) */
(1, 8, 2, 2,75,13,0,203296,1),		/* brown horse in a bag (30 day) */
(1, 8, 2, 2,75,13,0,207830,1),		/* piebald horse in a bag (30 day) */
(1, 8, 2, 2,75,13,0,206200,1),		/* mammoth mount with wooden armor (30 day) */
(1, 8, 2, 2,75,13,0,204960,1),		/* grey rhinoceros mount (30 day) */
(1, 8, 2, 2,75,13,0,204963,1),		/* grassland rhinooceros mount (30 day) */
(1, 8, 2, 2,75,13,0,204966,1),		/* wisdom rhinoceros mount (30 day) */
(1, 8, 2, 2,75,13,0,204969,1),		/* white rhinoceros mount (30 day) */
(1, 8, 2, 2,75,13,0,202483,1),		/* purple berhu mount (30 day) */
(1, 8, 2, 2,75,13,0,202486,1),		/* fiery berhu mount (30 day) */
(1, 8, 2, 2,75,13,0,203562,1),		/* wild horned lion mount (30 day) */
(1, 8, 2, 2,75,13,0,204279,1),		/* black rhinoceros mount (30 day) */
(1, 8, 2, 2,75,13,0,204936,1),		/* golden mane boar mount (30 day) */
(1, 8, 2, 2,75,13,0,204945,1),		/* piebald boar mount (30 day) */
(1, 8, 2, 2,75,13,0,204951,1),		/* striped boar mount (30 day) */
(1, 8, 2, 2,75,13,0,204954,1),		/* flame boar mount (30 day) */
(1, 8, 2, 2,75,13,0,204957,1),		/* yellow mane boar mount (30 day) */
(1, 8, 2, 2,75,13,0,203287,1),		/* green dragonfang ice beast mount (30 day) */
(1, 8, 2, 2,75,13,0,204084,1),		/* sea of snow berhu cub mount (30 day) */
(1, 8, 2, 2,75,13,0,204144,1),		/* golden armored berhu cub mount (30 day) */
(1, 8, 2, 2,75,13,0,204145,1),		/* red armored berhu cub mount (30 day) */
(1, 8, 2, 2,75,13,0,206203,1),		/* red bunga mount (30 day) */
(1, 8, 2, 2,75,13,0,206206,1),		/* purple bunga mount (30 day) */
(1, 8, 2, 2,75,13,0,206238,1),		/* drag-3000 mount (30 day) */
(1, 8, 2, 2,75,13,0,202479,1),		/* dark shadow ferret mount (30 day) */
(1, 8, 2, 2,75,13,0,206716,1),		/* phantom ferret mount (30 day) */
(1, 8, 2, 2,75,13,0,206719,1),		/* dawn ferret mount (30 day) */
(1, 8, 2, 2,75,13,0,206950,1),		/* ancient mammoth mount (30 day) */
(1, 8, 2, 2,75,13,0,207510,1),		/* bighorn boshi mount (30 day) */
(1, 8, 2, 2,75,13,0,207513,1),		/* red-eyed bull mount (30 day) */
(1, 8, 2, 2,75,13,0,207538,1),		/* speckled jaguar mount (30 day) */
(1, 8, 2, 2,75,13,0,207541,1),		/* hunting night pard mount (30 day) */
(1, 8, 2, 2,75,13,0,207544,1),		/* dark night pard mount (30 day) */
(1, 8, 2, 2,75,13,0,207997,1),		/* swift raptor mount (30 day) */
(1, 8, 2, 2,75,13,0,208697,1),		/* thunder ostrich mount (30 day) */
(1, 8, 2, 2,75,13,0,209486,1),		/* magical giant frog mount (30 day) */
(1, 8, 2, 2,75,13,0,209962,1),		/* wabbit mount (30 day) */
(1, 8, 2, 2,75,13,0,209965,1),		/* magic wabbit mount (30 day) */
(1, 8, 2, 2,75,13,0,206557,1),		/* purgatory nightmare mount (30 day) */
(1, 8, 2, 2,75,13,0,206560,1),		/* inferal nightmare mount (30 day) */
(1, 8, 2, 2,75,13,0,206563,1),		/* evilblood nightmare mount (30 day) */
(1, 8, 2, 2,75,13,0,206572,1),		/* abysmal nightmare mount (30 day) */
(1, 8, 2, 2,75,13,0,206569,1),		/* golden nightmare mount (30 day) */
(1, 8, 2, 2,75,13,0,207532,1),		/* forest alpaca mount (30 day) */
(1, 8, 2, 2,75,13,0,207529,1),		/* snow alpaca mount (30 day) */
(1, 8, 2, 2,75,13,0,207535,1),		/* highland alpaca mount (30 day) */
(1, 8, 2, 2,75,13,0,240037,1),		/* spinel chimera mount (30 day) */
(1, 8, 2, 2,75,13,0,240082,1),		/* sapphire chimera mount (30 day) */
(1, 8, 2, 2,75,13,0,240087,1),		/* jasper chimera mount (30 day) */
(1, 8, 2, 2,75,13,0,240500,1),		/* rune beetle mount (30 day) */
(1, 8, 2, 2,75,13,0,241621,1),		/* spirit sharptooth mount (30 day) */
(1, 8, 2, 2,75,13,0,204997,1),		/* black pegasus mount (30 day) */

-- Permanent
-- sub multi-passenger
(1, 8, 3, 1,285,50,0,208707,1),		/* charity wolf mount (permanent) */
(1, 8, 3, 1,285,50,0,203671,1),		/* pegasus mount (permanent) */
(1, 8, 3, 1,285,50,0,208704,1),		/* damnation bunga mount (permanent) */
(1, 8, 3, 1,285,50,0,207551,1),		/* aladdins flying carpet (permanent) */
(1, 8, 3, 1,285,50,0,209502,1),		/* dagger skeleton mount (permanent) */
(1, 8, 3, 1,285,50,0,206936,1),		/* storm hippogriff mount (permanent) */
(1, 8, 3, 1,285,50,0,208161,1),		/* azure wolf mount (permanent) */
(1, 8, 3, 1,285,50,0,241104,1),		/* flame beast horn (permanent) */
(1, 8, 3, 1,285,50,0,208694,1),		/* thunder hippogriff mount (permanent) */
(1, 8, 3, 1,285,50,0,207568,1),		/* furious crimson ankylar mount (permanent) */
(1, 8, 3, 1,165,35,0,207548,1),		/* genie masterly flying carpet (permanent) */
(1, 8, 3, 1,300,55,0,206710,1),		/* star (permanent) */
(1, 8, 3, 1,300,55,0,206707,1),		/* flame (permanent) */
(1, 8, 3, 1,300,55,0,206596,1),		/* steel-flame warhorse (permanent) */
(1, 8, 3, 1,300,55,0,206941,1),		/* ground gryphon mount (permanent) */
(1, 8, 3, 1,285,30,0,241808,1),		/* thorned tiger ray mount (permanent) */
(1, 8, 3, 1,300,55,0,207565,1),		/* giant eagle mount (permanent) */
(1, 8, 3, 1,300,55,0,207503,1),		/* roaring war near mount (permanent) */
(1, 8, 3, 1,300,55,0,241774,1),		/* forest hugehorn mount (permanent) */
(1, 8, 3, 1,300,55,0,241802,1),		/* sinister sharpo mount (permanent) */
(1, 8, 3, 1,300,55,0,241933,1),     /* drag-4000 mount (permanent) */
(1, 8, 3, 1,300,55,0,207571,1),		/* overlord ankylar mount (permanent) */
(1, 8, 3, 1,300,55,0,241936,1),		/* little demon 5000 mount (permanent) */
(1, 8, 3, 1,300,55,0,241999,1),		/* snowflake sleigh bear mount (permanent) */




-- sub single passenger

(1, 8, 3, 2, 285, 50,0,201130,1),		/* Snow Ferret Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,201927,1),		/* Flame War Tiger Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,201928,1),		/* Thunder War Tiger Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,201965,1),		/* White Warhorse (Permanent) */
(1, 8, 3, 2, 285, 50,0,201966,1),		/* Black Warhorse (Permanent) */
(1, 8, 3, 2, 285, 50,0,202217,1),		/* Sea of Snow Berhu Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,202218,1),		/* Ostrich Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,202226,1),		/* Black Horse (Permanent) */
(1, 8, 3, 2, 285, 50,0,202247,1),		/* White Horse (Permanent) */
(1, 8, 3, 2, 285, 50,0,202248,1),		/* Brown Horse (Permanent) */
(1, 8, 3, 2, 285, 50,0,202454,1),		/* Piebald Horse (Permanent) */
(1, 8, 3, 2, 285, 50,0,202463,1),		/* Dark Shadow Ferret Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,202464,1),		/* Fire Ostrich Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,202465,1),		/* Blood Ostrich Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,202466,1),		/* Golden Ostrich Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,202467,1),		/* Purple Berhu Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,202468,1),		/* Golden Armored Berhu Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,202469,1),		/* Red Armored Berhu Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,202470,1),		/* Fiery Berhu Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,202935,1),		/* Red Fungus Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,202936,1),		/* Yellow Fungus Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,203289,1),		/* Green Dragonfang Ice Beast Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,203290,1),		/* Blue Dragonfang Ice Beast Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,203553,1),		/* Royal Reindeer Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,203554,1),		/* Reindeer Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,203555,1),		/* Snowflake Festival Reindeer Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,203564,1),		/* Wild Horned Lion Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,203671,1),		/* Pegasus Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,203676,1),		/* Unicorn Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,203915,1),		/* Icy Horned Lion Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,204085,1),		/* Sea of Snow Berhu Cub Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,204146,1),		/* Golden Armored Berhu Cub Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,204147,1),		/* Red Armored Berhu Cub Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,204276,1),		/* Boar Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,204277,1),		/* Black Rhinoceros Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,204284,1),		/* Wild Lion King Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,204287,1),		/* Night Lion King Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,204818,1),		/* White Horse (Permanent) */
(1, 8, 3, 2, 285, 50,0,204819,1),		/* Black Horse (Permanent) */
(1, 8, 3, 2, 285, 50,0,204820,1),		/* Brown Horse (Permanent) */
(1, 8, 3, 2, 285, 50,0,204929,1),		/* Purple Mane Boar Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,204932,1),		/* Red Mane Boar Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,204935,1),		/* Golden Mane Boar Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,204938,1),		/* Ice Plain Boar Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,204941,1),		/* Arctic Boar Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,204944,1),		/* Piebald Boar Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,204950,1),		/* Striped Boar Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,204953,1),		/* Flame Boar Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,204956,1),		/* Yellow Mane Boar Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,204959,1),		/* Grey Rhinoceros Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,204962,1),		/* Grassland Rhinoceros Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,204965,1),		/* Wisdom Rhinoceros Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,204968,1),		/* White Rhinoceros Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,204999,1),		/* Black Pegasus Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,206020,1),		/* Dragonfang Ice Beast Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,206196,1),		/* Mammoth Mount with Steel Armor (Permanent) */
(1, 8, 3, 2, 285, 50,0,206199,1),		/* Mammoth Mount with Wooden Armor (Permanent) */
(1, 8, 3, 2, 285, 50,0,206202,1),		/* Red Bunga Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,206205,1),		/* Purple Bunga Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,206234,1),		/* Witch Broom (Permanent) */
(1, 8, 3, 2, 285, 50,0,206237,1),		/* Drag-3000 Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,206275,1),		/* Snow Ferret Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,206278,1),		/* Witch Broom (Permanent) */
(1, 8, 3, 2, 285, 50,0,206283,1),		/* Pegasus Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,206284,1),		/* Dark Shadow Ferret Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,206289,1),		/* Black Pegasus Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,206290,1),		/* Drag-3000 Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,206316,1),		/* Purple Crested Ostrich Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,206329,1),		/* Savage Ostrich Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,206354,1),		/* Moa’s Charity Steed (Permanent) */
(1, 8, 3, 2, 285, 50,0,206359,1),		/* Moa’s Charity Steed (Permanent) */
(1, 8, 3, 2, 285, 50,0,206558,1),		/* Purgatory Nightmare Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,206561,1),		/* Infernal Nightmare Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,206564,1),		/* Evilblood Nightmare Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,206567,1),		/* Abyss Nightmare Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,206570,1),		/* Golden Nightmare Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,206573,1),		/* Abysmal Nightmare Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,206596,1),		/* Steel-Flame Warhorse (Permanent) */
(1, 8, 3, 2, 285, 50,0,206717,1),		/* Phantom Ferret Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,206720,1),		/* Dawn Ferret Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,206906,1),		/* Ruzio, the Expedition Donkey (Permanent) */
(1, 8, 3, 2, 285, 50,0,206936,1),		/* Storm Hippogriff Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,206941,1),		/* Ground Gryphon Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,206951,1),		/* Ancient Mammoth Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,207503,1),		/* Roaring War Bear Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,207511,1),		/* Bighorn Boshi Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,207514,1),		/* Red-Eyed Bull Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,207517,1),		/* Grassland Buffalo Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,207527,1),		/* Viking Sapphire Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,207530,1),		/* Snow Alpaca Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,207533,1),		/* Forest Alpaca Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,207536,1),		/* Highland Alpaca Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,207539,1),		/* Speckled Jaguar Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,207542,1),		/* Hunting Night Pard Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,207545,1),		/* Dark Night Pard Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,207548,1),		/* Genie's Masterly Flying Carpet (Permanent) */
(1, 8, 3, 2, 285, 50,0,207551,1),		/* Aladdin's Flying Carpet (Permanent) */
(1, 8, 3, 2, 285, 50,0,207560,1),		/* Snow-White War Bear Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,207565,1),		/* Giant Eagle Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,207568,1),		/* Furious Crimson Ankylar Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,207571,1),		/* Overlord Ankylar Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,208161,1),		/* Azure Wolf Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,208572,1),		/* Swift Raptor Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,208694,1),		/* Thunder Hippogriff Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,208699,1),		/* Thunder Ostrich Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,208704,1),		/* Damnation Bunga Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,208707,1),		/* Charity Wolf Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,208912,1),		/* Moa's Charity Steed (Permanent) */
(1, 8, 3, 2, 285, 50,0,209487,1),		/* Magical Giant Frog Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,209508,1),		/* Torex (Permanent) */
(1, 8, 3, 2, 285, 50,0,209602,1),		/* Aurelius (Permanent) */
(1, 8, 3, 2, 285, 50,0,209963,1),		/* Wabbit Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,209966,1),		/* Magic Wabbit Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,240038,1),		/* Spinel Chimera Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,240083,1),		/* Sapphire Chimera Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,240088,1),		/* Jasper Chimera Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,240435,1),		/* Purple Winged Leopard Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,240438,1),		/* Green Feather Cloud Leopard Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,240441,1),		/* Bold Shadow Leopard Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,240501,1),		/* Rune Beetle Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,240918,1),		/* Abyss Thysdyr Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,240930,1),		/* Fire Demon Warhorse (Permanent) */
(1, 8, 3, 2, 285, 50,0,240935,1),		/* Infernal Wolf Spider (Permanent) */
(1, 8, 3, 2, 285, 50,0,241104,1),		/* Flame Beast Horn (Permanent) */
(1, 8, 3, 2, 285, 50,0,241318,1),		/* Shadowforge Leopard Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,241622,1),		/* Spirit Sharptooth Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,241634,1),		/* Deeplake Pango Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,241774,1),		/* Forest Hugehorn Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,241779,1),		/* Green Devil Tortoise Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,241788,1),		/* Phantom Gulo Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,241793,1),		/* Steel Jaw Rhino Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,241799,1),		/* Fist-Armor Mosto Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,241802,1),		/* Sinister Sharpro Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,241805,1),		/* Little Demon 2000 Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,241999,1),		/* Snowflake Sleigh Bear Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,242161,1),		/* War Flame Beast Horn (Permanent) */
(1, 8, 3, 2, 285, 50,0,242449,1),		/* Frost Firescale Lizard Mount (Permanent) */


---- /* Packages */ ----
-- Starter Packages
(1, 9, 1, -1, 10, 1,203701,240386,1),		/* Plate armor package (41) */
(1, 9, 1, -1, 12, 1,203701,240355,1),		/* Plate armor package (55) */
(1, 9, 1, -1, 14, 2,203701,240343,1),		/* Plate armor package (60) */
(1, 9, 1, -1, 16, 2,203701,240303,1),		/* Plate armor package (65) */
(1, 9, 1, -1, 10, 1,203701,240392,1),		/* Leather armor package (41) */
(1, 9, 1, -1, 12, 1,203701,240361,1),		/* Leather armor package (55) */
(1, 9, 1, -1, 14, 2,203701,240349,1),		/* Leather armor package (60) */
(1, 9, 1, -1, 16, 2,203701,240309,1),		/* Leather armor package (65) */
(1, 9, 1, -1, 10, 1,203701,240395,1),		/* cloth armor package (41) */
(1, 9, 1, -1, 12, 1,203701,240364,1),		/* cloth armor package (55) */
(1, 9, 1, -1, 14, 2,203701,240352,1),		/* cloth armor package (60) */
(1, 9, 1, -1, 16, 2,203701,240312,1),		/* cloth armor package (65) */
(1, 9, 1, -1, 10, 1,203701,240389,1),		/* chain armor package (41) */
(1, 9, 1, -1, 12, 1,203701,240358,1),		/* chain armor package (55) */
(1, 9, 1, -1, 14, 2,203701,240346,1),		/* chain armor package (60) */
(1, 9, 1, -1, 16, 2,203701,240306,1),		/* chain armor package (65) */


-- Premium Packages
(1, 9, 2, -1, 2599, 270,203701,212779,1),		/* Legendary Ghost */
(1, 9, 2, -1, 2599, 270,203701,212782,1),		/* Legendary Hell */
(1, 9, 2, -1, 2599, 270,203701,212781,1),		/* Legendary Tears */
(1, 9, 2, -1, 2599, 270,203701,212783,1),		/* Legendary Heaven */
(1, 9, 2, -1, 2599, 270,203701,212772,1),		/* Legendary dragon spirit */
(1, 9, 2, -1, 2599, 270,203701,212771,1),		/* Legendary dragon cleaver */
(1, 9, 2, -1, 2599, 270,203701,212778,1),		/* Legendary devil */
(1, 9, 2, -1, 2599, 270,203701,212776,1),		/* Legendary destroyer */
(1, 9, 2, -1, 2599, 270,203701,212775,1),		/* Legendary crusher */
(1, 9, 2, -1, 2599, 270,203701,212773,1),		/* Legendary bloodthirsty axe */
(1, 9, 2, -1, 2599, 270,203701,212774,1),		/* Legendary bloodseeker */
(1, 9, 2, -1, 2599, 270,203701,212777,1),		/* Legendary angel */
(1, 9, 2, -1, 2599, 270,203701,212780,1);		/* Legendary Hatred */


GO

INSERT [dbo].[NewShopInfo]
([World1], [SellType], [SellType1], [SellType2], [Sell_Cost], [Sell_Get_Bonus], [Item_DisplayerObjID], [Item_OrgObjID1], [Item_Count1])
VALUES

-- /* *Special Items* */
-- Promotion
(1, 10, 1, -1, 200, 40,203701,243264,20),		/* Haidons Special Catalyst */
(1, 10, 1, -1, 100, 0,203701,243235,1),		/* Earth Key */
(1, 10, 1, -1, 100, 0,203701,243236,1),		/* water key */
(1, 10, 1, -1, 100, 0,203701,243237,1),		/* fire key */
(1, 10, 1, -1, 100, 0,203701,243238,1),		/* chaos key */
(1, 10, 1, -1, 22, 2,203701,207518,1),		/* red bison mount (1 day) */
(1, 10, 1, -1, 560, 55,203701,206319,5),		/* Provisions Couriers Osterich mount (1 hr 120%) */


-- Music Insturments
(1, 10, 2, -1, 15, 4,203701,204565,1),		/* Sealed lute (3 days)  */
(1, 10, 2, -1, 15, 4,203701,204564,1),		/* Sealed Guitar (3 days)  */
(1, 10, 2, -1, 15, 4,203701,204567,1),		/* Sealed Rattle (3 days)  */
(1, 10, 2, -1, 15, 4,203701,204566,1),		/* Sealed Tambourine (3 days)  */
(1, 10, 2, -1, 50, 10,203701,206414,1),		/* Sealed Lute (30 days)  */
(1, 10, 2, -1, 50, 10,203701,206413,1),		/* Sealed Guitar (30 days)  */
(1, 10, 2, -1, 50, 10,203701,206416,1),		/* Sealed Rattle (30 days)  */
(1, 10, 2, -1, 50, 10,203701,206415,1),		/* Sealed Tambourine (30 days)  */


-- Elite Skills
(1, 10, 3, -1, 15, 1,203701,209231,1),		/* Old Bag  */
(1, 10, 3, -1, 50, 2,203701,241651,1),		/* Proof of protection  */
(1, 10, 3, -1, 450, 5,203701,240780,1),		/* Proof of Progress  */
(1, 10, 3, -1, 50, 2,203701,240777,1),		/* Proof of Valor  */


-- Janebugs Orginal (Remove Will crash Client)
(1, 10, 4, -1, 20000, 2,203701,541288,1);		/* Jane's Trouble (Empty Item) */


GO

-- Diamonds Done


/*

Created By : Janebug
Speacial thanks to : Mageoski, andelwol26, Beerpyrs and Lifefire. For all there help, Breaking down the tables, and columns

world 30 to 1, SortNumber, NeedMemberID, SellType, SellType1, SellType2, Sell_BeginTime, Sell_EndTime, Sell_Count, Sell_Max_Count, Sell_Cost, Sell_Cost_Bonus,
 Sell_Cost_Free, Sell_Cost_Get_Bonus, Icon, Item_DisplayerObjID, Item_Name, Item_Note, Item_OrgObjID1 - 8, Item_Count1 to 8, Gamble_Count, Gamele_Rate1 to 8, (not 10000 = 100%), EffectDay


([World1], [SellType], [SellType1], [Sell_BeginTime], [Sell_EndTime], [Sell_Count], [Sell_MaxCount], [Sell_Cost], [Sell_Cost_Bonus], [Sell_Cost_Free] )


These values are for Dias, 		Ruby, 			Tokens
					Sell_Cost, Sell_Cost_Bonus, Sell_Cost_Free

*/ 

USE [ROM_ImportDB]
GO

TRUNCATE TABLE [dbo].[StringDB]
GO

INSERT [dbo].[StringDB] ([KeyStr], [Content], [level], [sort]) VALUES
-- Main Catagorys Diamonds --	
-- Sub folder Consumables
	(N'SYS_ACCOUNTSTORE_TYPE_01', N'Consumables', 1, 1),
	(N'SYS_ACCOUNTSTORE_TYPE_01_01', N'TP & XP', 2, 1),
	(N'SYS_ACCOUNTSTORE_TYPE_01_02', N'Transportation', 2, 2),
	(N'SYS_ACCOUNTSTORE_TYPE_01_03', N'Must-Haves', 2, 3),
	(N'SYS_ACCOUNTSTORE_TYPE_01_04', N'Transformation', 2, 4),
	(N'SYS_ACCOUNTSTORE_TYPE_01_05', N'BackPack Tickets', 2, 5),
	(N'SYS_ACCOUNTSTORE_TYPE_01_06', N'Food', 2, 6),
	(N'SYS_ACCOUNTSTORE_TYPE_01_07', N'Potions', 2, 7),
	(N'SYS_ACCOUNTSTORE_TYPE_01_08', N'Sigils', 2, 8),
	(N'SYS_ACCOUNTSTORE_TYPE_01_09', N'Reset Scrolls', 2, 9),
	(N'SYS_ACCOUNTSTORE_TYPE_01_10', N'Bank Space Tickets', 2, 10),
	
-- Sub Folder Upgrading	
	(N'SYS_ACCOUNTSTORE_TYPE_02', N'Upgrading', 1, 2),
	(N'SYS_ACCOUNTSTORE_TYPE_02_01', N'Accessories', 2, 1),
	(N'SYS_ACCOUNTSTORE_TYPE_02_01_01', N'Rune Slot Drillers', 3, 1),
	(N'SYS_ACCOUNTSTORE_TYPE_02_01_02', N'Stones for Lv1-90', 4, 2),
	(N'SYS_ACCOUNTSTORE_TYPE_02_01_03', N'Stones for Lv1-100', 5, 3),
	(N'SYS_ACCOUNTSTORE_TYPE_02_02', N'Armour', 2, 2),
	(N'SYS_ACCOUNTSTORE_TYPE_02_02_01', N'Rune Slot Drillers', 3, 1),
	(N'SYS_ACCOUNTSTORE_TYPE_02_02_02', N'Stones for Lv1-90', 4, 2),
	(N'SYS_ACCOUNTSTORE_TYPE_02_02_03', N'Stones for Lv1-100', 5, 3),
	(N'SYS_ACCOUNTSTORE_TYPE_02_03', N'Weapons', 2, 3),
	(N'SYS_ACCOUNTSTORE_TYPE_02_03_01', N'Rune Slot Drillers', 3, 1),
	(N'SYS_ACCOUNTSTORE_TYPE_02_03_02', N'Stones for Lv1-90', 4, 2),
	(N'SYS_ACCOUNTSTORE_TYPE_02_03_03', N'Stones for Lv1-100', 5, 3),
	(N'SYS_ACCOUNTSTORE_TYPE_02_04', N'Back Slot', 2, 4),
	(N'SYS_ACCOUNTSTORE_TYPE_02_04_01', N'Rune Slot Drillers', 3, 1),
	(N'SYS_ACCOUNTSTORE_TYPE_02_04_02', N'Reguler Stones', 4, 2),
	(N'SYS_ACCOUNTSTORE_TYPE_02_05', N'Must-Haves', 2, 5),
	(N'SYS_ACCOUNTSTORE_TYPE_02_06', N'Runes', 2, 6),
-- Sub Folder Costumes
	(N'SYS_ACCOUNTSTORE_TYPE_03', N'Costumes', 1, 3),	
	(N'SYS_ACCOUNTSTORE_TYPE_03_01', N'Packages', 2, 1),
	(N'SYS_ACCOUNTSTORE_TYPE_03_01_01', N'Male', 3, 1),
	(N'SYS_ACCOUNTSTORE_TYPE_03_01_02', N'Female', 4, 2),		
	(N'SYS_ACCOUNTSTORE_TYPE_03_02', N'Single Pieces', 2, 2),	
	(N'SYS_ACCOUNTSTORE_TYPE_03_02_01', N'Male', 3, 1),
	(N'SYS_ACCOUNTSTORE_TYPE_03_02_02', N'Female', 4, 2),		
	(N'SYS_ACCOUNTSTORE_TYPE_03_03', N'Weapon', 2, 3),
	(N'SYS_ACCOUNTSTORE_TYPE_03_03_01', N'Female', 3, 1),
	(N'SYS_ACCOUNTSTORE_TYPE_03_03_02', N'UniSex', 4, 2),		
	(N'SYS_ACCOUNTSTORE_TYPE_03_04', N'Magic Wings', 2, 4),	
	(N'SYS_ACCOUNTSTORE_TYPE_03_04_01', N'UniSex', 3, 1),
	(N'SYS_ACCOUNTSTORE_TYPE_03_04_02', N'Male', 4, 2),
	(N'SYS_ACCOUNTSTORE_TYPE_03_04_03', N'Female', 5, 3),
		
	-- Sub Folder Crafting
	(N'SYS_ACCOUNTSTORE_TYPE_04', N'Crafting', 1, 4),	
	(N'SYS_ACCOUNTSTORE_TYPE_04_01', N'Furnitures', 2, 1),	
	(N'SYS_ACCOUNTSTORE_TYPE_04_01_01', N'Alchemy Bonus', 3, 1),
	(N'SYS_ACCOUNTSTORE_TYPE_04_01_02', N'Blacksmithing Bonus', 4, 2),
	(N'SYS_ACCOUNTSTORE_TYPE_04_01_03', N'Carpentry Bonus', 5, 3),
	(N'SYS_ACCOUNTSTORE_TYPE_04_01_04', N'Cooking Bonus', 6, 4),
	(N'SYS_ACCOUNTSTORE_TYPE_04_01_05', N'Armorcrafting Bonus', 7, 5),
	(N'SYS_ACCOUNTSTORE_TYPE_04_01_06', N'Tailering Bonus', 8, 6),	
	(N'SYS_ACCOUNTSTORE_TYPE_04_02', N'Resources', 2, 2),	
	(N'SYS_ACCOUNTSTORE_TYPE_04_03', N'Runes', 2, 3),
	(N'SYS_ACCOUNTSTORE_TYPE_04_04', N'Potions', 2, 4),
	(N'SYS_ACCOUNTSTORE_TYPE_04_05', N'Recipes', 2, 5),	
	(N'SYS_ACCOUNTSTORE_TYPE_04_06', N'Planting', 2, 6),	
	(N'SYS_ACCOUNTSTORE_TYPE_04_06_01', N'Pots', 3, 1),
	(N'SYS_ACCOUNTSTORE_TYPE_04_06_02', N'Consumables', 4, 2),	
	(N'SYS_ACCOUNTSTORE_TYPE_04_07', N'Others', 2, 7),	

-- Sub Encyclopedias
	(N'SYS_ACCOUNTSTORE_TYPE_05', N'Encyclopedias', 1, 5),	
	(N'SYS_ACCOUNTSTORE_TYPE_05_01', N'Crafting I', 2, 1),
	(N'SYS_ACCOUNTSTORE_TYPE_05_02', N'Crafting II', 2, 2),
	(N'SYS_ACCOUNTSTORE_TYPE_05_03', N'Skills I', 2, 3),
	(N'SYS_ACCOUNTSTORE_TYPE_05_04', N'Skills II', 2, 4),	
	
-- Sub Housing
	(N'SYS_ACCOUNTSTORE_TYPE_06', N'Housing', 1, 6),
	(N'SYS_ACCOUNTSTORE_TYPE_06_01', N'Storage', 2, 1),
	(N'SYS_ACCOUNTSTORE_TYPE_06_02', N'Beds', 2, 2),
	(N'SYS_ACCOUNTSTORE_TYPE_06_03', N'Tables & Chairs', 2, 3),
	(N'SYS_ACCOUNTSTORE_TYPE_06_04', N'Decorations', 2, 4),
	(N'SYS_ACCOUNTSTORE_TYPE_06_05', N'Cabinets', 2, 5),
	(N'SYS_ACCOUNTSTORE_TYPE_06_06', N'Fireplaces', 2, 6),
	(N'SYS_ACCOUNTSTORE_TYPE_06_07', N'Plants', 2, 7),
	(N'SYS_ACCOUNTSTORE_TYPE_06_08', N'Carpets', 2, 8),
	(N'SYS_ACCOUNTSTORE_TYPE_06_09', N'Guild Furnitures', 2, 9),
	(N'SYS_ACCOUNTSTORE_TYPE_06_10', N'Guild Resources', 2, 10),
	(N'SYS_ACCOUNTSTORE_TYPE_06_11', N'House Contracts', 2, 11),	
-- Pets
	(N'SYS_ACCOUNTSTORE_TYPE_07', N'Pets', 1, 7),
	(N'SYS_ACCOUNTSTORE_TYPE_07_01', N'Pet Eggs', 2, 1),
	(N'SYS_ACCOUNTSTORE_TYPE_07_01_01', N'Zodiac Pets', 3, 1),
	(N'SYS_ACCOUNTSTORE_TYPE_07_01_02', N'Normal Pets', 4, 2),
	(N'SYS_ACCOUNTSTORE_TYPE_07_01_03', N'Pets with Buff', 5, 3),	
	(N'SYS_ACCOUNTSTORE_TYPE_07_01_04', N'Others', 6, 4),	
	(N'SYS_ACCOUNTSTORE_TYPE_07_02', N'Pet System', 2, 2),
	(N'SYS_ACCOUNTSTORE_TYPE_07_02_01', N'Transformation', 3, 1),
	(N'SYS_ACCOUNTSTORE_TYPE_07_02_02', N'Others', 4, 2),	
	(N'SYS_ACCOUNTSTORE_TYPE_07_03', N'Pet Consume', 3, 3),

-- Mounts 
	(N'SYS_ACCOUNTSTORE_TYPE_08', N'Mounts', 1, 8),
	(N'SYS_ACCOUNTSTORE_TYPE_08_01', N'7 Days', 2, 1),
	(N'SYS_ACCOUNTSTORE_TYPE_08_01_01', N'Multi-Passenger', 3, 1),
	(N'SYS_ACCOUNTSTORE_TYPE_08_01_02', N'Single Passenger', 4, 2),	
	(N'SYS_ACCOUNTSTORE_TYPE_08_02', N'30 Days', 3, 2),
	(N'SYS_ACCOUNTSTORE_TYPE_08_02_01', N'Multi-Passenger', 4, 1),
	(N'SYS_ACCOUNTSTORE_TYPE_08_02_02', N'Single Passenger', 5, 2),	
	(N'SYS_ACCOUNTSTORE_TYPE_08_03', N'Permanent', 4, 3),
	(N'SYS_ACCOUNTSTORE_TYPE_08_03_01', N'Multi-Passenger', 5, 1),
	(N'SYS_ACCOUNTSTORE_TYPE_08_03_02', N'Single Passenger', 6, 2),
	
-- Packages
	(N'SYS_ACCOUNTSTORE_TYPE_09', N'Packages', 1, 9),
	(N'SYS_ACCOUNTSTORE_TYPE_09_01', N'Starter Packages', 2, 1),	
	(N'SYS_ACCOUNTSTORE_TYPE_09_02', N'Premium Packages', 3, 2),
	
-- Special Items	
	(N'SYS_ACCOUNTSTORE_TYPE_10', N'Special Items', 1, 10),
	(N'SYS_ACCOUNTSTORE_TYPE_10_01', N'Promotion', 2, 1),
	(N'SYS_ACCOUNTSTORE_TYPE_10_02', N'Music Insturments', 3, 2),
	(N'SYS_ACCOUNTSTORE_TYPE_10_03', N'Elite Skills', 4, 3),
	(N'SYS_ACCOUNTSTORE_TYPE_10_04', N'Janebugs Orginal', 5, 4);


GO


USE [ROM_ImportDB]
GO

TRUNCATE TABLE [dbo].[NewShopInfo]
GO



-- /* *****  Rubys Sales  ****** */
-- Uses Table [Sell_Cost_Bonus]


INSERT INTO dbo.NewShopInfo
([World1], [SellType], [SellType1], [SellType2], [Sell_Cost_Bonus], [Sell_Get_Bonus], [Item_DisplayerObjID], [Item_OrgObjID1], [Item_Count1]) VALUES
-- Sub Folder xp tp
(1, 1, 1, -1, 280, 0, 0, 203574, 1),   /* High Quality Experience Potion */
(1, 1, 1, -1, 140, 0, 0, 201618, 1),   /* Master skill potion */
(1, 1, 1, -1, 160, 0, 0, 201460, 1),   /* Party Experience Potion */

-- Sub folder Must-Have
(1, 1, 3, -1, 10, 0, 0, 203490, 1),  /* Phirious Special Water Type B */
(1, 1, 3, -1, 15, 0, 0, 201085, 1),   /* Illusory Hair Chest */
(1, 1, 3, -1, 35, 0, 0, 202322, 1),   /* Potent Luck Potion  */
(1, 1, 3, -1, 399, 0, 0, 208792, 1),   /* Convenient Mailbox (7Days) */
(1, 1, 3, -1, 15, 0, 0, 201137, 1),   /* Convenient Bank */
(1, 1, 3, -1, 10, 0, 0, 203503, 1),   /* Phirius Elixir - Type E*/

-- Sub Folder Transformation
(1, 1, 4, -1, 5, 0, 0, 203091, 1),   /* Transformation Potion - Little Death                  */
(1, 1, 4, -1, 5, 0, 0, 206225, 1),   /* Transformation Potion - Vicious Night Shadow Bat      */
(1, 1, 4, -1, 5, 0, 0, 206221, 1),   /* Transformation Potion - Zombie                 */
(1, 1, 4, -1, 5, 0, 0, 206224, 1),   /* Transformation Potion - Prisoner's Shadow          */
(1, 1, 4, -1, 5, 0, 0, 205078, 1),   /* Transformation Potion - Hammertooth Sage              */
(1, 1, 4, -1, 10, 0, 0, 203196, 1),   /* Transformation Potion - Donichuka                  */
(1, 1, 4, -1, 10, 0, 0, 203415, 1),   /* Transformation Potion - Giant Guardian                */
(1, 1, 4, -1, 10, 0, 0, 203416, 1),   /* Transformation Potion - Gingerbreadman               */
(1, 1, 4, -1, 10, 0, 0, 240465, 1),   /* Transformation Potion - Rock Guardian                 */
(1, 1, 4, -1, 10, 0, 0, 203513, 1),   /* Transformation Potion - Snowman                       */
(1, 1, 4, -1, 5, 0, 0, 203163, 1),   /* Transformation Potion - Shaggy Bear                  */
(1, 1, 4, -1, 5, 0, 0, 203153, 1),   /* Transformation Potion - Giant Guardian               */
(1, 1, 4, -1, 5, 0, 0, 203088, 1),   /* Transformation Potion - Obsessive Shadow              */
(1, 1, 4, -1, 5, 0, 0, 203154, 1),   /* Transformation Potion - Ice Witch                     */
(1, 1, 4, -1, 5, 0, 0, 203162, 1),   /* Transformation Potion - Ent                      */
(1, 1, 4, -1, 5, 0, 0, 203164, 1),   /* Transformation Potion - Demonthorn Vine               */
(1, 1, 4, -1, 5, 0, 0, 203087, 1),   /* Transformation Potion - Fungus                     */
(1, 1, 4, -1, 5, 0, 0, 203086, 1),   /* Transformation Potion - Goblin                    */
(1, 1, 4, -1, 5, 0, 0, 203085, 1),   /* Transformation Potion - Frog                    */
(1, 1, 4, -1, 5, 0, 0, 240450, 1),   /* Transformation Potion - Evil Teddy Bear             */
(1, 1, 4, -1, 5, 0, 0, 240451, 1),   /* Transformation Potion - Smirking Castle Clown        */
(1, 1, 4, -1, 5, 0, 0, 240471, 1),   /* Transformation Potion - Annelia                     */
(1, 1, 4, -1, 5, 0, 0, 241252, 1),   /* Transformation Potion - Sacred Ice Crystal JuJu     */
(1, 1, 4, -1, 5, 0, 0, 241253, 1),   /* Transformation Potion - Breaking Dawn JuJu           */
(1, 1, 4, -1, 5, 0, 0, 241264, 1),   /* Transformation Potion - Exuberant Celebration JuJu    */
(1, 1, 4, -1, 5, 0, 0, 241265, 1),   /* Transformation Potion - Greenfeather Sparrow JuJu     */

-- Sub Folder BackPackTickets
(1, 1, 5, -1, 599, 0, 0, 206698, 1),   /* Backpack Scroll III (30 Days)       */
(1, 1, 5, -1, 599, 0, 0, 206699, 1),   /* Backpack Scroll IV (30 Days)       */
(1, 1, 5, -1, 599, 0, 0, 206700, 1),   /* Backpack Scroll V (30 Days)       */
(1, 1, 5, -1, 599, 0, 0, 206701, 1),   /* Backpack Scroll VI (30 Days)       */


-- Sub Folder Bank Space Tickets
(1, 1, 10, -1, 25, 0, 0, 207747, 1),   /* Bank Space Scroll II (7 Days)       */
(1, 1, 10, -1, 25, 0, 0, 207748, 1),   /* Bank Space Scroll III (7 Days)       */
(1, 1, 10, -1, 25, 0, 0, 207749, 1),   /* Bank Space Scroll IV (7 Days)       */
(1, 1, 10, -1, 25, 0, 0, 207750, 1),   /* Bank Space Scroll V (7 Days)       */
(1, 1, 10, -1, 55, 0, 0, 207743, 1),   /* Bank Space Scroll II (30 Days)       */
(1, 1, 10, -1, 55, 0, 0, 207744, 1),   /* Bank Space Scroll III (30 Days)       */
(1, 1, 10, -1, 55, 0, 0, 207745, 1),   /* Bank Space Scroll IV (30 Days)        */
(1, 1, 10, -1, 55, 0, 0, 207746, 1),   /* Bank Space Scroll V  (30 Days)       */

-- Sub Folder Upgrading/ Accessories
(1, 2, 1, -1, 50, 0, 0, 203063, 1),   /* Master Accessory Driller */
(1, 2, 1, -1, 199, 0, 0, 242834, 1),   /* Perfect Sun Jewel +6 - Elven */
(1, 2, 1, -1, 399, 0, 0, 242837, 1),   /* Perfect Advanced Sun Jewel +12 - Elven */
(1, 2, 1, -1, 599, 0, 0, 242840, 1),   /* Perfect Enhanced Sun Jewel +16 - Elven */
(1, 2, 1, -1, 999, 0, 0, 242843, 1),   /* Perfect Tempered Sun Jewel +20 - Elven */
-- Sub Folder Upgrading / Armor
(1, 2, 2, -1, 50, 0, 0, 203062, 1),   /* Master Armor Driller */
(1, 2, 2, -1, 199, 0, 0, 242833, 1),   /* Perfect Moon Jewel +6 - Elven */
(1, 2, 2, -1, 399, 0, 0, 242836, 1),   /* Perfect Advanced Moon Jewel +12 - Elven */
(1, 2, 2, -1, 599, 0, 0, 242839, 1),   /* Perfect Enhanced Moon Jewel +16 - Elven */
(1, 2, 2, -1, 999, 0, 0, 242842, 1),   /* Perfect Tempered Moon Jewel +20 - Elven */
-- Sub Folder Upgrading / Weapons
(1, 2, 3, -1, 50, 0, 0, 203061, 1),   /* Master Weapon Driller */
(1, 2, 3, -1, 199, 0, 0, 242832, 1),   /* Perfect Star Jewel +6 - Elven */
(1, 2, 3, -1, 399, 0, 0, 242835, 1),   /* Perfect Advanced Star Jewel +12 - Elven */
(1, 2, 3, -1, 599, 0, 0, 242838, 1),   /* Perfect Enhanced Star Jewel +16 - Elven */
(1, 2, 3, -1, 999, 0, 0, 242841, 1),   /* Perfect Tempered Star Jewel +20 - Elven */
-- Sub Folder Upgrading / BackPackTicket
(1, 2, 4, -1, 115, 0, 0, 207498, 1),   /* Master Back Slot Item Driller */
(1, 2, 4, -1, 130, 0, 0, 207492, 1),   /* Perfect Nebula Jewel +6 */
(1, 2, 4, -1, 150, 0, 0, 207493, 1),   /* Perfect Advanced Nebula Jewel +12 */
(1, 2, 4, -1, 195, 0, 0, 240148, 1),   /* Perfect Advanced Nebula Jewel +16 */
(1, 2, 4, -1, 220, 0, 0, 240164, 1),   /* Perfect Tempered Nebula Jewel +20 */
-- Folder Costumes / Sub Single Pieces
(1, 3, 2, 1, 65, 0, 0, 224324, 1),   /* Oriental Military Silver Shield  */
-- Sub Weapons (Male)
(1, 3, 2, 2, 65, 0, 0, 211487, 1),   /* Oriental Royal Militiary Long Sword (Male)  */
-- Sub Weapon (Female)
(1, 3, 3, 1, 65, 0, 0, 211488, 1),   /* Oriental Fashionable Militiary Long Sword (Female) */
(1, 3, 3, 1, 65, 0, 0, 211489, 1),   /* Oriental Royal Militiary Dagger (Female)  */
-- Sub Weapons (unisex)
(1, 3, 3, 2, 65, 0, 0, 211474, 1),   /* Flower Thorn */
(1, 3, 3, 2, 65, 0, 0, 211837, 1),   /* Giant Kabo's Oboe */
(1, 3, 3, 2, 65, 0, 0, 212138, 1),   /* Igor's Axe */
(1, 3, 3, 2, 65, 0, 0, 211469, 1),   /* Little Devil's Staff */
(1, 3, 3, 2, 65, 0, 0, 211866, 1),   /* Maddening Consciousness Staff */
(1, 3, 3, 2, 65, 0, 0, 211476, 1),   /* Maid's Umbrella */
(1, 3, 3, 2, 65, 0, 0, 211468, 1),   /* Nobleman's Cane */
(1, 3, 3, 2, 65, 0, 0, 212192, 1),   /* Rainbow Lollipop */
(1, 3, 3, 2, 65, 0, 0, 211479, 1),   /* Scarlte Sickle */
(1, 3, 3, 2, 65, 0, 0, 213240, 1),   /* Snowflake Handbell */
(1, 3, 3, 2, 65, 0, 0, 211477, 1),   /* Doomlord's Blade (Male) */
(1, 3, 3, 2, 65, 0, 0, 211840, 1),   /* Alpenhorn */
(1, 3, 3, 2, 65, 0, 0, 212136, 1),   /* Ancient Silverblade */
(1, 3, 3, 2, 65, 0, 0, 211470, 1),   /* Angel Blade */
(1, 3, 3, 2, 65, 0, 0, 212189, 1),   /* Beer Jug */
(1, 3, 3, 2, 65, 0, 0, 211834, 1),   /* Chime wood Guitar */
(1, 3, 3, 2, 65, 0, 0, 211475, 1),   /* Cowboy Blade */
(1, 3, 3, 2, 65, 0, 0, 211835, 1),   /* Dimitar's Sound */
(1, 3, 3, 2, 65, 0, 0, 212137, 1),   /* Elders' Long Sword */
(1, 3, 3, 2, 65, 0, 0, 211471, 1),   /* Flower Fairy's Bee Staff */
(1, 3, 3, 2, 65, 0, 0, 211481, 1),   /* Spirit of the Cheetah */
(1, 3, 3, 2, 65, 0, 0, 211473, 1),   /* Sword of the Lost Butterfly */
(1, 3, 3, 2, 65, 0, 0, 211478, 1),   /* Tip of Purle Flame */
(1, 3, 3, 2, 65, 0, 0, 211480, 1),   /* Wild Thorn Long Sword */
(1, 3, 3, 2, 65, 0, 0, 222905, 1),   /* Kuokuo's Shield */
(1, 3, 3, 2, 65, 0, 0, 211486, 1),   /* Green Wabbit Baton */
(1, 3, 3, 2, 65, 0, 0, 211506, 1),   /* Red-Eyed Wabbit Baton */
(1, 3, 3, 2, 65, 0, 0, 224324, 1),   /* Oriental Military Silver Shield */

-- Costume Sub / Magic Wings
(1, 3, 4, 1, 115, 0, 0, 222899, 1),   /* Flower Fairy's Wings */
(1, 3, 4, 1, 115, 0, 0, 222997, 1),   /* Holy Angel's Wings */
(1, 3, 4, 1, 115, 0, 0, 222865, 1),   /* Little Devil's Wings */
(1, 3, 4, 1, 115, 0, 0, 224987, 1);   /* Mighty Phoenix Wings */

GO
/* DONE RUBYS Above */



-- /* ****** Diamond Sales ***** */
-- Uses Table [Sell_Cost]

INSERT [dbo].[NewShopInfo]
([World1], [SellType], [SellType1], [SellType2], [Sell_Cost], [Sell_Get_Bonus], [Item_DisplayerObjID], [Item_OrgObjID1], [Item_Count1])
VALUES
/*+++++ First 10 items with [SellType]=1 & [SellType1]=1 have a HOT icon +++++*/
/* if [Sell_BeginTime] is set to getdate() a NEW icon will be used */

/*+++++ Consumables +++++*/
-- TP & XP Sub folder 
(1, 1, 1, -1, 13, 2, 0, 201134, 10),	/* Experience Potion */
(1, 1, 1, -1, 2, 0, 0, 201134, 1),		/* Experience Potion */
(1, 1, 1, -1, 23, 4, 0, 201609, 10),	/* Powerful Experience Potion */
(1, 1, 1, -1, 3, 0, 0, 201609, 1),		/* Powerful Experience Potion */
(1, 1, 1, -1, 10, 2, 0, 201460, 1),		/* Party Experience Potion */
(1, 1, 1, -1, 13, 2, 0, 201610, 10),	/* 10 Skill Potion */
(1, 1, 1, -1, 2, 0, 0, 201610, 1),		/* Skill Potion */
(1, 1, 1, -1, 23, 4, 0, 201617, 10),	/* 10 Expert Skill Potion */
(1, 1, 1, -1, 3, 0, 0, 201617, 1),		/* Expert Skill Potion */
(1, 1, 1, -1, 23, 5, 0, 222925, 1),		/* Basic Experience Charm */
(1, 1, 1, -1, 37, 6, 0, 222927, 1),		/* Advanced Experiece Charm */
(1, 1, 1, -1, 97, 18, 0, 225216, 1),	/* Superior Experience Charm */
(1, 1, 1, -1, 23, 4, 0, 222926, 1),		/* Basic Talent Charm */
(1, 1, 1, -1, 37, 6, 0, 222928, 1),		/* Advanced Talent Charm */
(1, 1, 1, -1, 97, 18, 0, 225217, 1),	/* Superior Talent Charm */
(1, 1, 1, -1, 17, 2, 0, 201971, 1),		/* Basic Skill Reset Stone */
(1, 1, 1, -1, 197, 27, 0, 201086, 1),	/* Advanced Skill Reset Stone */
(1, 1, 1, -1, 75, 7, 0, 242628, 1),		/* Dual-Function Daily Quest Potion */
(1, 1, 1, -1, 350, 35, 0, 242628, 5),	/* 5 Dual-Function Daily Quest Potion */
(1, 1, 1, -1, 10, 0, 0, 203276, 10),	/* Experience Orb(10,000 Points) */
(1, 1, 1, -1, 1599, 65, 0, 202677, 1),	/* Power Up Pill - Level 50 */
(1, 1, 1, -1, 79, 7, 0, 242548, 1),		/* Experience Orb(10,000,000 Points) */
(1, 1, 1, -1, 69, 6, 0, 242551, 1),		/* Talent Orb(1,000,000 Points)  */
(1, 1, 1, -1, 49, 5, 0, 242631, 1),		/* Basic Daily Quest Skill Potion */
(1, 1, 1, -1, 69, 6, 0, 242629, 1),		/* Daily Quest Skill Potion */
(1, 1, 1, -1, 59, 4, 0, 242630, 1),		/* Basic Dual-Function Daily Quest Potion */

-- Transportation Sub Folder
(1, 1, 2, -1, 27, 8, 0, 202545, 10),	/* Love Crystal */
(1, 1, 2, -1, 7, 2, 0, 202902, 10),		/* 10 Marking Ink */
(1, 1, 2, -1, 27, 5, 0, 202903, 10),	/* 10 Transport Rune */
(1, 1, 2, -1, 3, 1, 0, 202903, 1),		/* Transport Rune */
(1, 1, 2, -1, 53, 10, 0, 202904, 10),	/* 10 Transport Portal Rune */
(1, 1, 2, -1, 6, 2, 0, 202904, 1),		/* Transport Portal Rune */
(1, 1, 2, -1, 27, 5, 0, 202435, 10),	/* 10 Home-sweet-home */
(1, 1, 2, -1, 3, 1, 0, 202435, 1),		/* Home-sweet-home */
(1, 1, 2, -1, 27, 5, 0, 203784, 10),	/* 10 Guid Castle Transport Stone */
(1, 1, 2, -1, 3, 1, 0, 203784, 1),		/* Guid Castle Transport Stone */
(1, 1, 2, -1, 75, 11, 0, 202905, 10),	/* 10 Passageway Rune */
(1, 1, 2, -1, 8, 2, 0, 202905, 1),		/* Passageway Rune */
(1, 1, 2, -1, 222, 22, 0, 202903, 99),	/* Transport Rune */
(1, 1, 2, -1, 299, 25, 0, 208783, 1),	/* Home-sweet-home(30 Days) */
(1, 1, 2, -1, 299, 25, 0, 208786, 1),	/* Guild Castle Transport Stone (30 Day) */

-- Must-Haves Sub Folder
(1, 1, 3, -1, 5, 1, 0, 203178, 1),		/* Ancient Treasure Key */
(1, 1, 3, -1, 135, 30, 0, 203605, 10),	/* Golden Amulet */
(1, 1, 3, -1, 14, 3, 0, 203605, 1),		/* Golden Amulet */
(1, 1, 3, -1, 195, 30, 0, 203283, 1),	/* Fruit of Forgetting */
(1, 1, 3, -1, 8, 2, 0, 202544, 1),		/* Exquisite Wedding Ring of the Moonlight */
(1, 1, 3, -1, 8, 2, 0, 202543, 1),		/* Exquisite Wedding Ring of the Sunrise */
(1, 1, 3, -1, 17, 2, 0, 203591, 1),		/* Lesser Mount Speed Potion (7 Days) */
(1, 1, 3, -1, 37, 6, 0, 203592, 1),		/* Lesser Mount Speed Potion (30 Days) */
(1, 1, 3, -1, 24, 2, 0, 202434, 1),		/* Daily Quest Ticket */
(1, 1, 3, -1, 13, 3, 0, 203525, 1),		/* God's Redemption Ticket */
(1, 1, 3, -1, 13, 3, 0, 201445, 25),	/* Megaphone */
(1, 1, 3, -1, 9, 3, 0, 202928, 1),		/* 10 Arcane Transmutor Charges */
(1, 1, 3, -1, 45, 8, 0, 202800, 1),		/* Application Form for a Custom Title */
(1, 1, 3, -1, 197, 30, 0, 202831, 1),	/* Class Maximum Expansion Ticket */
(1, 1, 3, -1, 265, 30, 0, 241601, 1),	/* Production Lucky Potion */
(1, 1, 3, -1, 75, 7, 0, 202670, 1),		/* Mount Speed Potion (30 Days) */
(1, 1, 3, -1, 13, 3, 0, 221384, 1),		/* Primary Amulet of Superior Life */
(1, 1, 3, -1, 10, 1, 0, 241126, 1),		/* Phirisus Shell Package (Large) */
(1, 1, 3, -1, 148, 5, 0, 240737, 5),	/* Badge of the Worldwide Flame */
(1, 1, 3, -1, 128, 4, 0, 240733, 5),	/* Knowledge Gem */
(1, 1, 3, -1, 261, 15, 0, 240181, 350),	/* Phirius Shell */
(1, 1, 3, -1, 149, 12, 0, 241598, 1),	/* Equipment Swap Expansion Ticket */
(1, 1, 3, -1, 13, 0, 0, 221386, 1),		/* Primary Amulet of Superior Magic */
(1, 1, 3, -1, 65, 4, 0, 202930, 1);		/* 100 Arcane Transmuter Charges */

GO

INSERT [dbo].[NewShopInfo]
([World1], [SellType], [SellType1],  [SellType2],[Sell_BeginTime], [Sell_Cost], [Sell_Get_Bonus], [Item_DisplayerObjID], [Item_OrgObjID1], [Item_Count1])
VALUES
/* if [Sell_BeginTime] is set to getdate() a NEW icon will be used */

(1, 1, 3, -1,getdate(),50,10,0,231885,1),		/* Pet Experience Charm */
(1, 1, 3, -1,getdate(),50,10,0,231886,1),		/* Pet Training Charm */
(1, 1, 3, -1,getdate(),50,10,0,222925,1),		/* Basic Experience Charm */
(1, 1, 3, -1,getdate(),50,10,0,222927,1),		/* Advanced Experience Charm */
(1, 1, 3, -1,getdate(),50,10,0,225216,1),		/* Superior Experience Charm */
(1, 1, 3, -1,getdate(),50,10,0,231887,1),		/* Powerful Basic Experience Charm */
(1, 1, 3, -1,getdate(),50,10,0,231888,1),		/* Powerful Advanced Experience Charm */
(1, 1, 3, -1,getdate(),50,10,0,231889,1),		/* Powerful Superior Experience Charm */
(1, 1, 3, -1,getdate(),50,10,0,231890,1),		/* Enhanced Basic Experience Charm */
(1, 1, 3, -1,getdate(),50,10,0,231891,1),		/* Enhanced Advanced Experience Charm */
(1, 1, 3, -1,getdate(),50,10,0,231892,1),		/* Enhanced Superior Experience Charm */
(1, 1, 3, -1,getdate(),50,10,0,231910,1),		/* Intermediate Experience Charm */
(1, 1, 3, -1,getdate(),50,10,0,231911,1),		/* Powerful Intermediate Experience Charm */
(1, 1, 3, -1,getdate(),50,10,0,231912,1),		/* Enhanced Intermediate Experience Charm */
(1, 1, 3, -1,getdate(),50,10,0,231913,1),		/* Superior Experience Charm */
(1, 1, 3, -1,getdate(),50,10,0,231914,1),		/* Powerful Superior Experience Charm */
(1, 1, 3, -1,getdate(),50,10,0,231915,1),		/* Enhanced Superior Experience Charm */
(1, 1, 3, -1,getdate(),100,20,0,231916,1),		/* Golden Experience Charm */
(1, 1, 3, -1,getdate(),100,20,0,231917,1),		/* Powerful Golden Experience Charm */
(1, 1, 3, -1,getdate(),100,20,0,231918,1),		/* Enhanced Golden Experience Charm */
(1, 1, 3, -1,getdate(),50,10,0,222926,1),		/* Basic Talent Charm */
(1, 1, 3, -1,getdate(),50,10,0,222928,1),		/* Advanced Talent Charm */
(1, 1, 3, -1,getdate(),50,10,0,225217,1),		/* Superior Talent Charm */
(1, 1, 3, -1,getdate(),50,10,0,231893,1),		/* Powerful Basic Talent Charm */
(1, 1, 3, -1,getdate(),50,10,0,231894,1),		/* Powerful Advanced Talent Charm */
(1, 1, 3, -1,getdate(),50,10,0,231906,1),		/* Powerful Superior Talent Charm */
(1, 1, 3, -1,getdate(),50,10,0,231907,1),		/* Enhanced Basic Talent Charm */
(1, 1, 3, -1,getdate(),50,10,0,231908,1),		/* Enhanced Advanced Talent Charm */
(1, 1, 3, -1,getdate(),50,10,0,231909,1),		/* Enhanced Superior Talent Charm */
(1, 1, 3, -1,getdate(),50,10,0,231967,1),		/* Intermediate Talent Charm */
(1, 1, 3, -1,getdate(),50,10,0,231968,1),		/* Powerful Intermediate Talent Charm */
(1, 1, 3, -1,getdate(),50,10,0,231969,1),		/* Enhanced Intermediate Talent Charm */
(1, 1, 3, -1,getdate(),50,10,0,231970,1),		/* Superior Talent Charm */
(1, 1, 3, -1,getdate(),50,10,0,231971,1),		/* Powerful Superior Talent Charm */
(1, 1, 3, -1,getdate(),50,10,0,231972,1),		/* Enhanced Superior Talent Charm */
(1, 1, 3, -1,getdate(),100,20,0,231973,1),		/* Golden Talent Charm */
(1, 1, 3, -1,getdate(),100,20,0,231974,1),		/* Powerful Golden Talent Charm */
(1, 1, 3, -1,getdate(),100,20,0,231975,1);		/* Enhanced Golden Talent Charm */

GO

INSERT [dbo].[NewShopInfo]
([World1], [SellType], [SellType1], [SellType2], [Sell_Cost], [Sell_Get_Bonus], [Item_DisplayerObjID], [Item_OrgObjID1], [Item_Count1])
VALUES


-- Transformation Sub folder
(1, 1, 4,-1,20,4,0,203196,1),		/* Transformation Potion - Donichuka */
(1, 1, 4,-1,20,4,0,203415,1),		/* Transformation Potion - Giant Guardian */
(1, 1, 4,-1,20,4,0,203416,1),		/* Transformation Potion - Gingerbread Man */
(1, 1, 4,-1,20,4,0,203417,1),		/* Transformation Potion - Jingle Brother */
(1, 1, 4,-1,20,4,0,203085,1),		/* Transformation Potion - Frog */
(1, 1, 4,-1,20,4,0,203086,1),		/* Transformation Potion - Goblin */
(1, 1, 4,-1,20,4,0,203087,1),		/* Transformation Potion - Fungus */
(1, 1, 4,-1,20,4,0,203088,1),		/* Transformation Potion - Obsessive Shadow */
(1, 1, 4,-1,20,4,0,203090,1),		/* Transformation Potion - Little Pumpkin */
(1, 1, 4,-1,20,4,0,203091,1),		/* Transformation Potion - Little Death */
(1, 1, 4,-1,20,4,0,203153,1),		/* Transformation Potion - Giant Guardian */
(1, 1, 4,-1,20,4,0,203154,1),		/* Transformation Potion - Ice Witch */
(1, 1, 4,-1,20,4,0,203155,1),		/* Transformation Potion - Cute Fungus */
(1, 1, 4,-1,20,4,0,203161,1),		/* Transformation Potion - Anteater */
(1, 1, 4,-1,20,4,0,203162,1),		/* Transformation Potion - Ent */
(1, 1, 4,-1,20,4,0,203163,1),		/* Transformation Potion - Shaggy Bear */
(1, 1, 4,-1,20,4,0,203164,1),		/* Transformation Potion - Demonthorn Vine */
(1, 1, 4,-1,20,4,0,203513,1),		/* Transformation Potion - Snowman */
(1, 1, 4,-1,20,4,0,204346,1),		/* Transformation Potion - Male Noble Wabbit */
(1, 1, 4,-1,20,4,0,204347,1),		/* Transformation Potion - Male Noble Wabbit */
(1, 1, 4,-1,20,4,0,204348,1),		/* Transformation Potion - Male Noble Wabbit */
(1, 1, 4,-1,20,4,0,204349,1),		/* Transformation Potion - Male Noble Wabbit */
(1, 1, 4,-1,20,4,0,204350,1),		/* Transformation Potion - Female Noble Wabbit */
(1, 1, 4,-1,20,4,0,204351,1),		/* Transformation Potion - Female Noble Wabbit */
(1, 1, 4,-1,20,4,0,204352,1),		/* Transformation Potion - Female Noble Wabbit */
(1, 1, 4,-1,20,4,0,204353,1),		/* Transformation Potion - Female Noble Wabbit */
(1, 1, 4,-1,20,4,0,204362,1),		/* Transformation Potion - Eagle Feather Egg */
(1, 1, 4,-1,20,4,0,204365,1),		/* Transformation Potion - Lacy Egg */
(1, 1, 4,-1,20,4,0,204366,1),		/* Transformation Potion - Lacy Egg */
(1, 1, 4,-1,20,4,0,204367,1),		/* Transformation Potion - Lacy Egg */
(1, 1, 4,-1,20,4,0,204368,1),		/* Transformation Potion - Lacy Egg */
(1, 1, 4,-1,20,4,0,205078,1),		/* Transformation Potion - Hammertooth Sage */
(1, 1, 4,-1,20,4,0,206221,1),		/* Transformation Potion - Zombie */
(1, 1, 4,-1,20,4,0,206223,1),		/* Transformation Potion - Ooze */
(1, 1, 4,-1,20,4,0,206224,1),		/* Transformation Potion - Prisoner's Shadow */
(1, 1, 4,-1,20,4,0,206225,1),		/* Transformation Potion - Vicious Night Shadow Bat */
(1, 1, 4,-1,20,4,0,208965,1),		/* Transformation Potion - White Wabbit */
(1, 1, 4,-1,20,4,0,209545,1),		/* Transformation Potion - Brown Wabbit */
(1, 1, 4,-1,20,4,0,209560,1),		/* Transformation Potion - Black Wabbit */
(1, 1, 4,-1,20,4,0,240450,1),		/* Transformation Potion - Evil Teddy Bear */
(1, 1, 4,-1,20,4,0,240451,1),		/* Transformation Potion - Smirking Castle Clown */
(1, 1, 4,-1,20,4,0,240465,1),		/* Transformation Potion - Rock Guardian */
(1, 1, 4,-1,20,4,0,240471,1),		/* Transformation Potion - Annelia */
(1, 1, 4,-1,20,4,0,241252,1),		/* Transformation Potion - Sacred Ice Crystal JuJu */
(1, 1, 4,-1,20,4,0,241253,1),		/* Transformation Potion - Breaking Dawn JuJu */
(1, 1, 4,-1,20,4,0,241264,1),		/* Transformation Potions - Exuberant Celebration JuJu */
(1, 1, 4,-1,20,4,0,241265,1),		/* Transformation Potion - Greenfeather Sparrow JuJu */
(1, 1, 4,-1,20,4,0,204371,1),		/* Transformation Potion Bag - Male Noble Wabbit */
(1, 1, 4,-1,20,4,0,204372,1),		/* Transformation Potion Bag - Male Noble Wabbit */
(1, 1, 4,-1,20,4,0,204373,1),		/* Transformation Potion Bag - Male Noble Wabbit */
(1, 1, 4,-1,20,4,0,204374,1),		/* Transformation Potion Bag - Male Noble Wabbit */
(1, 1, 4,-1,20,4,0,204375,1),		/* Transformation Potion Bag - Female Noble Wabbit */
(1, 1, 4,-1,20,4,0,204376,1),		/* Transformation Potion Bag - Female Noble Wabbit */
(1, 1, 4,-1,20,4,0,204377,1),		/* Transformation Potion Bag - Female Noble Wabbit */
(1, 1, 4,-1,20,4,0,204378,1),		/* Transformation Potion Bag - Female Noble Wabbit */
(1, 1, 4,-1,20,4,0,204381,1),		/* Transformation Potion Bag - Eagle Feather Egg */
(1, 1, 4,-1,20,4,0,204382,1),		/* Transformation Potion Bag - Eagle Feather Egg */
(1, 1, 4,-1,20,4,0,204383,1),		/* Transformation Potion Bag - Eagle Feather Egg */
(1, 1, 4,-1,20,4,0,204384,1),		/* Transformation Potion Bag - Eagle Feather Egg */
(1, 1, 4,-1,20,4,0,204385,1),		/* Transformation Potion Bag - Lacy Egg */
(1, 1, 4,-1,20,4,0,204386,1),		/* Transformation Potion Bag - Lacy Egg */
(1, 1, 4,-1,20,4,0,204387,1),		/* Transformation Potion Bag - Lacy Egg */
(1, 1, 4,-1,20,4,0,204388,1),		/* Transformation Potion Bag - Lacy Egg */

-- Backpack Tickets Sub Folder
(1, 1, 5, -1, 599, 45, 0, 206698, 1),		/* High Qualiy Leather Backpack III */
(1, 1, 5, -1, 599, 45, 0, 206699, 1),		/* High Qualiy Leather Backpack III */
(1, 1, 5, -1, 599, 45, 0, 206700, 1),		/* High Qualiy Leather Backpack III */
(1, 1, 5, -1, 599, 45, 0, 206701, 1),		/* High Qualiy Leather Backpack III */

-- Food Sub folder
(1, 1, 6, -1, 20, 4, 203714, 202240, 10),		/* Egg Rice Dumplings */
(1, 1, 6, -1, 20, 4, 203714, 200359, 10),		/* Hot Stew */
(1, 1, 6, -1, 20, 4, 203714, 241961, 10),		/* Soulmate Mixed Dessert */
(1, 1, 6, -1, 20, 4, 203714, 241967, 10),		/* Featured Cuisine Delicacy */
(1, 1, 6, -1, 20, 4, 203714, 241964, 10),		/* Everlasting Love Spiced Juice */
(1, 1, 6, -1, 20, 4, 203714, 202897, 10),		/* Chocolate Sweetheart Cake Slice */
(1, 1, 6, -1, 25, 0, 203714, 200776, 10),		/* Necropolis Cake */
(1, 1, 6, -1, 15, 0, 203714, 206248, 1);		/* Fresh Ostrich Feast */



GO

INSERT [dbo].[NewShopInfo]
([World1], [SellType], [SellType1], [SellType2], [Sell_Cost], [Sell_Get_Bonus], [Item_DisplayerObjID], [Item_OrgObjID1], [Item_Count1])
VALUES


-- Potion Sub folder
(1, 1, 7, -1, 13, 3, 0, 201139, 1),				/* Big Angel's Sigh */
(1, 1, 7, -1, 19, 3, 0, 201141, 1),				/* Phoenix's Redemption */
(1, 1, 7, -1, 7, 2, 0, 201619, 1),				/* Potion of Luck */
(1, 1, 7, -1, 19, 1, 0, 204553, 1),				/* 1 Universal Potion */
(1, 1, 7, -1, 190, 19, 0, 204553, 10),			/* 10 Universal Potion */
(1, 1, 7, -1,20,4,0,207578,1),		/* Cat-Errant Transformation Potion */
(1, 1, 7, -1,20,4,0,207579,1),		/* Fungus Transformation Potion */
(1, 1, 7, -1,20,4,0,207580,1),		/* Parrot Transformation Potion */
(1, 1, 7, -1,20,4,0,207587,1),		/* Little White Wabbit Transformation Potion */
(1, 1, 7, -1,20,4,0,207588,1),		/* Little Black Wabbit Transformation Potion */
(1, 1, 7, -1,20,4,0,207589,1),		/* Little Brown Wabbit Transformation Potion */
(1, 1, 7, -1,20,4,0,208492,1),		/* Lulu Transformation Potion */
(1, 1, 7, -1,20,4,0,208493,1),		/* Hill Bear Cub Transformation Potion */
(1, 1, 7, -1,20,4,0,208494,1),		/* Hawk Transformation Potion */
(1, 1, 7, -1,20,4,0,208495,1),		/* Kipos Transformation Potion */
(1, 1, 7, -1,20,4,0,208496,1),		/* Ystra Snow Ferret Transformation Potion */
(1, 1, 7, -1,20,4,0,208497,1),		/* Shaggy Snow Bear Transformation Potion */
(1, 1, 7, -1,20,4,0,208498,1),		/* Kal Turok King Myrmex Transformation Potion */
(1, 1, 7, -1,20,4,0,208499,1),		/* Kal Turok Termite Transformation Potion */
(1, 1, 7, -1,20,4,0,208500,1),		/* Forest Leopard Transformation Potion */
(1, 1, 7, -1,20,4,0,208501,1),		/* Rainbow Falcon Transformation Potion */
(1, 1, 7, -1,20,4,0,208502,1),		/* Big Kuman Transformation Potion */
(1, 1, 7, -1,20,4,0,208503,1),		/* Rainforest Hunter Transformation Potion */
(1, 1, 7, -1,20,4,0,208504,1),		/* Executioner Puppet Transformation Potion */
(1, 1, 7, -1,20,4,0,208505,1),		/* Savage Giant Wolf Transformation Potion */
(1, 1, 7, -1,20,4,0,208506,1),		/* Ice Plain Sabretooth Tiger Transformation Potion */
(1, 1, 7, -1,20,4,0,208507,1),		/* Snowman Transformation Potion */
(1, 1, 7, -1,20,4,0,208508,1),		/* Little Snowman King Transformation Potion */
(1, 1, 7, -1,20,4,0,208509,1),		/* Transformation Potion - Blue-Eyed Speckled Rabbit */
(1, 1, 7, -1,20,4,0,208510,1),		/* Nunu Transformation Potion */
(1, 1, 7, -1,20,4,0,208511,1),		/* Pingou Transformation Potion */
(1, 1, 7, -1,20,4,0,240186,1),		/* Evil Teddy Bear Transformation Potion */
(1, 1, 7, -1,20,4,0,240187,1),		/* Soul-Eater Clown Transformation Potion */
(1, 1, 7, -1,20,4,0,240188,1),		/* Fireboot Warrior Transformation Potion */
(1, 1, 7, -1,20,4,0,240189,1),		/* Fireboot Priest Transformation Potion */
(1, 1, 7, -1,20,4,0,240190,1),		/* Nocturnal Zombie Transformation Potion */
(1, 1, 7, -1,20,4,0,204227,1),		/* Jonesy's Transformation Potion */

-- Sigils Sub Folder
(1, 1, 8, -1, 5, 1, 205295, 203024, 1),		/* Blessing of the Flower God */
(1, 1, 8, -1, 40, 5, 205295, 200055, 1),		/* Defense Sigil */
(1, 1, 8, -1, 40, 5, 205295, 200962, 1),		/* Magic Defense Sigil */
(1, 1, 8, -1, 13, 1, 205295, 200056, 1),		/* Attack Sigil */
(1, 1, 8, -1, 13, 1, 205295, 200927, 1),		/* Magic Attack Sigil */

-- Reset Scrolls Sub folder
(1, 1, 9, -1,100,20,0,207468,1),	/* Daily Quest Ticket (1 Day) */
(1, 1, 9, -1,100,20,0,207469,1),	/* Malatina's Event Repeat Ticket (1 Day) */
(1, 1, 9, -1,100,20,0,207470,1),	/* Malatina's Dungeon Repeat Ticket (1 Day) */
(1, 1, 9, -1,100,20,0,207471,1),	/* Malatina's Course of Terror Repeat Ticket (1 Day) */
(1, 1, 9, -1,20,4,0,201291,1),		/* Furniture Exchange Ticket */
(1, 1, 9, -1,20,4,0,202434,1),		/* Daily Quest Ticket */
(1, 1, 9, -1,100,20,0,202831,1),	/* Class Maximum Expansion Ticket */
(1, 1, 9, -1,20,4,0,203525,1),		/* God's Redemption Ticket */
(1, 1, 9, -1,20,4,0,203876,1),		/* Debt Clearance Ticket */
(1, 1, 9, -1,20,4,0,203877,1),		/* Enhanced Debt Clearance Ticket */
(1, 1, 9, -1,20,4,0,203878,1),		/* Ultimate Debt Clearance Ticket */
(1, 1, 9, -1,20,4,0,204513,1),		/* Breeding Slot Ticket */
(1, 1, 9, -1,20,4,0,204922,1),		/* Pet Pair Merging Ticket */
(1, 1, 9, -1,20,4,0,205814,1),		/* Malatina Event Repeat Ticket */
(1, 1, 9, -1,20,4,0,205815,1),		/* Malatina's Dungeon Repeat Ticket */
(1, 1, 9, -1,20,4,0,205816,1),		/* Malatina's Course of Terror Repeat Ticket */
(1, 1, 9, -1,20,4,0,206351,1),		/* Guild Drill Ground Repeat Ticket */
(1, 1, 9, -1,20,4,0,206929,1),		/* White Day Repeat Ticket */
(1, 1, 9, -1,20,4,0,240043,1),		/* Fairy Tale Event Repeat Ticket */
(1, 1, 9, -1,50,10,0,241598,1),		/* Equipment Swap Expansion Ticket */
(1, 1, 9, -1,25,5,0,242687,1),		/* Crafting Skill Craftsman Expansion Ticket */
(1, 1, 9, -1,50,10,0,242688,1),		/* Crafting Skill Expert Expansion Ticket */
(1, 1, 9, -1,75,15,0,242689,1),		/* Crafting Skill Master Expansion Ticket */
(1, 1, 9, -1,100,20,0,242690,1);	/* Crafting Skill Legend Expansion Ticket */

GO

/*+++++ Upgrade +++++*/

-- Accessories Sub folder
INSERT [dbo].[NewShopInfo]
([World1], [SellType], [SellType1], [SellType2], [Sell_Cost], [Sell_Get_Bonus], [Item_DisplayerObjID], [Item_OrgObjID1], [Item_Count1])
VALUES

-- Rune Slot Dillers Sub folder
(1, 2, 1, 1,6,1, 0,203053,1),		/* Basic Accessory Driller */
(1, 2, 1, 1,23,4,0,203054,1),		/* Advanced Accessory Driller */
(1, 2, 1, 1,35,6,0,203060,1),		/* Expert Accessory Driller */
(1, 2, 1, 1,45,10,0,203063,1),		/* Master Accessory Driller */

-- Sub Stones for Lv1-90
(1, 2, 1, 2,40,4,0,203040,1),		/* Sun Jewel - Blessing */
(1, 2, 1, 2,40,4,0,203041,1),		/* Sun Jewel - Protection */
(1, 2, 1, 2,40,4,0,203042,1),		/* Sun Jewel - Wishes */
(1, 2, 1, 2,40,4,0,203043,1),		/* Sun Jewel - Holy Light */
(1, 2, 1, 2,40,4,0,242807,10),		/* Sun Jewel - Elven */
(1, 2, 1, 2,50,10,0,203046,1),		/* Perfect Sun Jewel - Blessing */
(1, 2, 1, 2,50,10,0,203049,1),		/* Perfect Sun Jewel - Protection */
(1, 2, 1, 2,50,10,0,203052,1),		/* Perfect Sun Jewel - Wishes */
(1, 2, 1, 2,50,10,0,203057,1),		/* Perfect Sun Jewel - Holy Light */
(1, 2, 1, 2,50,10,0,206334,1),		/* Mighty Sun Jewel - Blessing */
(1, 2, 1, 2,50,10,0,206337,1),		/* Mighty Sun Jewel - Protection */
(1, 2, 1, 2,50,10,0,206340,1),		/* Mighty Sun Jewel - Wishes */
(1, 2, 1, 2,50,10,0,206343,1),		/* Mighty Sun Jewel - Holy Light */
(1, 2, 1, 2,50,10,0,206956,1),		/* Advanced Sun Jewel - Blessing */
(1, 2, 1, 2,50,10,0,206959,1),		/* Advanced Sun Jewel - Protection */
(1, 2, 1, 2,50,10,0,206962,1),		/* Advanced Sun Jewel - Wishes */
(1, 2, 1, 2,50,10,0,206965,1),		/* Advanced Sun Jewel - Holy Light */
(1, 2, 1, 2,100,10,0,242810,10),    /* Advanced Sun Jewel - Elven */
(1, 2, 1, 2,50,10,0,206980,1),		/* Sun Jewel of Master's Blessing */
(1, 2, 1, 2,50,10,0,206983,1),		/* Sun Jewel of Master's Protection */
(1, 2, 1, 2,50,10,0,206986,1),		/* Sun Jewel of Master's Wishes */
(1, 2, 1, 2,50,10,0,206989,1),		/* Sun Jewel of Master's Holy Light */
(1, 2, 1, 2,50,10,0,207763,1),		/* Sun Jewel - Revelation */
(1, 2, 1, 2,50,10,0,207766,1),		/* Advanced Sun Jewel - Revelation */
(1, 2, 1, 2,50,10,0,207769,1),		/* Sun Jewel of Master's Revelation */
(1, 2, 1, 2,50,10,0,207773,1),		/* Sun Jewel - Faith */
(1, 2, 1, 2,50,10,0,207776,1),		/* Advanced Sun Jewel - Faith */
(1, 2, 1, 2,50,10,0,207779,1),		/* Sun Jewel of Master's Faith */
(1, 2, 1, 2,50,10,0,207782,1),		/* Enhanced Sun Jewel - Faith */
(1, 2, 1, 2,50,10,0,207785,1),		/* Tempered Sun Jewel - Faith */
(1, 2, 1, 2,50,10,0,207788,1),		/* Perfect Sun Jewel - Faith */
(1, 2, 1, 2,50,10,0,207791,1),		/* Perfect Advanced Sun Jewel - Faith */
(1, 2, 1, 2,50,10,0,207794,1),		/* Perfect Sun Jewel of Master's Faith */
(1, 2, 1, 2,50,10,0,207802,1),		/* Perfect Sun Jewel - Revelation */
(1, 2, 1, 2,50,10,0,207805,1),		/* Perfect Advanced Sun Jewel - Revelation */
(1, 2, 1, 2,50,10,0,207808,1),		/* Perfect Sun Jewel of Master's Revelation */
(1, 2, 1, 2,50,10,0,240115,1),		/* Enhanced Sun Jewel - Revelation */
(1, 2, 1, 2,50,10,0,240131,1),		/* Tempered Sun Jewel - Revelation */
(1, 2, 1, 2,50,10,0,240135,1),		/* Perfect Enhanced Sun Jewel - Faith */
(1, 2, 1, 2,50,10,0,240147,1),		/* Perfect Enhanced Sun Jewel - Revelation */
(1, 2, 1, 2,50,10,0,240151,1),		/* Perfect Tempered Sun Jewel - Faith */
(1, 2, 1, 2,50,10,0,240163,1),		/* Perfect Tempered Sun Jewel - Revelation */
(1, 2, 1, 2,50,10,0,240174,1),		/* Perfect Advanced Sun Jewel - Starsplinter */
(1, 2, 1, 2,50,10,0,240177,1),		/* Perfect Sun Jewel of Master's Starsplinter */
(1, 2, 1, 2,50,10,0,240180,1),		/* Perfect Enhanced Sun Jewel - Starsplinter */
(1, 2, 1, 2,50,10,0,242722,1),		/* Starsplinter Sun Jewel */
(1, 2, 1, 2,50,10,0,242725,1),		/* Advanced Starsplinter Sun Jewel */
(1, 2, 1, 2,50,10,0,242728,1),		/* Sun Jewel of Master's Starsplinter */
(1, 2, 1, 2,50,10,0,242731,1),		/* Enhanced Sun Jewel - Starsplinter */
(1, 2, 1, 2,50,10,0,242734,1),		/* Tempered Sun Jewel - Starsplinter */
(1, 2, 1, 2,50,10,0,242760,1),		/* Perfect Tempered Sun Jewel - Starsplinter */
(1, 2, 1, 2,50,10,0,242834,1),		/* Perfect Tempered Sun Jewel - Starsplinter */

-- Sub Stones for Lv1-100
(1, 2, 1, 3,50,10,0,206968,1),		/* Perfect Advanced Sun Jewel - Blessing */
(1, 2, 1, 3,50,10,0,206971,1),		/* Perfect Advanced Sun Jewel - Protection */
(1, 2, 1, 3,50,10,0,206974,1),		/* Perfect Advanced Sun Jewel - Wishes */
(1, 2, 1, 3,50,10,0,206977,1),		/* Perfect Advanced Sun Jewel - Holy Light */
(1, 2, 1, 3,50,10,0,207791,1),		/* Perfect Advanced Sun Jewel - Faith */
(1, 2, 1, 3,50,10,0,207805,1),		/* Perfect Advanced Sun Jewel - Revelation */
(1, 2, 1, 3,50,10,0,240174,1),		/* Perfect Advanced Sun Jewel - Starsplinter */
(1, 2, 1, 3,50,10,0,242837,1),		/* Perfect Advanced Sun Jewel - Elven */
(1, 2, 1, 3,45,10,0,240171,6),		/* Perfect Starsplinter Sun Jewel */
(1, 2, 1, 3,50,10,0,207479,1),		/* Perfect Sun Jewel of Master's Blessing */
(1, 2, 1, 3,50,10,0,207482,1),		/* Perfect Sun Jewel of Master's Protection */
(1, 2, 1, 3,50,10,0,207485,1),		/* Perfect Sun Jewel of Master's Wishes */
(1, 2, 1, 3,50,10,0,207488,1),		/* Perfect Sun Jewel of Master's Holy Light */
(1, 2, 1, 3,200,20,0,242819,10),	/* Sun Jewel - Elven Master */
(1, 2, 1, 3,90,10,0,242834,6),		/* Perfect Sun Jewel - Elven */
(1, 2, 1, 3,139,14,0,242837,6),		/* Perfect Advanced Sun Jewel - Elven */
(1, 2, 1, 3,120,12,0,242840,4),		/* Perfect Enhanced Sun Jewel - Elven */


-- Armor Sub sub

-- Sub Rune Slot Drillers
(1, 2, 2, 1,50,10,0,201237,1),		/* Basic Armor Driller */
(1, 2, 2, 1,50,10,0,201238,1),		/* Advanced Armor Driller */
(1, 2, 2, 1,50,10,0,203059,1),		/* Expert Armor Driller */
(1, 2, 2, 1,50,10,0,203062,1),		/* Master Armor Driller */

-- Sub Stones for Lv1-90
(1, 2, 2, 2,50,10,0,201097,1),		/* Moon Jewel - Blessing */
(1, 2, 2, 2,50,10,0,201449,1),		/* Moon Jewel - Protection */
(1, 2, 2, 2,50,10,0,201457,1),		/* Moon Jewel - Wishes */
(1, 2, 2, 2,50,10,0,201459,1),		/* Moon Jewel - Holy Light */
(1, 2, 2, 2,50,10,0,203045,1),		/* Perfect Moon Jewel - Blessing */
(1, 2, 2, 2,50,10,0,203048,1),		/* Perfect Moon Jewel - Protection */
(1, 2, 2, 2,50,10,0,203051,1),		/* Perfect Moon Jewel - Wishes */
(1, 2, 2, 2,50,10,0,203056,1),		/* Perfect Moon Jewel - Holy Light */
(1, 2, 2, 2,50,10,0,206333,1),		/* Mighty Moon Jewel - Blessing */
(1, 2, 2, 2,50,10,0,206336,1),		/* Mighty Moon Jewel - Protection */
(1, 2, 2, 2,50,10,0,206339,1),		/* Mighty Moon Jewel - Wishes */
(1, 2, 2, 2,50,10,0,206342,1),		/* Mighty Moon Jewel - Holy Light */
(1, 2, 2, 2,50,10,0,206955,1),		/* Advanced Moon Jewel - Blessing */
(1, 2, 2, 2,50,10,0,206958,1),		/* Advanced Moon Jewel - Protection */
(1, 2, 2, 2,50,10,0,206961,1),		/* Advanced Moon Jewel - Wishes */
(1, 2, 2, 2,50,10,0,206964,1),		/* Advanced Moon Jewel - Holy Light */
(1, 2, 2, 2,50,10,0,206967,1),		/* Perfect Advanced Moon Jewel - Blessing */
(1, 2, 2, 2,50,10,0,206970,1),		/* Perfect Advanced Moon Jewel - Protection */
(1, 2, 2, 2,50,10,0,206973,1),		/* Perfect Advanced Moon Jewel - Wishes */
(1, 2, 2, 2,50,10,0,206976,1),		/* Perfect Advanced Moon Jewel - Holy Light */
(1, 2, 2, 2,50,10,0,206979,1),		/* Moon Jewel of Master's Blessing */
(1, 2, 2, 2,50,10,0,206982,1),		/* Moon Jewel of Master's Protection */
(1, 2, 2, 2,50,10,0,206985,1),		/* Moon Jewel of Master's Wishes */
(1, 2, 2, 2,50,10,0,206988,1),		/* Moon Jewel of Master's Holy Light */
(1, 2, 2, 2,50,10,0,207478,1),		/* Perfect Moon Jewel of Master's Blessing */
(1, 2, 2, 2,50,10,0,207481,1),		/* Perfect Moon Jewel of Master's Protection */
(1, 2, 2, 2,50,10,0,207484,1),		/* Perfect Moon Jewel of Master's Wishes */
(1, 2, 2, 2,50,10,0,207487,1),		/* Perfect Moon Jewel of Master's Holy Light */
(1, 2, 2, 2, 50,10,0,207762,1),		/* Moon Jewel - Revelation */
(1, 2, 2, 2, 50,10,0,207765,1),		/* Advanced Moon Jewel - Revelation */
(1, 2, 2, 2, 50,10,0,207768,1),		/* Moon Jewel of Master's Revelation */
(1, 2, 2, 2, 50,10,0,207772,1),		/* Moon Jewel - Faith */
(1, 2, 2, 2, 50,10,0,207775,1),		/* Advanced Moon Jewel - Faith */
(1, 2, 2, 2, 50,10,0,207778,1),		/* Moon Jewel of Master's Faith */
(1, 2, 2, 2, 50,10,0,207781,1),		/* Enhanced Moon Jewel - Faith */
(1, 2, 2, 2, 50,10,0,207784,1),		/* Tempered Moon Jewel - Faith */
(1, 2, 2, 2, 50,10,0,207787,1),		/* Perfect Moon Jewel - Faith */
(1, 2, 2, 2, 50,10,0,207790,1),		/* Perfect Advanced Moon Jewel - Faith */
(1, 2, 2, 2, 50,10,0,207793,1),		/* Perfect Moon Jewel of Master's Faith */

-- Sub Stones for Lv1-90
(1, 2, 2, 3, 50,10,0,207801,1),		/* Perfect Moon Jewel - Revelation */
(1, 2, 2, 3, 50,10,0,207804,1),		/* Perfect Advanced Moon Jewel - Revelation */
(1, 2, 2, 3, 50,10,0,207807,1),		/* Perfect Moon Jewel of Master's Revelation */
(1, 2, 2, 3, 50,10,0,240114,1),		/* Enhanced Moon Jewel - Revelation */
(1, 2, 2, 3, 50,10,0,240130,1),		/* Tempered Moon Jewel - Revelation */
(1, 2, 2, 3, 50,10,0,240134,1),		/* Perfect Enhanced Moon Jewel - Faith */
(1, 2, 2, 3, 50,10,0,240146,1),		/* Perfect Enhanced Moon Jewel - Revelation */
(1, 2, 2, 3, 50,10,0,240150,1),		/* Perfect Tempered Moon Jewel - Faith */
(1, 2, 2, 3, 50,10,0,240162,1),		/* Perfect Tempered Moon Jewel - Revelation */
(1, 2, 2, 3, 50,10,0,240170,1),		/* Perfect Starsplinter Moon Jewel */
(1, 2, 2, 3, 50,10,0,240173,1),		/* Perfect Advanced Moon Jewel - Starsplinter */
(1, 2, 2, 3, 50,10,0,240176,1),		/* Perfect Moon Jewel of Master's Starsplinter */
(1, 2, 2, 3, 50,10,0,240179,1),		/* Perfect Enhanced Moon Jewel - Starsplinter */
(1, 2, 2, 3, 50,10,0,242721,1),		/* Starsplinter Moon Jewel */
(1, 2, 2, 3, 50,10,0,242724,1),		/* Advanced Starsplinter Moon Jewel */
(1, 2, 2, 3, 50,10,0,242727,1),		/* Moon Jewel of Master's Starsplinter */
(1, 2, 2, 3, 50,10,0,242730,1),		/* Enhanced Moon Jewel - Starsplinter */
(1, 2, 2, 3, 50,10,0,242733,1),		/* Tempered Moon Jewel - Starsplinter */
(1, 2, 2, 3, 50,10,0,242759,1),		/* Perfect Tempered Moon Jewel - Starsplinter */
(1, 2, 2, 3, 40,4,0,242806,10),		/* Moon Jewel - Elven */
(1, 2, 2, 3, 100,10,0,242809,10),	/* Advanced Moon Jewel - Elven */
(1, 2, 2, 3, 200,20,0,242818,10),	/* Moon Jewel - Elven Master */
(1, 2, 2, 3, 90,10,0,242833,6),		/* Perfect Moon Jewel - Elven */
(1, 2, 2, 3, 139,14,0,242836,6),	/* Perfect Advanced Moon Jewel - Elven */
(1, 2, 2, 3, 99,10,0,242839,4),		/* Perfect Enhanced Moon Jewel - Elven */
(1, 2, 2, 3, 200,22,0,242842,4),	/* Perfect Tempered Moon Jewel - Elven */

-- Sub Weapon

-- Sub Stones for Lv1-100
(1,2,3, 1, 17,3,0,201087,1),		/* Basic Weapon Driller */
(1, 2, 3, 1,45,6,0,201088,1),		/* Advanced Weapon Driller */
(1, 2, 3, 1,75,8,0,203058,1),		/* Expert Weapon Driller */
(1, 2, 3, 1,100,10,0,203061,1),		/* Master Weapon Driller */

-- Stones for Lv1-90
(1, 2, 3, 2,50,10,0,201095,1),		/* Star Jewel - Blessing */
(1, 2, 3, 2,50,10,0,201448,1),		/* Star Jewel - Protection */
(1, 2, 3, 2,50,10,0,201450,1),		/* Star Jewel - Wishes */
(1, 2, 3, 2,50,10,0,201458,1),		/* Star Jewel - Holy Light */
(1, 2, 3, 2,50,10,0,203044,1),		/* Perfect Star Jewel - Blessing */
(1, 2, 3, 2,50,10,0,203047,1),		/* Perfect Star Jewel - Protection */
(1, 2, 3, 2,50,10,0,203050,1),		/* Perfect Star Jewel - Wishes */
(1, 2, 3, 2,50,10,0,203055,1),		/* Perfect Star Jewel - Holy Light */
(1, 2, 3, 2,50,10,0,206332,1),		/* Mighty Star Jewel - Blessing */
(1, 2, 3, 2,50,10,0,206335,1),		/* Mighty Star Jewel - Protection */
(1, 2, 3, 2,50,10,0,206338,1),		/* Mighty Star Jewel - Wishes */
(1, 2, 3, 2,50,10,0,206341,1),		/* Mighty Star Jewel - Holy Light */
(1, 2, 3, 2,50,10,0,206954,1),		/* Advanced Star Jewel - Blessing */
(1, 2, 3, 2,50,10,0,206957,1),		/* Advanced Star Jewel - Protection */
(1, 2, 3, 2,50,10,0,206960,1),		/* Advanced Star Jewel - Wishes */
(1, 2, 3, 2,50,10,0,206963,1),		/* Advanced Star Jewel - Holy Light */
(1, 2, 3, 2,50,10,0,206966,1),		/* Perfect Advanced Star Jewel - Blessing */
(1, 2, 3, 2,50,10,0,206969,1),		/* Perfect Advanced Star Jewel - Protection */
(1, 2, 3, 2,50,10,0,206972,1),		/* Perfect Advanced Star Jewel - Wishes */
(1, 2, 3, 2,50,10,0,206975,1),		/* Perfect Advanced Star Jewel - Holy Light */
(1, 2, 3, 2,50,10,0,206978,1),		/* Star Jewel of Master's Blessing */
(1, 2, 3, 2,50,10,0,206981,1),		/* Star Jewel of Master's Protection */
(1, 2, 3, 2,50,10,0,206984,1),		/* Star Jewel of Master's Wishes */
(1, 2, 3, 2,50,10,0,206987,1),		/* Star Jewel of Master's Holy Light */
(1, 2, 3, 2,50,10,0,207477,1),		/* Perfect Star Jewel of Master's Blessing */
(1, 2, 3, 2,50,10,0,207480,1),		/* Perfect Star Jewel of Master's Protection */
(1, 2, 3, 2,50,10,0,207483,1),		/* Perfect Star Jewel of Master's Wishes */
(1, 2, 3, 2,50,10,0,207486,1),		/* Perfect Star Jewel of Master's Holy Light */
(1, 2, 3, 2,50,10,0,207761,1),		/* Star Jewel - Revelation */
(1, 2, 3, 2,50,10,0,207764,1),		/* Advanced Star Jewel - Revelation */
(1, 2, 3, 2,50,10,0,207767,1),		/* Star Jewel of Master's Revelation */
(1, 2, 3, 2,50,10,0,207771,1),		/* Star Jewel - Faith */
(1, 2, 3, 2,50,10,0,207774,1),		/* Advanced Star Jewel - Faith */
(1, 2, 3, 2,50,10,0,207777,1),		/* Star Jewel of Master's Faith */
(1, 2, 3, 2,50,10,0,207780,1),		/* Enhanced Star Jewel - Faith */
(1, 2, 3, 2,50,10,0,207783,1),		/* Tempered Star Jewel - Faith */
(1, 2, 3, 2,50,10,0,207786,1),		/* Perfect Star Jewel - Faith */
(1, 2, 3, 2,50,10,0,207789,1),		/* Perfect Advanced Star Jewel - Faith */
(1, 2, 3, 2,50,10,0,207792,1),		/* Perfect Star Jewel of Master's Faith */
(1, 2, 3, 2,50,10,0,207800,1),		/* Perfect Star Jewel - Revelation */
(1, 2, 3, 2,50,10,0,207803,1),		/* Perfect Advanced Star Jewel - Revelation */
(1, 2, 3, 2,50,10,0,207806,1),		/* Perfect Star Jewel of Master's Revelation */
(1, 2, 3, 2,50,10,0,240113,1),		/* Enhanced Star Jewel - Revelation */
(1, 2, 3, 2,50,10,0,240129,1),		/* Tempered Star Jewel - Revelation */

-- Sub Stones for Lv1-100
(1, 2, 3, 3,50,10,0,240133,1),		/* Perfect Enhanced Star Jewel - Faith */
(1, 2, 3, 3,50,10,0,240145,1),		/* Perfect Enhanced Star Jewel - Revelation */
(1, 2, 3, 3,50,10,0,240149,1),		/* Perfect Tempered Star Jewel - Faith */
(1, 2, 3, 3,50,10,0,240161,1),		/* Perfect Tempered Star Jewel - Revelation */
(1, 2, 3, 3,50,10,0,240169,1),		/* Perfect Starsplinter Star Jewel */
(1, 2, 3, 3,50,10,0,240172,1),		/* Perfect Advanced Star Jewel - Starsplinter */
(1, 2, 3, 3,50,10,0,240175,1),		/* Perfect Star Jewel of Master's Starsplinter */
(1, 2, 3, 3,50,10,0,240178,1),		/* Perfect Enhanced Star Jewel - Starsplinter */
(1, 2, 3, 3,50,10,0,242720,1),		/* Starsplinter Star Jewel */
(1, 2, 3, 3,50,10,0,242723,1),		/* Advanced Starsplinter Star Jewel */
(1, 2, 3, 3,50,10,0,242726,1),		/* Star Jewel of Master's Starsplinter */
(1, 2, 3, 3,50,10,0,242729,1),		/* Enhanced Star Jewel - Starsplinter */
(1, 2, 3, 3,50,10,0,242732,1),		/* Tempered Star Jewel - Starsplinter */
(1, 2, 3, 3,50,10,0,242758,1),		/* Perfect Tempered Star Jewel - Starsplinter */
(1, 2, 3, 3, 60,6,0,242805,10),		/* Star Jewel - Elven */
(1, 2, 3, 3, 120,12,0,242808,10),		/* Advanced Star Jewel - Elven */
(1, 2, 3, 3, 240,24,0,242817,10),		/* Star Jewel - Elven Master */
(1, 2, 3, 3, 120,12,0,242805,10),		/* Star Jewel - Elven */
(1, 2, 3, 3, 169,17,0,242835,6),		/* Perfect Advanced Star Jewel - Elven */
(1, 2, 3, 3, 132,13,0,242838,6),		/* Perfect Enhanced Star Jewel - Elven */
(1, 2, 3, 3, 200,22,0,242841,4);		/* Perfect Tempered Star Jewel - Elven */

GO

INSERT [dbo].[NewShopInfo]
([World1], [SellType], [SellType1], [SellType2], [Sell_Cost], [Sell_Get_Bonus], [Item_DisplayerObjID], [Item_OrgObjID1], [Item_Count1])
VALUES
-- Sub BackPack 
-- Rune Slot Drillers
(1,2,4,1, 50,10,0,207495,1),		/* Basic Back Slot Item Driller */
(1,2,4,1, 50,10,0,207496,1),		/* Advanced Back Slot Item Driller */
(1,2,4,1, 50,10,0,207497,1),		/* Expert Back Slot Item Driller */
(1,2,4,1, 50,10,0,207498,1),		/* Master Back Slot Item Driller */

(1,2,4, 2,50,10,0,207489,1),		/* Nebula Jewel */
(1,2,4, 2,50,10,0,207490,1),		/* Advanced Nebula Jewel */
(1,2,4, 2,50,10,0,207491,1),		/* Master's Nebula Jewel */
(1,2,4, 2,50,10,0,207492,1),		/* Perfect Nebula Jewel */
(1,2,4, 2,50,10,0,207493,1),		/* Perfect Advanced Nebula Jewel */
(1,2,4, 2,50,10,0,207494,1),		/* Perfect Master's Nebula Jewel */
(1,2,4, 2,50,10,0,209712,1),		/* Nebula Jewel Package */
(1,2,4, 2,50,10,0,209713,1),		/* Advanced Nebula Jewel Package */
(1,2,4, 2,50,10,0,209714,1),		/* Master's Nebula Jewel Package */
(1,2,4, 2,50,10,0,240116,1),		/* Enhanced Nebula Jewel */
(1,2,4, 2,50,10,0,240132,1),		/* Tempered Nebula Jewel */
(1,2,4, 2,50,10,0,240148,1),		/* Perfect Enhanced Nebula Jewel */
(1,2,4, 2,50,10,0,240164,1),		/* Perfect Tempered Nebula Jewel */

-- Sub Must-Haves

(1,2,5, -1,10,2,0,201136,1),		/* Convenient Mailbox */
(1,2,5, -1,10,2,0,201137,1),		/* Convenient Bank */
(1,2,5, -1,10,2,0,201138,1),		/* Convenient Auction House */
(1,2,5, -1,10,2,0,202881,1),		/* Purified Fusion Stone */
(1,2,5, -1,100,20,0,205270,1),		/* 8x Purified Fusion Stone */
(1,2,5, -1,100,20,0,241166,1),		/* Purified Fusion Stone Package (10 Pieces) */
(1,2,5, -1,100,20,0,241168,1),		/* Purified Fusion Stone Package (12 Pieces) */
(1,2,5, -1,100,20,0,203283,1),		/* Fruit of Forgetting */
(1,2,5, -1,10,2,0,203178,1),		/* Ancient Treasure Key */
(1,2,5, -1,10,2,0,201445,10),		/* Megaphone */
(1,2,5, -1,10,2,0,201152,1),		/* Bleach */
(1,2,5, -1,10,2,0,203488,1),		/* Bind Lifter */
(1,2,5, -1,10,2,0,202520,1),		/* Advanced Bind Lifter */
(1,2,5, -1,10,2,0,204073,1),		/* Standard Aggregator */
(1,2,5, -1,10,2,0,201607,1),		/* Advanced Aggregator */
(1,2,5, -1,10,2,0,202506,1),		/* Golden Repair Hammer */
(1,2,5, -1,50,10,0,203576,1),		/* Grand Golden Repair Hammer */
(1,2,5, -1,20,4,0,241089,1),		/* Equipment Attribute-Purifying Stone */
(1,2,5, -1,10,2,0,241090,1),		/* Random Attribute Extraction Stone */
(1,2,5, -1,10,2,0,202822,1),		/* Equipment Sealing Device */
(1,2,5, -1,10,2,0,202823,1),		/* Equipment Unsealing Device */
(1,2,5, -1,10,2,0,201541,1),		/* Equipment Lock */
(1,2,5, -1,10,2,0,201542,1),		/* Equipment Release */
(1,2,5, -1,10,2,0,201093,1),		/* Rune Removal Scroll */
(1,2,5, -1,10,2,0,202928,1),		/* 10 Arcane Transmutor Charges */
(1,2,5, -1,50,10,0,202929,1),		/* 50 Arcane Transmutor Charges */
(1,2,5, -1,100,20,0,202930,1),		/* 100 Arcane Transmutor Charges */
(1,2,5, -1,10,2,0,202545,1),		/* Love Crystal */
(1,2,5, -1,20,4,0,202800,1),		/* Application Form for a Custom Title */
(1,2,5, -1,20,4,0,202825,1),		/* Declaration of Neutrality */
(1,2,5, -1,20,4,0,202826,1),		/* Position Detector */
(1,2,5, -1,20,4,0,202827,1),		/* PK-Protection */

-- Sub Runes

(1,2,6, -1,145,15,205277,520630,1),		/* Block X */
(1,2,6, -1,145,15,205277,520570,1),		/* Aggression X */
(1,2,6, -1,145,15,205277,520590,1),		/* Advance X */
(1,2,6, -1,145,15,205277,520250,1),		/* Atonement X */
(1,2,6, -1,145,15,205277,521160,1),		/* Capability X */
(1,2,6, -1,145,15,205277,521040,1),		/* Charm X */
(1,2,6, -1,145,15,205277,520330,1),		/* Rouse X */
(1,2,6, -1,145,15,205277,520610,1),		/* Revolution X */
(1,2,6, -1,145,15,205277,520410,1),		/* Resistor X */
(1,2,6, -1,145,15,205277,520710,1),		/* Reconciliation X */
(1,2,6, -1,145,15,205277,520690,1),		/* Hatred X */
(1,2,6, -1,145,15,205277,521300,1),		/* Raid X */
(1,2,6, -1,145,15,205277,520670,1),		/* Potential X */
(1,2,6, -1,145,15,205277,520830,1),		/* Miracle X */
(1,2,6, -1,145,15,205277,520730,1),		/* Loot X */
(1,2,6, -1,145,15,205277,520310,1),		/* Guts X */
(1,2,6, -1,145,15,205277,521300,1),		/* Raid X */
(1,2,6, -1,145,15,205277,520770,1),		/* Fatal X */
(1,2,6, -1,145,15,205277,521300,1),		/* Raid X */
(1,2,6, -1,145,15,205277,521260,1),		/* Enchantment X */
(1,2,6, -1,145,15,205277,521120,1),		/* Devil X */
(1,2,6, -1,145,15,205277,521240,1),		/* Dauntlessness X */
(1,2,6, -1,145,15,205277,520790,1),		/* Burst X */
(1,2,6, -1,145,15,205277,521320,1),		/* Curse X */
(1,2,6, -1,145,15,205277,520810,1),		/* Wrath X */
(1,2,6, -1,145,15,205277,521340,1),		/* Accuracy X */
(1,2,6, -1,145,15,205277,521100,1),		/* Ferocity X */
(1,2,6, -1,145,15,205277,521180,1),		/* Keenness X */
(1,2,6, -1,145,15,205277,521360,1),		/* Enlightenment X */
(1,2,6, -1,145,15,205277,520390,1),		/* Barrier X */
(1,2,6, -1,145,15,205277,520510,1),		/* Might X */
(1,2,6, -1,145,15,205277,521220,1),		/* Madness X */
(1,2,6, -1,145,15,205277,520750,1),		/* Experience X */
(1,2,6, -1,145,15,205277,521280,1),		/* Destruction X */
(1,2,6, -1,195,40,205277,521400,1),		/* Assassin X */
(1,2,6, -1,195,40,205277,521380,1),		/* Tyrant X */
(1,2,6, -1,195,40,205277,521420,1),		/* Sage X */
(1,2,6, -1,145,15,205277,520450,1),		/* Passion X */
(1,2,6, -1,195,40,205277,521440,1),		/* Enigma X */
(1,2,6, -1,195,40,205277,521460,1),		/* Judge X */
(1,2,6, -1,195,40,205277,521480,1),		/* Massacre X */
(1,2,6, -1,145,15,205277,520550,1),		/* Sorcery X */
(1,2,6, -1,145,15,205277,520490,1),		/* Fearless X */

/*****Costumes******/

-- Sub Packages Male
(1,3,1, 1,35,3,0,202027,1),		/* Blaze of the Purple Shadow Costume Package */
(1,3,1, 1,35,3,0,202028,1),		/* Scarlet Nobility Costume Package */
(1,3,1, 1,35,3,0,202029,1),		/* Burning Cheetah Costume Package */
(1,3,1, 1,35,3,0,202031,1),		/* Wild Thorn Costume Package */
(1,3,1, 1,45,4,0,202032,1),		/* Fanersai Banquet Costume Package */
(1,3,1, 1,50,5,0,202033,1),		/* Doomlord Costume Package */
(1,3,1, 1,50,5,0,202027,1),		/* Noble Ranger Costume Package */
(1,3,1, 1,35,3,0,202035,1),		/* Wild Warrior Costume Package */
(1,3,1, 1,35,3,0,202036,1),		/* Wrestler Costume Package */
(1,3,1, 1,35,3,0,202038,1),		/* Artic Costume Package */
(1,3,1, 1,50,5,0,202039,1),		/* Silver Snow Costume Package */
(1,3,1, 1,35,3,0,202042,1),		/* Mystical Costume Package */
(1,3,1, 1,50,5,0,202043,1),		/* Wanderer's Costume Package */
(1,3,1, 1,35,3,0,204810,1),		/* NightHawk Costume Package */
(1,3,1, 1,35,3,0,204811,1),		/* Vampire Costume Package */
(1,3,1, 1,50,5,0,205929,1),		/* Premium Noble Ranger Costume Package */
(1,3,1, 1,35,3,0,206344,1),		/* Stealthy Costume Package */
(1,3,1, 1,35,3,0,206345,1),		/* Costume Package of the Brave */
(1,3,1, 1,35,3,0,207151,1),		/* Fashionable Gentleman's Costume Package */
(1,3,1, 1,35,3,0,240811,1),		/* Soul-Eater Demon Clown Costume Package */
(1,3,1, 1,35,3,0,202037,1),		/* Yule Celebration Package */
(1,3,1, 1,165,16,0,209463,1),	/* Sismond Costume Package */

-- Sub Packages Female
(1,3,1, 2,35,3,0,202024,1),		/* Yule Celebration Package */
(1,3,1, 2,165,16,0,209463,1),	/* Sismond Costume Package */
(1,3,1, 2,35,3,0,202025,1),		/* Arctic Costume Package */
(1,3,1, 2,50,5,0,202026,1),		/* Silver Snow Costume Package */
(1,3,1, 2,50,5,0,202041,1),		/* Mystical Costume Package */
(1,3,1, 2,200,10,0,204812,1),	/* Costume Package */
(1,3,1, 2,35,3,0,206346,1),		/* Wanderer's Costume Package */
(1,3,1, 2,35,3,0,206347,1),		/* Stealthy Costume Package */
(1,3,1, 2,35,3,0,206348,1),		/* Costume Package of the Brave */
(1,3,1, 2,35,3,0,208176,1),		/* Fashionable Lady's Costume Package */
(1,3,1, 2,50,5,0,240812,1),		/* Soul-Eater Demon Clown Costume Package */
(1,3,1, 2,125,8,0,202003,1),	/* Angel's Dream Costume Package */
(1,3,1, 2,35,3,0,202004,1),		/* Purple Lady Costume Package */
(1,3,1, 2,35,3,0,202007,1),		/* Mysterious Butterfly Costume Package */
(1,3,1, 2,35,3,0,202008,1),		/* Cowgirl Costume Package */
(1,3,1, 2,35,3,0,202009,1),		/* Coffee Maid Costume Package */
(1,3,1, 2,35,3,0,202012,1),		/* Hot Pepper Costume Package */
(1,3,1, 2,35,3,0,202019,1),		/* Flower Fairy Costume Package */
(1,3,1, 2,35,3,0,202021,1),		/* Sexy Bunny Costume Package */
(1,3,1, 2,35,3,0,202022,1),		/* Evening Gown Costume Package */
(1,3,1, 2,35,3,0,202023,1),		/* Purple Fantasy Costume Package */
(1,3,1, 2,50,5,0,202028,1),		/* Scarlet Nobility Costume Package */


-- Sub Single Pieces Male
(1,3,2, 1,20,4,0,221900,1),		/* Blaze of the Purple Shadow Coat (Male) */
(1,3,2, 1,20,4,0,221901,1),		/* Blaze of the Purple Shadow Leggings (Male) */
(1,3,2, 1,20,4,0,221902,1),		/* Blaze of the Purple Shadow Boots (Male) */
(1,3,2, 1,20,4,0,221903,1),		/* Scarlet Coat of Nobility (Male) */
(1,3,2, 1,20,4,0,221904,1),		/* Scarlet Leggings of Nobility (Male) */
(1,3,2, 1,20,4,0,221905,1),		/* Scarlet Boots of Nobility (Male) */
(1,3,2, 1,20,4,0,221906,1),		/* Kuokuo's Cactus Hat (Male) */
(1,3,2, 1,20,4,0,221907,1),		/* Kuokuo's Cactus Coat (Male) */
(1,3,2, 1,20,4,0,221909,1),		/* Burning Cheetah Gown (Male) */
(1,3,2, 1,20,4,0,221911,1),		/* Burning Cheetah Boots (Male) */
(1,3,2, 1,20,4,0,221912,1),		/* Burning Cheetah Gloves (Male) */
(1,3,2, 1,20,4,0,221913,1),		/* Wild Thorn Diadem (Male) */
(1,3,2, 1,20,4,0,221914,1),		/* Wild Thorn Coat (Male) */
(1,3,2, 1,20,4,0,221915,1),		/* Wild Thorn Leggings (Male) */
(1,3,2, 1,20,4,0,221916,1),		/* Wild Thorn Boots (Male) */
(1,3,2, 1,20,4,0,221917,1),		/* Wild Thorn Gloves (Male) */
(1,3,2, 1,20,4,0,221918,1),		/* Wild Thorn Cloak (Male) */
(1,3,2, 1,20,4,0,221920,1),		/* Fanersai Banquet Jacket (Male) */
(1,3,2, 1,20,4,0,221921,1),		/* Fanersai Banquet Leggings (Male) */
(1,3,2, 1,20,4,0,221922,1),		/* Fanersai Banquet Boots (Male) */
(1,3,2, 1,20,4,0,221923,1),		/* Fanersai Banquet Gloves (Male) */
(1,3,2, 1,20,4,0,222727,1),		/* Green Pumpkin Jacket (Male) */
(1,3,2, 1,20,4,0,222728,1),		/* Green Pumpkin Gloves (Male) */
(1,3,2, 1,20,4,0,222729,1),		/* Green Pumpkin Shoes (Male) */
(1,3,2, 1,20,4,0,222730,1),		/* Green Pumpkin Leggings (Male) */
(1,3,2, 1,20,4,0,222737,1),		/* Vampire Count Coat (Male) */
(1,3,2, 1,20,4,0,222738,1),		/* Vampire Count Gloves (Male) */
(1,3,2, 1,20,4,0,222739,1),		/* Vampire Count Shoes (Male) */
(1,3,2, 1,20,4,0,222740,1),		/* Vampire Count Leggings (Male) */
(1,3,2, 1,20,4,0,222900,1),		/* Doomlord's Headpiece (Male) */
(1,3,2, 1,20,4,0,222901,1),		/* Doomlord's Coat (Male) */
(1,3,2, 1,20,4,0,222902,1),		/* Doomlord's Shoulder Armor (Male) */
(1,3,2, 1,20,4,0,222903,1),		/* Doomlord's Boots (Male) */
(1,3,2, 1,20,4,0,222904,1),		/* Doomlord's Gloves (Male) */
(1,3,2, 1,20,4,0,222906,1),		/* Noble Ranger's Mask Helmet (Male) */
(1,3,2, 1,20,4,0,222907,1),		/* Noble Ranger's Suit (Male) */
(1,3,2, 1,20,4,0,222908,1),		/* Noble Ranger's Leggings (Male) */
(1,3,2, 1,20,4,0,222909,1),		/* Noble Ranger's Boots (Male) */
(1,3,2, 1,20,4,0,222910,1),		/* Noble Ranger's Gloves (Male) */
(1,3,2, 1,20,4,0,222911,1),		/* White Formal Jacket (Male) */
(1,3,2, 1,20,4,0,222912,1),		/* White Formal Trousers (Male) */
(1,3,2, 1,20,4,0,222913,1),		/* White Formal Mask (Male) */
(1,3,2, 1,20,4,0,222915,1),		/* White Formal Gloves (Male) */
(1,3,2, 1,20,4,0,222969,1),		/* Snowflake Festival Holy Coat (Male) */
(1,3,2, 1,20,4,0,222970,1),		/* Snowflake Festival Holy Gloves (Male) */
(1,3,2, 1,20,4,0,222971,1),		/* Snowflake Festival Boots (Male) */
(1,3,2, 1,20,4,0,222972,1),		/* Snowflake Festival Pants (Male) */
(1,3,2, 1,20,4,0,222973,1),		/* Snowflake Festival Holy Hat (Male) */
(1,3,2, 1,20,4,0,222974,1),		/* Golden Snowflake Festival Coat (Male) */
(1,3,2, 1,20,4,0,222975,1),		/* Golden Snowflake Festival Gloves (Male) */
(1,3,2, 1,20,4,0,222976,1),		/* Golden Snowflake Festival Boots (Male) */
(1,3,2, 1,20,4,0,222977,1),		/* Golden Snowflake Festival Pants (Male) */
(1,3,2, 1,20,4,0,222978,1),		/* Golden Snowflake Festival Hat (Male) */
(1,3,2, 1,20,4,0,222979,1),		/* Golden Snowflake Festival Shoulder Guards (Male) */
(1,3,2, 1,20,4,0,222989,1),		/* Wild Warrior's Tattoo (Male) */
(1,3,2, 1,20,4,0,222990,1),		/* Wild Warrior's Pants (Male) */
(1,3,2, 1,20,4,0,222992,1),		/* Wild Warrior's Foot Ornament (Male) */
(1,3,2, 1,20,4,0,222993,1),		/* Wild Warrior's Hand Ornament (Male) */
(1,3,2, 1,20,4,0,222998,1),		/* Wrestler's Shirt (Male) */
(1,3,2, 1,20,4,0,223350,1),		/* Wrestler's Pants (Male) */
(1,3,2, 1,20,4,0,223351,1),		/* Wrestler's Boots (Male) */
(1,3,2, 1,20,4,0,223352,1),		/* Wrestler's Gloves (Male) */
(1,3,2, 1,20,4,0,223358,1),		/* Golden Music Shirt (Male) */
(1,3,2, 1,20,4,0,223359,1),		/* Golden Music Pants (Male) */
(1,3,2, 1,20,4,0,223360,1),		/* Golden Music Boots (Male) */
(1,3,2, 1,20,4,0,223361,1),		/* Magnificent Golden Music Helmet (Male) */
(1,3,2, 1,20,4,0,223362,1),		/* Golden Music Helmet (Male) */
(1,3,2, 1,20,4,0,223363,1),		/* Golden Music Gloves (Male) */
(1,3,2, 1,20,4,0,223364,1),		/* Golden Music Epaulet (Male) */
(1,3,2, 1,20,4,0,223370,1),		/* Adam's Wild Shoulders (Male) */
(1,3,2, 1,20,4,0,223371,1),		/* Adam's Gold Scale Gloves (Male) */
(1,3,2, 1,20,4,0,223372,1),		/* Adam's Gold Scale Boots (Male) */
(1,3,2, 1,20,4,0,223373,1),		/* Adam's Summer Pants (Male) */
(1,3,2, 1,20,4,0,223378,1),		/* Outfit of the Jealous Single (Male) */
(1,3,2, 1,20,4,0,223379,1),		/* Outfit of the Passionate Couple (Male) */
(1,3,2, 1,20,4,0,223388,1),		/* Eagle Feather Egg Coat (Male) */
(1,3,2, 1,20,4,0,223395,1),		/* Baroque Noble Hat (Male) */
(1,3,2, 1,20,4,0,223396,1),		/* Baroque Noble Coat (Male) */
(1,3,2, 1,20,4,0,223397,1),		/* Baroque Noble Pants (Male) */
(1,3,2, 1,20,4,0,223398,1),		/* Baroque Noble Boots (Male) */
(1,3,2, 1,20,4,0,223399,1),		/* Baroque Noble Gloves (Male) */
(1,3,2, 1,20,4,0,223413,1),		/* Wabbit Ears (Male) */
(1,3,2, 1,20,4,0,223414,1),		/* Oriental Traditional Coat (Male) */
(1,3,2, 1,20,4,0,223416,1),		/* Music Festival Jacket  (Male) */
(1,3,2, 1,20,4,0,223417,1),		/* Music Festival Trousers (Male) */
(1,3,2, 1,20,4,0,223418,1),		/* Music Festival Boots (Male) */
(1,3,2, 1,20,4,0,223419,1),		/* Music Festival Mask (Male) */
(1,3,2, 1,20,4,0,223420,1),		/* Music Festival Shoulder Guards (Male) */
(1,3,2, 1,20,4,0,223423,1),		/* Oriental Traditional Pants (Male) */
(1,3,2, 1,20,4,0,223426,1),		/* Music Festival Cape (Male) */
(1,3,2, 1,20,4,0,223430,1),		/* Oriental Traditional Cap (Male) */
(1,3,2, 1,20,4,0,223431,1),		/* Oriental Traditional Boots (Male) */
(1,3,2, 1,20,4,0,223432,1),		/* Arctic Cloak (Male) */
(1,3,2, 1,20,4,0,223433,1),		/* Eagle Dancer's Coat (Male) */
(1,3,2, 1,20,4,0,223434,1),		/* Eagle Dancer's Pants (Male) */
(1,3,2, 1,20,4,0,223436,1),		/* Eagle Dancer's Boots (Male) */
(1,3,2, 1,20,4,0,223437,1),		/* Oriental Noble Robe (Male) */
(1,3,2, 1,20,4,0,223439,1),		/* Oriental Traditional Wedding Coat (Male) */
(1,3,2, 1,20,4,0,223440,1),		/* Oriental Traditional Wedding Pants (Male) */
(1,3,2, 1,20,4,0,223441,1),		/* Oriental Traditional Wedding Cap (Male) */
(1,3,2, 1,20,4,0,223443,1),		/* Oriental Traditional Wedding Boots (Male) */
(1,3,2, 1,20,4,0,223444,1),		/* Oriental Royal Military Coat (Male) */
(1,3,2, 1,20,4,0,223445,1),		/* Oriental Royal Military Pants (Male) */
(1,3,2, 1,20,4,0,223446,1),		/* Oriental Royal Military Helmet (Male) */
(1,3,2, 1,20,4,0,223447,1),		/* Oriental Royal Military Boots (Male) */
(1,3,2, 1,20,4,0,224308,1),		/* Dark Green Oriental Military Coat (Male) */
(1,3,2, 1,20,4,0,224309,1),		/* Dark Green Oriental Military Pants (Male) */
(1,3,2, 1,20,4,0,224311,1),		/* Dark Green Oriental Military Boots (Male) */
(1,3,2, 1,20,4,0,224321,1),		/* Arctic Gloves (Male) */
(1,3,2, 1,20,4,0,224325,1),		/* Arctic Shoulderpads (Male) */
(1,3,2, 1,20,4,0,224326,1),		/* Arctic Cape (Male) */
(1,3,2, 1,20,4,0,224335,1),		/* Oriental Fashionable Military Boots (Male) */
(1,3,2, 1,20,4,0,224342,1),		/* Arctic Boots (Male) */
(1,3,2, 1,20,4,0,224343,1),		/* Arctic Trousers (Male) */
(1,3,2, 1,20,4,0,224344,1),		/* Arctic Helmet (Male) */
(1,3,2, 1,20,4,0,224345,1),		/* Cloak of the Brave (Male) */
(1,3,2, 1,20,4,0,224346,1),		/* Gloves of the Brave (Male) */
(1,3,2, 1,20,4,0,224347,1),		/* Cape of the Brave (Male) */
(1,3,2, 1,20,4,0,224348,1),		/* Shoulderpads of the Brave (Male) */
(1,3,2, 1,20,4,0,224867,1),		/* Boots of the Brave (Male) */
(1,3,2, 1,20,4,0,224868,1),		/* Trousers of the Brave (Male) */
(1,3,2, 1,20,4,0,224869,1),		/* Helmet of the Brave (Male) */
(1,3,2, 1,20,4,0,224870,1),		/* Stealthy Cloak (Male) */
(1,3,2, 1,20,4,0,224871,1),		/* Stealthy Gloves (Male) */
(1,3,2, 1,20,4,0,224872,1),		/* Stealthy Shoulderpads (Male) */
(1,3,2, 1,20,4,0,224873,1),		/* Stealthy Cape (Male) */
(1,3,2, 1,20,4,0,224874,1),		/* Stealthy Trousers (Male) */
(1,3,2, 1,20,4,0,224875,1),		/* Stealthy Boots (Male) */
(1,3,2, 1,20,4,0,224876,1),		/* Wanderer's Cloak (Male) */
(1,3,2, 1,20,4,0,224877,1),		/* Wanderer's Gloves (Male) */
(1,3,2, 1,20,4,0,224878,1),		/* Wanderer's Shoulderpads (Male) */
(1,3,2, 1,20,4,0,224879,1),		/* Wanderer's Cape (Male) */
(1,3,2, 1,20,4,0,224880,1),		/* Wanderer's Boots (Male) */
(1,3,2, 1,20,4,0,224881,1),		/* Wanderer's Trousers (Male) */
(1,3,2, 1,20,4,0,224882,1),		/* Wanderer's Helmet (Male) */
(1,3,2, 1,20,4,0,224883,1),		/* Mystical Cloak (Male) */
(1,3,2, 1,20,4,0,224884,1),		/* Mystical Gloves (Male) */
(1,3,2, 1,20,4,0,224885,1),		/* Mystical Shoulderpads (Male) */
(1,3,2, 1,20,4,0,224886,1),		/* Mystical Cape (Male) */
(1,3,2, 1,20,4,0,224952,1),		/* Mystical Boots (Male) */
(1,3,2, 1,20,4,0,224953,1),		/* Mystical Trousers (Male) */
(1,3,2, 1,20,4,0,224954,1),		/* Mystical Crown (Male) */
(1,3,2, 1,20,4,0,224955,1),		/* Silver Snow Cloak (Male) */
(1,3,2, 1,20,4,0,224956,1),		/* Silver Snow Gloves (Male) */
(1,3,2, 1,20,4,0,224957,1),		/* Silver Snow Shoulderpads (Male) */
(1,3,2, 1,20,4,0,224958,1),		/* Silver Snow Cape (Male) */
(1,3,2, 1,20,4,0,224959,1),		/* Silver Snow Boots (Male) */
(1,3,2, 1,20,4,0,224960,1),		/* Silver Snow Trousers (Male) */
(1,3,2, 1,20,4,0,224961,1),		/* Silver Snow Headdress (Male) */
(1,3,2, 1,20,4,0,224984,1),		/* Stealthy Hood (Male) */
(1,3,2, 1,20,4,0,225148,1),		/* Professional Bartender Coat (Male) */
(1,3,2, 1,20,4,0,225149,1),		/* Professional Bartender Pants (Male) */
(1,3,2, 1,20,4,0,225150,1),		/* Professional Bartender Gloves (Male) */
(1,3,2, 1,20,4,0,225151,1),		/* Professional Bartender Shoes (Male) */
(1,3,2, 1,20,4,0,225155,1),		/* Strange Clown Shoes (Male) */
(1,3,2, 1,20,4,0,225156,1),		/* Strange Clown Gloves (Male) */
(1,3,2, 1,20,4,0,225157,1),		/* Strange Clown Cap and Mask (Male) */
(1,3,2, 1,20,4,0,225158,1),		/* Strange Clown Mask (Male) */
(1,3,2, 1,20,4,0,225159,1),		/* Strange Clown Cap (Male) */
(1,3,2, 1,20,4,0,225160,1),		/* Strange Clown Pants (Male) */
(1,3,2, 1,20,4,0,225161,1),		/* Strange Clown Shoulder Armor (Male) */
(1,3,2, 1,20,4,0,225162,1),		/* Strange Clown Coat (Male) */
(1,3,2, 1,20,4,0,225307,1),		/* Elven Snowflake Festival Coat (Male) */
(1,3,2, 1,20,4,0,225308,1),		/* Elven Snowflake Festival Pants (Male) */
(1,3,2, 1,20,4,0,225309,1),		/* Elven Snowflake Festival Shoes (Male) */
(1,3,2, 1,20,4,0,225310,1),		/* Elven Snowflake Festival Headdress (Male) */
(1,3,2, 1,20,4,0,225311,1),		/* Elven Snowflake Festival Wings (Male) */
(1,3,2, 1,20,4,0,225312,1),		/* Elven Snowflake Festival Mask (Male) */
(1,3,2, 1,20,4,0,225313,1),		/* Samurai Helmet (Male) */
(1,3,2, 1,20,4,0,225314,1),		/* Samurai Armor (Male) */
(1,3,2, 1,20,4,0,225315,1),		/* Samurai Gloves (Male) */
(1,3,2, 1,20,4,0,225316,1),		/* Samurai Spaulders (Male) */
(1,3,2, 1,20,4,0,225317,1),		/* Samurai Boots (Male) */
(1,3,2, 1,20,4,0,225318,1),		/* Samurai Leg Guards (Male) */
(1,3,2, 1,20,4,0,225322,1),		/* Kimono (Male) */
(1,3,2, 1,20,4,0,225323,1),		/* Kimono Shoulder Pads (Male) */
(1,3,2, 1,20,4,0,225324,1),		/* Sumurai Hair Bun (Male) */
(1,3,2, 1,20,4,0,225325,1),		/* Samurai Braids (Male) */
(1,3,2, 1,20,4,0,225326,1),		/* Kimono Sandals (Male) */
(1,3,2, 1,20,4,0,225327,1),		/* Assassin's Cape of Azrael (Male) */
(1,3,2, 1,20,4,0,225328,1),		/* Assassin's Boots of Azrael (Male) */
(1,3,2, 1,20,4,0,225329,1),		/* Assassin's Gloves of Azrael (Male) */
(1,3,2, 1,20,4,0,225330,1),		/* Assassin's Hood of Azrael (Male) */
(1,3,2, 1,20,4,0,225331,1),		/* Assassin's Leggings of Azrael (Male) */
(1,3,2, 1,20,4,0,225332,1),		/* Assassin's Shoulder Pads of Azrael (Male) */
(1,3,2, 1,20,4,0,225333,1),		/* Assassin's Suit of Azrael (Male) */
(1,3,2, 1,20,4,0,225341,1),		/* Samurai Pointed Helmet (Male) */
(1,3,2, 1,20,4,0,225342,1),		/* Samurai Horned Helmet (Male) */
(1,3,2, 1,20,4,0,225363,1),		/* Black Aodai (Male) */
(1,3,2, 1,20,4,0,225364,1),		/* Black Shoes (Male) */
(1,3,2, 1,20,4,0,225365,1),		/* Black Bandana (Male) */
(1,3,2, 1,20,4,0,225369,1),		/* Blue Aodai (Male) */
(1,3,2, 1,20,4,0,225370,1),		/* Blue Bandana (Male) */
(1,3,2, 1,20,4,0,225371,1),		/* White Shoes (Male) */
(1,3,2, 1,20,4,0,225535,1),		/* Football Coat - Dark Red/Blue (Male) */
(1,3,2, 1,20,4,0,225536,1),		/* Football Coat - Red/White (Male) */
(1,3,2, 1,20,4,0,225537,1),		/* Football Coat - Black/White (Male) */
(1,3,2, 1,20,4,0,225538,1),		/* Football Coat - Yellow/Red (Male) */
(1,3,2, 1,20,4,0,225539,1),		/* Football Coat - Yellow/Dark Blue (Male) */
(1,3,2, 1,20,4,0,225540,1),		/* Football Coat - Green/White (Male) */
(1,3,2, 1,20,4,0,225547,1),		/* Football Pants - Dark Red/Blue (Male) */
(1,3,2, 1,20,4,0,225548,1),		/* Football Pants - Red/White (Male) */
(1,3,2, 1,20,4,0,225549,1),		/* Football Pants - Black/White (Male) */
(1,3,2, 1,20,4,0,225550,1),		/* Football Pants - Yellow/Red (Male) */
(1,3,2, 1,20,4,0,225551,1),		/* Football Pants - Yellow/Dark Blue (Male) */
(1,3,2, 1,20,4,0,225552,1),		/* Football Pants - Green/White (Male) */
(1,3,2, 1,20,4,0,225559,1),		/* Football Shoes - Dark Red/Blue (Male) */
(1,3,2, 1,20,4,0,225560,1),		/* Football Shoes - Red/White (Male) */
(1,3,2, 1,20,4,0,225561,1),		/* Football Shoes - Black/White (Male) */
(1,3,2, 1,20,4,0,225562,1),		/* Football Shoes - Yellow/Red (Male) */
(1,3,2, 1,20,4,0,225563,1),		/* Football Shoes - Yellow/Dark Blue (Male) */
(1,3,2, 1,20,4,0,225564,1),		/* Football Shoes - Green/White (Male) */
(1,3,2, 1,20,4,0,225571,1),		/* Football Hat - Dark Red/Blue (Male) */
(1,3,2, 1,20,4,0,225572,1),		/* Football Hat - Red/White (Male) */
(1,3,2, 1,20,4,0,225573,1),		/* Football Hat - Black/White (Male) */
(1,3,2, 1,20,4,0,225574,1),		/* Football Hat - Yellow/Red (Male) */
(1,3,2, 1,20,4,0,225575,1),		/* Football Hat - Yellow/Dark Blue (Male) */
(1,3,2, 1,20,4,0,225576,1),		/* Football Hat - Green/White (Male) */
(1,3,2, 1,20,4,0,225583,1),		/* Football Gloves - Dark Red/Blue (Male) */
(1,3,2, 1,20,4,0,225883,1),		/* Football Gloves - Red/White (Male) */
(1,3,2, 1,20,4,0,225884,1),		/* Football Gloves - Black/White (Male) */
(1,3,2, 1,20,4,0,225885,1),		/* Football Gloves - Yellow/Red (Male) */
(1,3,2, 1,20,4,0,225886,1),		/* Football Gloves - Yellow/Dark Blue (Male) */
(1,3,2, 1,20,4,0,225887,1),		/* Football Gloves - Green/White (Male) */
(1,3,2, 1,20,4,0,226060,1),		/* Blessed Knight Coat (Male) */
(1,3,2, 1,20,4,0,226061,1),		/* Blessed Knight Gloves (Male) */
(1,3,2, 1,20,4,0,226062,1),		/* Blessed Knight Shoulderpads (Male) */
(1,3,2, 1,20,4,0,226063,1),		/* Blessed Knight Cape (Male) */
(1,3,2, 1,20,4,0,226064,1),		/* Blessed Knight Boots (Male) */
(1,3,2, 1,20,4,0,226065,1),		/* Blessed Knight Trousers (Male) */
(1,3,2, 1,20,4,0,226066,1),		/* Blessed Knight Helmet (Male) */
(1,3,2, 1,20,4,0,226067,1),		/* War Dragon Warrior Coat (Male) */
(1,3,2, 1,20,4,0,226068,1),		/* War Dragon Warrior Gloves (Male) */
(1,3,2, 1,20,4,0,226069,1),		/* War Dragon Warrior Shoulderpads (Male) */
(1,3,2, 1,20,4,0,226070,1),		/* War Dragon Warrior Cape (Male) */
(1,3,2, 1,20,4,0,226071,1),		/* War Dragon Warrior Boots (Male) */
(1,3,2, 1,20,4,0,226072,1),		/* War Dragon Warrior Trousers (Male) */
(1,3,2, 1,20,4,0,226073,1),		/* War Dragon Warrior Helmet (Male) */
(1,3,2, 1,20,4,0,226074,1),		/* Clear Breeze Rogue Coat (Male) */
(1,3,2, 1,20,4,0,226075,1),		/* Clear Breeze Rogue Gloves (Male) */
(1,3,2, 1,20,4,0,226076,1),		/* Clear Breeze Rogue Shoulderpads (Male) */
(1,3,2, 1,20,4,0,226077,1),		/* Clear Breeze Rogue Cape (Male) */
(1,3,2, 1,20,4,0,226078,1),		/* Clear Breeze Rogue Boots (Male) */
(1,3,2, 1,20,4,0,226079,1),		/* Clear Breeze Rogue Trousers (Male) */
(1,3,2, 1,20,4,0,226080,1),		/* Clear Breeze Rogue Helmet (Male) */
(1,3,2, 1,20,4,0,226081,1),		/* Shadow Scout Armor (Male) */
(1,3,2, 1,20,4,0,226082,1),		/* Shadow Scout Gloves (Male) */
(1,3,2, 1,20,4,0,226083,1),		/* Shadow Scout Shoulder Armor (Male) */
(1,3,2, 1,20,4,0,226084,1),		/* Shadow Scout Cape (Male) */
(1,3,2, 1,20,4,0,226085,1),		/* Shadow Scout Boots (Male) */
(1,3,2, 1,20,4,0,226086,1),		/* Shadow Scout Cap (Male) */
(1,3,2, 1,20,4,0,226087,1),		/* Dark Flame Priest Coat (Male) */
(1,3,2, 1,20,4,0,226088,1),		/* Dark Flame Priest Gloves (Male) */
(1,3,2, 1,20,4,0,226089,1),		/* Dark Flame Priest Shoulderpads (Male) */
(1,3,2, 1,20,4,0,226090,1),		/* Dark Flame Priest Cape (Male) */
(1,3,2, 1,20,4,0,226091,1),		/* Dark Flame Priest Boots (Male) */
(1,3,2, 1,20,4,0,226092,1),		/* Dark Flame Priest Headscarf (Male) */
(1,3,2, 1,20,4,0,226093,1),		/* Dark Flame Priest Trousers (Male) */
(1,3,2, 1,20,4,0,226094,1),		/* Acolyte Mage Robe (Male) */
(1,3,2, 1,20,4,0,226095,1),		/* Acolyte Mage Gloves (Male) */
(1,3,2, 1,20,4,0,226096,1),		/* Acolyte Mage Shoulderpads (Male) */
(1,3,2, 1,20,4,0,226097,1),		/* Acolyte Mage Cape (Male) */
(1,3,2, 1,20,4,0,226098,1),		/* Acolyte Mage Boots (Male) */
(1,3,2, 1,20,4,0,226099,1),		/* Acolyte Mage Crown (Male) */
(1,3,2, 1,20,4,0,226245,1),		/* Paraguyan Football Shirt (Male) */
(1,3,2, 1,20,4,0,226246,1),		/* Venezuelan Football Shirt (Male) */
(1,3,2, 1,20,4,0,226247,1),		/* Peruvian Football Shirt (Male) */
(1,3,2, 1,20,4,0,226248,1),		/* Uruguyan Football Shirt (Male) */
(1,3,2, 1,20,4,0,226249,1),		/* Argentinian Football Shirt (Male) */
(1,3,2, 1,20,4,0,226250,1),		/* Bolivian Football Shirt (Male) */
(1,3,2, 1,20,4,0,226251,1),		/* Brazilian Football Shirt (Male) */
(1,3,2, 1,20,4,0,226252,1),		/* Chilean Football Shirt (Male) */
(1,3,2, 1,20,4,0,226253,1),		/* Colombian Football Shirt (Male) */
(1,3,2, 1,20,4,0,226254,1),		/* Ecuadorian Football Shirt (Male) */
(1,3,2, 1,20,4,0,226289,1),		/* Black Wedding Jacket (Male) */
(1,3,2, 1,20,4,0,226290,1),		/* Black Wedding Trousers (Male) */
(1,3,2, 1,20,4,0,226291,1),		/* Black Wedding Hat (Male) */
(1,3,2, 1,20,4,0,226292,1),		/* Black Wedding Shoes (Male) */
(1,3,2, 1,20,4,0,226585,1),		/* Aztec Coat (Male) */
(1,3,2, 1,20,4,0,226586,1),		/* Aztec Shoulder Armor (Male) */
(1,3,2, 1,20,4,0,226587,1),		/* Aztec Cape (Male) */
(1,3,2, 1,20,4,0,226588,1),		/* Aztec Shoes (Male) */
(1,3,2, 1,20,4,0,226589,1),		/* Aztec Pants (Male) */
(1,3,2, 1,20,4,0,226590,1),		/* Aztec Headdress (Male) */
(1,3,2, 1,20,4,0,226715,1),		/* South Korean Football Shirt (Male) */
(1,3,2, 1,20,4,0,226716,1),		/* Spanish Football Shirt (Male) */
(1,3,2, 1,20,4,0,226717,1),		/* French Football Shirt (Male) */
(1,3,2, 1,20,4,0,226718,1),		/* Swiss Football Shirt (Male) */
(1,3,2, 1,20,4,0,226719,1),		/* North Korean Football Shirt (Male) */
(1,3,2, 1,20,4,0,226720,1),		/* Portuguese Football Shirt (Male) */
(1,3,2, 1,20,4,0,226721,1),		/* Kiwi Football Shirt (Male) */
(1,3,2, 1,20,4,0,226722,1),		/* Slovakian Football Shirt (Male) */
(1,3,2, 1,20,4,0,226723,1),		/* Italian Football Shirt (Male) */
(1,3,2, 1,20,4,0,226724,1),		/* Greek Football Shirt (Male) */
(1,3,2, 1,20,4,0,226725,1),		/* South African Football Shirt (Male) */
(1,3,2, 1,20,4,0,226726,1),		/* Japanese Football Shirt (Male) */
(1,3,2, 1,20,4,0,226727,1),		/* Cameroonian Football Shirt (Male) */
(1,3,2, 1,20,4,0,226728,1),		/* Danish Football Shirt (Male) */
(1,3,2, 1,20,4,0,226729,1),		/* Dutch Football Shirt (Male) */
(1,3,2, 1,20,4,0,226730,1),		/* Ghanaian Football Shirt (Male) */
(1,3,2, 1,20,4,0,226731,1),		/* German  Football Shirt (Male) */
(1,3,2, 1,20,4,0,226732,1),		/* Serbian Football Shirt (Male) */
(1,3,2, 1,20,4,0,226733,1),		/* Australian Football Shirt (Male) */
(1,3,2, 1,20,4,0,226734,1),		/* Slovenian Football Shirt (Male) */
(1,3,2, 1,20,4,0,226735,1),		/* English Football Shirt (Male) */
(1,3,2, 1,20,4,0,226736,1),		/* USA Football Shirt (Male) */
(1,3,2, 1,20,4,0,226737,1),		/* Algerian Football Shirt (Male) */
(1,3,2, 1,20,4,0,226738,1),		/* Nigerian Football Shirt (Male) */
(1,3,2, 1,20,4,0,226739,1),		/* Ivory Coast Football Shirt (Male) */
(1,3,2, 1,20,4,0,226803,1),		/* Polish Football Shirt (Male) */
(1,3,2, 1,20,4,0,226896,1),		/* Honduran Football Shirt (Male) */
(1,3,2, 1,20,4,0,226897,1),		/* Mexican Football Shirt (Male) */
(1,3,2, 1,20,4,0,226898,1),		/* Nicaraguan Football Shirt (Male) */
(1,3,2, 1,20,4,0,226899,1),		/* Panamanian Football Shirt (Male) */
(1,3,2, 1,20,4,0,226900,1),		/* Belize Football Shirt (Male) */
(1,3,2, 1,20,4,0,226901,1),		/* Costa Rican Football Shirt (Male) */
(1,3,2, 1,20,4,0,226902,1),		/* Salvadorian Football Shirt (Male) */
(1,3,2, 1,20,4,0,226903,1),		/* Guatemalan Football Shirt (Male) */
(1,3,2, 1,20,4,0,227172,1),		/* Armor of the Wind Warrior (Male) */
(1,3,2, 1,20,4,0,227173,1),		/* Street Clothing (Male) */
(1,3,2, 1,20,4,0,227540,1),		/* Skeletal Siren Gloves (Male) */
(1,3,2, 1,20,4,0,227541,1),		/* Skeletal Siren Vest (Male) */
(1,3,2, 1,20,4,0,227542,1),		/* Skeletal Siren Cape (Male) */
(1,3,2, 1,20,4,0,227543,1),		/* Skeletal Siren Leggings (Male) */
(1,3,2, 1,20,4,0,227544,1),		/* Skeletal Siren Headdress (Male) */
(1,3,2, 1,20,4,0,227545,1),		/* Skeletal Siren Magic Boots (Male) */
(1,3,2, 1,20,4,0,227546,1),		/* Soul-Eater Demon Clown Gloves (Male) */
(1,3,2, 1,20,4,0,227547,1),		/* Soul-Eater Demon Clown Suit (Male) */
(1,3,2, 1,20,4,0,227548,1),		/* Soul-Eater Demon Clown Shoulder Guards (Male) */
(1,3,2, 1,20,4,0,227549,1),		/* Soul-Eater Demon Clown Leggings (Male) */
(1,3,2, 1,20,4,0,227550,1),		/* Soul-Eater Demon  Clown Mask (Male) */
(1,3,2, 1,20,4,0,227551,1),		/* Soul-Eater Demon Clown Long Boots (Male) */
(1,3,2, 1,20,4,0,228681,1),		/* Grinning Rogue Coat (Male) */
(1,3,2, 1,20,4,0,228682,1),		/* Grinning Rogue Gloves (Male) */
(1,3,2, 1,20,4,0,228683,1),		/* Grinning Rogue Shoulder Armor (Male) */
(1,3,2, 1,20,4,0,228684,1),		/* Grinning Rogue Boots (Male) */
(1,3,2, 1,20,4,0,228685,1),		/* Grinning Rogue Trousers (Male) */
(1,3,2, 1,20,4,0,228686,1),		/* Grinning Rogue Helmet (Male) */
(1,3,2, 1,20,4,0,228693,1),		/* Sismond Dress (Male) */
(1,3,2, 1,20,4,0,228694,1),		/* Sismond Mask (Male) */
(1,3,2, 1,20,4,0,229701,1),		/* Traditional Head Cover (Male) */
(1,3,2, 1,20,4,0,229702,1),		/* Traditional Garment (Male) */
(1,3,2, 1,20,4,0,229708,1),		/* Russian Football Shirt (Male) */
(1,3,2, 1,20,4,0,229709,1),		/* Bathrobe (Male) */
(1,3,2, 1,20,4,0,230170,1),		/* Cape of the Storm (Male) */
(1,3,2, 1,20,4,0,230171,1),		/* Boots of the Storm (Male) */
(1,3,2, 1,20,4,0,230172,1),		/* Gloves of the Storm (Male) */
(1,3,2, 1,20,4,0,230173,1),		/* Helm of the Storm (Male) */
(1,3,2, 1,20,4,0,230174,1),		/* Pantaloons of the Storm (Male) */
(1,3,2, 1,20,4,0,230175,1),		/* Shoulder Guards of the Storm (Male) */
(1,3,2, 1,20,4,0,230176,1),		/* Shirt of the Storm (Male) */
(1,3,2, 1,20,4,0,230765,1),		/* Redbud Academy Uniform Coat (Male) */
(1,3,2, 1,20,4,0,230766,1),		/* Redbud Academy Uniform Shoes (Male) */
(1,3,2, 1,20,4,0,230767,1),		/* Redbud Academy Uniform (Male) */
(1,3,2, 1,20,4,0,230772,1),		/* Sports Suit of Dedication (Male) */
(1,3,2, 1,20,4,0,230773,1),		/* Sports Suit of the Rising Sun (Male) */
(1,3,2, 1,20,4,0,231976,1),		/* Dark Vengeance Cloak (Male) */
(1,3,2, 1,20,4,0,231977,1),		/* Dark Vengeance Gloves (Male) */
(1,3,2, 1,20,4,0,231978,1),		/* Dark Vengeance Trousers (Male) */
(1,3,2, 1,20,4,0,231979,1),		/* Dark Vengeance Boots (Male) */
(1,3,2, 1,20,4,0,231984,1),		/* Silver Envoy's Gloves (Male) */
(1,3,2, 1,20,4,0,231985,1),		/* Silver Envoy's Headdress (Male) */
(1,3,2, 1,20,4,0,231986,1),		/* Silver Envoy's Trousers (Male) */
(1,3,2, 1,20,4,0,231987,1),		/* Silver Envoy's Shoulderpads (Male) */
(1,3,2, 1,20,4,0,231988,1),		/* Silver Envoy's Cloak (Male) */
(1,3,2, 1,20,4,0,231989,1),		/* Silver Envoy's Boots (Male) */
(1,3,2, 1,20,4,0,231996,1),		/* Colorful Violet Boots (Male) */
(1,3,2, 1,20,4,0,231997,1),		/* Colorful Violet Trousers (Male) */
(1,3,2, 1,20,4,0,231998,1),		/* Colorful Violet Cloak (Male) */
(1,3,2, 1,20,4,0,231999,1),		/* Colorful Violet Headdress (Male) */
(1,3,2, 1,20,4,0,234075,1),		/* Iranian Football Shirt (Male) */
(1,3,2, 1,20,4,0,234076,1),		/* Bosnian-Herzegovinian Football Shirt (Male) */
(1,3,2, 1,20,4,0,234077,1),		/* Croatian Football Shirt (Male) */
(1,3,2, 1,20,4,0,234078,1),		/* Belgian Football Shirt (Male) */
(1,3,2, 1,20,4,0,202037,1),		/* Yule Celebration Package (Male) */
(1,3,2, 1,20,4,0,202038,1),		/* Arctic Costume Package (Male) */
(1,3,2, 1,20,4,0,202039,1),		/* Silver Snow Costume Package (Male) */
(1,3,2, 1,20,4,0,202042,1),		/* Mystical Costume Package (Male) */
(1,3,2, 1,20,4,0,202043,1),		/* Wanderer's Costume Package (Male) */
(1,3,2, 1,20,4,0,204811,1),		/* Costume Package (Male) */
(1,3,2, 1,20,4,0,206344,1),		/* Stealthy Costume Package (Male) */
(1,3,2, 1,20,4,0,206345,1),		/* Costume Package of the Brave (Male) */
(1,3,2, 1,20,4,0,206743,1),		/* Assassin's Costume Package (Male) */
(1,3,2, 1,20,4,0,206746,1),		/* Blaze of the Purple Shadow Costume Package (Male) */
(1,3,2, 1,20,4,0,206834,1),		/* Baroque Noble Costume Potion (Male) */
(1,3,2, 1,20,4,0,206835,1),		/* Fanersai Banquet Costume Potion (Male) */
(1,3,2, 1,20,4,0,240811,1),		/* Soul-Eater Demon Clown Costume Package (Male) */
(1,3,2, 1,20,4,0,241067,1),		/* Costume of the Storm (Male) */
(1,3,2, 1,20,4,0,241069,1);		/* Basic Costume of the Storm (Male) */

GO 

INSERT [dbo].[NewShopInfo]
([World1], [SellType], [SellType1], [SellType2], [Sell_Cost], [Sell_Get_Bonus], [Item_DisplayerObjID], [Item_OrgObjID1], [Item_Count1])
VALUES
-- Female
(1,3,2, 2,20,4,0,220927,1),		/* White Wedding Dress (Female) */
(1,3,2, 2,20,4,0,220928,1),		/* White Wedding Stockings (Female) */
(1,3,2, 2,20,4,0,220929,1),		/* White Wedding Veil (Female) */
(1,3,2, 2,20,4,0,220930,1),		/* White Wedding Shoes (Female) */
(1,3,2, 2,20,4,0,220931,1),		/* White Wedding Gloves (Female) */
(1,3,2, 2,20,4,0,221438,1),		/* Maid Silk Stockings (Female) */
(1,3,2, 2,20,4,0,221439,1),		/* Maid Shoes (Female) */
(1,3,2, 2,20,4,0,221745,1),		/* Maid Sandals (Female) */
(1,3,2, 2,20,4,0,221883,1),		/* Angel's Dream Coat (Female) */
(1,3,2, 2,20,4,0,221884,1),		/* Angel's Dream Shorts (Female) */
(1,3,2, 2,20,4,0,221885,1),		/* Angel's Dream Boots (Female) */
(1,3,2, 2,20,4,0,221886,1),		/* Angel's Dream Gloves (Female) */
(1,3,2, 2,20,4,0,221889,1),		/* Purple Lady's Coat (Female) */
(1,3,2, 2,20,4,0,221890,1),		/* Purple Lady's Pantskirt (Female) */
(1,3,2, 2,20,4,0,221891,1),		/* Purple Lady's Boots (Female) */
(1,3,2, 2,20,4,0,221892,1),		/* Hairpin of the Mysterious Butterfly (Female) */
(1,3,2, 2,20,4,0,221893,1),		/* Coat of the Mysterious Butterfly (Female) */
(1,3,2, 2,20,4,0,221894,1),		/* Leggings of the Mysterious Butterfly (Female) */
(1,3,2, 2,20,4,0,221895,1),		/* Shoes of the Mysterious Butterfly (Female) */
(1,3,2, 2,20,4,0,221896,1),		/* Crown of the Mysterious Butterfly (Female) */
(1,3,2, 2,20,4,0,221897,1),		/* Wings of the Mysterious Butterfly (Female) */
(1,3,2, 2,20,4,0,221899,1),		/* Cactus Flower Bodywear (Female) */
(1,3,2, 2,20,4,0,221924,1),		/* Cowgirl Jacket (Female) */
(1,3,2, 2,20,4,0,221925,1),		/* Cowgirl Shorts (Female) */
(1,3,2, 2,20,4,0,221926,1),		/* Cowgirl Boots (Female) */
(1,3,2, 2,20,4,0,221929,1),		/* Coffee Maid Coat (Female) */
(1,3,2, 2,20,4,0,221930,1),		/* Coffee Maid Shorts (Female) */
(1,3,2, 2,20,4,0,221931,1),		/* Coffee Maid Boots (Female) */
(1,3,2, 2,20,4,0,221932,1),		/* Coffee Maid Gloves (Female) */
(1,3,2, 2,20,4,0,221933,1),		/* Coffee Maid Shoulder Guards (Female) */
(1,3,2, 2,20,4,0,221936,1),		/* Hot Pepper Shorts (Female) */
(1,3,2, 2,20,4,0,221937,1),		/* Hot Pepper Boots (Female) */
(1,3,2, 2,20,4,0,221938,1),		/* Hot Pepper Gloves (Female) */
(1,3,2, 2,20,4,0,222732,1),		/* Purple Pumpkin Gloves (Female) */
(1,3,2, 2,20,4,0,222733,1),		/* Purple Pumpkin Jacket (Female) */
(1,3,2, 2,20,4,0,222734,1),		/* Purple Pumpkin Shoes (Female) */
(1,3,2, 2,20,4,0,222735,1),		/* Purple Pumpkin Leggings (Female) */
(1,3,2, 2,20,4,0,222742,1),		/* Demon Lady Dress (Female) */
(1,3,2, 2,20,4,0,222743,1),		/* Demon Lady Gloves (Female) */
(1,3,2, 2,20,4,0,222744,1),		/* Demon Lady Boots (Female) */
(1,3,2, 2,20,4,0,222745,1),		/* Demon Lady Leggings (Female) */
(1,3,2, 2,20,4,0,222866,1),		/* Snowflake Festival Flower Head Piece (Female) */
(1,3,2, 2,20,4,0,222869,1),		/* Sexy Bunny Dress (Female) */
(1,3,2, 2,20,4,0,222897,1),		/* Flower Fairy's Leggings (Female) */
(1,3,2, 2,20,4,0,222898,1),		/* Flower Fairy's Shoes (Female) */
(1,3,2, 2,20,4,0,222916,1),		/* Snowflake Festival Coat (Female) */
(1,3,2, 2,20,4,0,222917,1),		/* Snowflake Festival Gloves (Female) */
(1,3,2, 2,20,4,0,222918,1),		/* Snowflake Festival Boots (Female) */
(1,3,2, 2,20,4,0,222919,1),		/* Snowflake Festival Pants (Female) */
(1,3,2, 2,20,4,0,222920,1),		/* Snowflake Festival Head Piece (Female) */
(1,3,2, 2,20,4,0,222922,1),		/* Snowflake Festival Flower Shoulder Guards (Female) */
(1,3,2, 2,20,4,0,222923,1),		/* Snowflake Festival Snowman Shoulder Guards (Female) */
(1,3,2, 2,20,4,0,222924,1),		/* Snowflake Festival Gingerman Shoulder Guards (Female) */
(1,3,2, 2,20,4,0,222980,1),		/* Golden Snowflake Festival Coat (Female) */
(1,3,2, 2,20,4,0,222981,1),		/* Golden Snowflake Festival Gloves (Female) */
(1,3,2, 2,20,4,0,222982,1),		/* Golden Snowflake Festival Boots (Female) */
(1,3,2, 2,20,4,0,222983,1),		/* Golden Snowflake Festival Pants (Female) */
(1,3,2, 2,20,4,0,222984,1),		/* Golden Snowflake Festival Hat (Female) */
(1,3,2, 2,20,4,0,222985,1),		/* Golden Snowflake Festival Shoulder Guards (Female) */
(1,3,2, 2,20,4,0,222986,1),		/* Sexy Bunny Stockings (Female) */
(1,3,2, 2,20,4,0,222987,1),		/* Sexy Bunny Boots (Female) */
(1,3,2, 2,20,4,0,222988,1),		/* Sexy Bunny Ears (Female) */
(1,3,2, 2,20,4,0,222994,1),		/* Evening Gown (Female) */
(1,3,2, 2,20,4,0,222995,1),		/* Evening Gown Stockings (Female) */
(1,3,2, 2,20,4,0,222996,1),		/* Evening Gown High Heels (Female) */
(1,3,2, 2,20,4,0,223353,1),		/* Purple Fantasy Dress (Female) */
(1,3,2, 2,20,4,0,223354,1),		/* Purple Fantasy Stockings (Female) */
(1,3,2, 2,20,4,0,223355,1),		/* Purple Fantasy Short Boots (Female) */
(1,3,2, 2,20,4,0,223356,1),		/* Purple Fantasy Gloves (Female) */
(1,3,2, 2,20,4,0,223357,1),		/* Sexy Black Cat Tail (Female) */
(1,3,2, 2,20,4,0,223365,1),		/* Eve's Summer Clothes (Female) */
(1,3,2, 2,20,4,0,223366,1),		/* Eve's Petal Gloves (Female) */
(1,3,2, 2,20,4,0,223367,1),		/* Eve's Grass Boots (Female) */
(1,3,2, 2,20,4,0,223368,1),		/* Eve's Summer Pants (Female) */
(1,3,2, 2,20,4,0,223375,1),		/* Romantic Rose Crown (Female) */
(1,3,2, 2,20,4,0,223376,1),		/* Outfit of the Jealous Single (Female) */
(1,3,2, 2,20,4,0,223377,1),		/* Outfit of the Passionate Couple (Female) */
(1,3,2, 2,20,4,0,223380,1),		/* Golden Music Shirt (Female) */
(1,3,2, 2,20,4,0,223381,1),		/* Golden Music Gloves (Female) */
(1,3,2, 2,20,4,0,223382,1),		/* Golden Music Boots (Female) */
(1,3,2, 2,20,4,0,223383,1),		/* Golden Music Pants (Female) */
(1,3,2, 2,20,4,0,223385,1),		/* Golden Music Epaulet (Female) */
(1,3,2, 2,20,4,0,223389,1),		/* Sexy Bunny Gloves (Female) */
(1,3,2, 2,20,4,0,223390,1),		/* Baroque Noble Hat (Female) */
(1,3,2, 2,20,4,0,223391,1),		/* Baroque Noble Coat (Female) */
(1,3,2, 2,20,4,0,223392,1),		/* Baroque Noble Pants (Female) */
(1,3,2, 2,20,4,0,223393,1),		/* Baroque Noble Boots (Female) */
(1,3,2, 2,20,4,0,223394,1),		/* Baroque Noble Gloves (Female) */
(1,3,2, 2,20,4,0,223400,1),		/* Sexy Black Cat Ears (Female) */
(1,3,2, 2,20,4,0,223409,1),		/* Lacy Egg Coat (Female) */
(1,3,2, 2,20,4,0,223415,1),		/* Wabbit Ears (Female) */
(1,3,2, 2,20,4,0,223421,1),		/* Music Festival Dress (Female) */
(1,3,2, 2,20,4,0,223422,1),		/* Music Festival Boots (Female) */
(1,3,2, 2,20,4,0,223424,1),		/* Music Festival Diadem (Female) */
(1,3,2, 2,20,4,0,223425,1),		/* Music Festival Shoulder Guards (Female) */
(1,3,2, 2,20,4,0,223442,1),		/* Green Dancer's Tiara (Female) */
(1,3,2, 2,20,4,0,223448,1),		/* Green Dancer's Foot Embellishment (Female) */
(1,3,2, 2,20,4,0,223449,1),		/* Oriental Royal Military Coat (Female) */
(1,3,2, 2,20,4,0,224312,1),		/* Oriental Traditional Wedding Coat (Female) */
(1,3,2, 2,20,4,0,224313,1),		/* Oriental Traditional Wedding Pants (Female) */
(1,3,2, 2,20,4,0,224314,1),		/* Oriental Traditional Wedding Cap (Female) */
(1,3,2, 2,20,4,0,224315,1),		/* Oriental Traditional Wedding Boots (Female) */
(1,3,2, 2,20,4,0,224316,1),		/* Oriental Lucky Days Coat (Female) */
(1,3,2, 2,20,4,0,224317,1),		/* Oriental Lucky Days Pants (Female) */
(1,3,2, 2,20,4,0,224318,1),		/* Oriental Lucky Days Headdress (Female) */
(1,3,2, 2,20,4,0,224319,1),		/* Oriental Lucky Days Foot Embellishment (Female) */
(1,3,2, 2,20,4,0,224320,1),		/* Oriental Traditional Coat (Female) */
(1,3,2, 2,20,4,0,224322,1),		/* Oriental Traditional Headscarf (Female) */
(1,3,2, 2,20,4,0,224323,1),		/* Oriental Traditional Shoes (Female) */
(1,3,2, 2,20,4,0,224327,1),		/* Beautiful Dancer's Bra (Female) */
(1,3,2, 2,20,4,0,224328,1),		/* Beautiful Dancer's Skirt (Female) */
(1,3,2, 2,20,4,0,224330,1),		/* Beautiful Dancer's Foot Embellishment (Female) */
(1,3,2, 2,20,4,0,224331,1),		/* Beautiful Dancer's Gloves (Female) */
(1,3,2, 2,20,4,0,224332,1),		/* Oriental Fashionable Military Coat (Female) */
(1,3,2, 2,20,4,0,224333,1),		/* Oriental Fashionable Military Pants (Female) */
(1,3,2, 2,20,4,0,224334,1),		/* Oriental Fashionable Military Tiara (Female) */
(1,3,2, 2,20,4,0,224336,1),		/* Oriental Royal Military Shorts (Female) */
(1,3,2, 2,20,4,0,224337,1),		/* Green Dancer's Bra (Female) */
(1,3,2, 2,20,4,0,224338,1),		/* Green Dancer's Skirt (Female) */
(1,3,2, 2,20,4,0,224339,1),		/* Oriental Royal Military Headdress (Female) */
(1,3,2, 2,20,4,0,224341,1),		/* Green Dancer's Hand Embellishment (Female) */
(1,3,2, 2,20,4,0,224932,1),		/* Cloak of the Brave (Female) */
(1,3,2, 2,20,4,0,224933,1),		/* Gloves of the Brave (Female) */
(1,3,2, 2,20,4,0,224934,1),		/* Shoulderpads of the Brave (Female) */
(1,3,2, 2,20,4,0,224935,1),		/* Cape of the Brave (Female) */
(1,3,2, 2,20,4,0,224936,1),		/* Boots of the Brave (Female) */
(1,3,2, 2,20,4,0,224937,1),		/* Trousers of the Brave (Female) */
(1,3,2, 2,20,4,0,224938,1),		/* Helmet of the Brave (Female) */
(1,3,2, 2,20,4,0,224939,1),		/* Stealthy Cloak (Female) */
(1,3,2, 2,20,4,0,224940,1),		/* Stealthy Gloves (Female) */
(1,3,2, 2,20,4,0,224941,1),		/* Stealthy Shoulderpads (Female) */
(1,3,2, 2,20,4,0,224942,1),		/* Stealthy Cape (Female) */
(1,3,2, 2,20,4,0,224943,1),		/* Stealthy Boots (Female) */
(1,3,2, 2,20,4,0,224944,1),		/* Stealthy Trousers (Female) */
(1,3,2, 2,20,4,0,224945,1),		/* Stealthy Hood (Female) */
(1,3,2, 2,20,4,0,224946,1),		/* Wanderer's Cloak (Female) */
(1,3,2, 2,20,4,0,224947,1),		/* Wanderer's Gloves (Female) */
(1,3,2, 2,20,4,0,224948,1),		/* Wanderer's Shoulderpads (Female) */
(1,3,2, 2,20,4,0,224949,1),		/* Wanderer's Cape (Female) */
(1,3,2, 2,20,4,0,224950,1),		/* Wanderer's Boots (Female) */
(1,3,2, 2,20,4,0,224951,1),		/* Wanderer's Trousers (Female) */
(1,3,2, 2,20,4,0,224962,1),		/* Arctic Cloak (Female) */
(1,3,2, 2,20,4,0,224963,1),		/* Arctic Gloves (Female) */
(1,3,2, 2,20,4,0,224964,1),		/* Arctic Shoulderpads (Female) */
(1,3,2, 2,20,4,0,224965,1),		/* Arctic Cape (Female) */
(1,3,2, 2,20,4,0,224966,1),		/* Arctic Boots (Female) */
(1,3,2, 2,20,4,0,224967,1),		/* Arctic Trousers (Female) */
(1,3,2, 2,20,4,0,224968,1),		/* Arctic Helmet (Female) */
(1,3,2, 2,20,4,0,224969,1),		/* Wanderer's Helmet (Female) */
(1,3,2, 2,20,4,0,224970,1),		/* Mystical Cloak (Female) */
(1,3,2, 2,20,4,0,224971,1),		/* Mystical Gloves (Female) */
(1,3,2, 2,20,4,0,224972,1),		/* Mystical Shoulderpads (Female) */
(1,3,2, 2,20,4,0,224973,1),		/* Mystical Cape (Female) */
(1,3,2, 2,20,4,0,224974,1),		/* Mystical Boots (Female) */
(1,3,2, 2,20,4,0,224975,1),		/* Mystical Trousers (Female) */
(1,3,2, 2,20,4,0,224976,1),		/* Mystical Crown (Female) */
(1,3,2, 2,20,4,0,224977,1),		/* Silver Snow Cloak (Female) */
(1,3,2, 2,20,4,0,224978,1),		/* Silver Snow Gloves (Female) */
(1,3,2, 2,20,4,0,224979,1),		/* Silver Snow Shoulderpads (Female) */
(1,3,2, 2,20,4,0,224980,1),		/* Silver Snow Cape (Female) */
(1,3,2, 2,20,4,0,224981,1),		/* Silver Snow Boots (Female) */
(1,3,2, 2,20,4,0,224982,1),		/* Silver Snow Trousers (Female) */
(1,3,2, 2,20,4,0,224983,1),		/* Silver Snow Headdress (Female) */
(1,3,2, 2,20,4,0,224990,1),		/* Samurai Armor (Female) */
(1,3,2, 2,20,4,0,225152,1),		/* Juice Girl Coat (Female) */
(1,3,2, 2,20,4,0,225153,1),		/* Juice Girl Boots (Female) */
(1,3,2, 2,20,4,0,225154,1),		/* Samurai Gloves (Female) */
(1,3,2, 2,20,4,0,225163,1),		/* Strange Clown Coat (Female) */
(1,3,2, 2,20,4,0,225164,1),		/* Strange Clown Shoulder Armor (Female) */
(1,3,2, 2,20,4,0,225165,1),		/* Samurai Spaulders (Female) */
(1,3,2, 2,20,4,0,225166,1),		/* Samurai Boots (Female) */
(1,3,2, 2,20,4,0,225167,1),		/* Samurai Leg Guards (Female) */
(1,3,2, 2,20,4,0,225168,1),		/* Samurai Helmet (Female) */
(1,3,2, 2,20,4,0,225169,1),		/* Strange Clown Pants (Female) */
(1,3,2, 2,20,4,0,225170,1),		/* Strange Clown Mask (Female) */
(1,3,2, 2,20,4,0,225171,1),		/* Strange Clown Cap (Female) */
(1,3,2, 2,20,4,0,225172,1),		/* Strange Clown Cap and Mask (Female) */
(1,3,2, 2,20,4,0,225173,1),		/* Strange Clown Gloves (Female) */
(1,3,2, 2,20,4,0,225174,1),		/* Strange Clown Shoes (Female) */
(1,3,2, 2,20,4,0,225302,1),		/* Elven Snowflake Festival Coat (Female) */
(1,3,2, 2,20,4,0,225303,1),		/* Elven Snowflake Festival Headdress (Female) */
(1,3,2, 2,20,4,0,225304,1),		/* Elven Snowflake Festival Shoes (Female) */
(1,3,2, 2,20,4,0,225305,1),		/* Elven Snowflake Festival Mask (Female) */
(1,3,2, 2,20,4,0,225306,1),		/* Elven Snowflake Festival Wings (Female) */
(1,3,2, 2,20,4,0,225319,1),		/* Kimono (Female) */
(1,3,2, 2,20,4,0,225320,1),		/* Geisha Hairdo (Female) */
(1,3,2, 2,20,4,0,225321,1),		/* Kimono Sandals (Female) */
(1,3,2, 2,20,4,0,225334,1),		/* Assassin's Suit of Azrael (Female) */
(1,3,2, 2,20,4,0,225335,1),		/* Assassin's Shoulder Pads of Azrael (Female) */
(1,3,2, 2,20,4,0,225336,1),		/* Assassin's Leggings of Azrael (Female) */
(1,3,2, 2,20,4,0,225337,1),		/* Assassin's Mask of Azrael (Female) */
(1,3,2, 2,20,4,0,225338,1),		/* Assassin's Boots of Azrael (Female) */
(1,3,2, 2,20,4,0,225339,1),		/* Assassin's Cape of Azrael (Female) */
(1,3,2, 2,20,4,0,225340,1),		/* Assassin's Gloves of Azrael (Female) */
(1,3,2, 2,20,4,0,225366,1),		/* Blue Dress (Female) */
(1,3,2, 2,20,4,0,225367,1),		/* Blue Straw Hat (Female) */
(1,3,2, 2,20,4,0,225368,1),		/* Blue Cloth Shoes (Female) */
(1,3,2, 2,20,4,0,225372,1),		/* Aodai Dress (Female) */
(1,3,2, 2,20,4,0,225373,1),		/* Nonla Hat (Female) */
(1,3,2, 2,20,4,0,225374,1),		/* Grey Cloth Shoes (Female) */
(1,3,2, 2,20,4,0,225541,1),		/* Football Coat - Dark Red/Blue (Female) */
(1,3,2, 2,20,4,0,225542,1),		/* Football Coat - Red/White (Female) */
(1,3,2, 2,20,4,0,225543,1),		/* Football Coat - Black/White (Female) */
(1,3,2, 2,20,4,0,225544,1),		/* Football Coat - Yellow/Red (Female) */
(1,3,2, 2,20,4,0,225545,1),		/* Football Coat - Yellow/Dark Blue (Female) */
(1,3,2, 2,20,4,0,225546,1),		/* Football Coat - Green/White (Female) */
(1,3,2, 2,20,4,0,225553,1),		/* Football Pants - Dark Red/Blue (Female) */
(1,3,2, 2,20,4,0,225554,1),		/* Football Pants - Red/White (Female) */
(1,3,2, 2,20,4,0,225555,1),		/* Football Pants - Black/White (Female) */
(1,3,2, 2,20,4,0,225556,1),		/* Football Pants - Yellow/Red (Female) */
(1,3,2, 2,20,4,0,225557,1),		/* Football Pants - Yellow/Dark Blue (Female) */
(1,3,2, 2,20,4,0,225558,1),		/* Football Pants - Green/White (Female) */
(1,3,2, 2,20,4,0,225565,1),		/* Football Shoes - Dark Red/Blue (Female) */
(1,3,2, 2,20,4,0,225566,1),		/* Football Shoes - Red/White (Female) */
(1,3,2, 2,20,4,0,225567,1),		/* Football Shoes - Black/White (Female) */
(1,3,2, 2,20,4,0,225568,1),		/* Football Shoes - Yellow/Red (Female) */
(1,3,2, 2,20,4,0,225569,1),		/* Football Shoes - Yellow/Dark Blue (Female) */
(1,3,2, 2,20,4,0,225570,1),		/* Football Shoes - Green/White (Female) */
(1,3,2, 2,20,4,0,225577,1),		/* Football Hat - Dark Red/Blue (Female) */
(1,3,2, 2,20,4,0,225578,1),		/* Football Hat - Red/White (Female) */
(1,3,2, 2,20,4,0,225579,1),		/* Football Hat - Black/White (Female) */
(1,3,2, 2,20,4,0,225580,1),		/* Football Hat - Yellow/Red (Female) */
(1,3,2, 2,20,4,0,225581,1),		/* Football Hat - Yellow/Dark Blue (Female) */
(1,3,2, 2,20,4,0,225582,1),		/* Football Hat - Green/White (Female) */
(1,3,2, 2,20,4,0,225888,1),		/* Football Gloves - Dark Red/Blue (Female) */
(1,3,2, 2,20,4,0,225889,1),		/* Football Gloves - Red/White (Female) */
(1,3,2, 2,20,4,0,225890,1),		/* Football Gloves - Black/White (Female) */
(1,3,2, 2,20,4,0,225891,1),		/* Football Gloves - Yellow/Red (Female) */
(1,3,2, 2,20,4,0,225892,1),		/* Football Gloves - Yellow/ Dark Blue (Female) */
(1,3,2, 2,20,4,0,225893,1),		/* Football Gloves - Green/White (Female) */
(1,3,2, 2,20,4,0,226100,1),		/* Blessed Knight Coat (Female) */
(1,3,2, 2,20,4,0,226101,1),		/* Blessed Knight Gloves (Female) */
(1,3,2, 2,20,4,0,226102,1),		/* Blessed Knight Shoulderpads (Female) */
(1,3,2, 2,20,4,0,226103,1),		/* Blessed Knight Cape (Female) */
(1,3,2, 2,20,4,0,226104,1),		/* Blessed Knight Boots (Female) */
(1,3,2, 2,20,4,0,226105,1),		/* Blessed Knight Trousers (Female) */
(1,3,2, 2,20,4,0,226106,1),		/* Blessed Knight Helmet (Female) */
(1,3,2, 2,20,4,0,226107,1),		/* War Dragon Warrior Jacket (Female) */
(1,3,2, 2,20,4,0,226108,1),		/* War Dragon Warrior Gloves (Female) */
(1,3,2, 2,20,4,0,226109,1),		/* War Dragon Warrior Shoulder Guards (Female) */
(1,3,2, 2,20,4,0,226110,1),		/* War Dragon Warrior Cape (Female) */
(1,3,2, 2,20,4,0,226111,1),		/* War Dragon Warrior Boots (Female) */
(1,3,2, 2,20,4,0,226112,1),		/* War Dragon Warrior Pants (Female) */
(1,3,2, 2,20,4,0,226113,1),		/* War Dragon Warrior Helmet (Female) */
(1,3,2, 2,20,4,0,226130,1),		/* Clear Breeze Rogue Jacket (Female) */
(1,3,2, 2,20,4,0,226131,1),		/* Clear Breeze Rogue Gloves (Female) */
(1,3,2, 2,20,4,0,226132,1),		/* Clear Breeze Rogue Shoulder Armor (Female) */
(1,3,2, 2,20,4,0,226133,1),		/* Clear Breeze Rogue Cape (Female) */
(1,3,2, 2,20,4,0,226134,1),		/* Clear Breeze Rogue Boots (Female) */
(1,3,2, 2,20,4,0,226135,1),		/* Clear Breeze Rogue Shorts (Female) */
(1,3,2, 2,20,4,0,226136,1),		/* Clear Breeze Rogue Helmet (Female) */
(1,3,2, 2,20,4,0,226137,1),		/* Shadow Scout Armor (Female) */
(1,3,2, 2,20,4,0,226138,1),		/* Shadow Scout Gloves (Female) */
(1,3,2, 2,20,4,0,226139,1),		/* Shadow Scout Shoulder Armor (Female) */
(1,3,2, 2,20,4,0,226140,1),		/* Shadow Scout Cape (Female) */
(1,3,2, 2,20,4,0,226141,1),		/* Shadow Scout Boots (Female) */
(1,3,2, 2,20,4,0,226142,1),		/* Shadow Scout Cap (Female) */
(1,3,2, 2,20,4,0,226143,1),		/* Dark Flame Priest Jacket (Female) */
(1,3,2, 2,20,4,0,226144,1),		/* Dark Flame Priest Gloves (Female) */
(1,3,2, 2,20,4,0,226145,1),		/* Dark Flame Priest Shoulder Armor (Female) */
(1,3,2, 2,20,4,0,226146,1),		/* Dark Flame Priest Cape (Female) */
(1,3,2, 2,20,4,0,226147,1),		/* Dark Flame Priest Boots (Female) */
(1,3,2, 2,20,4,0,226148,1),		/* Dark Flame Priest Hood (Female) */
(1,3,2, 2,20,4,0,226149,1),		/* Dark Flame Priest Shorts (Female) */
(1,3,2, 2,20,4,0,226150,1),		/* Acolyte Mage Robe (Female) */
(1,3,2, 2,20,4,0,226151,1),		/* Acolyte Mage Gloves (Female) */
(1,3,2, 2,20,4,0,226152,1),		/* Acolyte Mage Shoulder Armor (Female) */
(1,3,2, 2,20,4,0,226153,1),		/* Acolyte Mage Cape (Female) */
(1,3,2, 2,20,4,0,226154,1),		/* Acolyte Mage Boots (Female) */
(1,3,2, 2,20,4,0,226155,1),		/* Acolyte Mage Crown (Female) */
(1,3,2, 2,20,4,0,226255,1),		/* Paraguyan Football Shirt (Female) */
(1,3,2, 2,20,4,0,226256,1),		/* Venezuelan Football Shirt (Female) */
(1,3,2, 2,20,4,0,226257,1),		/* Peruvian Football Shirt (Female) */
(1,3,2, 2,20,4,0,226258,1),		/* Uruguyan Football Shirt (Female) */
(1,3,2, 2,20,4,0,226259,1),		/* Argentinian Football Shirt (Female) */
(1,3,2, 2,20,4,0,226260,1),		/* Bolivian Football Shirt (Female) */
(1,3,2, 2,20,4,0,226261,1),		/* Brazilian Football Shirt (Female) */
(1,3,2, 2,20,4,0,226262,1),		/* Chilean Football Shirt (Female) */
(1,3,2, 2,20,4,0,226263,1),		/* Colombian Football Shirt (Female) */
(1,3,2, 2,20,4,0,226264,1),		/* Ecuadorian Football Shirt (Female) */
(1,3,2, 2,20,4,0,226285,1),		/* Lacy Wedding Dress (Female) */
(1,3,2, 2,20,4,0,226286,1),		/* Feathered Wedding Bonnet (Female) */
(1,3,2, 2,20,4,0,226287,1),		/* Silk Wedding Shoes (Female) */
(1,3,2, 2,20,4,0,226288,1),		/* Silk Wedding Gloves (Female) */
(1,3,2, 2,20,4,0,226591,1),		/* Aztec Coat (Female) */
(1,3,2, 2,20,4,0,226592,1),		/* Aztec Shoulder Armor (Female) */
(1,3,2, 2,20,4,0,226593,1),		/* Aztec Cape (Female) */
(1,3,2, 2,20,4,0,226594,1),		/* Aztec Shoes (Female) */
(1,3,2, 2,20,4,0,226595,1),		/* Aztec Pants (Female) */
(1,3,2, 2,20,4,0,226596,1),		/* Aztec Headdress (Female) */
(1,3,2, 2,20,4,0,226690,1),		/* South Korean Football Shirt (Female) */
(1,3,2, 2,20,4,0,226691,1),		/* Spanish Football Shirt (Female) */
(1,3,2, 2,20,4,0,226692,1),		/* French Football Shirt (Female) */
(1,3,2, 2,20,4,0,226693,1),		/* Swiss Football Shirt (Female) */
(1,3,2, 2,20,4,0,226694,1),		/* North Korean Football Shirt (Female) */
(1,3,2, 2,20,4,0,226695,1),		/* Portuguese Football Shirt (Female) */
(1,3,2, 2,20,4,0,226696,1),		/* Kiwi Football Shirt (Female) */
(1,3,2, 2,20,4,0,226697,1),		/* Slovakian Football Shirt (Female) */
(1,3,2, 2,20,4,0,226698,1),		/* Italian Football Shirt (Female) */
(1,3,2, 2,20,4,0,226699,1),		/* Greek Football Shirt (Female) */
(1,3,2, 2,20,4,0,226700,1),		/* South African Football Shirt (Female) */
(1,3,2, 2,20,4,0,226701,1),		/* Japanese Football Shirt (Female) */
(1,3,2, 2,20,4,0,226702,1),		/* Cameroonian Football Shirt (Female) */
(1,3,2, 2,20,4,0,226703,1),		/* Danish Football Shirt (Female) */
(1,3,2, 2,20,4,0,226704,1),		/* Dutch Football Shirt (Female) */
(1,3,2, 2,20,4,0,226705,1),		/* Ghanaian Football Shirt (Female) */
(1,3,2, 2,20,4,0,226706,1),		/* German  Football Shirt (Female) */
(1,3,2, 2,20,4,0,226707,1),		/* Serbian Football Shirt (Female) */
(1,3,2, 2,20,4,0,226708,1),		/* Australian Football Shirt (Female) */
(1,3,2, 2,20,4,0,226709,1),		/* Slovenian Football Shirt (Female) */
(1,3,2, 2,20,4,0,226710,1),		/* English Football Shirt (Female) */
(1,3,2, 2,20,4,0,226711,1),		/* USA Football Shirt (Female) */
(1,3,2, 2,20,4,0,226712,1),		/* Algerian Football Shirt (Female) */
(1,3,2, 2,20,4,0,226713,1),		/* Nigerian Football Shirt (Female) */
(1,3,2, 2,20,4,0,226714,1),		/* Ivory Coast Football Shirt (Female) */
(1,3,2, 2,20,4,0,226802,1),		/* Polish Football Shirt (Female) */
(1,3,2, 2,20,4,0,226888,1),		/* Honduran Football Shirt (Female) */
(1,3,2, 2,20,4,0,226889,1),		/* Mexican Football Shirt (Female) */
(1,3,2, 2,20,4,0,226890,1),		/* Nicaraguan Football Shirt (Female) */
(1,3,2, 2,20,4,0,226891,1),		/* Panamanian Football Shirt (Female) */
(1,3,2, 2,20,4,0,226892,1),		/* Belize Football Shirt (Female) */
(1,3,2, 2,20,4,0,226893,1),		/* Costa Rican Football Shirt (Female) */
(1,3,2, 2,20,4,0,226894,1),		/* Salvadorian Football Shirt (Female) */
(1,3,2, 2,20,4,0,226895,1),		/* Guatemalan Football Shirt (Female) */
(1,3,2, 2,20,4,0,227169,1),		/* Cloth Corset (Female) */
(1,3,2, 2,20,4,0,227170,1),		/* Green Rattan Dress (Female) */
(1,3,2, 2,20,4,0,227171,1),		/* Green Rattan Hat (Female) */
(1,3,2, 2,20,4,0,227552,1),		/* Skeletal Siren Gloves (Female) */
(1,3,2, 2,20,4,0,227553,1),		/* Skeletal Siren Bodice (Female) */
(1,3,2, 2,20,4,0,227554,1),		/* Skeletal Siren Cape (Female) */
(1,3,2, 2,20,4,0,227555,1),		/* Skeletal Siren Leggings (Female) */
(1,3,2, 2,20,4,0,227556,1),		/* Skeletal Siren Magic Boots (Female) */
(1,3,2, 2,20,4,0,228674,1),		/* Skeletal Siren Headdress (Female) */
(1,3,2, 2,20,4,0,228675,1),		/* Soul-Eater Demon Clown Gloves (Female) */
(1,3,2, 2,20,4,0,228676,1),		/* Soul-Eater Demon Clown Suit (Female) */
(1,3,2, 2,20,4,0,228677,1),		/* Soul-Eater Demon Clown Shoulder Guards (Female) */
(1,3,2, 2,20,4,0,228678,1),		/* Soul-Eater Demon  Clown Boots (Female) */
(1,3,2, 2,20,4,0,228679,1),		/* Soul-Eater Demon Clown Shorts (Female) */
(1,3,2, 2,20,4,0,228680,1),		/* Soul-Eater Demon Clown Mask (Female) */
(1,3,2, 2,20,4,0,228687,1),		/* Grinning Rogue Coat (Female) */
(1,3,2, 2,20,4,0,228688,1),		/* Grinning Rogue Gloves (Female) */
(1,3,2, 2,20,4,0,228689,1),		/* Grinning Rogue Shoulder Armor (Female) */
(1,3,2, 2,20,4,0,228690,1),		/* Grinning Rogue Boots (Female) */
(1,3,2, 2,20,4,0,228691,1),		/* Grinning Rogue Trousers (Female) */
(1,3,2, 2,20,4,0,228692,1),		/* Grinning Rogue Helmet (Female) */
(1,3,2, 2,20,4,0,228695,1),		/* Sismond Dress (Female) */
(1,3,2, 2,20,4,0,228696,1),		/* Sismond Mask (Female) */
(1,3,2, 2,20,4,0,229705,1),		/* Traditional Head Cover (Female) */
(1,3,2, 2,20,4,0,229706,1),		/* Traditional Dress (Female) */
(1,3,2, 2,20,4,0,229707,1),		/* Russian Football Shirt (Female) */
(1,3,2, 2,20,4,0,229714,1),		/* Bathing Headdress (Female) */
(1,3,2, 2,20,4,0,229715,1),		/* Bathrobe (Female) */
(1,3,2, 2,20,4,0,230177,1),		/* Hood of the Storm (Female) */
(1,3,2, 2,20,4,0,230178,1),		/* Cape of the Storm (Female) */
(1,3,2, 2,20,4,0,230179,1),		/* Boots of the Storm (Female) */
(1,3,2, 2,20,4,0,230180,1),		/* Gloves of the Storm (Female) */
(1,3,2, 2,20,4,0,230181,1),		/* Leggings of the Storm (Female) */
(1,3,2, 2,20,4,0,230182,1),		/* Shoulder Guards of the Storm (Female) */
(1,3,2, 2,20,4,0,230183,1),		/* Camisole of the Storm (Female) */
(1,3,2, 2,20,4,0,230768,1),		/* Redbud Academy Uniform Coat (Female) */
(1,3,2, 2,20,4,0,230769,1),		/* Redbud Academy Uniform Shoes (Female) */
(1,3,2, 2,20,4,0,230774,1),		/* Sports Suit of Dedication (Female) */
(1,3,2, 2,20,4,0,230775,1),		/* Sports Suit of the Rising Sun (Female) */
(1,3,2, 2,20,4,0,231980,1),		/* Dark Vengeance Skirt (Female) */
(1,3,2, 2,20,4,0,231981,1),		/* Dark Vengeance Gloves (Female) */
(1,3,2, 2,20,4,0,231982,1),		/* Dark Vengeance Trousers (Female) */
(1,3,2, 2,20,4,0,231983,1),		/* Dark Vengeance Boots (Female) */
(1,3,2, 2,20,4,0,231990,1),		/* Silver Envoy's Gloves (Female) */
(1,3,2, 2,20,4,0,231991,1),		/* Silver Envoy's Headdress (Female) */
(1,3,2, 2,20,4,0,231992,1),		/* Silver Envoy's Trousers (Female) */
(1,3,2, 2,20,4,0,231993,1),		/* Silver Envoy's Shoulderpads (Female) */
(1,3,2, 2,20,4,0,231994,1),		/* Silver Envoy's Cloak (Female) */
(1,3,2, 2,20,4,0,231995,1),		/* Silver Envoy's Boots (Female) */
(1,3,2, 2,20,4,0,232000,1),		/* Colorful Violet Boots (Female) */
(1,3,2, 2,20,4,0,232001,1),		/* Colorful Violet Trousers (Female) */
(1,3,2, 2,20,4,0,232002,1),		/* Colorful Violet Cloak (Female) */
(1,3,2, 2,20,4,0,232003,1),		/* Colorful Violet Headdress (Female) */
(1,3,2, 2,20,4,0,234071,1),		/* Iranian Football Shirt (Female) */
(1,3,2, 2,20,4,0,234072,1),		/* Bosnian-Herzegovinian Football Shirt (Female) */
(1,3,2, 2,20,4,0,234073,1),		/* Croatian Football Shirt (Female) */
(1,3,2, 2,20,4,0,234074,1),		/* Belgian Football Shirt (Female) */
(1,3,2, 2,20,4,0,202024,1),		/* Yule Celebration Package (Female) */
(1,3,2, 2,20,4,0,202025,1),		/* Arctic Costume Package (Female) */
(1,3,2, 2,20,4,0,202026,1),		/* Silver Snow Costume Package (Female) */
(1,3,2, 2,20,4,0,202041,1),		/* Mystical Costume Package (Female) */
(1,3,2, 2,20,4,0,204812,1),		/* Costume Package (Female) */
(1,3,2, 2,20,4,0,206346,1),		/* Wanderer's Costume Package (Female) */
(1,3,2, 2,20,4,0,206347,1),		/* Stealthy Costume Package (Female) */
(1,3,2, 2,20,4,0,206348,1),		/* Costume Package of the Brave (Female) */
(1,3,2, 2,20,4,0,206744,1),		/* Assassin's Costume Package (Female) */
(1,3,2, 2,20,4,0,206747,1),		/* Purple Lady Costume Package (Female) */
(1,3,2, 2,20,4,0,206837,1),		/* Baroque Noble Costume Potion (Female) */
(1,3,2, 2,20,4,0,206838,1),		/* Evening Gown Costume Potion (Female) */
(1,3,2, 2,20,4,0,206839,1),		/* Dark Magic Costume Potion (Female) */
(1,3,2, 2,20,4,0,240812,1),		/* Soul-Eater Demon Clown Costume Package (Female) */
(1,3,2, 2,20,4,0,241068,1),		/* Costume of the Storm (Female) */
(1,3,2, 2,20,4,0,241070,1);		/* Basic Costume of the Storm (Female) */

GO

INSERT [dbo].[NewShopInfo]
([World1], [SellType], [SellType1], [SellType2], [Sell_Cost], [Sell_Get_Bonus], [Item_DisplayerObjID], [Item_OrgObjID1], [Item_Count1])
VALUES
-- Sub Costume Weapons Unisex
(1,3,3, 2,100,20,0,211477,1),		/* Doomlord's Blade (Male) */
(1,3,3, 2,100,20,0,211469,1),		/* Little Devil's Staff */
(1,3,3, 2,100,20,0,211471,1),		/* Flower Fairy's Bee Staff */
(1,3,3, 2,100,20,0,211472,1),		/* Staff of the Purple Lady */
(1,3,3, 2,100,20,0,211479,1),		/* Scarlet Sickle */
(1,3,3, 2,100,20,0,211480,1),		/* Wild Thorn Long Sword */
(1,3,3, 2,100,20,0,211481,1),		/* Spirit of the Cheetah */
(1,3,3, 2,100,20,0,211483,1),		/* New Year's Star Stick */
(1,3,3, 2,100,20,0,211835,1),		/* Dimitar's Sound */
(1,3,3, 2,100,20,0,211840,1),		/* Alpenhorn */
(1,3,3, 2,100,20,0,211866,1),		/* Maddening Consciousness Staff */
(1,3,3, 2,100,20,0,212132,1),		/* Kaz Madness Wand */
(1,3,3, 2,100,20,0,212192,1),		/* Rainbow Lollipop */
(1,3,3, 2,100,20,0,212136,1),		/* Ancient Silverblade */
(1,3,3, 2,100,20,0,211470,1),		/* Angel Blade */
(1,3,3, 2,100,20,0,212713,1),		/* Bronze Trophy */
(1,3,3, 2,100,20,0,211485,1),		/* Carret Blade */
(1,3,3, 2,100,20,0,211834,1),		/* Chime Wood Guitar */
(1,3,3, 2,100,20,0,211475,1),		/* Cowboy Blade */
(1,3,3, 2,100,20,0,211835,1),		/* Dimitar's Sound */
(1,3,3, 2,100,20,0,212137,1),		/* Elders Long Sword */
(1,3,3, 2,100,20,0,212711,1),		/* Gold Trophy */
(1,3,3, 2,100,20,0,211833,1),		/* Golden Wind Instrument */
(1,3,3, 2,100,20,0,212138,1),		/* Igor's Axe */
(1,3,3, 2,100,20,0,212132,1),		/* Kaz Madness Wand */
(1,3,3, 2,100,20,0,211826,1),		/* Lute Sword */
(1,3,3, 2,100,20,0,211836,1),		/* Lute Hammer */
(1,3,3, 2,100,20,0,211866,1),		/* Maddening Consciousness Staff */
(1,3,3, 2,100,20,0,211476,1),		/* Maid's Umbrella */
(1,3,3, 2,100,20,0,213238,1),		/* Molten Chocolate Cone */
(1,3,3, 2,100,20,0,211841,1),		/* Pengo */
(1,3,3, 2,100,20,0,211678,1),		/* Purple Rose Bouquet of Romance */
(1,3,3, 2,100,20,0,211823,1),		/* Rattle 1 Handed */
(1,3,3, 2,100,20,0,211838,1),		/* Rattle Dagger */
(1,3,3, 2,100,20,0,211677,1),		/* Red Rose Bouquet of love Sword */
(1,3,3, 2,100,20,0,212446,1),		/* Red Rose Bouquet Sword */
(1,3,3, 2,100,20,0,223533,1),		/* Red Rose Shield of Love  */
(1,3,3, 2,100,20,0,211824,1),		/* Saxophone Sword */
(1,3,3, 2,100,20,0,211839,1),		/* Saxophone Hammer */
(1,3,3, 2,100,20,0,211479,1),		/* Scarlet Sickle Axe */
(1,3,3, 2,100,20,0,212712,1),		/* Silver Trophy */
(1,3,3, 2,100,20,0,212135,1),		/* Snake Charmer Sword */
(1,3,3, 2,100,20,0,213239,1),		/* Snowdust Strawberry Ice Cream */
(1,3,3, 2,100,20,0,211482,1),		/* Snowflake Festival Cane */
(1,3,3, 2,100,20,0,213240,1),		/* Snowflake Handbell */
(1,3,3, 2,100,20,0,212191,1),		/* Spirit Commanding Blade */
(1,3,3, 2,100,20,0,211825,1),		/* Tambourine Sword */
(1,3,3, 2,100,20,0,223429,1),		/* Tambourine Shield */
(1,3,3, 2,100,20,0,211676,1),		/* Yellow Rose Bouquet of Fortune Sword */
(1,3,3, 2,100,20,0,223531,1),		/* Yellow Rose Shield of Blessing */
(1,3,3, 2,100,20,0,230324,1),		/* Feather of Adult Virgo Pet */
(1,3,3, 2,100,20,0,230325,1),		/* Feather of Newborn Virgo Pet */

-- Sub Costume Magic Wings Male
(1,3,4, 2,140,25,0,225311,1),		/* Elven Snowflake Festival Wings */

-- Sub Costume Magic Wings Female
(1,3,4, 3,140,25,0,221897,1),		/* Wings of the Mysterious Butterfly */
(1,3,4, 3,140,25,0,225306,1),		/* Elven Snowflake Festival Wings */
(1,3,4, 3,140,25,0,221887,1),		/* Angel's Dream Wings */

-- Sub Costume Magic Wings Unisex  1, 3, 4, 1
(1,3,4, 1,200,40,0,221887,1),		/* Angel's Dream Wings */
(1,3,4, 1,200,40,0,222865,1),		/* Little Devil's Wings */
(1,3,4, 1,200,40,0,222899,1),		/* Flower Fairy's Wings */
(1,3,4, 1,200,40,0,222921,1),		/* Snowflake Festival Wings */
(1,3,4, 1,200,40,0,222997,1),		/* Holy Angel's Wings */
(1,3,4, 1,200,40,0,223427,1),		/* Heavenly Black Wings */
(1,3,4, 1,200,40,0,224865,1),		/* Sparkling Wings */
(1,3,4, 1,200,40,0,224866,1),		/* Amethyst Wings */
(1,3,4, 1,200,40,0,224985,1),		/* Silver Corona Wings */
(1,3,4, 1,200,40,0,224986,1),		/* Wings of Divine Incarnation */
(1,3,4, 1,200,40,0,224987,1),		/* Mighty Phoenix Wings */
(1,3,4, 1,200,40,0,224988,1),		/* Wings of the Flaming Inferno */
(1,3,4, 1,200,40,0,224989,1),		/* Wings of the Silver Sky */
(1,3,4, 1,200,40,0,225242,1),		/* Experimental Wings */
(1,3,4, 1,200,40,0,226229,1),		/* Wings of the Skystormer */
(1,3,4, 1,200,40,0,226295,1),		/* Azure Wings */
(1,3,4, 1,200,40,0,227537,1),		/* Wings of the Dark Master */
(1,3,4, 1,200,40,0,228697,1),		/* Sismond Wings */
(1,3,4, 1,200,40,0,230163,1),		/* Wings of the Storm */
(1,3,4, 1,200,40,0,241939,1),		/* Sealed Legendary Virgo Pet Wings */
(1,3,4, 1,200,40,0,230324,1),		/* Feather of Adult Virgo Pet */
(1,3,4, 1,200,40,0,230325,1),		/* Feather of Newborn Virgo Pet */
(1,3,4, 1,200,40,0,226910,1),		/* Sword Soul */
(1,3,4, 1,200,40,0,227538,1),		/* Viscum Leaf */
(1,3,4, 1,200,40,0,230762,1),		/* Rainbow Light Feather */
(1,3,4, 1,200,40,0,230763,1),		/* Blue Flame Feather */
(1,3,4, 1,200,40,0,230764,1),		/* Red Flame Feather */

/***** Sub Crafting *****/

-- Sub Furnitures / Alchemy Bonus
(1,4,1, 1,55,5,0,201391,1),		/* Alchemy Bottle */
(1,4,1, 1,55,5,0,201392,1),		/* Large Alchemy Furnace */

-- Sub Furnitures / Blacksmithing Bonus
(1,4,1, 2,55,5,0,201393,1),		/* Blacksmith Anvil */
(1,4,1, 2,55,5,0,201395,1),		/* Cooling Anvil */
(1,4,1, 2,55,5,0,201394,1),		/* Branded Anvil */

-- Sub Furnitures / Carpentry Bonus
(1,4,1, 3,55,5,0,201396,1),		/* Carpenter's Toolbox */
(1,4,1, 3,55,5,0,201397,1),		/* Sawing Table */
(1,4,1, 3,55,5,0,201398,1),		/* Carpenter's Toolbox */

-- Sub Furnitures / Cooking Bonus
(1,4,1, 4,55,5,0,201400,1),		/* Stone Dual Oven Stove */
(1,4,1, 4,55,5,0,201399,1),		/* Small Cooking Oven */
(1,4,1, 4,55,5,0,201451,1),		/* Stone Barbecue Grill */

-- Sub Furnitures / Armorcrafting Bonus
(1,4,1, 5,55,5,0,201456,1),		/* Iron Armorcrafting Table */
(1,4,1, 5,55,5,0,201455,1),		/* Leather Side Horse */

-- Sub Furnitures / Tailering Bonus
(1,4,1, 6,55,5,0,201452,1),		/* Weaving Machine */
(1,4,1, 6,55,5,0,201454,1),		/* Cloth Cutting Table */


-- Sub Resources / 
(1,4,2, -1,55,6,203701,202113,99),		/* Steel Nail */
(1,4,2, -1,55,6,203701,240422,99),		/* Fine Perfect Adept's Tailoring Chest */
(1,4,2, -1,55,6,203701,240419,99),		/* Fine Perfect Adept's Iron Chest */
(1,4,2, -1,55,6,203701,240416,99),		/* Fine Perfect Adept's Wooden Chest */
(1,4,2, -1,35,5,203701,207405,99),		/* Fine Arcane Adept's Tailoring Chest */
(1,4,2, -1,35,5,203701,207402,99),		/* Fine Arcane Adept's Iron Chest */
(1,4,2, -1,35,5,203701,207408,99),		/* Fine Arcane Adept's Armorcrafting Chest */
(1,4,2, -1,35,5,203701,207399,99),		/* Fine Arcane Adept's Wood Chest */
(1,4,2, -1,35,5,203701,208264,99),		/* Fine Enigma Adept's Tailoring Chest */
(1,4,2, -1,35,5,203701,208267,99),		/* Fine Enigma Adept's Armor Chest */
(1,4,2, -1,36,5,205263,208248,100),		/* Verbena Juice */
(1,4,2, -1,36,5,205263,201808,100),		/* Thorn Apple Juice */
(1,4,2, -1,36,5,205263,201822,100),		/* Thorn Apple Extract */
(1,4,2, -1,36,5,205263,202649,100),		/* Straw Mushroom Extract */
(1,4,2, -1,39,5,205263,201806,100),		/* Sinners Palm Sap */
(1,4,2, -1,35,5,205263,201820,100),		/* Sinners Palm Extract */
(1,4,2, -1,35,5,205263,208236,100),		/* Olivine Nugget */
(1,4,2, -1,35,5,205263,201732,100),		/* Rune Obsidian Nugget */
(1,4,2, -1,35,5,205263,202580,100),		/* Frost Crystal Ingot */
(1,4,2, -1,35,5,205263,201745,100),		/* Rune Obsidian Ingot */
(1,4,2, -1,35,5,205263,202581,100),		/* Mica Ingot */
(1,4,2, -1,35,5,205263,201744,100),		/* Abyss-Mercury Ingot */
(1,4,2, -1,35,5,205263,208242,100),		/* Fastan Banyan Lumber */
(1,4,2, -1,35,5,205263,201782,100),		/* Ancient Spirit Oak Plank */
(1,4,2, -1,35,5,205263,202609,100),		/* Aeontree Lumber */
(1,4,2, -1,35,5,205263,202616,100),		/* Aeontree Plank */
(1,4,2, -1,35,5,205263,208243,100),		/* Fastan Banyan Plank */
(1,4,2, -1,35,5,205263,202610,100),		/* Chime Wood Plank */
(1,4,2, -1,29,3,205263,202599,100),		/* Dragon Beard Root Timber */
(1,4,2, -1,48,4,205263,202632,100),		/* Bison Grass Bundle */
(1,4,2, -1,30,3,205263,208059,1),		/* Foloin Nut Butter Material Package */
(1,4,2, -1,35,7,205263,202114,99),		/* Silver Nail */
(1,4,2, -1,35,7,205263,242315,99),		/* Tin Nail */
(1,4,2, -1,35,7,205263,242319,99),		/* Silver-Mercury Nail */
(1,4,2, -1,35,7,205263,242323,99),		/* Wolfram Gold Nail */
(1,4,2, -1,35,7,205263,240325,99),		/* Janost Cypress Lumber */
(1,4,2, -1,35,7,205263,241422,99),		/* Todo Ginkgo Lumber */
(1,4,2, -1,10,1,205263,205689,5),		/* 5 Hardwork Crystal */
(1,4,2, -1,100,10,205263,205689,50),	/* 50 Hardwork Crystal */
(1,4,2, -1,35,7,205263,242066,99),		/* Mulbery Fiber */
(1,4,2, -1,35,7,205263,242317,99),		/* Green Fibre */
(1,4,2, -1,35,7,205263,242321,99),		/* Cotton Fiber */
(1,4,2, -1,35,7,205263,242325,99),		/* Beech Fiber */
(1,4,2, -1,35,7,205263,242324,99),		/* Floyd Metal Stone */
(1,4,2, -1,35,7,205263,242322,99),		/* Lotus Star */
(1,4,2, -1,35,7,205263,242292,99),		/* Blood Palm Lumber */
(1,4,2, -1,35,7,205263,242296,99),		/* Ironaxe Stone Nugget */
(1,4,2, -1,35,5,205263,201802,100),		/* Moxa Sap */
(1,4,2, -1,35,5,205263,201764,100),		/* Oak Lumber */
(1,4,2, -1,573,45,205263,208237,255),	/* 255 Olivine Ingot */
(1,4,2, -1,573,45,205263,208249,255),	/* 255 Verbena Extract */
(1,4,2, -1,223,23,205263,202615,100),	/* 100 Fairywood Plank */

(1,4,2, -1,1,1,205263,200293,100),	/* 100 Ash Wood */
(1,4,2, -1,1,1,205263,200508,100),	/* 100 Chime Wood */
(1,4,2, -1,1,1,205263,200295,100),	/* 100 Willow Wood */
(1,4,2, -1,1,1,205263,200509,100),	/* 100 Stone Rotan Wood */
(1,4,2, -1,1,1,205263,200297,100),	/* 100 Maple Wood */
(1,4,2, -1,1,1,205263,200300,100),	/* 100 Oak Wood */
(1,4,2, -1,1,1,205263,200326,100),	/* 100 Redwood */
(1,4,2, -1,1,1,205263,200304,100),	/* 100 Pine Wood */
(1,4,2, -1,1,1,205263,200332,100),	/* 100 Dragon Beard Root Wood */
(1,4,2, -1,1,1,205263,200298,100),	/* 100 Holly Wood */
(1,4,2, -1,1,1,205263,200306,100),	/* 100 Yew Wood */
(1,4,2, -1,1,1,205263,200331,100),	/* 100 Sagewood */
(1,4,2, -1,1,1,205263,200307,100),	/* 100 Tarslin Demon Wood */
(1,4,2, -1,1,1,205263,200310,100),	/* 100 Dragonlair Wood */
(1,4,2, -1,1,1,205263,202317,100),	/* 100 Fairywood */
(1,4,2, -1,1,1,205263,200312,100),	/* 100 Ancient Spirit Oak Wood */
(1,4,2, -1,1,1,205263,202318,100),	/* 100 Aentree Wood */
(1,4,2, -1,1,1,205263,208240,100),	/* 100 Fastan Banyan */
(1,4,2, -1,1,1,205263,240323,100),	/* 100 Janost Cypress Wood */
(1,4,2, -1,1,1,205263,241426,100),	/* 100 Stone Pine */
(1,4,2, -1,1,1,205263,241420,100),	/* 100 Todo Ginkgo Tree */
(1,4,2, -1,1,1,205263,242242,100),	/* 100 Nadal Wisteria Wood */
(1,4,2, -1,1,1,205263,242290,100),	/* 100 Blood Palm Wood */
(1,4,2, -1,1,1,205263,242254,100),	/* 100 Summer Oak */
(1,4,2, -1,1,1,205263,242266,100),	/* 100 Fire Mountain Tree */
(1,4,2, -1,1,1,205263,242278,100),	/* 100 Kandi Tree */

(1,4,2, -1,1,1,205263,200335,100),	/* 100 Mountain Demon Grass */
(1,4,2, -1,1,1,205263,202552,100),	/* 100 Rosemary */
(1,4,2, -1,1,1,205263,200342,100),	/* 100 Barsaleaf */
(1,4,2, -1,1,1,205263,200334,100),	/* 100 Beetroot */
(1,4,2, -1,1,1,205263,202553,100),	/* 100 Bison Grass*/
(1,4,2, -1,1,1,205263,200333,100),	/* 100 Bitterleaf */
(1,4,2, -1,1,1,205263,242262,100),	/* 100 Cold Psilotum*/
(1,4,2, -1,1,1,205263,241414,100),	/* 100 Dovetail Flower*/
(1,4,2, -1,1,1,205263,200349,100),	/* 100 Dragon Mallow*/
(1,4,2, -1,1,1,205263,242298,100),	/* 100 Dragonsprout Grass*/
(1,4,2, -1,1,1,205263,200343,100),	/* 100 Dusk Orchid */
(1,4,2, -1,1,1,205263,202554,100),	/* 100 Foloin Nut */
(1,4,2, -1,1,1,205263,202558,100),	/* 100 Goblin Grass */
(1,4,2, -1,1,1,205263,202555,100),	/* 100 Green Thistle */
(1,4,2, -1,1,1,205263,242250,100),	/* 100 Isyeh Grass */
(1,4,2, -1,1,1,205263,202557,100),	/* 100 Mirror Sedge */
(1,4,2, -1,1,1,205263,242310,100),	/* 100 Moon Grass */
(1,4,2, -1,1,1,205263,200345,100),	/* 100 Moon Orchid */
(1,4,2, -1,1,1,205263,200338,100),	/* 100 Moxa*/
(1,4,2, -1,1,1,205263,240329,100),	/* 100 Nocturnal Lantern Grass */
(1,4,2, -1,1,1,205263,242286,100),	/* 100 Shell Flower */
(1,4,2, -1,1,1,205263,200346,100),	/* 100 Sinners Palm */
(1,4,2, -1,1,1,205263,242274,100),	/* 100 Snow Grass */
(1,4,2, -1,1,1,205263,202556,100),	/* 100 Straw Mushroom */
(1,4,2, -1,1,1,205263,200350,100),	/* 100 Thorn Apple */
(1,4,2, -1,1,1,205263,241408,100),	/* 100 Thunderhoof Grass */
(1,4,2, -1,1,1,205263,208246,100),	/* 100 Verbena */

(1,4,2, -1,1,1,205263,200230,100),	/* 100 Zinc Ore */
(1,4,2, -1,1,1,205263,200507,100),	/* 100 Flame Dust */
(1,4,2, -1,1,1,205263,200232,100),	/* 100 Tin Ore */
(1,4,2, -1,1,1,205263,200234,100),	/* 100 Iron Ore */
(1,4,2, -1,1,1,205263,200264,100),	/* 100 Abyss-Mercury */
(1,4,2, -1,1,1,205263,242282,100),	/* 100 Argyrite */
(1,4,2, -1,1,1,205263,200236,100),	/* 100 Copper Ore */
(1,4,2, -1,1,1,205263,200506,100),	/* 100 Cyanide */
(1,4,2, -1,1,1,205263,200238,100),	/* 100 Dark Crystal */
(1,4,2, -1,1,1,205263,242258,100),	/* 100 Dust of Mutation */
(1,4,2, -1,1,1,205263,202315,100),	/* 100 Frost Crystal */
(1,4,2, -1,1,1,205263,242294,100),	/* 100 Ironaxe Stone */
(1,4,2, -1,1,1,205263,202316,100),	/* 100 Mica */
(1,4,2, -1,1,1,205263,200265,100),	/* 100 Mithril */
(1,4,2, -1,1,1,205263,200244,100),	/* 100 Moon Silver Ore */
(1,4,2, -1,1,1,205263,200269,100),	/* 100 Mysticite */
(1,4,2, -1,1,1,205263,241432,100),	/* 100 Olegan Stone */
(1,4,2, -1,1,1,205263,208234,100),	/* 100 Olivine */
(1,4,2, -1,1,1,205263,240314,100),	/* 100 Purple Agate Crystal */
(1,4,2, -1,1,1,205263,242270,100),	/* 100 Rainbow Stone */
(1,4,2, -1,1,1,205263,241438,100),	/* 100 Rein Crystal */
(1,4,2, -1,1,1,205263,200249,100),	/* 100 Rock Crystal */
(1,4,2, -1,1,1,205263,200268,100),	/* 100 Rune Obsidian Ore */
(1,4,2, -1,1,1,205263,242306,100),	/* 100 Sea Crystal */
(1,4,2, -1,1,1,205263,200239,100),	/* 100 Silver Ore */
(1,4,2, -1,1,1,205263,242246,100),	/* 100 Silver Star Stone */
(1,4,2, -1,1,1,205263,200242,100),	/* 100 Wizard-Iron Ore */

-- Sub Runes
(1,4,3, -1,9,3,0,202086,1),		/* Bag of Link Runes */
(1,4,3, -1,9,3,0,202087,1),		/* Bag of Frost Runes */
(1,4,3, -1,9,3,0,202088,1),		/* Bag of Activate Runes */
(1,4,3, -1,9,3,0,202089,1),		/* Bag of Disenchant Runes */
(1,4,3, -1,9,3,0,202090,1),		/* Bag of Purify Runes */
(1,4,3, -1,9,3,0,202091,1),		/* Bag of Blend Runes */

-- Sub Potions
(1,4,4, -1,175,20,0,208657,1),		/* Production Speed Potion (30 Days) */
(1,4,4, -1,20,2,0,242085,1),		/* Gathering Speed Increase Potion */
(1,4,4, -1,20,2,0,242086,1),		/* Gathering XP Increase Potion */
(1,4,4, -1,30,1,0,241601,1),		/* Production Luck Potion (1 Day) */
(1,4,4, -1,30,1,0,241602,1),		/* Production Speed Potion (1 Days) */
(1,4,4, -1,10,1,0,242686,1),		/* Production XP potion */

-- Sub Recipes
(1,4,5, -1,35,7,205295,550481,1),		/* Recipe - Laor Forest Tart */
(1,4,5, -1,35,7,205295,551228,1),		/* Recipe - Serenstum */
(1,4,5, -1,35,7,205295,550728,1),		/* Recipe - Hero Potion */
(1,4,5, -1,35,7,205295,551462,1),		/* Recipe - Deadly Potion */
(1,4,5, -1,35,7,205295,550712,1),		/* Recipe - Touch of the Unicorn */
(1,4,5, -1,10,1,205295,551204,1),		/* Recipe - Henolid's Staff of Admiration */
(1,4,5, -1,10,1,205295,551191,1),		/* Recipe - Wing of the Dragonking */
(1,4,5, -1,35,7,205295,552837,1),		/* Recipe - Fire Mountain Tree Timber */
(1,4,5, -1,35,7,205295,552872,1),		/* Recipe - Rainbow Stone Nugget Blue */
(1,4,5, -1,35,7,205295,552873,1),		/* Recipe - Rainbow Stone Nugget Purple*/
(1,4,5, -1,35,7,205295,552876,1),		/* Recipe - Snow Grass Juice Blue */
(1,4,5, -1,35,7,205295,552877,1),		/* Recipe - Snow Grass Extract Purple */
(1,4,5, -1,35,7,205295,552854,1),		/* Recipe - Rainbow Stone Sand */
(1,4,5, -1,35,7,205295,552860,1),		/* Recipe - Snow Grass Bundle */
(1,4,5, -1,35,7,205295,552863,1),		/* Recipe - Seas Crystal Sand */
(1,4,5, -1,35,7,205295,552864,1),		/* Recipe - Seas Crystal Nugget */
(1,4,5, -1,35,7,205295,552865,1),		/* Recipe - Sea Crystal Ingot */
(1,4,5, -1,35,7,205295,552866,1),		/* Recipe - Bleak Fir Timber */
(1,4,5, -1,35,7,205295,552867,1),		/* Recipe - Bleak Fir Lumber */
(1,4,5, -1,35,7,205295,552868,1),		/* Recipe - Bleak Fir Plank */
(1,4,5, -1,35,7,205295,552818,1),		/* Recipe - Legendary Iron Chest */
(1,4,5, -1,35,7,205295,552819,1),		/* Recipe - Legendary Wooden Chest */
(1,4,5, -1,35,7,205295,552820,1),		/* Recipe - Legendary Armor Chest */
(1,4,5, -1,35,7,205295,552821,1),		/* Recipe - Legendary Tailor Chest */
(1,4,5, -1,35,7,205295,552822,1),		/* Recipe - Ultimate Iron Chest */
(1,4,5, -1,35,7,205295,552823,1),		/* Recipe - Ultimate Wooden Chest */
(1,4,5, -1,35,7,205295,552824,1),		/* Recipe - Ultimate Armor Chest */
(1,4,5, -1,35,7,205295,552825,1),		/* Recipe - Ultimate Tailor Chest */


-- Sub Planting
(1,4,6,1, 20,4,0,203910,1),		/* Incan Magic Pot */
(1,4,6,1, 20,4,0,204253,1),		/* Tall Winter Plant Pot */
(1,4,6,1, 20,4,0,203907,1),		/* Tenochtitlan Gold Pot */
(1,4,6,1, 20,4,0,204244,1),		/* Zeus Pot */
(1,4,6,1, 20,4,0,204254,1),		/* Tall Autumn Plant Pot */
(1,4,6,1, 20,4,0,204257,1),		/* Decorative Pine Pot */
(1,4,6,1, 20,4,0,242718,1),		/* Jade Green Shroud FlowerPot */
(1,4,6,1, 20,4,0,204255,1),		/* Tall Green Plant Pot */
(1,4,6,1, 20,4,0,203834,1),		/* Modern Landscaping Plant Pot */
(1,4,6,1, 20,4,0,203901,1),		/* Passionate Long-Legged Plant Pot */
(1,4,6,1, 20,4,0,203903,1),		/* Blue Stone Hexagonal Plant Pot */
(1,4,6,1, 20,4,0,203909,1),		/* Blue Dream Plant Pot */
(1,4,6,1, 20,4,0,242716,1),		/* Nocturnal Shroud Flowerpot */
(1,4,6,1, 20,4,0,242717,1),		/* Gorgeous Shroud Flowerpot */
(1,4,6,1, 20,4,0,242718,1),		/* Jade Green Shroud flowerPot */
(1,4,6,1, 20,4,0,208577,1),		/* Crescent Oasis flowerPot */
(1,4,6,1, 20,4,0,208578,1),		/* Azure Thunderclap flowerPot */
(1,4,6,1, 20,4,0,208579,1),		/* Jade Green Shroud flowerPot */


-- Sub Consumables
(1,4,6,2, 3,0,0,203881,1),		/* Low-Class Plant Growing Agent */
(1,4,6,2, 6,1,0,203882,1),		/* Medium-Class Plant Growing Agent */
(1,4,6,2, 10,2,0,203883,1),		/* High-Class Plant Growing Agent */
(1,4,6,2, 20,4,0,208624,1),		/* Superior Plant Growing Agent */
(1,4,6,2, 3,0,0,203884,1),		/* Low-Class Plant Protection */
(1,4,6,2, 6,1,0,203885,1),		/* Medium-Class Plant Protection */
(1,4,6,2, 10,2,0,203886,1),		/* High-Class Plant Protection */
(1,4,6,2, 20,4,0,208625,1),		/* Superior-Class Plant Protection */
(1,4,6,2, 25,3,205295,242779,100),		/* Seed - Fire Lily of Luck */
(1,4,6,2, 25,3,205295,242773,100),		/* Seed - Fire Lily of Hope */
(1,4,6,2, 25,3,205295,242776,100),		/* Seed - Fire Lily of Love */

-- Sub Others
(1,4,7,-1, 79,7,0,242687,1),		/* Crafting Skill Craftsman Expansion Ticket */
(1,4,7,-1, 99,9,0,242688,1),		/* Crafting Skill Expert Expansion Ticket */
(1,4,7,-1, 129,12,0,242689,1),		/* Crafting Skill Master Expansion Ticket */
(1,4,7,-1, 179,17,0,242690,1);		/* Crafting Skill Legend Expansion Ticket */


GO

INSERT [dbo].[NewShopInfo]
([World1], [SellType], [SellType1], [SellType2], [Sell_Cost], [Sell_Get_Bonus], [Item_DisplayerObjID], [Item_OrgObjID1], [Item_Count1])
VALUES

/* *** Encylopedias *** */

-- Sub Crafting I
(1,5,1,-1, 15,3,0,202720,1),		/* Tailering Encylopedia I (30 Day) */
(1,5,1,-1, 15,3,0,202726,1),		/* Armor Crafting Encylopedia I (30 Day) */
(1,5,1,-1, 15,3,0,202714,1),		/* Blacksmith Encylopedia I (30 Day) */
(1,5,1,-1, 15,3,0,202711,1),		/* Carpentry Encylopedia I (30 Day) */
(1,5,1,-1, 15,3,0,202717,1),		/* Cooking Encylopedia I (30 Day) */
(1,5,1,-1, 15,3,0,202708,1),		/* Ore Mining Encylopedia (30 Day) */
(1,5,1,-1, 15,3,0,202707,1),		/* Medical Herbs Encyclopedia (30 Day) */
(1,5,1,-1, 15,3,0,202706,1),		/* Forest Trees Encylopedia (30 Day) */

-- Sub Crafting II
(1,5,2,-1, 30,6,0,202724,1),		/* Alchemy Encylopedia II (30 Day) */
(1,5,2,-1, 30,6,0,202727,1),		/* Armor Crafting Encylopedia II (30 Day) */
(1,5,2,-1, 30,6,0,202715,1),		/* Blacksmithing Encylopedia II (30 Day) */
(1,5,2,-1, 30,6,0,202712,1),		/* Carpentry Encylopedia II (30 Day) */
(1,5,2,-1, 30,6,0,202718,1),		/* Cooking Encylopedia II (30 Day) */
(1,5,2,-1, 30,6,0,202721,1),		/* Tailoring Encylopedia II (30 Day) */

-- Sub Skills I
(1,5,3,-1, 15,3,0,202733,1),		/* Unarmed Combat Encylopedia (30 Day) */
(1,5,3,-1, 15,3,0,202734,1),		/* Sword Encylopedia (30 Day) */
(1,5,3,-1, 15,3,0,202739,1),		/* Two-Handed Sword Encylopedia (30 Day) */
(1,5,3,-1, 15,3,0,202735,1),		/* Dagger Encylopedia (30 Day) */
(1,5,3,-1, 15,3,0,202736,1),		/* Wand Encylopedia (30 Day) */
(1,5,3,-1, 15,3,0,202737,1),		/* Axe Encylopedia (30 Day) */
(1,5,3,-1, 15,3,0,202741,1),		/* Two-handed Axe Encylopedia (30 Day) */
(1,5,3,-1, 15,3,0,202738,1),		/* Blunt Weapon Encylopedia (30 Day) */
(1,5,3,-1, 15,3,0,202740,1),		/* Staff Encylopedia (30 Day) */
(1,5,3,-1, 15,3,0,202742,1),		/* Two-handed Hammer Encylopedia (30 Day) */
(1,5,3,-1, 15,3,0,202744,1),		/* Bow Encylopedia (30 Day) */
(1,5,3,-1, 15,3,0,202745,1),		/* Crossbow Encylopedia (30 Day) */
(1,5,3,-1, 15,3,0,202747,1),		/* Defense Encylopedia (30 Day) */
(1,5,3,-1, 15,3,0,202702,1),		/* Skill Practice Encylopedia (30 Day) */
(1,5,3,-1, 15,3,0,202699,1),		/* Battle Instruction Encylopedia (30 Day) */

-- Sub Skill II
(1,5,4,-1, 30,6,0,202700,1),		/* Battle Instruction Encylopedia II (30 Day) */
(1,5,4,-1, 30,6,0,202703,1),		/* Skill Practice Encylopedia II (30 Day) */



/* **** Housing **** */
(1,6,1, -1, 10,2,0,201292,1),		/* Shield-shaped Weapon Rack */
(1,6,1, -1, 10,2,0,201293,1),		/* Cross Weapon Rack */
(1,6,1, -1, 10,2,0,201294,1),		/* Luxury Weapon Rack */
(1,6,1, -1, 110,21,0,201382,1),		/* Lionhead Treasure Chest */
(1,6,1, -1, 125,24,0,201384,1),		/* Classical Wooden Chest */
(1,6,1, -1, 160,30,0,201383,1),		/* Storage Chest */
(1,6,1, -1, 45,8,0,201381,1),		/* Brown Wooden Treasure Chest */
(1,6,1, -1, 55,10,0,201386,1),		/* Juniper Treasure Chest */
(1,6,1, -1, 65,11,0,201385,1),		/* Cowhide Chest */
(1,6,1, -1, 75,12,0,201387,1),		/* Tan Copper Chest */
(1,6,1, -1, 45,8,0,201285,1),		/* Men's Clothes Rack */
(1,6,1, -1, 45,8,0,201286,1),		/* Women's Clothes Rack */
(1,6,1, -1, 45,8,0,204763,1),		/* Topaz Carved Treasure Box */
(1,6,1, -1, 45,8,0,204764,1),		/* Round-Topped Square Box */

-- Sub Beds
(1,6,2, -1, 55,10,0,204783,1),		/* Twin Cloth Bed with Wooden Headboard */
(1,6,2, -1, 35,6,0,204687,1),		/* Simple Wooden Twin Bed */
(1,6,2, -1, 45,8,0,201343,1),		/* Sweetheart's Pink Bed */
(1,6,2, -1, 55,10,0,201345,1),		/* Caesar Bed */
(1,6,2, -1, 45,8,0,201346,1),		/* Pink Sleeping Bed */
(1,6,2, -1, 55,10,0,201344,1),		/* Luxurious Aritocrat bed */
(1,6,2, -1, 15,2,0,201347,1),		/* Elegant Wooden Engraved Bed */
(1,6,2, -1, 25,4,0,201348,1),		/* Wood-Patterned Tester Bed */
(1,6,2, -1, 20,2,0,204686,1),		/* Aritocratic Gold Twin Bed */

-- Sub Tables & Chairs
(1,6,3, -1, 7,1,0,204675,1),		/* Decorative Square Table */
(1,6,3, -1, 10,2,0,204676,1),		/* End Table with Blue Patterned Table Cloth */
(1,6,3, -1, 15,3,0,204674,1),		/* Square Table with Table Cloth */
(1,6,3, -1, 10,2,0,201492,1),		/* Long Beech Table */
(1,6,3, -1, 10,3,0,201328,1),		/* Chessboard Table */
(1,6,3, -1, 15,3,0,201327,1),		/* Yachi Curved Table */
(1,6,3, -1, 20,4,0,201326,1),		/* Table with Sheena's Dishes */
(1,6,3, -1, 20,4,0,201329,1),		/* Elegant Engraved Square Table */
(1,6,3, -1, 10,3,0,201506,1),		/* Exquisite Sofa End Table */
(1,6,3, -1, 10,2,0,201324,1),		/* Elegant Square Table */
(1,6,3, -1, 7,1,0,201325,1),		/* Oriental Wooden Table */
(1,6,3, -1, 7,1,0,201330,1),		/* Oven-shaped Table */
(1,6,3, -1, 4,1,0,201504,1),		/* Snack End Table */
(1,6,3, -1, 4,1,0,201508,1),		/* Simple Rotan Chair */
(1,6,3, -1, 7,1,0,201509,1),		/* Pink Star Glory Chair */
(1,6,3, -1, 7,1,0,201510,1),		/* Royal Blue Leisure Chair */
(1,6,3, -1, 7,1,0,201549,1),		/* Rococo Engraved Chair */
(1,6,3, -1, 7,1,0,201601,1),		/* Magnificent Footstool Chest */
(1,6,3, -1, 7,1,0,201602,1),		/* Engraved Emerald Chair */
(1,6,3, -1, 7,1,0,201603,1),		/* Simple Stool */
(1,6,3, -1, 5,1,0,201604,1),		/* Simple Fitting Stool */
(1,6,3, -1, 5,1,0,201605,1),		/* Violet Round Stool */
(1,6,3, -1, 7,1,0,201606,1),		/* Rococo Stool */
(1,6,3, -1, 7,1,0,201503,1),		/* Mint Green Sofa */
(1,6,3, -1, 10,2,0,201336,1),		/* Lady's Red Cushioned Sleeping Sofa */
(1,6,3, -1, 15,3,0,201335,1),		/* Engraved Red Cloth Sofa */
(1,6,3, -1, 7,1,0,201337,1),		/* Violet Love Seat */
(1,6,3, -1, 7,1,0,201501,1),		/* Elegant Patterned Red Sofa */
(1,6,3, -1, 7,1,0,204677,1),		/* Orange Checkered Bench */
(1,6,3, -1, 7,1,0,204678,1),		/* Wooden Flower Bench */
(1,6,3, -1, 15,3,0,204683,1),		/* Six-person Wooden Leisure Seat */
(1,6,3, -1, 10,2,0,204681,1),		/* Elegant Red Corner Sofa */
(1,6,3, -1, 7,1,0,201505,1),		/* Violet Lady's Chair */
(1,6,3, -1, 7,1,0,201340,1),		/* Comfortable Rocking Chair */
(1,6,3, -1, 5,1,0,201334,1),		/* Engraved Wooden Chair */
(1,6,3, -1, 7,1,0,201338,1),		/* Elegant Engraved Chair */
(1,6,3, -1, 7,1,0,201507,1),		/* Baroque Chair */
(1,6,3, -1, 15,2,0,204679,1),		/* Elegant Red Long Sofa */
(1,6,3, -1, 15,2,0,204680,1),		/* Elegant Red Sofa */
(1,6,3, -1, 20,2,0,206489,1),		/* Large Snowflake Festival Decorator Table */
(1,6,3, -1, 7,1,0,206498,1),		/* Classic Snowflake Festival Wooden Chair */
(1,6,3, -1, 15,2,0,206497,1),		/* Classic Snowflake Festival Sofa */
(1,6,3, -1, 20,2,0,206499,1),		/* Romantic Snowflake Festival Table */
(1,6,3, -1, 7,1,0,204685,1),		/* Forest-green Triangle Chair */
(1,6,3, -1, 25,3,0,204684,1),		/* Splended Low Sofa */

-- Sub Decorations
(1,6,4, -1, 15,3,0,201416,1),		/* Screen of three Fairis' Wings */
(1,6,4, -1, 25,4,0,201415,1),		/* Screen of the King's Lake */
(1,6,4, -1, 11,2,0,201411,1),		/* Screen of Jewel Memories */
(1,6,4, -1, 7,1,0,201412,1),		/* Screen of Earthly Trees */
(1,6,4, -1, 15,3,0,201413,1),		/* Screen of Heavenly Lakes */
(1,6,4, -1, 7,1,0,204749,1),		/* Broad Azure Juice Bottle */
(1,6,4, -1, 7,1,0,204741,1),		/* Blue Flower Garden Platter */
(1,6,4, -1, 7,1,0,204769,1),		/* Magic Spirit Light */
(1,6,4, -1, 7,1,0,204770,1),		/* Uncle Sheperd Mask */
(1,6,4, -1, 7,1,0,204757,1),		/* Mysterious Totem Tea Bottle */
(1,6,4, -1, 7,1,0,204766,1),		/* Wooden Deer Carving */
(1,6,4, -1, 7,1,0,204767,1),		/* Wooden Young Deer Carving */
(1,6,4, -1, 7,1,0,204774,1),		/* Wooden Horse */
(1,6,4, -1, 7,1,0,201318,1),		/* Tiger Head Trophy */
(1,6,4, -1, 7,1,0,201407,1),		/* Copper Candleholder */
(1,6,4, -1, 10,1,0,201408,1),		/* Grandfather Clock */
(1,6,4, -1, 5,1,0,201402,1),		/* Yellow Gemstone Sphere */
(1,6,4, -1, 5,1,0,201403,1),		/* Blue Gemstone Sphere */
(1,6,4, -1, 5,1,0,201404,1),		/* Red Gemstone Sphere */
(1,6,4, -1, 45,10,0,203936,1),		/* Refreshing Shisha */
(1,6,4, -1, 7,1,0,206496,1),		/* Ancient Gramophone */
(1,6,4, -1, 7,1,0,206495,1),		/* Amcient Upright Gramophone */
(1,6,4, -1, 7,1,0,204722,1),		/* Painted Paper Lantern */
(1,6,4, -1, 7,1,0,204737,1),		/* Embroidered Ornamental Platter */
(1,6,4, -1, 7,1,0,204748,1),		/* Blue-flower Vase */
(1,6,4, -1, 11,2,0,206491,1),		/* Blue Snowflake Festival Tree */
(1,6,4, -1, 7,1,0,204735,1),		/* Flowery Ornamental Platter */
(1,6,4, -1, 7,1,0,204778,1),		/* Flowery Bamboo Lantern */
(1,6,4, -1, 50,5,0,208205,1),		/* Bust of Sirloth */
(1,6,4, -1, 7,1,0,204773,1),		/* Head Statue Remains */
(1,6,4, -1, 7,1,0,204740,1),		/* Deep-red Bouquet Platter */
(1,6,4, -1, 7,1,0,204731,1),		/* Transparent Fruit Platter */
(1,6,4, -1, 7,1,0,209620,1),		/* Simple Rainbow Egg Plate Decoration */
(1,6,4, -1, 7,1,0,209627,1),		/* Simple Rainbow Egg Ratten-Basket */
(1,6,4, -1, 20,2,0,203935,1),		/* Cozy Shisha */
(1,6,4, -1, 20,2,0,206509,1),		/* Reindeer Ice Sculpture */
(1,6,4, -1, 20,2,0,206510,1),		/* Snowflake Festival Reindeer Ice Sculpture */
(1,6,4, -1, 20,2,0,206511,1),		/* Royal Reindeer Ice Sculpture */
(1,6,4, -1, 7,1,0,204732,1),		/* Elegant Floral Platter */
(1,6,4, -1, 7,1,0,204721,1),		/* Exquisite Patterned Lantern */
(1,6,4, -1, 7,1,0,206272,1),		/* Exquisite Cupcake */
(1,6,4, -1, 7,1,0,203938,1),		/* Framed Evil Eye Ornament */
(1,6,4, -1, 7,1,0,206512,1),		/* Lobster Feast */
(1,6,4, -1, 7,1,0,206503,1),		/* Roast Rib Feast */
(1,6,4, -1, 50,5,0,205784,1),		/* Myrmex Queen's Wing Ornament */
(1,6,4, -1, 7,1,0,204753,1),		/* Springtime Patterned Bucket */
(1,6,4, -1, 7,1,0,206268,1),		/* Roast Ostrich Feast */
(1,6,4, -1, 7,1,0,204730,1),		/* Green-leaf Yellow Platter */
(1,6,4, -1, 7,1,0,206271,1),		/* Vegetable Salad */
(1,6,4, -1, 7,1,0,206269,1),		/* Smoked Ostrich */
(1,6,4, -1, 15,2,0,204772,1),		/* Lucky Amulet */
(1,6,4, -1, 7,1,0,204760,1),		/* Lucky Patterned Vase */
(1,6,4, -1, 15,2,0,204728,1),		/* Golden Luxury Lantern */
(1,6,4, -1, 15,2,0,206471,1),		/* Gramophone */
(1,6,4, -1, 15,2,0,206472,1),		/* Gramophone 2 */
(1,6,4, -1, 7,1,0,204752,1),		/* Tall Flower Juice Bottle */
(1,6,4, -1, 7,1,0,204781,1),		/* Green Sphere Lantern */
(1,6,4, -1, 7,1,0,204746,1),		/* Green Carved Vase */
(1,6,4, -1, 7,1,0,204727,1),		/* Green Spinning Lantern */
(1,6,4, -1, 7,1,0,209628,1),		/* Green Rainbow Egg Basket */
(1,6,4, -1, 15,3,0,201416,1),		/* Screen of three Fairies Wings */
(1,6,4, -1, 25,4,0,201415,1),		/* Screen of the Kings Lake */
(1,6,4, -1, 11,2,0,201411,1),		/* Screen of Jewel Memories */
(1,6,4, -1, 7,1,0,201412,1),		/* Screen of Earthly Trees */
(1,6,4, -1, 15,3,0,201413,1),		/* Screen of Heavenly Lakes */
(1,6,4, -1, 7,1,0,204749,1),		/* Broad Azure Juice Bottle */
(1,6,4, -1, 7,1,0,204741,1),		/* Blue Flower Garden Platter */
(1,6,4, -1, 7,1,0,204769,1),		/* Magic Spirit Light */
(1,6,4, -1, 7,1,0,204770,1),		/* Uncle Shepherd Mask */
(1,6,4, -1, 7,1,0,204757,1),		/* Mysterious Totem Tea Bottle */
(1,6,4, -1, 7,1,0,206273,1),		/* Hand-Picked Cranberry */
(1,6,4, -1, 7,1,0,204750,1),		/* Gem Crown Juice Glass */
(1,6,4, -1, 7,1,0,204758,1),		/* Classic Wooden Tea Bottle */
(1,6,4, -1, 7,1,0,204743,1),		/* Crystal Dream Fruit Dish */
(1,6,4, -1, 50,5,0,205781,1),		/* Krodamars Head Ornament */
(1,6,4, -1, 7,1,0,204780,1),		/* Sunrise Lantern */
(1,6,4, -1, 7,1,0,204765,1),		/* Lute */
(1,6,4, -1, 50,5,0,205779,1),		/* Lyoths Chandelier Ornament */
(1,6,4, -1, 7,1,0,204744,1),		/* Multicolor Flower Garden Fruit Dish */
(1,6,4, -1, 7,1,0,204724,1),		/* Multicolor Rich Lantern */
(1,6,4, -1, 7,1,0,204768,1),		/* Multicolor Wooden Knife */
(1,6,4, -1, 7,1,0,209624,1),		/* Fashionable Rainbow Egg Vase Decoration */
(1,6,4, -1, 15,2,0,204776,1),		/* Nine-color Spice Material Cabinet */
(1,6,4, -1, 15,2,0,204777,1),		/* Twelve-color Spice Cabinet */
(1,6,4, -1, 7,1,0,209621,1),		/* Nest Rainbow Egg Decoration */
(1,6,4, -1, 7,1,0,209625,1),		/* Rattan-weaved Rainbow Egg Decoration */
(1,6,4, -1, 50,5,0,205712,1),		/* Giant Guardian Wrist Model */
(1,6,4, -1, 7,1,0,204751,1),		/* Ring-sahped Juice Bottle */
(1,6,4, -1, 7,1,0,204779,1),		/* Romantic */
(1,6,4, -1, 7,1,0,209622,1),		/* Romantic Rainbow Egg Pot */
(1,6,4, -1, 7,1,0,204739,1),		/* Pink Rose Platter */
(1,6,4, -1, 7,1,0,204754,1),		/* Rose Juice Bottle */
(1,6,4, -1, 7,1,0,204726,1),		/* Pink Dream Lantern */
(1,6,4, -1, 50,5,0,205783,1),		/* Rune Guardian Leader Model */
(1,6,4, -1, 7,1,0,206504,1),		/* Ham Platter Feast */
(1,6,4, -1, 15,2,0,204771,1),		/* Safety Amulet */
(1,6,4, -1, 50,5,0,201417,1),		/* Swan Bathtub */
(1,6,4, -1, 15,2,0,208206,1),		/* Sword of Fear Ornament */
(1,6,4, -1, 7,1,0,204729,1),		/* Beautiful Purple Lantern */
(1,6,4, -1, 7,1,0,204761,1),		/* Silvery Patterned Vase */
(1,6,4, -1, 50,5,0,208207,1),		/* Sirloths Armband Ornament */
(1,6,4, -1, 50,5,0,208204,1),		/* Sirloths Wings */
(1,6,4, -1, 7,1,0,203940,1),		/* Emerald Green Evil Eye Ornament */
(1,6,4, -1, 15,2,0,206270,1),		/* Spaghetti Bolognese */
(1,6,4, -1, 15,2,0,201453,1),		/* Spinning Machine */
(1,6,4, -1, 50,5,0,208203,1),		/* Statue of Sirloth (small) */
(1,6,4, -1, 7,1,0,201311,1),		/* Zodiac Stone Plate */
(1,6,4, -1, 15,2,0,206274,1),		/* Osterich Egg */
(1,6,4, -1, 15,2,0,206267,1),		/* Charcoal-Roasted Ostrich Platter */
(1,6,4, -1, 7,1,0,204755,1),		/* Tambourine-Shaped Juice Bottle */
(1,6,4, -1, 7,1,0,204745,1),		/* Traditional Patterned Fruit Dish */
(1,6,4, -1, 7,1,0,204747,1),		/* Traditional Carved Vase */
(1,6,4, -1, 7,1,0,204756,1),		/* Traditional Green Patterend Tea Bottle */
(1,6,4, -1, 50,5,0,205714,1),		/* Trophy of Minotaur Warcur */
(1,6,4, -1, 50,5,0,205782,1),		/* Cursed Iron Golem Model */
(1,6,4, -1, 7,1,0,204734,1),		/* Wooden Ornamental Platter */
(1,6,4, -1, 7,1,0,204738,1),		/* Violet Platter */
(1,6,4, -1, 7,1,0,204725,1),		/* Warm Checkered Lantern */
(1,6,4, -1, 7,1,0,204742,1),		/* Whiteware Ceramic Floral Fruit Dish */
(1,6,4, -1, 7,1,0,204723,1),		/* Splendid Bright Lantern */
(1,6,4, -1, 15,2,0,204777,1),		/* Twelve-color Spice Cabinet */
(1,6,4, -1, 7,1,0,204759,1),		/* Rich Golden Vase */

-- Cabinets
(1,6,5, -1, 15,2,0,201493,1),		/* Antique Dresser */
(1,6,5, -1, 25,3,0,201475,1),		/* Bar Cabinet */
(1,6,5, -1, 15,2,0,201472,1),		/* Tall Engraved Wooden Cabinet */
(1,6,5, -1, 15,2,0,201477,1),		/* Exquisite Engraved Wooden Cabinet */
(1,6,5, -1, 15,2,0,201478,1),		/* Double Door Wood Pattern Cabinet */
(1,6,5, -1, 25,3,0,201480,1),		/* Superior Floor Cabinet */
(1,6,5, -1, 25,3,0,201370,1),		/* Marble Magic Cabinet */
(1,6,5, -1, 25,3,0,201369,1),		/* Magic Cabinet of Revelation */
(1,6,5, -1, 15,2,0,201511,1),		/* Simple Storage Cabinet */
(1,6,5, -1, 15,2,0,201512,1),		/* Classical Engraved Cabinet */
(1,6,5, -1, 7,1,0,201359,1),		/* Double-door Wooden Kitchen Cabinet */
(1,6,5, -1, 7,1,0,201471,1),		/* Engraved Wooden Cabinet */
(1,6,5, -1, 7,1,0,201473,1),		/* Multilevel Engraved Wooden Cabinet */
(1,6,5, -1, 7,1,0,201474,1),		/* Tall Double Door Kitchen Cabinet */
(1,6,5, -1, 5,1,0,201476,1),		/* Elegant Wooden Cabinet */
(1,6,5, -1, 10,2,0,201479,1),		/* Short Combination Cabinet */
(1,6,5, -1, 25,3,0,201517,1),		/* Elegant Two-door Wardrobe */
(1,6,5, -1, 15,2,0,201514,1),		/* Short Exquisite Engraved Wooden Cabinet */
(1,6,5, -1, 15,2,0,201471,1),		/* Engraved Wooden Cabinet */
(1,6,5, -1, 25,3,0,201516,1),		/* Classic Engraved Wood Two-door Wardrobe */
(1,6,5, -1, 15,2,0,204688,1),		/* Cool-Colored Checkered Carpet */
(1,6,5, -1, 25,3,0,201515,1),		/* Short Splendid Totem Cabinet */



-- Fireplaces
(1,6,6, -1, 25,3,0,201410,1),		/* Aristocratic Engraved Fireplace */
(1,6,5, -1, 35,4,0,201422,1),		/* White Roses Stone Fireplace */
(1,6,5, -1, 45,5,0,201424,1),		/* Classical Stone Fireplace */
(1,6,5, -1, 35,4,0,201423,1),		/* Elegant Romance Wooden Fireplace */
(1,6,5, -1, 45,5,0,201421,1),		/* Royal Stone Fireplace */
(1,6,5, -1, 15,2,0,201418,1),		/* Safty Fireplace */
(1,6,5, -1, 15,2,0,201419,1),		/* Fire Pit Heater */


-- Plants
(1, 6, 7, -1, 7,1,0,201380,1),		/* Checkered Pot Plant */
(1, 6, 7, -1, 5,1,0,201375,1),		/* Marble Pot Plant */
(1, 6, 7, -1, 5,1,0,201377,1),		/* Twin-ringed Pot Plant */
(1, 6, 7, -1, 7,1,0,201379,1),		/* Glazed Pot Plant */
(1, 6, 7, -1, 7,1,0,201371,1),		/* Potted Sago Palm */
(1, 6, 7, -1, 10,2,0,201372,1),		/* Folksy Potted Plant */
(1, 6, 7, -1, 7,1,0,201373,1),		/* Primitive Stone Pot Plant */
(1, 6, 7, -1, 7,1,0,201374,1),		/* Limestone Pot Plant */
(1, 6, 7, -1, 7,1,0,201376,1),		/* Potted Floor Plant */
(1, 6, 7, -1, 7,1,0,201378,1),		/* Square Pot Plant */
(1, 6, 7, -1, 7,1,0,205715,1),		/* Giant Flower Cactus Pot */
(1, 6, 7, -1, 20,4,0,203901,1),		/* Passionate Long-Legged Plant Pot */
(1, 6, 7, -1, 20,4,0,203903,1),		/* Blue Stone Hexagonal Plant Pot */
(1, 6, 7, -1, 20,4,0,203907,1),		/* Tenochtitlan Gold Pot */
(1, 6, 7, -1, 20,4,0,203909,1),		/* Blue Dream Plant Pot */
(1, 6, 7, -1, 20,4,0,203910,1),		/* Incan Magic Pot */
(1, 6, 7, -1, 10,2,0,204253,1),		/* Tall Winter Plant Pot */
(1, 6, 7, -1, 10,2,0,204254,1),		/* Tall Autumn Plant Pot */
(1, 6, 7, -1, 10,2,0,204255,1),		/* Tall Green Plant Pot */
(1, 6, 7, -1, 7,1,0,203834,1),		/* Modern Landscaping Plant Pot */
(1, 6, 7, -1, 7,1,0,203835,1),		/* Elegant Square Plant Pot */
(1, 6, 7, -1, 7,1,0,203837,1),		/* Totem Plant Pot */
(1, 6, 7, -1, 7,1,0,203838,1),		/* Large Mayan Plant Pot */


-- Carpets

(1, 6, 8, -1, 15,2,0,204693,1),		/* Elegant Floral Carpet */
(1, 6, 8, -1, 25,3,0,204706,1),		/* Black Totem Carpet */
(1, 6, 8, -1, 25,3,0,204713,1),		/* Round Rug of Carpet */
(1, 6, 8, -1, 25,3,0,204708,1),		/* Water-colored Wide Carpet */
(1, 6, 8, -1, 15,2,0,204690,1),		/* Warm Fleece Carpet */
(1, 6, 8, -1, 25,3,0,204691,1),		/* Aristocratic Red Checkered Fleece Carpet */
(1, 6, 8, -1, 25,3,0,204692,1),		/* Deep-red Flower Fleece Carpet */
(1, 6, 8, -1, 15,2,0,201365,1),		/* Four-leaf Knights Fleece Carpet */
(1, 6, 8, -1, 15,2,0,201362,1),		/* Quality Fleece Carpet */
(1, 6, 8, -1, 7,1,0,201297,1),		/* Simple Carpet */
(1, 6, 8, -1, 10,2,0,201361,1),		/* Sun and Stars Carpet */
(1, 6, 8, -1, 15,2,0,204709,1),		/* Oriental Wide Woolen Carpet */
(1, 6, 8, -1, 15,2,0,204707,1),		/* Patterned Wide Carpet */
(1, 6, 8, -1, 20,2,0,204711,1),		/* Deep-red Flower Long Carpet */
(1, 6, 8, -1, 15,2,0,206506,1),		/* Elegant Purple Carpet */
(1, 6, 8, -1, 15,2,0,204695,1),		/* Mysterious Traditional Carpet */
(1, 6, 8, -1, 15,2,0,204712,1),		/* Patterned Long Carpet */
(1, 6, 8, -1, 15,2,0,204689,1),		/* High-class Embroidered Carpet */
(1, 6, 8, -1, 20,2,0,204718,1),		/* Small Set of Patterned Carpet */
(1, 6, 8, -1, 20,2,0,206508,1),		/* Long Classic Snowflake Festival Carpet */
(1, 6, 8, -1, 15,2,0,204701,1),		/* Fashionable Blue Knitted Carpet */
(1, 6, 8, -1, 15,2,0,204697,1),		/* Oriental Carpet */
(1, 6, 8, -1, 20,2,0,204698,1),		/* Pink and Green Carpet */
(1, 6, 8, -1, 15,2,0,204696,1),		/* Red Embroidered Carpet */
(1, 6, 8, -1, 15,2,0,204714,1),		/* Simple but Elegant Patterend Round Rug */
(1, 6, 8, -1, 15,1,0,204715,1),		/* Light-orange Spring Round Rug */
(1, 6, 8, -1, 15,2,0,204716,1),		/* Red Checkered Round Carpet with Intriguing Symbols */
(1, 6, 8, -1, 20,2,0,204717,1),		/* Set of Patterned Carpet */
(1, 6, 8, -1, 15,2,0,204705,1),		/* Simple Woven Carpet */
(1, 6, 8, -1, 15,2,0,204694,1),		/* Simple Traditional Carpet */
(1, 6, 8, -1, 15,2,0,204710,1),		/* Summer Knitted Carpet */
(1, 6, 8, -1, 20,2,0,206507,1),		/* Starry Sky Carpet */
(1, 6, 8, -1, 15,2,0,204710,1),		/* Summer Knitted Carpet */
(1, 6, 8, -1, 20,2,0,206507,1),		/* Starry Sky Carpet */
(1, 6, 8, -1, 15,2,0,204702,1),		/* Forrest-green Flower Garden Carpet */
(1, 6, 8, -1, 15,2,0,204699,1),		/* Warm Knitted Carpet */
(1, 6, 8, -1, 15,2,0,204704,1),		/* Splendid Woven Carpet */
(1, 6, 8, -1, 15,2,0,204700,1),		/* Splendid Wine-colored Fleece Carpet */
(1, 6, 8, -1, 15,2,0,204733,1),		/* Rich Ornamental Platter */


-- Sub Guild Furnitures
(1, 6, 9, -1, 75,9,0,203928,1),		/* Majestic Water Fountain */
(1, 6, 9, -1, 50,7,0,203927,1),		/* Gorgeous Water Fountain */
(1, 6, 9, -1, 35,5,0,203926,1),		/* Big Water Fountain */
(1, 6, 9, -1, 20,4,0,203925,1),		/* Scenic Water Fountain */
(1, 6, 9, -1, 10,2,0,203929,1),		/* Hero Statue */
(1, 6, 9, -1, 10,2,0,203930,1),		/* Warlock Statue */
(1, 6, 9, -1, 10,2,0,203931,1),		/* Sage Statue */
(1, 6, 9, -1, 10,2,0,203932,1),		/* Angel Girl Statue */
(1, 6, 9, -1, 10,2,0,203933,1),		/* Little Demon Statue */
(1, 6, 9, -1, 10,2,0,203934,1),		/* Masked Witch Statue */
(1, 6, 9, -1, 100,20,0,208208,1),	/* Statue of Sirloth (Big) */
(1, 6, 9, -1, 10,2,0,204773,1),		/* Head Statue Remains */

-- Sub Guild Resources
(1, 6, 10, -1, 49,5,0,207932,1),		/* Flawless Ruby */
(1, 6, 10, -1, 17,3,0,207326,1),		/* Nightmare Essence */
(1, 6, 10, -1, 175,30,0,207328,1),	/* Original Sin Essence */
(1, 6, 10, -1, 17,3,0,207330,1),		/* Wisdom Core */
(1, 6, 10, -1, 175,30,0,207332,1),	/* Soul Core */
(1, 6, 10, -1, 88,15,0,207331,1),	/* Power Core */
(1, 6, 10, -1, 17,3,0,207329,1),		/* Dauntless Core */

-- Sub House Contracts
(1, 6, 11, -1, 95,16,0,205417,1),		/* Contract for a Two-Story Mud House */
(1, 6, 11, -1, 95,16,0,206130,1),		/* Contract for a Two-Story Wooden Family House */
(1, 6, 11, -1, 95,16,0,203073,1),		/* Contract for a Elegant Two-Story Wooden House */
(1, 6, 11, -1, 95,16,0,205859,1),		/* Elegant Hotel Contract  */
(1, 6, 11, -1, 95,16,0,205585,1),		/* Expansive Luxury Villa Contract  */
(1, 6, 11, -1, 95,16,0,206129,1),		/* Luxurios Two-Story Wooden House with Basement Contract  */


/* *** Pets *** */

-- Pet Eggs
(1, 7, 1, 1, 378,37,0,241349,1),		/* Summoning Stone - Legendary Gemini Pet  */
(1, 7, 1, 1, 195,40,0,241348,1),		/* Summoning Stone - Adult Gemini Pet  */
(1, 7, 1, 1, 195,40,0,241501,1),		/* Summoning Stone - Adult Libra Pet  */
(1, 7, 1, 1, 195,40,0,241513,1),		/* Summoning Stone - Adult Aquarius Pet  */
(1, 7, 1, 1, 195,40,0,241518,1),		/* Summoning Stone - Adult Aries Pet  */
(1, 7, 1, 1, 195,40,0,241445,1),		/* Summoning Stone - Adult Cancer Pet  */
(1, 7, 1, 1, 195,40,0,241448,1),		/* Summoning Stone - Adult Leo Pet  */
(1, 7, 1, 1, 195,40,0,241515,1),		/* Summoning Stone - Adult Pisces Pet  */
(1, 7, 1, 1, 195,40,0,241507,1),		/* Summoning Stone - Adult Sagittarius Pet  */
(1, 7, 1, 1, 195,40,0,241504,1),		/* Summoning Stone - Adult Scorpio Pet  */
(1, 7, 1, 1, 195,40,0,241498,1),		/* Summoning Stone - Adult Virgo Pet  */
(1, 7, 1, 1, 195,40,0,241510,1),		/* Summoning Stone - Adult Capricorn Pet  */
(1, 7, 1, 1, 195,40,0,241521,1),		/* Summoning Stone - Adult Taurus Pet  */
(1, 7, 1, 1, 378,37,0,241523,1),		/* Summoning Stone - Legendary Aquarius Pet  */
(1, 7, 1, 1, 378,37,0,241519,1),		/* Summoning Stone - Legendary Aries Pet  */
(1, 7, 1, 1, 378,37,0,241446,1),		/* Summoning Stone - Legendary Cancer Pet  */
(1, 7, 1, 1, 378,37,0,241511,1),		/* Summoning Stone - Legendary Capricorn Pet  */
(1, 7, 1, 1, 378,37,0,241449,1),		/* Summoning Stone - Legendary Leo Pet  */
(1, 7, 1, 1, 378,37,0,241502,1),		/* Summoning Stone - Legendary Libra Pet  */
(1, 7, 1, 1, 378,37,0,241516,1),		/* Summoning Stone - Legendary Pisces Pet  */
(1, 7, 1, 1, 378,37,0,241508,1),		/* Summoning Stone - Legendary Sagittarius Pet  */
(1, 7, 1, 1, 378,37,0,241505,1),		/* Summoning Stone - Legendary Scorpio Pet  */
(1, 7, 1, 1, 378,37,0,241522,1),		/* Summoning Stone - Legendary Taurus Pet  */
(1, 7, 1, 1, 378,37,0,241499,1),		/* Summoning Stone - Legendary Virgo Pet  */
(1, 7, 1, 1, 195,40,0,241347,1),		/* Summoning Stone - Newborn Gemini Pet  */
(1, 7, 1, 1, 195,40,0,241444,1),		/* Summoning Stone - Newborn Cancer Pet  */
(1, 7, 1, 1, 195,40,0,241447,1),		/* Summoning Stone - Newborn Leo Pet  */
(1, 7, 1, 1, 195,40,0,241497,1),		/* Summoning Stone - Newborn Virgo Pet  */
(1, 7, 1, 1, 195,40,0,241500,1),		/* Summoning Stone - Newborn Libra Pet  */
(1, 7, 1, 1, 195,40,0,241503,1),		/* Summoning Stone - Newborn Scorpio Pet  */
(1, 7, 1, 1, 195,40,0,241506,1),		/* Summoning Stone - Newborn Sagittarius Pet  */
(1, 7, 1, 1, 195,40,0,241509,1),		/* Summoning Stone - Newborn Capricorn Pet  */
(1, 7, 1, 1, 195,40,0,241512,1),		/* Summoning Stone - Newborn Aquarius Pet  */
(1, 7, 1, 1, 195,40,0,241514,1),		/* Summoning Stone - Newborn Pisces Pet  */
(1, 7, 1, 1, 195,40,0,241517,1),		/* Summoning Stone - Newborn Aries Pet  */
(1, 7, 1, 1, 195,40,0,241520,1),		/* Summoning Stone - Newborn Taurus Pet  */

-- Sub Normal Pets
(1, 7, 1, 2, 95,20,0,203244,1),		/* Pink Ball - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,205747,1),		/* Little Demon - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,205743,1),		/* Little Angel - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,203228,1),		/* Little Giant - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,203241,1),		/* Newt - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,203242,1),		/* Goblin - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,203243,1),		/* Wolf Cub - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,203273,1),		/* Black Boar - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,208716,1),		/* YOOHOO Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,207736,1),		/* Tomasso - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,241006,1),		/* Stormforce Snowman - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,208721,1),		/* PAMMEE - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,206024,1),		/* Golden Ostrich - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,241219,1),		/* Magic Technician - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,243274,1),		/* Berserker Little Giant - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,206177,1),		/* Weeping Coast Lakoso - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,243271,1),		/* Rock n Roll Little Giant - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,242495,1),		/* Treasure Box Monster - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,242365,1),		/* Jazz Musician Cat - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,241762,1),		/* Fairytale Tonton Sheep - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,241759,1),		/* Fairytale Cotton Sheep - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,208726,1),		/* ROODEE Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,208756,1),		/* CHEWOO - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,208761,1),		/* LEMMEE- Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,203229,1),		/* Little Pumpkin - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,204102,1),		/* Frog - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,204103,1),		/* Red Frog - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,205675,1),		/* Little Goat of War - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,207091,1),		/* Boca - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,207094,1),		/* Ice Lizard - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,207710,1),		/* Little Footie - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,208455,1),		/* Little Frost - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,208460,1),		/* Little Snowman King - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,208649,1),		/* Permanent Wicked Ballon Monster Pet Egg  */
(1, 7, 1, 2, 95,20,0,209546,1),		/* Wabbit - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,209547,1),		/* Black Wabbit - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,209548,1),		/* Brown Wabbit - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,209549,1),		/* Spotted Wabbit - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,241007,1),		/* Festival Snowman - Pet Egg (Permanent)  */

(1, 7, 1, 2, 95,20,0,241233,1),		/* Sacred Ice Crystal Julu - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,241236,1),		/* Breaking Dawn Julu - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,241239,1),		/* Exuberant Celebration Julu - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,241242,1),		/* Greenfeather Sparrow Julu - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,241765,1),		/* Fairytale Angry Sheep - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,241837,1),		/* Pankster 300 - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,241842,1),		/* Cerberus - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,241971,1),		/* Romance Elemental - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,241972,1),		/* True Love Crystal - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,242009,1),		/* Gift Snowman - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,242010,1),		/* Piper Snowman - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,242011,1),		/* Drummer Snowman - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,242362,1),		/* Latin Musician Cat - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,241220,1),		/* Intoxicated Kobold - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,203216,1),		/* Gryphon - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,205853,1),		/* Sand Manticore - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,205854,1),		/* Dune Manticore - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,205855,1),		/* Fire Manticore - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,205856,1),		/* Flame Manticore - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,205857,1),		/* Indigo Manticore - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,205858,1),		/* Ruby Manticore - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,207101,1),		/* Golden Marmoset - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,207104,1),		/* Tropical Toucan - Pet Egg (Permanent)  */
(1, 7, 1, 2, 95,20,0,208463,1),		/* Gingerbread Man - Pet Egg (Permanent)  */


-- Pets with Buff
(1, 7, 1, 3, 95,20,0,208734,1),		/* Dune Manticore - Pet Egg (Permanent)  */
(1, 7, 1, 3, 95,20,0,208535,1),		/* Loyal Golden Marmoset - Pet Egg (Permanent)  */
(1, 7, 1, 3, 95,20,0,209644,1),		/* Red Monarch - Pet Egg (Permanent)  */
(1, 7, 1, 3, 95,20,0,208743,1),		/* Eggshell Julu - Pet Egg (Permanent)  */
(1, 7, 1, 3, 95,20,0,208537,1),		/* Loyal Little Death - Pet Egg (Permanent)  */
(1, 7, 1, 3, 95,20,0,241380,1),		/* Red Note Cavy - Pet Egg (Permanent)  */
(1, 7, 1, 3, 95,20,0,241381,1),		/* Blue Note Cavy - Pet Egg (Permanent)  */
(1, 7, 1, 3, 95,20,0,204108,1),		/* Nayarimah - Pet Egg (Permanent)  */
(1, 7, 1, 3, 95,20,0,240914,1),		/* Pumpkin Little Death - Pet Egg (Permanent)  */
(1, 7, 1, 3, 95,20,0,209642,1),		/* Darkmurmur - Pet Egg (Permanent)  */
(1, 7, 1, 3, 95,20,0,240913,1),		/* Moonshadow Black Kitten - Pet Egg (Permanent)  */
(1, 7, 1, 3, 95,20,0,240915,1),		/* Devils Little Helper - Pet Egg (Permanent)  */
(1, 7, 1, 3, 95,20,0,203284,1),		/* Icy Horned Lion - Pet Egg (Permanent)  */
(1, 7, 1, 3, 95,20,0,208530,1),		/* Loyal Little Goat of War - Pet Egg (Permanent)  */
(1, 7, 1, 3, 95,20,0,208532,1),		/* Loyal Little Demon - Pet Egg (Permanent)  */
(1, 7, 1, 3, 95,20,0,208533,1),		/* Loyal Pink Ball - Pet Egg (Permanent)  */
(1, 7, 1, 3, 95,20,0,208534,1),		/* Loyal Orange Ball - Pet Egg (Permanent)  */
(1, 7, 1, 3, 95,20,0,208536,1),		/* Loyal Tropical Toucan - Pet Egg (Permanent)  */
(1, 7, 1, 3, 95,20,0,208742,1),		/* Moonspirit Wabbit - Pet Egg (Permanent)  */
(1, 7, 1, 3, 95,20,0,207735,1),		/* Greywolf - Pet Egg (Permanent)  */
(1, 7, 1, 3, 95,20,0,208741,1),		/* Frog Prince - Pet Egg (Permanent)  */
(1, 7, 1, 3, 95,20,0,204826,1),		/* Boca - Pet Egg (Permanent)  */
(1, 7, 1, 3, 95,20,0,205683,1),		/* Strong Boca - Pet Egg (Permanent)  */
(1, 7, 1, 3, 95,20,0,240182,1),		/* Evil Teddy Bear - Pet Egg (Permanent)  */
(1, 7, 1, 3, 95,20,0,240183,1),		/* Soul Eater clown - Pet Egg (Permanent)  */
(1, 7, 1, 3, 95,20,0,240184,1),		/* Fireboot Warrior - Pet Egg (Permanent)  */
(1, 7, 1, 3, 95,20,0,240185,1),		/* Fireboot Priest - Pet Egg (Permanent)  */
(1, 7, 1, 3, 95,20,0,240512,1),		/* Smirking Clown - Pet Egg (Permanent)  */
(1, 7, 1, 3, 95,20,0,240513,1),		/* Filthy Soul Corpse - Pet Egg (Permanent)  */
(1, 7, 1, 3, 95,20,0,240728,1),		/* Fungus Pet - Pet Egg */
(1, 7, 1, 3, 95,20,0,241173,1),		/* Mini Flower Cactus - Pet Egg (Permanent)  */
(1, 7, 1, 3, 95,20,0,242200,1),		/* Little Jumping Flower - Pet Egg (Permanent)  */
(1, 7, 1, 3, 95,20,0,208531,1),		/* Loyal Little Angel - Pet Egg (Permanent)  */
(1, 7, 1, 3, 95,20,0,208733,1),		/* Sand Manticore - Pet Egg (Permanent)  */
(1, 7, 1, 3, 95,20,0,208735,1),		/* Fire Manticore - Pet Egg (Permanent)  */
(1, 7, 1, 3, 95,20,0,208736,1),		/* Flame Manticore - Pet Egg (Permanent)  */
(1, 7, 1, 3, 95,20,0,208737,1),		/* Ruby Manticore - Pet Egg (Permanent)  */
(1, 7, 1, 3, 95,20,0,208738,1),		/* Golden Ostrich - Pet Egg (Permanent)  */

-- Sub Others
(1, 7, 1, 4, 95,10,0,207583,1),		/* Aurora Pet Egg */
(1, 7, 1, 4, 95,10,0,207584,1),		/* Aurora Pet Egg */


-- /* Pet System */

-- Transformation
(1, 7, 2, 1,20,4,0,207578,1),		/* Cat-Errant Transformation Potion */
(1, 7, 2, 1,20,4,0,207579,1),		/* Fungus Transformation Potion */
(1, 7, 2, 1,20,4,0,207580,1),		/* Parrot Transformation Potion */
(1, 7, 2, 1,20,4,0,207587,1),		/* Little White Wabbit Transformation Potion */
(1, 7, 2, 1,20,4,0,207588,1),		/* Little Black Wabbit Transformation Potion */
(1, 7, 2, 1,20,4,0,207589,1),		/* Little Brown Wabbit Transformation Potion */
(1, 7, 2, 1,20,4,0,208492,1),		/* Lulu Transformation Potion */
(1, 7, 2, 1,20,4,0,208493,1),		/* Hill Bear Cub Transformation Potion */
(1, 7, 2, 1,20,4,0,208494,1),		/* Hawk Transformation Potion */
(1, 7, 2, 1,20,4,0,208495,1),		/* Kipos Transformation Potion */
(1, 7, 2, 1,20,4,0,208496,1),		/* Ystra Snow Ferret Transformation Potion */
(1, 7, 2, 1,20,4,0,208497,1),		/* Shaggy Snow Bear Transformation Potion */
(1, 7, 2, 1,20,4,0,208498,1),		/* Kal Turok King Myrmex Transformation Potion */
(1, 7, 2, 1,20,4,0,208499,1),		/* Kal Turok Termite Transformation Potion */
(1, 7, 2, 1,20,4,0,208500,1),		/* Forest Leopard Transformation Potion */
(1, 7, 2, 1,20,4,0,208501,1),		/* Rainbow Falcon Transformation Potion */
(1, 7, 2, 1,20,4,0,208502,1),		/* Big Kuman Transformation Potion */
(1, 7, 2, 1,20,4,0,208503,1),		/* Rainforest Hunter Transformation Potion */
(1, 7, 2, 1,20,4,0,208504,1),		/* Executioner Puppet Transformation Potion */
(1, 7, 2, 1,20,4,0,208505,1),		/* Savage Giant Wolf Transformation Potion */
(1, 7, 2, 1,20,4,0,208506,1),		/* Ice Plain Sabretooth Tiger Transformation Potion */
(1, 7, 2, 1,20,4,0,208507,1),		/* Snowman Transformation Potion */
(1, 7, 2, 1,20,4,0,208508,1),		/* Little Snowman King Transformation Potion */
(1, 7, 2, 1,20,4,0,208509,1),		/* Transformation Potion - Blue-Eyed Speckled Rabbit */
(1, 7, 2, 1,20,4,0,208510,1),		/* Nunu Transformation Potion */
(1, 7, 2, 1,20,4,0,208511,1),		/* Pingou Transformation Potion */
(1, 7, 2, 1,20,4,0,240186,1),		/* Evil Teddy Bear Transformation Potion */
(1, 7, 2, 1,20,4,0,240187,1),		/* Soul-Eater Clown Transformation Potion */
(1, 7, 2, 1,20,4,0,240188,1),		/* Fireboot Warrior Transformation Potion */
(1, 7, 2, 1,20,4,0,240189,1),		/* Fireboot Priest Transformation Potion */
(1, 7, 2, 1,20,4,0,240190,1),		/* Nocturnal Zombie Transformation Potion */
(1, 7, 2, 1,20,4,0,204227,1),		/* Jonesy's Transformation Potion */


-- Sub Others
(1, 7, 2, 2, 35,6,0,204513,1),		/* Breeding Slot Ticket */
(1, 7, 2, 2, 35,6,0,204922,1),		/* Pet Pair Merging Ticket */
(1, 7, 2, 2, 5,1,0,204231,999),		/* Lightweight Spade */
(1, 7, 2, 2, 5,1,0,204233,1),		/* Lightweight Hatchet */
(1, 7, 2, 2, 5,1,0,204229,1),		/* Lightweight Hoe */
(1, 7, 2, 2, 10,1,0,231885,1),		/* Pet Experiece Chamr */
(1, 7, 2, 2, 79,8,205295,231885,8),		/* Breeding Slot Ticket */

-- Sub Pet Consume
(1, 7, 3, -1,20,3,205278,204510,1),		/* Dessert of Happiness */
(1, 7, 3, -1,25,5,0,204511,1),			/* Favorite Meal */
(1, 7, 3, -1,20,3,205278,204925,1),		/* Nutritious Cheese */
(1, 7, 3, -1,20,3,205278,204924,1),		/* Low-Fat Goat's Milk */
(1, 7, 3, -1,20,3,205278,204234,1),		/* Beef Skewer */
(1, 7, 3, -1,20,3,0,204515,1),			/* Neutralization Bar */
(1, 7, 3, -1,240,50,0,207575,99),		/* Powerful Pet Growth Potion */
(1, 7, 3, -1,20,3,0,207576,1),			/* Enhancement Potion */
(1, 7, 3, -1,20,3,0,231885,1),			/* Pet Experiece Charm */
(1, 7, 3, -1,99,15,0,207582,1),			/* Magic Perfume (1 day) */
(1, 7, 3, -1,999,140,0,209529,1),		/* Magic Perfume (30 day) */



-- /* Mounts */

-- 7 Days - Multi-Passender
(1, 8, 1, 1,35,5,0,208700,1),		/* Damnation Bunga Mount (7 day) */
(1, 8, 1, 1,35,5,0,241934,1),		/* Drag-4000 Mount (7 day) */
(1, 8, 1, 1,35,5,0,207569,1),		/* Overlord Ankylar Mount (7 day) */
(1, 8, 1, 1,35,5,0,241937,1),		/* Little Demon Mount (7 day) */
(1, 8, 1, 1,35,5,0,241997,1),		/* Snowflake Sleigh Bear Mount (7 day) */
(1, 8, 1, 1,35,5,0,208691,1),		/* Thunder Hippogriff Mount (7 day) */
(1, 8, 1, 1,35,5,0,206934,1),		/* Storm Hippogriff Mount (7 day) */
(1, 8, 1, 1,35,5,0,207563,1),		/* Giant Eagle Mount (7 day) */

-- 7 days - Single Passenger
(1, 8, 1, 2,28,4,0,207853,1),		/* Thunder War Tiger Mount in a Bag (7 day) */
(1, 8, 1, 2,28,4,0,207852,1),		/* Flame War Tiger Mount in a Bag (7 day) */
(1, 8, 1, 2,28,4,0,203331,1),		/* Fire Ostrich Mount in a Bag (7 day) */
(1, 8, 1, 2,28,4,0,203321,1),		/* Ostrich Mount in a Bag (7 day) */
(1, 8, 1, 2,28,4,0,204288,1),		/* Wild Lion King Mount in a Bag (7 day) */
(1, 8, 1, 2,28,4,0,204290,1),		/* Night Lion King Mount in a Bag (7 day) */
(1, 8, 1, 2,28,4,0,203332,1),		/* Blood Ostrich Mount in a Bag (7 day) */
(1, 8, 1, 2,28,4,0,203333,1),		/* Golden Ostrich Mount in a Bag (7 day) */
(1, 8, 1, 2,28,4,0,207895,1),		/* Mammoth Mount with Steel Armor (7 day) */
(1, 8, 1, 2,28,4,0,206201,1),		/* Mammoth mount with woodeen Armor (7 day) */
(1, 8, 1, 2,28,4,0,207849,1),		/* Black Warhorse in a Bag (7 day) */
(1, 8, 1, 2,28,4,0,207848,1),		/* White horse in a Bag (7 day) */
(1, 8, 1, 2,18,4,0,202232,1),		/* Black Horse (7 day) */
(1, 8, 1, 2,18,4,0,202246,1),		/* Brown Horse (7 day) */
(1, 8, 1, 2,18,4,0,203326,1),		/* Piebald horse in a Bag (7 day) */
(1, 8, 1, 2,18,4,0,207856,1),		/* Golden Ostrich Mount in a Bag (7 day) */
(1, 8, 1, 2,18,4,0,204961,1),		/* Grey Rhinoceros Mount (7 day) */
(1, 8, 1, 2,18,4,0,204964,1),		/* Grassland Rhinoceros Mount (7 day) */
(1, 8, 1, 2,18,4,0,204967,1),		/* Wisdom Rhinoceros Mount (7 day) */
(1, 8, 1, 2,30,5,0,202475,1),		/* Purple Berhu Mount (7 day) */
(1, 8, 1, 2,30,5,0,202477,1),		/* Red Armored Berhu Mount (7 day) */
(1, 8, 1, 2,30,5,0,202478,1),		/* Fiery Berhu Mount (7 day) */
(1, 8, 1, 2,30,5,0,203563,1),		/* Wild Horned Lion Mount (7 day) */
(1, 8, 1, 2,18,4,0,204278,1),		/* Black Rhinoceros Mount (7 day) */
(1, 8, 1, 2,18,4,0,204970,1),		/* White Rhinoceros Mount (7 day) */
(1, 8, 1, 2,30,5,0,204934,1),		/* Red Mane Boar Mount (7 day) */
(1, 8, 1, 2,30,5,0,204937,1),		/* Golden Mane Boar Mount (7 day) */
(1, 8, 1, 2,30,5,0,204946,1),		/* Piebald Boar Mount (7 day) */
(1, 8, 1, 2,30,5,0,204952,1),		/* Striped Boar Mount (7 day) */
(1, 8, 1, 2,30,5,0,204955,1),		/* Flame Boar Mount (7 day) */
(1, 8, 1, 2,30,5,0,204958,1),		/* Yellow Mane Boar Mount (7 day) */
(1, 8, 1, 2,30,5,0,203285,1),		/* Green dragonfang ice beast Mount (7 day) */
(1, 8, 1, 2,30,5,0,204083,1),		/* Sea of snow berhu cub Mount (7 day) */
(1, 8, 1, 2,30,5,0,204142,1),		/* Golden Armored Berhu Cub Mount (7 day) */
(1, 8, 1, 2,30,5,0,204143,1),		/* Red Armored Berhu cub Mount (7 day) */
(1, 8, 1, 2,30,5,0,206204,1),		/* Red Bunga Mount (7 day) */
(1, 8, 1, 2,30,5,0,206207,1),		/* Purple Bunga Mount (7 day) */
(1, 8, 1, 2,30,5,0,206239,1),		/* Drag-3000 Mount (7 day) */
(1, 8, 1, 2,30,5,0,202471,1),		/* Dark Shadow Ferret Mount (7 day) */
(1, 8, 1, 2,30,5,0,206715,1),		/* Phantom ferret mount (7 day) */
(1, 8, 1, 2,30,5,0,206718,1),		/* Dawn ferret mount (7 day) */
(1, 8, 1, 2,30,5,0,206949,1),		/* Ancient Mammoth mount (7 day) */
(1, 8, 1, 2,30,5,0,207509,1),		/* Bighorn Boshi Mount (7 day) */
(1, 8, 1, 2,30,5,0,207512,1),		/* red-eyed bull mount (7 day) */
(1, 8, 1, 2,30,5,0,207537,1),		/* Speckled jaguar mount (7 day) */
(1, 8, 1, 2,30,5,0,207540,1),		/* hunting night pard mount (7 day) */
(1, 8, 1, 2,30,5,0,207543,1),		/* dark night pard mount (7 day) */
(1, 8, 1, 2,30,5,0,207558,1),		/* Snow-white war bear mount (7 day) */
(1, 8, 1, 2,30,5,0,208570,1),		/* swift raptor mount (7 day) */
(1, 8, 1, 2,30,5,0,208695,1),		/* Thunder ostrich mount (7 day) */
(1, 8, 1, 2,30,5,0,209964,1),		/* magic wabbit mount (7 day) */
(1, 8, 1, 2,30,5,0,209961,1),		/* wabbit mount (7 day) */
(1, 8, 1, 2,30,5,0,209480,1),		/* little demon 2000 mount (7 day) */
(1, 8, 1, 2,30,5,0,206556,1),		/* purgatory nightmare mount (7 day) */
(1, 8, 1, 2,30,5,0,206559,1),		/* infernal nightmare mount (7 day) */
(1, 8, 1, 2,30,5,0,206562,1),		/* evilblood nightmare mount (7 day) */
(1, 8, 1, 2,30,5,0,206568,1),		/* golden nightmare mount (7 day) */
(1, 8, 1, 2,30,5,0,207531,1),		/* Forest Alpaca mount (7 day) */
(1, 8, 1, 2,30,5,0,207528,1),		/* Snow alpaca mount (7 day) */
(1, 8, 1, 2,30,5,0,207534,1),		/* highland alpaca mount (7 day) */
(1, 8, 1, 2,30,5,0,240036,1),		/* Spinel chimera mount (7 day) */
(1, 8, 1, 2,30,5,0,240081,1),		/* Sapphire chimera mount (7 day) */
(1, 8, 1, 2,30,5,0,240086,1),		/* jasper chimera mount (7 day) */
(1, 8, 1, 2,30,5,0,240499,1),		/* rune beetle mount (7 day) */
(1, 8, 1, 2,30,5,0,241620,1),		/* spirit sharptooth mount(7 day) */
(1, 8, 1, 2,30,5,0,204998,1),		/* black pegasus mount (7 day) */

-- /* 30 days */
-- multi-passenger
(1, 8, 2, 1,85,20,0,209501,1),		/* Dagger Skeleton mount (30 day) */
(1, 8, 2, 1,80,15,0,206714,1),		/* star in a bag (30 day) */
(1, 8, 2, 1,80,15,0,206712,1),		/* Flame in a bag (30 day) */
(1, 8, 2, 1,80,15,0,206598,1),		/* steel-flame warhorse in a bag (30 day) */
(1, 8, 2, 1,80,15,0,206943,1),		/* ground gryphon mount in a bag (30 day) */
(1, 8, 2, 1,80,15,0,207570,1),		/* overlord ankylar mount (30 day) */
(1, 8, 2, 1,80,15,0,241998,1),		/* snowflake sleigh bear mount (30 day) */
(1, 8, 2, 1,80,15,0,208693,1),		/* thunder hippogriff mount (30 day) */
(1, 8, 2, 1,80,15,0,206935,1),		/* storm hippogriff mount (30 day) */
(1, 8, 2, 1,80,15,0,207564,1),		/* giant eagle mount (30 day) */

-- Single passenger
(1, 8, 2, 2,75,13,0,202482,1),		/* golden ostrich mount (30 day) */
(1, 8, 2, 2,75,13,0,206197,1),		/* Mammoth Mount with Steel amror mount (30 day) */
(1, 8, 2, 2,75,13,0,209494,1),		/* flame war tiger mount in a bag (30 day) */
(1, 8, 2, 2,75,13,0,209497,1),		/* thunder war tiger mount in a bag (30 day) */
(1, 8, 2, 2,75,13,0,203298,1),		/* ostrich mount in a bage (30 day) */
(1, 8, 2, 2,75,13,0,204289,1),		/* wild lion king mount in a bag (30 day) */
(1, 8, 2, 2,75,13,0,204291,1),		/* night lion king mount in a bag (30 day) */
(1, 8, 2, 2,75,13,0,207828,1),		/* black warhorse in a bag (30 day) */
(1, 8, 2, 2,75,13,0,207829,1),		/* white warhorse in a bag (30 day) */
(1, 8, 2, 2,75,13,0,207827,1),		/* white horse in a bag (30 day) */
(1, 8, 2, 2,75,13,0,207826,1),		/* black horse in a bag (30 day) */
(1, 8, 2, 2,75,13,0,203296,1),		/* brown horse in a bag (30 day) */
(1, 8, 2, 2,75,13,0,207830,1),		/* piebald horse in a bag (30 day) */
(1, 8, 2, 2,75,13,0,206200,1),		/* mammoth mount with wooden armor (30 day) */
(1, 8, 2, 2,75,13,0,204960,1),		/* grey rhinoceros mount (30 day) */
(1, 8, 2, 2,75,13,0,204963,1),		/* grassland rhinooceros mount (30 day) */
(1, 8, 2, 2,75,13,0,204966,1),		/* wisdom rhinoceros mount (30 day) */
(1, 8, 2, 2,75,13,0,204969,1),		/* white rhinoceros mount (30 day) */
(1, 8, 2, 2,75,13,0,202483,1),		/* purple berhu mount (30 day) */
(1, 8, 2, 2,75,13,0,202486,1),		/* fiery berhu mount (30 day) */
(1, 8, 2, 2,75,13,0,203562,1),		/* wild horned lion mount (30 day) */
(1, 8, 2, 2,75,13,0,204279,1),		/* black rhinoceros mount (30 day) */
(1, 8, 2, 2,75,13,0,204936,1),		/* golden mane boar mount (30 day) */
(1, 8, 2, 2,75,13,0,204945,1),		/* piebald boar mount (30 day) */
(1, 8, 2, 2,75,13,0,204951,1),		/* striped boar mount (30 day) */
(1, 8, 2, 2,75,13,0,204954,1),		/* flame boar mount (30 day) */
(1, 8, 2, 2,75,13,0,204957,1),		/* yellow mane boar mount (30 day) */
(1, 8, 2, 2,75,13,0,203287,1),		/* green dragonfang ice beast mount (30 day) */
(1, 8, 2, 2,75,13,0,204084,1),		/* sea of snow berhu cub mount (30 day) */
(1, 8, 2, 2,75,13,0,204144,1),		/* golden armored berhu cub mount (30 day) */
(1, 8, 2, 2,75,13,0,204145,1),		/* red armored berhu cub mount (30 day) */
(1, 8, 2, 2,75,13,0,206203,1),		/* red bunga mount (30 day) */
(1, 8, 2, 2,75,13,0,206206,1),		/* purple bunga mount (30 day) */
(1, 8, 2, 2,75,13,0,206238,1),		/* drag-3000 mount (30 day) */
(1, 8, 2, 2,75,13,0,202479,1),		/* dark shadow ferret mount (30 day) */
(1, 8, 2, 2,75,13,0,206716,1),		/* phantom ferret mount (30 day) */
(1, 8, 2, 2,75,13,0,206719,1),		/* dawn ferret mount (30 day) */
(1, 8, 2, 2,75,13,0,206950,1),		/* ancient mammoth mount (30 day) */
(1, 8, 2, 2,75,13,0,207510,1),		/* bighorn boshi mount (30 day) */
(1, 8, 2, 2,75,13,0,207513,1),		/* red-eyed bull mount (30 day) */
(1, 8, 2, 2,75,13,0,207538,1),		/* speckled jaguar mount (30 day) */
(1, 8, 2, 2,75,13,0,207541,1),		/* hunting night pard mount (30 day) */
(1, 8, 2, 2,75,13,0,207544,1),		/* dark night pard mount (30 day) */
(1, 8, 2, 2,75,13,0,207997,1),		/* swift raptor mount (30 day) */
(1, 8, 2, 2,75,13,0,208697,1),		/* thunder ostrich mount (30 day) */
(1, 8, 2, 2,75,13,0,209486,1),		/* magical giant frog mount (30 day) */
(1, 8, 2, 2,75,13,0,209962,1),		/* wabbit mount (30 day) */
(1, 8, 2, 2,75,13,0,209965,1),		/* magic wabbit mount (30 day) */
(1, 8, 2, 2,75,13,0,206557,1),		/* purgatory nightmare mount (30 day) */
(1, 8, 2, 2,75,13,0,206560,1),		/* inferal nightmare mount (30 day) */
(1, 8, 2, 2,75,13,0,206563,1),		/* evilblood nightmare mount (30 day) */
(1, 8, 2, 2,75,13,0,206572,1),		/* abysmal nightmare mount (30 day) */
(1, 8, 2, 2,75,13,0,206569,1),		/* golden nightmare mount (30 day) */
(1, 8, 2, 2,75,13,0,207532,1),		/* forest alpaca mount (30 day) */
(1, 8, 2, 2,75,13,0,207529,1),		/* snow alpaca mount (30 day) */
(1, 8, 2, 2,75,13,0,207535,1),		/* highland alpaca mount (30 day) */
(1, 8, 2, 2,75,13,0,240037,1),		/* spinel chimera mount (30 day) */
(1, 8, 2, 2,75,13,0,240082,1),		/* sapphire chimera mount (30 day) */
(1, 8, 2, 2,75,13,0,240087,1),		/* jasper chimera mount (30 day) */
(1, 8, 2, 2,75,13,0,240500,1),		/* rune beetle mount (30 day) */
(1, 8, 2, 2,75,13,0,241621,1),		/* spirit sharptooth mount (30 day) */
(1, 8, 2, 2,75,13,0,204997,1),		/* black pegasus mount (30 day) */

-- Permanent
-- sub multi-passenger
(1, 8, 3, 1,285,50,0,208707,1),		/* charity wolf mount (permanent) */
(1, 8, 3, 1,285,50,0,203671,1),		/* pegasus mount (permanent) */
(1, 8, 3, 1,285,50,0,208704,1),		/* damnation bunga mount (permanent) */
(1, 8, 3, 1,285,50,0,207551,1),		/* aladdins flying carpet (permanent) */
(1, 8, 3, 1,285,50,0,209502,1),		/* dagger skeleton mount (permanent) */
(1, 8, 3, 1,285,50,0,206936,1),		/* storm hippogriff mount (permanent) */
(1, 8, 3, 1,285,50,0,208161,1),		/* azure wolf mount (permanent) */
(1, 8, 3, 1,285,50,0,241104,1),		/* flame beast horn (permanent) */
(1, 8, 3, 1,285,50,0,208694,1),		/* thunder hippogriff mount (permanent) */
(1, 8, 3, 1,285,50,0,207568,1),		/* furious crimson ankylar mount (permanent) */
(1, 8, 3, 1,165,35,0,207548,1),		/* genie masterly flying carpet (permanent) */
(1, 8, 3, 1,300,55,0,206710,1),		/* star (permanent) */
(1, 8, 3, 1,300,55,0,206707,1),		/* flame (permanent) */
(1, 8, 3, 1,300,55,0,206596,1),		/* steel-flame warhorse (permanent) */
(1, 8, 3, 1,300,55,0,206941,1),		/* ground gryphon mount (permanent) */
(1, 8, 3, 1,285,30,0,241808,1),		/* thorned tiger ray mount (permanent) */
(1, 8, 3, 1,300,55,0,207565,1),		/* giant eagle mount (permanent) */
(1, 8, 3, 1,300,55,0,207503,1),		/* roaring war near mount (permanent) */
(1, 8, 3, 1,300,55,0,241774,1),		/* forest hugehorn mount (permanent) */
(1, 8, 3, 1,300,55,0,241802,1),		/* sinister sharpo mount (permanent) */
(1, 8, 3, 1,300,55,0,241933,1),     /* drag-4000 mount (permanent) */
(1, 8, 3, 1,300,55,0,207571,1),		/* overlord ankylar mount (permanent) */
(1, 8, 3, 1,300,55,0,241936,1),		/* little demon 5000 mount (permanent) */
(1, 8, 3, 1,300,55,0,241999,1),		/* snowflake sleigh bear mount (permanent) */




-- sub single passenger

(1, 8, 3, 2, 285, 50,0,201130,1),		/* Snow Ferret Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,201927,1),		/* Flame War Tiger Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,201928,1),		/* Thunder War Tiger Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,201965,1),		/* White Warhorse (Permanent) */
(1, 8, 3, 2, 285, 50,0,201966,1),		/* Black Warhorse (Permanent) */
(1, 8, 3, 2, 285, 50,0,202217,1),		/* Sea of Snow Berhu Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,202218,1),		/* Ostrich Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,202226,1),		/* Black Horse (Permanent) */
(1, 8, 3, 2, 285, 50,0,202247,1),		/* White Horse (Permanent) */
(1, 8, 3, 2, 285, 50,0,202248,1),		/* Brown Horse (Permanent) */
(1, 8, 3, 2, 285, 50,0,202454,1),		/* Piebald Horse (Permanent) */
(1, 8, 3, 2, 285, 50,0,202463,1),		/* Dark Shadow Ferret Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,202464,1),		/* Fire Ostrich Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,202465,1),		/* Blood Ostrich Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,202466,1),		/* Golden Ostrich Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,202467,1),		/* Purple Berhu Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,202468,1),		/* Golden Armored Berhu Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,202469,1),		/* Red Armored Berhu Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,202470,1),		/* Fiery Berhu Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,202935,1),		/* Red Fungus Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,202936,1),		/* Yellow Fungus Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,203289,1),		/* Green Dragonfang Ice Beast Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,203290,1),		/* Blue Dragonfang Ice Beast Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,203553,1),		/* Royal Reindeer Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,203554,1),		/* Reindeer Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,203555,1),		/* Snowflake Festival Reindeer Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,203564,1),		/* Wild Horned Lion Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,203671,1),		/* Pegasus Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,203676,1),		/* Unicorn Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,203915,1),		/* Icy Horned Lion Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,204085,1),		/* Sea of Snow Berhu Cub Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,204146,1),		/* Golden Armored Berhu Cub Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,204147,1),		/* Red Armored Berhu Cub Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,204276,1),		/* Boar Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,204277,1),		/* Black Rhinoceros Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,204284,1),		/* Wild Lion King Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,204287,1),		/* Night Lion King Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,204818,1),		/* White Horse (Permanent) */
(1, 8, 3, 2, 285, 50,0,204819,1),		/* Black Horse (Permanent) */
(1, 8, 3, 2, 285, 50,0,204820,1),		/* Brown Horse (Permanent) */
(1, 8, 3, 2, 285, 50,0,204929,1),		/* Purple Mane Boar Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,204932,1),		/* Red Mane Boar Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,204935,1),		/* Golden Mane Boar Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,204938,1),		/* Ice Plain Boar Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,204941,1),		/* Arctic Boar Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,204944,1),		/* Piebald Boar Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,204950,1),		/* Striped Boar Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,204953,1),		/* Flame Boar Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,204956,1),		/* Yellow Mane Boar Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,204959,1),		/* Grey Rhinoceros Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,204962,1),		/* Grassland Rhinoceros Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,204965,1),		/* Wisdom Rhinoceros Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,204968,1),		/* White Rhinoceros Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,204999,1),		/* Black Pegasus Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,206020,1),		/* Dragonfang Ice Beast Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,206196,1),		/* Mammoth Mount with Steel Armor (Permanent) */
(1, 8, 3, 2, 285, 50,0,206199,1),		/* Mammoth Mount with Wooden Armor (Permanent) */
(1, 8, 3, 2, 285, 50,0,206202,1),		/* Red Bunga Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,206205,1),		/* Purple Bunga Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,206234,1),		/* Witch Broom (Permanent) */
(1, 8, 3, 2, 285, 50,0,206237,1),		/* Drag-3000 Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,206275,1),		/* Snow Ferret Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,206278,1),		/* Witch Broom (Permanent) */
(1, 8, 3, 2, 285, 50,0,206283,1),		/* Pegasus Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,206284,1),		/* Dark Shadow Ferret Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,206289,1),		/* Black Pegasus Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,206290,1),		/* Drag-3000 Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,206316,1),		/* Purple Crested Ostrich Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,206329,1),		/* Savage Ostrich Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,206354,1),		/* Moa’s Charity Steed (Permanent) */
(1, 8, 3, 2, 285, 50,0,206359,1),		/* Moa’s Charity Steed (Permanent) */
(1, 8, 3, 2, 285, 50,0,206558,1),		/* Purgatory Nightmare Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,206561,1),		/* Infernal Nightmare Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,206564,1),		/* Evilblood Nightmare Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,206567,1),		/* Abyss Nightmare Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,206570,1),		/* Golden Nightmare Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,206573,1),		/* Abysmal Nightmare Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,206596,1),		/* Steel-Flame Warhorse (Permanent) */
(1, 8, 3, 2, 285, 50,0,206717,1),		/* Phantom Ferret Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,206720,1),		/* Dawn Ferret Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,206906,1),		/* Ruzio, the Expedition Donkey (Permanent) */
(1, 8, 3, 2, 285, 50,0,206936,1),		/* Storm Hippogriff Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,206941,1),		/* Ground Gryphon Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,206951,1),		/* Ancient Mammoth Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,207503,1),		/* Roaring War Bear Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,207511,1),		/* Bighorn Boshi Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,207514,1),		/* Red-Eyed Bull Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,207517,1),		/* Grassland Buffalo Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,207527,1),		/* Viking Sapphire Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,207530,1),		/* Snow Alpaca Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,207533,1),		/* Forest Alpaca Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,207536,1),		/* Highland Alpaca Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,207539,1),		/* Speckled Jaguar Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,207542,1),		/* Hunting Night Pard Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,207545,1),		/* Dark Night Pard Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,207548,1),		/* Genie's Masterly Flying Carpet (Permanent) */
(1, 8, 3, 2, 285, 50,0,207551,1),		/* Aladdin's Flying Carpet (Permanent) */
(1, 8, 3, 2, 285, 50,0,207560,1),		/* Snow-White War Bear Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,207565,1),		/* Giant Eagle Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,207568,1),		/* Furious Crimson Ankylar Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,207571,1),		/* Overlord Ankylar Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,208161,1),		/* Azure Wolf Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,208572,1),		/* Swift Raptor Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,208694,1),		/* Thunder Hippogriff Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,208699,1),		/* Thunder Ostrich Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,208704,1),		/* Damnation Bunga Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,208707,1),		/* Charity Wolf Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,208912,1),		/* Moa's Charity Steed (Permanent) */
(1, 8, 3, 2, 285, 50,0,209487,1),		/* Magical Giant Frog Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,209508,1),		/* Torex (Permanent) */
(1, 8, 3, 2, 285, 50,0,209602,1),		/* Aurelius (Permanent) */
(1, 8, 3, 2, 285, 50,0,209963,1),		/* Wabbit Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,209966,1),		/* Magic Wabbit Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,240038,1),		/* Spinel Chimera Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,240083,1),		/* Sapphire Chimera Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,240088,1),		/* Jasper Chimera Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,240435,1),		/* Purple Winged Leopard Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,240438,1),		/* Green Feather Cloud Leopard Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,240441,1),		/* Bold Shadow Leopard Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,240501,1),		/* Rune Beetle Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,240918,1),		/* Abyss Thysdyr Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,240930,1),		/* Fire Demon Warhorse (Permanent) */
(1, 8, 3, 2, 285, 50,0,240935,1),		/* Infernal Wolf Spider (Permanent) */
(1, 8, 3, 2, 285, 50,0,241104,1),		/* Flame Beast Horn (Permanent) */
(1, 8, 3, 2, 285, 50,0,241318,1),		/* Shadowforge Leopard Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,241622,1),		/* Spirit Sharptooth Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,241634,1),		/* Deeplake Pango Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,241774,1),		/* Forest Hugehorn Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,241779,1),		/* Green Devil Tortoise Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,241788,1),		/* Phantom Gulo Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,241793,1),		/* Steel Jaw Rhino Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,241799,1),		/* Fist-Armor Mosto Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,241802,1),		/* Sinister Sharpro Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,241805,1),		/* Little Demon 2000 Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,241999,1),		/* Snowflake Sleigh Bear Mount (Permanent) */
(1, 8, 3, 2, 285, 50,0,242161,1),		/* War Flame Beast Horn (Permanent) */
(1, 8, 3, 2, 285, 50,0,242449,1),		/* Frost Firescale Lizard Mount (Permanent) */


---- /* Packages */ ----
-- Starter Packages
(1, 9, 1, -1, 10, 1,203701,240386,1),		/* Plate armor package (41) */
(1, 9, 1, -1, 12, 1,203701,240355,1),		/* Plate armor package (55) */
(1, 9, 1, -1, 14, 2,203701,240343,1),		/* Plate armor package (60) */
(1, 9, 1, -1, 16, 2,203701,240303,1),		/* Plate armor package (65) */
(1, 9, 1, -1, 10, 1,203701,240392,1),		/* Leather armor package (41) */
(1, 9, 1, -1, 12, 1,203701,240361,1),		/* Leather armor package (55) */
(1, 9, 1, -1, 14, 2,203701,240349,1),		/* Leather armor package (60) */
(1, 9, 1, -1, 16, 2,203701,240309,1),		/* Leather armor package (65) */
(1, 9, 1, -1, 10, 1,203701,240395,1),		/* cloth armor package (41) */
(1, 9, 1, -1, 12, 1,203701,240364,1),		/* cloth armor package (55) */
(1, 9, 1, -1, 14, 2,203701,240352,1),		/* cloth armor package (60) */
(1, 9, 1, -1, 16, 2,203701,240312,1),		/* cloth armor package (65) */
(1, 9, 1, -1, 10, 1,203701,240389,1),		/* chain armor package (41) */
(1, 9, 1, -1, 12, 1,203701,240358,1),		/* chain armor package (55) */
(1, 9, 1, -1, 14, 2,203701,240346,1),		/* chain armor package (60) */
(1, 9, 1, -1, 16, 2,203701,240306,1),		/* chain armor package (65) */


-- Premium Packages
(1, 9, 2, -1, 2599, 270,203701,212779,1),		/* Legendary Ghost */
(1, 9, 2, -1, 2599, 270,203701,212782,1),		/* Legendary Hell */
(1, 9, 2, -1, 2599, 270,203701,212781,1),		/* Legendary Tears */
(1, 9, 2, -1, 2599, 270,203701,212783,1),		/* Legendary Heaven */
(1, 9, 2, -1, 2599, 270,203701,212772,1),		/* Legendary dragon spirit */
(1, 9, 2, -1, 2599, 270,203701,212771,1),		/* Legendary dragon cleaver */
(1, 9, 2, -1, 2599, 270,203701,212778,1),		/* Legendary devil */
(1, 9, 2, -1, 2599, 270,203701,212776,1),		/* Legendary destroyer */
(1, 9, 2, -1, 2599, 270,203701,212775,1),		/* Legendary crusher */
(1, 9, 2, -1, 2599, 270,203701,212773,1),		/* Legendary bloodthirsty axe */
(1, 9, 2, -1, 2599, 270,203701,212774,1),		/* Legendary bloodseeker */
(1, 9, 2, -1, 2599, 270,203701,212777,1),		/* Legendary angel */
(1, 9, 2, -1, 2599, 270,203701,212780,1);		/* Legendary Hatred */


GO

INSERT [dbo].[NewShopInfo]
([World1], [SellType], [SellType1], [SellType2], [Sell_Cost], [Sell_Get_Bonus], [Item_DisplayerObjID], [Item_OrgObjID1], [Item_Count1])
VALUES

-- /* *Special Items* */
-- Promotion
(1, 10, 1, -1, 200, 40,203701,243264,20),		/* Haidons Special Catalyst */
(1, 10, 1, -1, 100, 0,203701,243235,1),		/* Earth Key */
(1, 10, 1, -1, 100, 0,203701,243236,1),		/* water key */
(1, 10, 1, -1, 100, 0,203701,243237,1),		/* fire key */
(1, 10, 1, -1, 100, 0,203701,243238,1),		/* chaos key */
(1, 10, 1, -1, 22, 2,203701,207518,1),		/* red bison mount (1 day) */
(1, 10, 1, -1, 560, 55,203701,206319,5),		/* Provisions Couriers Osterich mount (1 hr 120%) */


-- Music Insturments
(1, 10, 2, -1, 15, 4,203701,204565,1),		/* Sealed lute (3 days)  */
(1, 10, 2, -1, 15, 4,203701,204564,1),		/* Sealed Guitar (3 days)  */
(1, 10, 2, -1, 15, 4,203701,204567,1),		/* Sealed Rattle (3 days)  */
(1, 10, 2, -1, 15, 4,203701,204566,1),		/* Sealed Tambourine (3 days)  */
(1, 10, 2, -1, 50, 10,203701,206414,1),		/* Sealed Lute (30 days)  */
(1, 10, 2, -1, 50, 10,203701,206413,1),		/* Sealed Guitar (30 days)  */
(1, 10, 2, -1, 50, 10,203701,206416,1),		/* Sealed Rattle (30 days)  */
(1, 10, 2, -1, 50, 10,203701,206415,1),		/* Sealed Tambourine (30 days)  */


-- Elite Skills
(1, 10, 3, -1, 15, 1,203701,209231,1),		/* Old Bag  */
(1, 10, 3, -1, 50, 2,203701,241651,1),		/* Proof of protection  */
(1, 10, 3, -1, 450, 5,203701,240780,1),		/* Proof of Progress  */
(1, 10, 3, -1, 50, 2,203701,240777,1),		/* Proof of Valor  */


-- Janebugs Orginal (Remove Will crash Client)
(1, 10, 4, -1, 20000, 2,203701,541288,1);		/* Jane's Trouble (Empty Item) */


GO

-- Diamonds Done


-- /* ****** Phirious Token Shop ******** */

-- Uses Table [Sell_Cost_Free]

INSERT [dbo].[NewShopInfo]
([World1], [SellType], [SellType1], [SellType2], [Sell_Cost_Free], [Item_DisplayerObjID], [Item_OrgObjID1], [Item_Count1])
VALUES

-- *** Consumables ***
-- Subs TP & XP
(1, 1, 1, -1, 180, 0,201134,1),		/* Experience Potion */
(1, 1, 1, -1, 180, 0,222926,1),		/* Basic Talent charm */
(1, 1, 1, -1, 180, 0,222925,1),		/* Basic Experience charm */
(1, 1, 1, -1, 180, 0,201610,1),		/* Skill potion */
(1, 1, 1, -1, 3000, 0,201086,1),	/* Experience Potion */

-- Sub Transpotaion
(1, 1, 2, -1, 10, 0,202902,1),		/* Marking ink */
(1, 1, 2, -1, 40, 0,202435,1),		/* home-sweet-home */
(1, 1, 2, -1, 20, 0,202903,1),		/* Transport Rune */
(1, 1, 2, -1, 40, 0,203784,1),		/* Guild castle transport stone */
(1, 1, 2, -1, 140, 0,202904,1),		/* Transport Portal rune */
(1, 1, 2, -1, 160, 0,202905,1),		/* passageway rune */
(1, 1, 2, -1, 20, 0,202545,1),		/* Love Crystal */

-- Sub Must-haves
(1, 1, 3, -1, 220, 0,203525,1),		/* Gods redemption ticket */
(1, 1, 3, -1, 100, 0,203605,1),		/* Golden Amulet */
(1, 1, 3, -1, 180, 0,203591,1),		/* Lesser mount speed potion (7 Days) */
(1, 1, 3, -1, 3000, 0,203283,1),	/* Fruit of forgetting */
(1, 1, 3, -1, 380, 0,202800,1),		/* Application from for a custom title */
(1, 1, 3, -1, 120, 0,203178,1),		/* Ancient Treasure key */
(1, 1, 3, -1, 100, 0,202928,1),		/* 10 Arcane transmuter charges */
(1, 1, 3, -1, 180, 0,202543,1),		/* exquisite wedding ring of the sunrise */
(1, 1, 3, -1, 180, 0,202544,1),		/* exquisite wedding ring of the moonlight */

-- Potions

(1, 1, 7, -1, 100, 0,201619,1),		/* potion of luck */


-- *** upgrading *** 

-- Accessories 
(1, 2, 1, -1, 100, 0,203053,1),		/* Basic accessory driller */
(1, 2, 1, -1, 380, 0,203054,1),		/* advanced accessory driller */
(1, 2, 1, -1, 1165, 0,203060,1),	/* expert accessory driller */

-- Armor
(1, 2, 2, -1, 100, 0,201237,1),		/* Basic armor driller */
(1, 2, 2, -1, 380, 0,201238,1),		/* advanced armor driller */
(1, 2, 2, -1, 1165, 0,203059,1),	/* expert armor driller */

-- weapon
(1, 2, 3, -1, 100, 0,201087,1),		/* Basic weapon driller */
(1, 2, 3, -1, 380, 0,201088,1),		/* advanced weapon driller */
(1, 2, 3, -1, 1165, 0,203058,1),	/* expert weapon driller */


-- back slot
(1, 2, 4, -1, 380, 0,207495,1),		/* Basic back slot item driller */
(1, 2, 4, -1, 745, 0,207496,1),		/* advanced back slot item driller */
(1, 2, 4, -1, 1165, 0,207497,1),	/* expert back slot item driller */
(1, 2, 4, -1, 105, 0,207489,1),		/* nebula jewel */

-- must-have
(1, 2, 5, -1, 2450, 0,202520,1),	/* advanced bind lifter */
(1, 2, 5, -1, 500, 0,203488,1),		/* bind lifter */
(1, 2, 5, -1, 550, 0,201093,1),		/* rune removal scroll */
(1, 2, 5, -1, 120, 0,204073,1),		/* standard aggregator */
(1, 2, 5, -1, 380, 0,202881,1),		/* purified fusion stone */
(1, 2, 5, -1, 250, 0,202930,1),		/* 100 arcane transmuter charges */
(1, 2, 5, -1, 10, 0,201152,1),		/* bleach */
(1, 2, 5, -1, 500, 0,202822,1),		/* equipment sealing device */
(1, 2, 5, -1, 300, 0,202823,1),		/* equipment unsealing device */
(1, 2, 5, -1, 500, 0,201541,1),		/* equipment lock */
(1, 2, 5, -1, 300, 0,201542,1),		/* equipment release */

-- ****** Costumes *****
-- Magic Wings
(1, 3, 4, -1, 3000, 0,222997,1),	/* holy angels wings */

-- **** crafting ****
-- Planting
(1, 4, 6, -1, 10, 0,203884,1),		/* Low-class plant protection */
(1, 4, 6, -1, 10, 0,203885,1),		/* medium-class plant protection */
(1, 4, 6, -1, 30, 0,203886,1),		/* high-class plant protection */
(1, 4, 6, -1, 10, 0,203881,1),		/* Low-class plant growing agent */
(1, 4, 6, -1, 10, 0,203882,1),		/* Low-class plant growing agent */
(1, 4, 6, -1, 30, 0,203883,1),		/* Low-class plant growing agent */

-- **** housing ****
-- Storage
(1, 6, 1, -1, 1455, 0,201285,1),	/* Mens clothes rack */
(1, 6, 1, -1, 1455, 0,201286,1),	/* womens clothes rack */
(1, 6, 1, -1, 3850, 0,201384,1),	/* classical wooden chest */

-- beds
(1, 6, 2, -1, 555, 0,201347,1),		/* elegant wooden engraved bed */

-- Tables & Chairs
(1, 6, 3, -1, 745, 0,201329,1),		/* elegant engraved square table */
(1, 6, 3, -1, 445, 0,201492,1),		/* long beech table */
(1, 6, 3, -1, 115, 0,201508,1),		/* simple rotan table */

-- Cabinets
(1, 6, 5, -1, 550, 0,201511,1),		/* simple storage cabinet */

-- Plants
(1, 6, 7, -1, 250, 0,201379,1),		/* glazed pot plant */

-- Carpets
(1, 6, 8, -1, 250, 0,201297,1),		/* simple carpet */

-- **** Mount ****
-- 30 days
(1, 8, 2, 2, 95, 0,204933,1),		/* red mane boar mount (30 days) */
(1, 8, 2, 2, 95, 0,207559,1),		/* snow-white war bear mount (30 days) */

-- Permanent
(1, 8, 3, 2, 95, 0,206200,1);		/* Mammoth mount with wooden armor (30 days) */



-- Phirious Done

GO


TRUNCATE TABLE [dbo].[SlotMachine_TypeInfo]
TRUNCATE TABLE [dbo].[SlotMachineBase]

GO


ALTER TABLE [dbo].[SlotMachine_TypeInfo] SET (LOCK_ESCALATION = TABLE)
GO
SET IDENTITY_INSERT [dbo].[SlotMachine_TypeInfo] ON
GO

-- 10000 / GUID (24) = 416
INSERT INTO [dbo].[SlotMachine_TypeInfo] ([GUID], [Type], [Rate], [ItemID], [ItemCount]) VALUES 
( 1, 1,  100,  202434,  1 ),		/* Daily Quest ticket */
( 2, 1,  100,  242841,  1 ),		/* Perfect Tempered star jewel - Elven */
( 3, 1,  416,  203062,  1 ),		/* master armor driller */
( 4, 1,  416,  206946,  1 ),		/* flying rune disk (permanet) */
( 5, 1,  416,  202506,  1 ),		/* golden repair hammer */
( 6, 1,  416,  202928,  1 ),		/* 10 Arcane transmutor charges */
( 7, 1,  416,  242843,  1 ),		/* perfect tempered sun jewel - elven */
( 8, 1,  416,  202903,  1 ),		/* transport rune */
( 9, 1,  416,  203178,  1 ),		/* ancient treasure key */
( 10, 1,  416,  241090,  1 ),		/* random attribute extraction stone */
( 11, 1,  416,  241808,  1 ),		/* thorned tiger ray mount */
( 12, 1,  416,  240584,  5 ),		/* talent orb (100000x5) */
( 13, 1,  416,  201134,  1 ),		/* experience potion */
( 14, 1,  416,  201141,  1 ),		/* phoenixs redemption */
( 15, 1,  416,  202520,  1 ),		/* advanced bind lifter */
( 16, 1,  416,  203576,  2 ),		/* grand golden repair hammer */
( 17, 1,  416,  241602,  1 ),		/* Production speed potion (1 day) */
( 18, 1,  416,  201292,  1 ),		/* shield-shaped weapon rack */
( 19, 1,  416,  201445,  1 ),		/* megaphone */
( 20, 1,  416,  202902,  1 ),		/* marking ink */
( 21, 1,  416,  202930,  1 ),		/* 100 arcane transmutor charges */
( 22, 1,  416,  203061,  1 ),		/* master weapon driller */
( 23, 1,  416,  203063,  1 ),		/* master accessory driller */
( 24, 1,  416,  209502,  1 );		/* dagger skeleton mount (permanent) */

SET IDENTITY_INSERT [dbo].[SlotMachine_TypeInfo] OFF
GO



ALTER TABLE [dbo].[SlotMachineBase] SET (LOCK_ESCALATION = TABLE)
GO
SET IDENTITY_INSERT [dbo].[SlotMachineBase] ON
GO

INSERT INTO [dbo].[SlotMachineBase]  ([GUID], [Type], [Pos], [Rate]) VALUES 
(N'1', N'1', N'1', N'1000'),
(N'2', N'1', N'2', N'1000'),
(N'3', N'1', N'3', N'1000'),
(N'4', N'1', N'4', N'1000'),
(N'5', N'1', N'5', N'1000'),
(N'6', N'1', N'6', N'1000'),
(N'7', N'1', N'7', N'1000'),
(N'8', N'1', N'8', N'1000'),
(N'9', N'1', N'9', N'1000'),
(N'10', N'1', N'10', N'1000');
GO

SET IDENTITY_INSERT [dbo].[SlotMachineBase] OFF
GO


-- Wheel of Fortune Price  
-- Need this to work.
ALTER TABLE [dbo].[Table_MoneyExchange] SET (LOCK_ESCALATION = TABLE)
GO
SET IDENTITY_INSERT [dbo].[Table_MoneyExchange] ON
GO

-- INSERT INTO [dbo].[Table_MoneyExchange] ([GUID], [KeyStr], [Value0], [Value1], [Value2], [Value3], [Note], [isOK]) VALUES 
-- (N'148', N'SlotMachineCost', N'8', N'0', N'0', N'0', N'Wheel of Fortune Price ', N'0')

-- GO

SET IDENTITY_INSERT [dbo].[Table_MoneyExchange] OFF
GO






