Fel rättigheter i logrotate: Utan su root syslog gick rotationen inte att genomföra.
 Åtgärd: Identifierade felet via logrotate -f, lade till rättigheter – fungerade direkt.
 [Se Logrotate-konfiguration](./logrotate.md)

Glömt chmod +x på skript: Skript som loggit.sh eller loggcleanup.sh fungerade inte förrän de gjordes körbara.
 Åtgärd: Alla script testkördes manuellt och verifierades.

Felkonfigurerad netplan: Vid omstart försvann IP på eth1.
 Åtgärd: Lade till eth1: dhcp4: yes i [/etc/netplan/50-cloud-init.yaml](./config/50-cloud-init.yaml.md) och återställde internet.
 Se [Felsökning/Nätverksdel](./config/50-cloud-init.yaml.md)