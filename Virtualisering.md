### Design och nätverksarkitektur
I denna uppgift använder jag Ubuntu 24.04 Desktop som server.
Anledningen är att det är mer användarvänligt och trevligare att arbeta i än Ubuntu Server, särskilt under ett praktiskt arbete där GUI ibland förenklar felsökning och hantering.
Hade jag valt Ubuntu Server hade jag ändå lagt till ett skrivbordsgränssnitt (GUI) för att minska risken för problem under installation och konfiguration.

Alla virtuella maskiner körs i Windows Hyper-V.

Nätverk och switchar
För att ge servern internetåtkomst utan att riskera att påverka mitt riktiga nätverk använder jag Hyper-V:s Default Switch. Den ger internetåtkomst men är helt isolerad från det fysiska nätverket, vilket gör det säkert att experimentera.

För kommunikationen mellan servern och klienten använder jag en Internal Switch, vilket innebär att endast de virtuella maskinerna kan prata med varandra via detta gränssnitt.

Min server använder därmed två nätverkskort:

- eth0 – kopplad till Internal Switch (kommunikation med klient)

- eth1 – kopplad till Default Switch (internetåtkomst för servern)

Det här upplägget gör det enkelt att kontrollera trafiken och att se till att klienten endast når internet via servern, vilket är en viktig del av uppgiften.