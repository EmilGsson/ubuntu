Självklart Emil! Här är ett förslag på en **kort teknisk rapport** du kan använda i en inlämning, dokumentation eller som logg:

---

## **Rapport – Felsökning av nätverksproblem i Windows med Hyper-V**

### **Bakgrund**

Vid 09-tiden uppstod plötsligt allvarliga nätverksproblem på min dator, trots att allt fungerat felfritt i flera veckor. Symtomen var bl.a.:

* Nära 100 % paketförlust vid internetanvändning
* Långsamma laddtider eller total frånvaro av internetanslutning
* Felaktig DNS-respons eller uteblivna namnuppslag

Datorn använde trådlös anslutning via ett inbyggt Wi-Fi-kort (**Intel(R) Wi-Fi 6 AX200 160MHz**).

---

### **Felsökning och analys**

#### 1. **Kontroll av nätverksinställningar**

Kommandot `ipconfig /all` visade att vissa vEthernet-adaptrar hade aktiv nätverksstack med DNS-inställningar – trots att de inte borde användas för utgående trafik.

#### 2. **Visning av alla aktiva nätverkskort**

```powershell
Get-NetIPInterface | Sort-Object InterfaceMetric | Format-Table InterfaceAlias, InterfaceMetric
```

Resultat visade att flera **vEthernet-adaptrar** (skapade av Hyper-V) hade **lägre metric** än Wi-Fi-adaptern – vilket innebär att de kunde prioriteras som standardväg för trafik, trots att de inte hade internet.

#### 3. **Identifiering av rätt Wi-Fi-adapter**

```powershell
Get-NetAdapter | Where-Object {$_.InterfaceDescription -like "*AX200*"} | Format-Table Name, Status, InterfaceDescription
```

Det visade att det riktiga Wi-Fi-kortet hette `"WiFi"` och var aktivt (`Status = Up`).

---

### **Orsak till problemet**

Efter vidare granskning upptäcktes att en av mina Hyper-V-VM\:er hade en virtuell switch kopplad direkt mot min **Wi-Fi-adapter (External Switch)**. Detta ledde till att Windows behandlade vEthernet-kortet som en likvärdig anslutning, vilket orsakade felaktig prioritet i nätverksstacken och DNS-routing.

---

### **Lösning**

#### Steg 1: Koppla bort VM från Wi-Fi

* Den virtuella switchen i Hyper-V som var kopplad mot Wi-Fi togs bort eller byttes ut.

#### Steg 2: Tvinga Windows att prioritera Wi-Fi

```powershell
Set-NetIPInterface -InterfaceAlias "WiFi" -InterfaceMetric 5
```

#### Steg 3: Sänk prioriteten på alla vEthernet-kort

```powershell
Get-NetIPInterface | Where-Object {$_.InterfaceAlias -like "vEthernet*"} | Set-NetIPInterface -InterfaceMetric 9999
```

#### Steg 4: Kontroll av DNS-funktion

```powershell
nslookup google.com
```

Visade korrekt DNS-respons från `1.1.1.1` och `8.8.8.8`.

---

### **Slutsats**

Problemet orsakades av en oavsiktlig koppling mellan en Hyper-V-switch och den fysiska Wi-Fi-adaptern. Det resulterade i att Windows felprioriterade nätverksvägar och DNS-servrar. Genom manuell justering av **InterfaceMetric** och bortkoppling av Wi-Fi från VM-länken kunde problemet lösas helt.

---

