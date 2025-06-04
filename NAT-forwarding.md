### 4.6 NAT-konfiguration

För att ge Windows-klienten åtkomst till internet genom Ubuntu-servern, har NAT aktiverats.

Konfiguration:

```bash
sudo iptables -t nat -A POSTROUTING -s 10.99.2.0/24 -o eth1 -j MASQUERADE
```

Detta innebär att all trafik från det interna nätverket (klienterna) maskeras och skickas ut via serverns externa gränssnitt (eth1). Servern fungerar som gateway.

IP-forwarding har aktiverats i `/etc/sysctl.conf` genom att avkommentera raden:

```
net.ipv4.ip_forward=1
```

Och körts med:

```bash
sudo sysctl -p
```





Configuration [NAT](./config/named.conf.options.mdnamed.conf.options.md)
