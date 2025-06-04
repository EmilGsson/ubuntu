4.5 Logrotate-konfiguration och loggarkiveringsscript
För att loggfilerna inte ska växa okontrollerat används logrotate. En egen konfiguration skapades i:

/etc/logrotate.d/syslog-custom

Inställningar:

Loggen /var/log/syslog roteras varje vecka

Fyra gamla loggfiler sparas

Komprimering sker automatiskt

Raden su root syslog lades till för att undvika rättighetsfel

Verifikation:

bash
Copy
Edit
sudo logrotate -f /etc/logrotate.d/syslog-custom
För arkivering skapades ett bash-script (loggit.sh) som:

Komprimerar roterade loggar

Skapar en mapp med dagens datum

Laddar upp loggarna till GitHub-repot "ubuntu"

Scriptets sökväg:
/home/emil/loggit.sh

Scriptet körs automatiskt via cron varje söndag kl. 02:00:

arduino
Copy
Edit
0 2 * * 0 bash /home/emil/loggit.sh