### Sekce a obsah

Dokument je rozdělen do sady povinných a nepovinných sekcí. Pokud nejsou pro povinnou sekci k dispozici žádná data, lze odůvodnění vyjádřit v `composition.section.emptyReason`.

### Struktura dokumentu

Laboratorní žádanka obsahuje následující sekce v tomto pořadí:

#### Hlavička laboratorní žádanky

Obecné informace o žádance. Většina informačních prvků v této části zprávy se překrývá s jinými klinickými dokumenty. Záhlaví dokumentu obsahuje informace o pacientovi, zdrojové organizaci, autorovi (indikujícím lékaři), zamýšleném vykonavateli vyšetření a správci dokumentu.

**Klinická událost (Encounter)**

Tento profil umožňuje propojení žádanky s konkrétní klinickou událostí, např. ambulantní nebo hospitalizační návštěvou, při které žádanka vznikla.

#### Tělo laboratorní žádanky

**Požadovaná vyšetření (ServiceRequest)**

Tato povinná sekce obsahuje seznam jednotlivých požadovaných laboratorních vyšetření. Každé vyšetření je vyjádřeno jedním zdrojem `CZ_ServiceRequest`. Mezi povinné prvky patří identifikátor žádanky, kategorie, datum vystavení (`authoredOn`) a kód požadovaného vyšetření (`code`) z národní laboratorní nomenklatury (NČLP). Volitelně lze uvést priorit vyšetření (běžná, urgentní, statim, ASAP), požadovaný čas provedení (`occurrenceDateTime`) a textové instrukce pro pacienta nebo laboratoř (`patientInstruction`, `note`). Pokud se k vyšetření váže konkrétní vzorek, je propojen pomocí `specimen`.

**Úhrada (Coverage)**

Tato sekce umožňuje upřesnit způsob úhrady, pokud se liší od standardní úhrady ze zdravotního pojištění – například samoplátce, doplatek, jiná pojišťovna nebo specifický program. I když je sekce povinně přítomná, není povinné ji vyplňovat; v takovém případě platí, že vyšetření je hrazeno standardně z pojištění uvedeného v hlavičce žádanky.

**Termín odběru (Appointment)**

Volitelná sekce, která umožňuje uvést konkrétní termín a místo plánovaného odběru biologického materiálu, pokud byl předem domluven. Slouží například k informování pacienta o čase a místě odběru, případně laboratoře o očekávaném okamžiku doručení vzorku.

**Doplňující informace (Supporting information)**

Volitelná sekce, která umožňuje k žádance připojit klinicky relevantní informace ovlivňující interpretaci výsledku – například užívanou medikaci (`CZ_MedicationStatement`) nebo již známé diagnózy a klinické nálezy (`Condition`). Tyto informace pomáhají laboratoři správně vyhodnotit požadovaná vyšetření.

**Přílohy**

Volitelná sekce umožňující připojit libovolné další podklady – např. ambulantní zprávu, propouštěcí zprávu, předchozí výsledky nebo data poskytnutá pacientem (v digitální podobě nebo jako sken). Slouží k doplnění klinického kontextu žádanky.
