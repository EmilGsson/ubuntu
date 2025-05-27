### Översikt och mål med uppgiften
Syftet med uppgiften är att skapa en Linuxbaserad servermiljö (Ubuntu 24.04) som innehåller centrala funktioner för ett nätverk i ett medelstort företag.
Målet är att konfigurera och dokumentera en komplett lösning som teoretiskt kan stödja upp till 100 enheter i ett internt nätverk.

Servern ska innehålla följande komponenter:

- En DHCP-server som delar ut IP-adresser till klienter automatiskt

- En DNS-server som hanterar intern namnupplösning

- Systemövervakning med Zabbix, inklusive agent på minst en klient

- Loggning och logghantering med Rsyslog och Logrotate

- En grundläggande brandväggskonfiguration för att säkra tjänsterna

- NAT och IP-forwarding för att ge klienter tillgång till internet via servern

- SSH-nyckelautentisering för säker inloggning

- Automatiserade script som hanterar loggbackup och borttagning

- Git-versionering för att spara konfigurationsfiler och loggkopior

Arbetet ska dokumenteras löpande och konfigurationsfiler ska laddas upp till ett GitHub-repo. Fokus ligger på att skapa en fungerande, säker och hållbar lösning där samtliga delar är tydligt konfigurerade och testade.

