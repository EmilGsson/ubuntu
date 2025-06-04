4.4 Syslog-konfiguration
Logghanteringen på servern sker med hjälp av rsyslog, som är ett system för att ta emot och spara loggar. I denna uppgift har rsyslog konfigurerats för att:

Samla systemloggar från servern

Tillåta loggar att tas emot via UDP-port 514 (för framtida klienter)

Verifiering har skett med kommandot logger "test" och kontroll i /var/log/syslog

Standardkonfigurationen i /etc/rsyslog.conf användes med mindre justeringar.