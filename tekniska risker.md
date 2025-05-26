6.1 Tekniska risker
Stora loggfiler: /var/log/syslog växte snabbt till över 400 000 rader. Om loggrotation inte är korrekt konfigurerat kan serverns disk fyllas.
 Åtgärd: Skapade en egen logrotate-konfig med weekly, rotate 4, compress och su root syslog. Verifierades med logrotate -f.
→ [Se Logrotate-konfiguration](Loggrotate.md)

Felaktiga crontab-tider: Fel i crontab gör att viktiga skript som loggbackup (loggit.sh) eller rensning (loggcleanup.sh) inte körs.
 Åtgärd: Har testat båda skripten manuellt, lagt till schemalagda uppgifter och kontrollerat via crontab -l.
→ [Se Arkiveringsscript](./scripts)

Zabbix-övervakning inaktiv: Om Zabbix-servern eller agenten kraschar syns ingen status i dashboard.
 Åtgärd: Verifierat att Zabbix-agent och server är igång med systemctl status, och testhost är aktiv i webbgränssnittet.
→ [Se Zabbix-konfiguration](.Zabbixövervakning)