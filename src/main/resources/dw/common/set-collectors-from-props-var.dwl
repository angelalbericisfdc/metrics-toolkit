%dw 2.0
output application/java
var collectors = if (isEmpty(Mule::p("collectors"))) ["all"] else (Mule::p("collectors") as String splitBy ",")
---
(if (collectors contains "all") 
["ap","apc","apm","arm","core","dc","ex","amq","apma","ch","rtf"]
else 
collectors)
-- (if (vars.isPCE) ["ch","rtf","apma","amq"] else [])
-- (if (vars.isGovCloud) ["rtf","apma","arm"] else [])
-- (if (vars.authMode == 'connected-app-credentials') ["apc", "amq"] else [])