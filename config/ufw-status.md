Status: active
Logging: on (low)
Default: deny (incoming), allow (outgoing), deny (routed)
New profiles: skip

To                         Action      From
--                         ------      ----
22/tcp                     ALLOW IN    Anywhere                  
80/tcp                     ALLOW IN    Anywhere                  
10050/tcp                  ALLOW IN    Anywhere                  
67/udp                     ALLOW IN    Anywhere                  
53                         ALLOW IN    Anywhere                  
68/udp                     ALLOW IN    Anywhere                  
22/tcp (v6)                ALLOW IN    Anywhere (v6)             
80/tcp (v6)                ALLOW IN    Anywhere (v6)             
10050/tcp (v6)             ALLOW IN    Anywhere (v6)             
67/udp (v6)                ALLOW IN    Anywhere (v6)             
53 (v6)                    ALLOW IN    Anywhere (v6)             
68/udp (v6)                ALLOW IN    Anywhere (v6)             

