6.2 Nätverksrisker
Klient utan internet: Om NAT- eller IP-forwarding saknas, når inte Windows-klienten internet.
 Åtgärd: Aktiverat IP forwarding i /etc/sysctl.conf och konfigurerat NAT med iptables.
→ Se NAT/router-del

Felaktig DHCP-konfig: Risk att klient inte får IP om dhcpd.conf har syntaxfel eller felaktigt nät.
 Åtgärd: Konfigurerat en stabil pool, testat med Windows-klient.
→ Se DHCP-del

DNS fungerar inte: Utan korrekt zonfil laddas inte tjänsten eller svarar fel.
 Åtgärd: Skapat och testat lokal zon med dig, nslookup, samt lagt till Google som forwarder.
→ Se [DNS-konfiguration](./dns.md)