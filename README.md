#  Ubuntu-server – LIA-dokumentation

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
| **Logrotate**  | Automatisk logghantering och rensning                    | [Logrotate.md](./Logrotate.md)       |
| **Zabbix**     | Övervakning av server och klient                         | [zabbix.md](./zabbix.md)               |
| **NAT / Firewall** | Delar internet och skyddar interna resurser          | [NAT-forwarding.md](./NAT-forwarding.md) |

---

## 4. Automatisering  
Automatisering av loggrensning och backup sker via egenskrivna script.  

**Plats:** [`All scripts`  ](./All%20scripts/scripts.md)
- `loggcleanup.sh` – tar bort gamla loggar automatiskt  

---

## 5. Felsökning  
Problem som uppstod under installation/test samt lösningar:  
- [Felsökning – DNS](./Felsökning.md)  
- [Felsökning – DHCP](./Felsokning2.md)  
- [Användarfel och insikter](./användarfel.md)  

---

## 6. Riskanalys 

| Typ             | Dokumentation                          |
|------------------|----------------------------------------|
| Tekniska risker  | [tekniska risker.md](./tekniska%20risker.md) |
| Nätverksrisker   | [nätverksrisker.md](./nätverksrisker.md)      |
| Användarfel      | [användarfel.md](./användarfel.md)           |
| Åtgärdsplaner    | [åtgärder.md](./åtgärder.md)                 |

---

## 7. Utvärdering  
Systemet fungerar som tänkt. Alla grundtjänster startar automatiskt vid boot, och klienten får IP-adress, namnupplösning och tillgång till internet via servern.  

[Utvärdering](./utvärdering.md)
