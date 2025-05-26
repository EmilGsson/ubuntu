# Dokumentation – LIA-arbete Ubuntu-server

---

## 1. Mål med uppgiften
Översikt av vad som ska byggas och varför

---

## 2. Design och arkitektur
- Virtualisering och nätverksstruktur  
- Val av IP, switchar och kommunikation mellan klient/server

---

## 3. Valda tekniker
Operativsystem och tjänster som används:
- Bind9
- DHCP
- rsyslog
- logrotate
- Zabbix

---

## 4. Genomförande

### 4.1 [DNS (Bind9)](./dns.md)
### 4.2 [DHCP](./dhcp.md)
### 4.3 [Syslog](./syslog.md)
### 4.4 [Logrotate](./logrotate.md)
### 4.5 [Zabbix](./zabbix.md)

---

## 5. Utvärdering
Resultat, stabilitet och nästa steg

---

## 6. Riskanalys

### 6.1 [Tekniska risker](./tekniska%20risker.md)  
### 6.2 [Nätverksrisker](./nätverksrisker)
### 6.3 Användarfel  
### 6.4 Åtgärder och rekommendationer  

---

## 7. Felsökning

### 7.1 Problem: Ingen internetåtkomst efter omstart  
Problem: Ingen internetåtkomst efter omstart. [Läs mer här](./Felsokning2.md)

---

### 7.2 Problem: Fel DNS på host-maskin
Problem: DNS från VM för hög metric. [Läs mer här](./felsökning.md)

## 8. Bilaga

🔗 [Se konfigurationsfiler och kommandon](./config/)