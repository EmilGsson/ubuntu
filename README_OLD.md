# Dokumentation – LIA-arbete Ubuntu-server

---

## 1. Mål med uppgiften
## [Översikt av vad som ska byggas och varför](./Översikt)

---

## 2. Design och arkitektur
### 2.1 [Virtualisering och nätverksstruktur](./Virtualisering.md)  
### 2.2 [Val av IP, switchar och kommunikation mellan klient/server](./ipaddressing.md)

---

## 3. Valda tekniker
Operativsystem och tjänster som används:
### 3.1 [Bind9](./dns.md)
### 3.2 [DHCP](./dhcp.md)
### 3.3 [rsyslog](./All%20scripts/scripts.md)
### 3.4 [logrotate](./All%20scripts/scripts.md)
### 3.5 [Zabbix](./)
### 3.6 [Brandvägg](./ufw-status.md)

---

## 4. Genomförande

### 4.1 [DNS (Bind9)](./dns.md)
### 4.2 [DHCP](./dhcp.md)
### 4.3 [Syslog](./syslog.md)
### 4.4 [Logrotate](./logrotate.md)
### 4.5 [Zabbix](./zabbix.md)
### 4.6 [Brandvägg](./config/ufw-status.md)


---

## 5. Utvärdering
## [Resultat, stabilitet.](./Utvärdering.md)

---

## 6. Riskanalys

### 6.1 [Tekniska risker](./tekniska%20risker.md)  
### 6.2 [Nätverksrisker](./nätverksrisker)
### 6.3 [Användarfel](./användarfel)
### 6.4 [Åtgärder och rekommendationer](./åtgärder)

---

## 7. Felsökning

### 7.1 [Problem: Ingen internetåtkomst efter omstart](./Felsokning2.md)

### 7.2 [Problem: DNS från VM för hög metric](./felsökning.md)

---
# Arbete av Emil Göransson, Nätverkstekniker 



# 🖥️ Ubuntu-server – LIA-dokumentation

## 1. Syfte  
Projektets mål är att bygga en Ubuntu-baserad serverlösning som teoretiskt kan hantera ett mindre till medelstort företags interna nätverk med:  
- DHCP  
- DNS  
- NAT och brandvägg  
- Loggning och logghantering  
- Övervakning via Zabbix  
- Automatisering med script  

[Läs mer → översikt.md](./översikt.md)

---

## 2. Systemdesign  
- Ubuntu 24.04 server i virtuell miljö  
- En Windows-klient ansluten till servern  
- Intern IP-struktur i 10.99.2.0/24-nätet  
- Internetåtkomst via serverns NAT och IP-forwarding  

---

## 3. Använda komponenter  

| Tjänst         | Beskrivning                                              | Dokumentation                         |
|----------------|----------------------------------------------------------|----------------------------------------|
| **DHCP**       | Automatisk IP-utdelning till klient                      | [dhcp.md](./dhcp.md)                   |
| **DNS**        | Bind9 hanterar namnuppslagning internt                   | [dns.md](./dns.md)                     |
| **Syslog**     | Central logginsamling med rsyslog                        | [syslog.md](./syslog.md)               |
| **Logrotate**  | Automatisk logghantering och rensning                    | [Loggrotate.md](./Loggrotate.md)       |
| **Zabbix**     | Övervakning av server och klient                         | [zabbix.md](./zabbix.md)               |
| **NAT / Firewall** | Delar internet och skyddar interna resurser          | [NAT-forwarding.md](./NAT-forwarding.md) |

---

## 4. Automatisering  
Automatisering av loggrensning och backup sker via egenskrivna script.  

**Plats:** `All scripts/`  
- `loggcleanup.sh` – tar bort gamla loggar automatiskt  

---

## 5. Felsökning  
Problem som uppstod under installation/test samt lösningar:  
- [Felsökning – DNS](./Felsökning.md)  
- [Felsökning – DHCP](./Felsokning2.md)  
- [Användarfel och insikter](./användarfel.md)  

---

## 6. Riskhantering  

| Typ             | Dokumentation                          |
|------------------|----------------------------------------|
| Tekniska risker  | [tekniska risker.md](./tekniska%20risker.md) |
| Nätverksrisker   | [nätverksrisker.md](./nätverksrisker.md)      |
| Användarfel      | [användarfel.md](./användarfel.md)           |
| Åtgärdsplaner    | [åtgärder.md](./åtgärder.md)                 |

---

## 7. Utvärdering  
Systemet fungerar som tänkt. Alla grundtjänster startar automatiskt vid boot, och klienten får IP-adress, namnupplösning och tillgång till internet via servern.  

**Saker jag är nöjd med:**  
- Helheten fungerar stabilt  
- Script för loggrensning är praktiskt  

**Saker jag hade kunnat förbättra:**  
- Mer detaljerad brandvägg  
- Mer avancerad logganalys eller visning  