### Database rate settings

Open the **ROM_World** database and navigate to the **dbo.WorldConfigTable**. Rightclick and select "Edit top 200 rows".
There you´ll find the TP, EXP, QuestTP, Money and many more.  

Change the **Value** - default is _100_


| GUID  | ZoneID  | BeginTime  | EndTime  | CmdStr  | Value  | Str  | Note  |
|---|---|---|---|---|---|---|---|
| 1  | -1  | 1900-01-01 00:00:00  | 2030-01-01 00:00:00  | ExpRate  | **1000**  |   | Experience percentage (100 = Exp x1) |
| 2  | -1  | 1900-01-01 00:00:00  | 2030-01-01 00:00:00  | RelationExpRate  | **1000**  |   | Experience percentage (100 = Exp x1) |
| 3  | -1  | 1900-01-01 00:00:00  | 2030-01-01 00:00:00  | DropTreasureRate  | **1000**  |   | Drop treasure monster (100 = Exp x1) |
| 4  | -1  | 1900-01-01 00:00:00  | 2030-01-01 00:00:00  | TpRate  | **1000**  |   | Talent points percentage (100 = Exp x1) |
| 5  | -1  | 1900-01-01 00:00:00  | 2030-01-01 00:00:00  | QuestTpRate  | **1000**  |   | Talent points percentage (100 = Exp x1) |
| 6  | -1  | 1900-01-01 00:00:00  | 2030-01-01 00:00:00  | MoneyRate  | **1000**  |   | Money percentage (100 = Exp x1) |
| 7  | -1  | 1900-01-01 00:00:00  | 2030-01-01 00:00:00  | QuestMoneyRate  | **1000**  |   | Money percentage (100 = Exp x1) |

---

### GM Permission

Open the **ROM_World** database and navigate to the **dbo.RoleData**. And set the _isGM_ to **true**.

| IsDelete  | IsGM  | IsEnterWorld  |  CharField | DBID  | AccountID  | 
|---|---|---|---|---|---|
|  False | True  | True/False  | 0  | _any number_  | iKameo  | 
