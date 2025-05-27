Övervakning (Zabbix)
Zabbix Server installerades enligt officiella guiden på zabbix.com för Ubuntu 20.04.

Beroenden som Zabbix-agent installerades via APT.

Servern är åtkomlig via webbläsare på: http://10.99.2.10/zabbix

Konfiguration i webbgränssnitt:
Standardinloggning (Admin/zabbix) användes vid första inloggningen.

En Windows-klient lades till som ny host.

Zabbix-agent installerades manuellt på klienten och konfigurerades med serverns IP-adress.

Klienten lades till via menyvalet Data collection → Hosts → Create host.

Template Windows by Zabbix agent valdes vid skapande av host.

Visad information i dashboard:
Klienten rapporterar information om:

CPU-belastning

RAM och växlingsminne

Diskanvändning

Uptime och användare

Nätverksanvändning

Värdet “Availability” visar status ZBX i grönt vilket indikerar att klienten kommunicerar med Zabbix-servern.

Historik för resurser visas grafiskt och kan analyseras direkt i dashboarden.

[Bild som visar status på hårdvara hos min client.](./image.png)