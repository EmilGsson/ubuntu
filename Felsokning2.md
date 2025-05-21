Absolut Emil! Här kommer en omskriven version som passar som en liten **felsökningsrapport**, redo att kopieras in i dokumentationen:

---

### 7.1 Felsökningsrapport – Internetförbindelse förlorad efter omstart

#### 🔍 Problem

Efter att Ubuntu-servern startades om upptäcktes att Windows-klienten inte längre hade åtkomst till internet, trots att den fortfarande fick IP-adress och DNS via DHCP från Ubuntu-servern.

####  Symptom

Vid ping-försök från Windows till exempelvis `8.8.8.8` visades felmeddelandet:

```
Destination net unreachable
```

####  Orsak

Problemet spårades till att **Ubuntu-serverns interface `eth1` saknade IP-adress** efter omstart. Detta interface är anslutet till Hyper-V\:s NAT-baserade **Default Switch**, som används för att ge Ubuntu tillgång till internet. Eftersom `eth1` inte var definierad i nätverkskonfigurationen (Netplan), blev det inaktivt vid uppstart.

####  Åtgärd

Konfigurationsfilen `/etc/netplan/50-cloud-init.yaml` modifierades för att inkludera interface `eth1` med DHCP aktiverat:

```yaml
network:
  version: 2
  ethernets:
    eth0:
      addresses:
        - 10.99.2.10/24
      gateway4: 10.99.2.10
      nameservers:
        search: [emil2.local]
        addresses: [10.99.2.10, 8.8.8.8]
    eth1:
      dhcp4: yes
```

Ändringen tillämpades med:

```bash
sudo netplan apply
```

Därefter bekräftades att `eth1` fått IP-adress från Hyper-V\:s Default Switch genom kommandot:

```bash
ip a
```

####  Resultat

Efter uppdateringen fick `eth1` en korrekt IP-adress och Ubuntu-servern kunde åter nå internet. Detta återställde även NAT-funktionen, vilket gjorde att Windows-klienten kunde nå internet igen.

---

Vill du att jag kopierar in detta i dokumentet också eller vill du klistra in det manuellt under Felsökning?
