2.1 Virtualisering och nätverksstruktur
I detta projekt används Hyper-V som virtualiseringsplattform på en Windows 11-värd. Två virtuella maskiner har skapats:

-  Ubuntu 24.04 – fungerar som huvudserver.

-  Windows-klient – används för att simulera en vanlig användare i nätverket.

Servern är utrustad med två virtuella nätverkskort:

eth0 är kopplad till en intern switch (Internal Switch) som skapar ett separat, isolerat nätverk mellan servern och klienten.

eth1 är kopplad till Default Switch, vilket ger servern tillgång till internet utan att påverka det lokala nätverket.

Denna uppdelning säkerställer att trafik mellan klient och server är helt isolerad från det vanliga hemnätverket, samtidigt som servern kan hämta paket och uppdateringar från internet.