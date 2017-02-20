Function trigger-apiCall {
    Param([Parameter(Mandatory=$false,Position=1)]
            [String]$hostToUse = $MYserver,
            [Parameter(Mandatory=$false,Position=2)]
            [String]$listenPort = $MYport,
            [Parameter(Mandatory=$false,Position=3)]
            [String]$apiVer = "v1",
            [Parameter(Mandatory=$true,Position=4)]
            [String]$node = "coSpaces",
            [Parameter(Mandatory=$false,Position=5)]
            [System.Security.Cryptography.X509Certificates.X509Certificate]$certToUse = $MYcert,
            [Parameter(Mandatory=$false,Position=6)]
            [String]$methodAccess="GET",
            [Parameter(Mandatory=$false,Position=7)]
            [PSCredential]$theCredential = $MYcreds,
            [Parameter(Mandatory=$false,Position=8)]
            [String]$filtCriteria = $null,
            [Parameter(Mandatory=$false,Position=9)]
            [String]$offset = $null,
            [Parameter(Mandatory=$false,Position=10)]
            [String]$limit = $null,
            [Parameter(Mandatory=$false,Position=11)]
            [Object]$reqBody = $null
          )

          
          
##  if((($filtCriteria -eq $null) -and ($offset -eq $null)) -and ($limit -eq $null))
          if($filtCriteria.Length -eq 0 -and ($limit.Length -eq0 -and $offset.Length -eq 0)) {
            $x = Invoke-RestMethod -Uri https://${hostToUse}:${listenPort}/api/${apiVer}/${node} -method ${methodAccess} -Body $reqBody -Credential ${theCredential} -Certificate $certToUse
          }
          elseif(($offset.Length -eq 0) -and ($limit.Length -eq 0)) {
                $x = Invoke-RestMethod -Uri https://${hostToUse}:${listenPort}/api/${apiVer}/${node}?filter=${filtCriteria} -method ${methodAccess} -Credential ${theCredential} -Certificate $certToUse
          }
          elseif($offset.Length -eq 0) {
            $reqBody = @{"filter" = $filtCriteria; "limit" = $limit}
            $x = Invoke-RestMethod -Uri https://${hostToUse}:${listenPort}/api/${apiVer}/${node} -Body $reqBody -method ${methodAccess} -Credential ${theCredential} -Certificate $certToUse
          }
          elseif($offset.Length -gt 0 -and $filtCriteria.Length -gt 0) {
            $reqBody = @{"filter" = $filtCriteria; "offset" = $offset}
            $x = Invoke-RestMethod -Uri https://${hostToUse}:${listenPort}/api/${apiVer}/${node} -Body $reqBody -method ${methodAccess} -Credential ${theCredential} -Certificate $certToUse
          }
          elseif($limit.Length -gt 0 -and $filtCriteria.Length -gt 0 ) {
            $reqBody = @{"filter" = $filtCriteria; "limit" = $limit}
            $x = Invoke-RestMethod -Uri https://${hostToUse}:${listenPort}/api/${apiVer}/${node} -Body $reqBody -method ${methodAccess} -Credential ${theCredential} -Certificate $certToUse           
          }
          elseif($offset.Length -gt 0 -and ($filtCriteria.Length -eq 0 -and $limit.Length -eq 0)) {
            $reqBody = @{"offset" = $offset}
            $x = Invoke-RestMethod -Uri https://${hostToUse}:${listenPort}/api/${apiVer}/${node} -Body $reqBody -method ${methodAccess} -Credential ${theCredential} -Certificate $certToUse

          }
   
         Write-Output $x
         ## Write-Output $filtCriteria.Length
}

##
##
##
##
##
##
##
Function get-CmsSpaces {
    Param([Parameter(Mandatory=$false,Position=1)]
            [String]$servingHost = $MYserver,
            [Parameter(Mandatory=$false,Position=2)]
            [String]$servingPort = $MYport,
            [Parameter(Mandatory=$false,Position=3)]
            [String]$apiObject="coSpaces",
            [Parameter(Mandatory=$false,Position=4)]
            [System.Security.Cryptography.X509Certificates.X509Certificate]$certObject = $MYcert,
            [Parameter(Mandatory=$false,Position=5)]
            [String]$filtCriteria = $null,
            [Parameter(Mandatory=$false,Position=6)]
            [String]$offset = $null,
            [Parameter(Mandatory=$false,Position=7)]
            [String]$limit = $null
    )
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -certToUse $certObject -filtCriteria $filtCriteria -offset $offset -limit $limit
       Write-Output $y
}
Set-Alias get-CmsCoSpaces get-CmsSpaces
Set-Alias get-CmsTeamSpaces get-CmsSpaces
Set-Alias get-CmsVmrs get-CmsSpaces

##
##
##
##
##
##
##
Function get-CmsCallLegProfiles {
    Param([Parameter(Mandatory=$false,Position=1)]
            [String]$servingHost = $MYserver,
            [Parameter(Mandatory=$false,Position=2)]
            [String]$servingPort = $myport,
            [Parameter(Mandatory=$false,Position=3)]
            [String]$apiObject = "callLegProfiles",
            [Parameter(Mandatory=$false,Position=4)]
            [System.Security.Cryptography.X509Certificates.X509Certificate]$certObject = $MYcert,
            [Parameter(Mandatory=$false,Position=5)]
            [String]$filtCriteria = $null,
            [Parameter(Mandatory=$false,Position=6)]
            [String]$offset = $null,
            [Parameter(Mandatory=$false,Position=7)]
            [String]$limit = $null
    )
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -certToUse $certObject -filtCriteria $filtCriteria -offset $offset -limit $limit
       Write-Output $y
}

##
##
##
##
##
##
##
Function get-CmsTenants {
    Param([Parameter(Mandatory=$false,Position=1)][String]$servingHost = $MYserver,
            [Parameter(Mandatory=$false,Position=2)][String]$servingPort = $MYport,
            [Parameter(Mandatory=$false,Position=3)][String]$apiObject="tenants",
            [Parameter(Mandatory=$false,Position=4)]
            [System.Security.Cryptography.X509Certificates.X509Certificate]$certObject = $MYcert,
            [Parameter(Mandatory=$false,Position=5)]
            [String]$filtCriteria = $null,
            [Parameter(Mandatory=$false,Position=6)]
            [String]$offset = $null,
            [Parameter(Mandatory=$false,Position=7)]
            [String]$limit = $null
    )
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -certToUse $certObject -filtCriteria $filtCriteria -offset $offset -limit $limit
       Write-Output $y
}

##
##
##
##
##
##
##
Function get-CmsCallBrandingProfiles {
    Param([Parameter(Mandatory=$false,Position=1)][String]$servingHost = $MYserver,
            [Parameter(Mandatory=$false,Position=2)][String]$servingPort = $MYport,
            [Parameter(Mandatory=$false,Position=3)][String]$apiObject = "callBrandingProfiles",
            [Parameter(Mandatory=$false,Position=4)]
            [System.Security.Cryptography.X509Certificates.X509Certificate]$certObject = $MYcert,
            [Parameter(Mandatory=$false,Position=5)]
            [String]$filtCriteria = $null,
            [Parameter(Mandatory=$false,Position=6)]
            [String]$offset = $null,
            [Parameter(Mandatory=$false,Position=7)]
            [String]$limit = $null
    )
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -certToUse $certObject -filtCriteria $filtCriteria -offset $offset -limit $limit
       Write-Output $y
}

##
##
##
##
##
##
##
Function get-CmsIvrBrandingProfiles {
    Param([Parameter(Mandatory=$false,Position=1)][String]$servingHost = $MYserver,
            [Parameter(Mandatory=$false,Position=2)][String]$servingPort = $MYport,
            [Parameter(Mandatory=$false,Position=3)][String]$apiObject="ivrBrandingProfiles",
            [Parameter(Mandatory=$false,Position=4)]
            [System.Security.Cryptography.X509Certificates.X509Certificate]$certObject = $MYcert,
            [Parameter(Mandatory=$false,Position=5)]
            [String]$filtCriteria = $null,
            [Parameter(Mandatory=$false,Position=6)]
            [String]$offset = $null,
            [Parameter(Mandatory=$false,Position=7)]
            [String]$limit = $null
    )
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -certToUse $certObject -filtCriteria $filtCriteria -offset $offset -limit $limit
       Write-Output $y
}


##
##
##
##
##
##
##
Function get-CmsCallProfiles {
    Param([Parameter(Mandatory=$false,Position=1)][String]$servingHost = $MYserver,
            [Parameter(Mandatory=$false,Position=2)][String]$servingPort = $MYport,
            [Parameter(Mandatory=$false,Position=3)][String]$apiObject = "callProfiles",
            [Parameter(Mandatory=$false,Position=4)]
            [System.Security.Cryptography.X509Certificates.X509Certificate]$certObject = $MYcert,
            [Parameter(Mandatory=$false,Position=5)]
            [String]$filtCriteria = $null,
            [Parameter(Mandatory=$false,Position=6)]
            [String]$offset = $null,
            [Parameter(Mandatory=$false,Position=7)]
            [String]$limit = $null
    )
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -certToUse $certObject -filtCriteria $filtCriteria -offset $offset -limit $limit
       Write-Output $y
}

##
##
##
##
##
##
##
Function get-CmsLdapSources {
    Param([Parameter(Mandatory=$false,Position=1)][String]$servingHost = $MYserver,
            [Parameter(Mandatory=$false,Position=2)][String]$servingPort = $MYport,
            [Parameter(Mandatory=$false,Position=3)][String]$apiObject = "ldapSources",
            [Parameter(Mandatory=$false,Position=4)]
            [System.Security.Cryptography.X509Certificates.X509Certificate]$certObject = $MYcert,
            [Parameter(Mandatory=$false,Position=5)]
            [String]$filtCriteria = $null,
            [Parameter(Mandatory=$false,Position=6)]
            [String]$offset = $null,
            [Parameter(Mandatory=$false,Position=7)]
            [String]$limit = $null
    )
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -certToUse $certObject -filtCriteria $filtCriteria -offset $offset -limit $limit
       Write-Output $y
}

##
##
##
##
##
##
##
Function get-CmsLdapServers {
    Param([Parameter(Mandatory=$false,Position=1)][String]$servingHost = $MYserver,
            [Parameter(Mandatory=$false,Position=2)][String]$servingPort = $MYport,
            [Parameter(Mandatory=$false,Position=3)][String]$apiObject = "ldapServers",
            [Parameter(Mandatory=$false,Position=4)]
            [System.Security.Cryptography.X509Certificates.X509Certificate]$certObject = $MYcert,
            [Parameter(Mandatory=$false,Position=5)]
            [String]$filtCriteria = $null,
            [Parameter(Mandatory=$false,Position=6)]
            [String]$offset = $null,
            [Parameter(Mandatory=$false,Position=7)]
            [String]$limit = $null
    )
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -certToUse $certObject -filtCriteria $filtCriteria -offset $offset -limit $limit
       Write-Output $y
}

##
##
##
##
##
##
##
Function get-CmsLdapMappings {
    Param([Parameter(Mandatory=$false,Position=1)][String]$servingHost = $MYserver,
            [Parameter(Mandatory=$false,Position=2)][String]$servingPort = $MYport,
            [Parameter(Mandatory=$false,Position=3)][String]$apiObject = "ldapMappings",
            [Parameter(Mandatory=$false,Position=4)]
            [System.Security.Cryptography.X509Certificates.X509Certificate]$certObject = $MYcert,
            [Parameter(Mandatory=$false,Position=5)]
            [String]$filtCriteria = $null,
            [Parameter(Mandatory=$false,Position=6)]
            [String]$offset = $null,
            [Parameter(Mandatory=$false,Position=7)]
            [String]$limit = $null
    )
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -certToUse $certObject -filtCriteria $filtCriteria -offset $offset -limit $limit
       Write-Output $y
}

##
##
##
##
##
##
##
Function get-CmsLdapSyncs {
    Param([Parameter(Mandatory=$false,Position=1)][String]$servingHost = $MYserver,
            [Parameter(Mandatory=$false,Position=2)][String]$servingPort = $MYport,
            [Parameter(Mandatory=$false,Position=3)][String]$apiObject = "ldapSyncs",
            [Parameter(Mandatory=$false,Position=4)]
            [System.Security.Cryptography.X509Certificates.X509Certificate]$certObject = $MYcert,
            [Parameter(Mandatory=$false,Position=5)]
            [String]$filtCriteria = $null,
            [Parameter(Mandatory=$false,Position=6)]
            [String]$offset = $null,
            [Parameter(Mandatory=$false,Position=7)]
            [String]$limit = $null
    )
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -certToUse $certObject -filtCriteria $filtCriteria -offset $offset -limit $limit
       Write-Output $y
}

##
##
##
##
##
##
##
Function get-CmsIvrs {
    Param([Parameter(Mandatory=$false,Position=1)][String]$servingHost = $MYserver,
            [Parameter(Mandatory=$false,Position=2)][String]$servingPort = $MYport,
            [Parameter(Mandatory=$false,Position=3)][String]$apiObject = "ivrs",
            [Parameter(Mandatory=$false,Position=4)]
            [System.Security.Cryptography.X509Certificates.X509Certificate]$certObject = $MYcert,
            [Parameter(Mandatory=$false,Position=5)]
            [String]$filtCriteria = $null,
            [Parameter(Mandatory=$false,Position=6)]
            [String]$offset = $null,
            [Parameter(Mandatory=$false,Position=7)]
            [String]$limit = $null
    )
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -certToUse $certObject -filtCriteria $filtCriteria -offset $offset -limit $limit
       Write-Output $y
}

##
##
##
##
##
##
##
Function get-CmsRecorders {
    Param([Parameter(Mandatory=$false,Position=1)][String]$servingHost = $MYserver,
            [Parameter(Mandatory=$false,Position=2)][String]$servingPort = $MYport,
            [Parameter(Mandatory=$false,Position=3)][String]$apiObject = "recorders",
            [Parameter(Mandatory=$false,Position=4)]
            [System.Security.Cryptography.X509Certificates.X509Certificate]$certObject = $MYcert,
            [Parameter(Mandatory=$false,Position=5)]
            [String]$filtCriteria = $null,
            [Parameter(Mandatory=$false,Position=6)]
            [String]$offset = $null,
            [Parameter(Mandatory=$false,Position=7)]
            [String]$limit = $null
    )
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -certToUse $certObject -filtCriteria $filtCriteria -offset $offset -limit $limit
       Write-Output $y
}

##
##
##
##
##
##
##
Function get-CmsSystemProfile {
    Param([Parameter(Mandatory=$false,Position=1)][String]$servingHost = $MYserver,
            [Parameter(Mandatory=$false,Position=2)][String]$servingPort = $MYport,
            [Parameter(Mandatory=$false,Position=3)][String]$apiObject = "system/profiles",
            [Parameter(Mandatory=$false,Position=4)]
            [System.Security.Cryptography.X509Certificates.X509Certificate]$certObject = $MYcert,
            [Parameter(Mandatory=$false,Position=5)]
            [String]$filtCriteria = $null,
            [Parameter(Mandatory=$false,Position=6)]
            [String]$offset = $null,
            [Parameter(Mandatory=$false,Position=7)]
            [String]$limit = $null
    )
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -certToUse $certObject -filtCriteria $filtCriteria -offset $offset -limit $limit
       Write-Output $y
}

##
##
##
##
##
##
##
Function get-CmsOutboundDialPlanRules {
    Param([Parameter(Mandatory=$false,Position=1)][String]$servingHost = $MYserver,
            [Parameter(Mandatory=$false,Position=2)][String]$servingPort = $MYport,
            [Parameter(Mandatory=$false,Position=3)][String]$apiObject = "outboundDialPlanRules",
            [Parameter(Mandatory=$false,Position=4)]
            [System.Security.Cryptography.X509Certificates.X509Certificate]$certObject = $MYcert,
            [Parameter(Mandatory=$false,Position=5)]
            [String]$filtCriteria = $null,
            [Parameter(Mandatory=$false,Position=6)]
            [String]$offset = $null,
            [Parameter(Mandatory=$false,Position=7)]
            [String]$limit = $null
    )
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -certToUse $certObject -filtCriteria $filtCriteria -offset $offset -limit $limit
       Write-Output $y
}

##
##
##
##
##
##
##
Function get-CmsInboundDialPlanRules {
    Param([Parameter(Mandatory=$false,Position=1)][String]$servingHost = $MYserver,
            [Parameter(Mandatory=$false,Position=2)][String]$servingPort = $MYport,
            [Parameter(Mandatory=$false,Position=3)][String]$apiObject = "inboundDialPlanRules",
            [Parameter(Mandatory=$false,Position=4)]
            [System.Security.Cryptography.X509Certificates.X509Certificate]$certObject = $MYcert,
            [Parameter(Mandatory=$false,Position=5)]
            [String]$filtCriteria = $null,
            [Parameter(Mandatory=$false,Position=6)]
            [String]$offset = $null,
            [Parameter(Mandatory=$false,Position=7)]
            [String]$limit = $null
    )
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -certToUse $certObject -filtCriteria $filtCriteria -offset $offset -limit $limit
       Write-Output $y
}

##
##
##
##
##
##
##
Function get-CmsForwardingDialPlanRules {
    Param([Parameter(Mandatory=$false,Position=1)][String]$servingHost = $MYserver,
            [Parameter(Mandatory=$false,Position=2)][String]$servingPort = $MYport,
            [Parameter(Mandatory=$false,Position=3)][String]$apiObject = "forwardingDialPlanRules",
            [Parameter(Mandatory=$false,Position=4)]
            [System.Security.Cryptography.X509Certificates.X509Certificate]$certObject = $MYcert,
            [Parameter(Mandatory=$false,Position=5)]
            [String]$filtCriteria = $null,
            [Parameter(Mandatory=$false,Position=6)]
            [String]$offset = $null,
            [Parameter(Mandatory=$false,Position=7)]
            [String]$limit = $null
    )
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -certToUse $certObject -filtCriteria $filtCriteria -offset $offset -limit $limit
       Write-Output $y
}

##
##
##
##
##
##
##
Function get-CmsCalls {
    Param([Parameter(Mandatory=$false,Position=1)][String]$servingHost = $MYserver,
            [Parameter(Mandatory=$false,Position=2)][String]$servingPort = $MYport,
            [Parameter(Mandatory=$false,Position=3)][String]$apiObject = "calls",
            [Parameter(Mandatory=$false,Position=4)]
            [System.Security.Cryptography.X509Certificates.X509Certificate]$certObject = $MYcert,
            [Parameter(Mandatory=$false,Position=5)]
            [String]$filtCriteria = $null,
            [Parameter(Mandatory=$false,Position=6)]
            [String]$offset = $null,
            [Parameter(Mandatory=$false,Position=7)]
            [String]$limit = $null
    )
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -certToUse $certObject -filtCriteria $filtCriteria -offset $offset -limit $limit
       Write-Output $y
}

##
##
##
##
##
##
##
Function get-CmsCallLegs {
    Param([Parameter(Mandatory=$false,Position=1)][String]$servingHost = $MYserver,
            [Parameter(Mandatory=$false,Position=2)][String]$servingPort = $MYport,
            [Parameter(Mandatory=$false,Position=3)][String]$apiObject = "callLegs",
            [Parameter(Mandatory=$false,Position=4)]
            [System.Security.Cryptography.X509Certificates.X509Certificate]$certObject = $MYcert,
            [Parameter(Mandatory=$false,Position=5)]
            [String]$filtCriteria = $null,
            [Parameter(Mandatory=$false,Position=6)]
            [String]$offset = $null,
            [Parameter(Mandatory=$false,Position=7)]
            [String]$limit = $null
    )
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -certToUse $certObject -filtCriteria $filtCriteria -offset $offset -limit $limit
       Write-Output $y
}

##
##
##
##
##
##
##
Function get-CmsDialTransforms {
    Param([Parameter(Mandatory=$false,Position=1)][String]$servingHost = $MYserver,
            [Parameter(Mandatory=$false,Position=2)][String]$servingPort = $MYport,
            [Parameter(Mandatory=$false,Position=3)][String]$apiObject = "dialTransforms",
            [Parameter(Mandatory=$false,Position=4)]
            [System.Security.Cryptography.X509Certificates.X509Certificate]$certObject = $MYcert,
            [Parameter(Mandatory=$false,Position=5)]
            [String]$filtCriteria = $null,
            [Parameter(Mandatory=$false,Position=6)]
            [String]$offset = $null,
            [Parameter(Mandatory=$false,Position=7)]
            [String]$limit = $null
    )
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -certToUse $certObject -filtCriteria $filtCriteria -offset $offset -limit $limit
       Write-Output $y
}

##
##
##
##
##
##
##
Function get-CmsDtmfProfiles {
    Param([Parameter(Mandatory=$false,Position=1)][String]$servingHost = $MYserver,
            [Parameter(Mandatory=$false,Position=2)][String]$servingPort = $MYport,
            [Parameter(Mandatory=$false,Position=3)][String]$apiObject = "dtmfProfiles",
            [Parameter(Mandatory=$false,Position=4)]
            [System.Security.Cryptography.X509Certificates.X509Certificate]$certObject = $MYcert,
            [Parameter(Mandatory=$false,Position=5)]
            [String]$filtCriteria = $null,
            [Parameter(Mandatory=$false,Position=6)]
            [String]$offset = $null,
            [Parameter(Mandatory=$false,Position=7)]
            [String]$limit = $null
    )
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -certToUse $certObject -filtCriteria $filtCriteria -offset $offset -limit $limit
       Write-Output $y
}

##
##
##
##
##
##
##
Function get-CmsParticipants {
    Param([Parameter(Mandatory=$false,Position=1)][String]$servingHost = $MYserver,
            [Parameter(Mandatory=$false,Position=2)][String]$servingPort = $MYport,
            [Parameter(Mandatory=$false,Position=3)][String]$apiObject = "participants",
            [Parameter(Mandatory=$false,Position=4)]
            [System.Security.Cryptography.X509Certificates.X509Certificate]$certObject = $MYcert,
            [Parameter(Mandatory=$false,Position=5)]
            [String]$filtCriteria = $null,
            [Parameter(Mandatory=$false,Position=6)]
            [String]$offset = $null,
            [Parameter(Mandatory=$false,Position=7)]
            [String]$limit = $null
    )
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -certToUse $certObject -filtCriteria $filtCriteria -offset $offset -limit $limit
       Write-Output $y
}

##
##
##
##
##
##
##
Function get-CmsUsers {
    Param([Parameter(Mandatory=$false,Position=1)][String]$servingHost = $MYserver,
            [Parameter(Mandatory=$false,Position=2)][String]$servingPort = $MYport,
            [Parameter(Mandatory=$false,Position=3)][String]$apiObject = "users",
            [Parameter(Mandatory=$false,Position=4)]
            [System.Security.Cryptography.X509Certificates.X509Certificate]$certObject = $MYcert,
            [Parameter(Mandatory=$false,Position=5)]
            [String]$filtCriteria = $null,
            [Parameter(Mandatory=$false,Position=6)]
            [String]$offset = $null,
            [Parameter(Mandatory=$false,Position=7)]
            [String]$limit = $null
    )
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -certToUse $certObject -filtCriteria $filtCriteria -offset $offset -limit $limit
       Write-Output $y
}

##
##
##
##
##
##
##
Function get-CmsUserProfiles {
    Param([Parameter(Mandatory=$false,Position=1)][String]$servingHost = $MYserver,
            [Parameter(Mandatory=$false,Position=2)][String]$servingPort = $MYport,
            [Parameter(Mandatory=$false,Position=3)][String]$apiObject = "ldapSyncs",
            [Parameter(Mandatory=$false,Position=4)]
            [System.Security.Cryptography.X509Certificates.X509Certificate]$certObject = $MYcert,
            [Parameter(Mandatory=$false,Position=5)]
            [String]$filtCriteria = $null,
            [Parameter(Mandatory=$false,Position=6)]
            [String]$offset = $null,
            [Parameter(Mandatory=$false,Position=7)]
            [String]$limit = $null
    )
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -certToUse $certObject -filtCriteria $filtCriteria -offset $offset -limit $limit
       Write-Output $y
}

##
##
##
##
##
##
##
Function get-CmsSystemStatus {
    Param([Parameter(Mandatory=$false,Position=1)][String]$servingHost = $MYserver,
            [Parameter(Mandatory=$false,Position=2)][String]$servingPort = $MYport,
            [Parameter(Mandatory=$false,Position=3)][String]$apiObject = "system/status",
            [Parameter(Mandatory=$false,Position=4)]
            [System.Security.Cryptography.X509Certificates.X509Certificate]$certObject = $MYcert,
            [Parameter(Mandatory=$false,Position=5)]
            [String]$filtCriteria = $null,
            [Parameter(Mandatory=$false,Position=6)]
            [String]$offset = $null,
            [Parameter(Mandatory=$false,Position=7)]
            [String]$limit = $null
    )
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -certToUse $certObject -filtCriteria $filtCriteria -offset $offset -limit $limit
       Write-Output $y
}

##
##
##
##
##
##
##
Function get-CmsSystemAlarms {
    Param([Parameter(Mandatory=$false,Position=1)][String]$servingHost = $MYserver,
            [Parameter(Mandatory=$false,Position=2)][String]$servingPort = $MYport,
            [Parameter(Mandatory=$false,Position=3)][String]$apiObject = "system/alarms",
            [Parameter(Mandatory=$false,Position=4)]
            [System.Security.Cryptography.X509Certificates.X509Certificate]$certObject = $MYcert,
            [Parameter(Mandatory=$false,Position=5)]
            [String]$filtCriteria = $null,
            [Parameter(Mandatory=$false,Position=6)]
            [String]$offset = $null,
            [Parameter(Mandatory=$false,Position=7)]
            [String]$limit = $null
    )
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -certToUse $certObject -filtCriteria $filtCriteria -offset $offset -limit $limit
       Write-Output $y
}

##
##
##
##
##
##
##
Function get-CmsSystemDatabase {
    Param([Parameter(Mandatory=$false,Position=1)][String]$servingHost = $MYserver,
            [Parameter(Mandatory=$false,Position=2)][String]$servingPort = $MYport,
            [Parameter(Mandatory=$false,Position=3)][String]$apiObject = "system/database",
            [Parameter(Mandatory=$false,Position=4)]
            [System.Security.Cryptography.X509Certificates.X509Certificate]$certObject = $MYcert,
            [Parameter(Mandatory=$false,Position=5)]
            [String]$filtCriteria = $null,
            [Parameter(Mandatory=$false,Position=6)]
            [String]$offset = $null,
            [Parameter(Mandatory=$false,Position=7)]
            [String]$limit = $null
    )
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -certToUse $certObject -filtCriteria $filtCriteria -offset $offset -limit $limit
       Write-Output $y
}

##
##
##
##
##
##
##
Function get-CmsSystemCdrReceivers {
    Param([Parameter(Mandatory=$false,Position=1)][String]$servingHost = $MYserver,
            [Parameter(Mandatory=$false,Position=2)][String]$servingPort = $MYport,
            [Parameter(Mandatory=$false,Position=3)][String]$apiObject = "system/cdrReceivers",
            [Parameter(Mandatory=$false,Position=4)]
            [System.Security.Cryptography.X509Certificates.X509Certificate]$certObject = $MYcert,
            [Parameter(Mandatory=$false,Position=5)]
            [String]$filtCriteria = $null,
            [Parameter(Mandatory=$false,Position=6)]
            [String]$offset = $null,
            [Parameter(Mandatory=$false,Position=7)]
            [String]$limit = $null
    )
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -certToUse $certObject -filtCriteria $filtCriteria -offset $offset -limit $limit
       Write-Output $y
}

##
##
##
##
##
##
##
Function get-CmsSystemLicensing {
    Param([Parameter(Mandatory=$false,Position=1)][String]$servingHost = $MYserver,
            [Parameter(Mandatory=$false,Position=2)][String]$servingPort = $MYport,
            [Parameter(Mandatory=$false,Position=3)][String]$apiObject = "system/licensing",
            [Parameter(Mandatory=$false,Position=4)]
            [System.Security.Cryptography.X509Certificates.X509Certificate]$certObject = $MYcert,
            [Parameter(Mandatory=$false,Position=5)]
            [String]$filtCriteria = $null,
            [Parameter(Mandatory=$false,Position=6)]
            [String]$offset = $null,
            [Parameter(Mandatory=$false,Position=7)]
            [String]$limit = $null
    )
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -certToUse $certObject -filtCriteria $filtCriteria -offset $offset -limit $limit
       Write-Output $y
}

##
##
##
##
##
##
##
Function get-CmsSystemMultiPartyLicensing {
    Param([Parameter(Mandatory=$false,Position=1)][String]$servingHost = $MYserver,
            [Parameter(Mandatory=$false,Position=2)][String]$servingPort = $MYport,
            [Parameter(Mandatory=$false,Position=3)][String]$apiObject = "system/multiPartyLicensing",
            [Parameter(Mandatory=$false,Position=4)]
            [System.Security.Cryptography.X509Certificates.X509Certificate]$certObject = $MYcert,
            [Parameter(Mandatory=$false,Position=5)]
            [String]$filtCriteria = $null,
            [Parameter(Mandatory=$false,Position=6)]
            [String]$offset = $null,
            [Parameter(Mandatory=$false,Position=7)]
            [String]$limit = $null
    )
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -certToUse $certObject -filtCriteria $filtCriteria -offset $offset -limit $limit
       Write-Output $y
}

##
##
##
##
##
##
##
Function get-CmsMultiPartyLicensingActivePersonalLicensing {
    Param([Parameter(Mandatory=$false,Position=1)][String]$servingHost = $MYserver,
            [Parameter(Mandatory=$false,Position=2)][String]$servingPort = $MYport,
            [Parameter(Mandatory=$false,Position=3)][String]$apiObject = "system/MultiPartyLicensing/activePersonalLicensing",
            [Parameter(Mandatory=$false,Position=4)]
            [System.Security.Cryptography.X509Certificates.X509Certificate]$certObject = $MYcert,
            [Parameter(Mandatory=$false,Position=5)]
            [String]$filtCriteria = $null,
            [Parameter(Mandatory=$false,Position=6)]
            [String]$offset = $null,
            [Parameter(Mandatory=$false,Position=7)]
            [String]$limit = $null
    )
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -certToUse $certObject -filtCriteria $filtCriteria -offset $offset -limit $limit
       Write-Output $y
}

##
##
##
##
##
##
##
Function get-CmsTurnServers {
    Param([Parameter(Mandatory=$false,Position=1)][String]$servingHost = $MYserver,
            [Parameter(Mandatory=$false,Position=2)][String]$servingPort = $MYport,
            [Parameter(Mandatory=$false,Position=3)][String]$apiObject = "turnServers",
            [Parameter(Mandatory=$false,Position=4)]
            [System.Security.Cryptography.X509Certificates.X509Certificate]$certObject = $MYcert,
            [Parameter(Mandatory=$false,Position=5)]
            [String]$filtCriteria = $null,
            [Parameter(Mandatory=$false,Position=6)]
            [String]$offset = $null,
            [Parameter(Mandatory=$false,Position=7)]
            [String]$limit = $null
    )
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -certToUse $certObject -filtCriteria $filtCriteria -offset $offset -limit $limit
       Write-Output $y
}

##
##
##
##
##
##
##
Function get-CmsWebBridges {
    Param([Parameter(Mandatory=$false,Position=1)][String]$servingHost = $MYserver,
            [Parameter(Mandatory=$false,Position=2)][String]$servingPort = $MYport,
            [Parameter(Mandatory=$false,Position=3)][String]$apiObject = "webBridges",
            [Parameter(Mandatory=$false,Position=4)]
            [System.Security.Cryptography.X509Certificates.X509Certificate]$certObject = $MYcert,
            [Parameter(Mandatory=$false,Position=5)]
            [String]$filtCriteria = $null,
            [Parameter(Mandatory=$false,Position=6)]
            [String]$offset = $null,
            [Parameter(Mandatory=$false,Position=7)]
            [String]$limit = $null
    )
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -certToUse $certObject -filtCriteria $filtCriteria -offset $offset -limit $limit
       Write-Output $y
}

##
##
##
##
##
##
##
Function get-CmsCallBridges {
    Param([Parameter(Mandatory=$false,Position=1)][String]$servingHost = $MYserver,
            [Parameter(Mandatory=$false,Position=2)][String]$servingPort = $MYport,
            [Parameter(Mandatory=$false,Position=3)][String]$apiObject = "callBridges",
            [Parameter(Mandatory=$false,Position=4)]
            [System.Security.Cryptography.X509Certificates.X509Certificate]$certObject = $MYcert,
            [Parameter(Mandatory=$false,Position=5)]
            [String]$filtCriteria = $null,
            [Parameter(Mandatory=$false,Position=6)]
            [String]$offset = $null,
            [Parameter(Mandatory=$false,Position=7)]
            [String]$limit = $null
    )
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -certToUse $certObject -filtCriteria $filtCriteria -offset $offset -limit $limit
       Write-Output $y
}

##
##
##
##
##
##
##
Function get-CmsXmpp {
    Param([Parameter(Mandatory=$false,Position=1)][String]$servingHost = $MYserver,
            [Parameter(Mandatory=$false,Position=2)][String]$servingPort = $MYport,
            [Parameter(Mandatory=$false,Position=3)][String]$apiObject = "system/configuration/xmpp",
            [Parameter(Mandatory=$false,Position=4)]
            [System.Security.Cryptography.X509Certificates.X509Certificate]$certObject = $MYcert,
            [Parameter(Mandatory=$false,Position=5)]
            [String]$filtCriteria = $null,
            [Parameter(Mandatory=$false,Position=6)]
            [String]$offset = $null,
            [Parameter(Mandatory=$false,Position=7)]
            [String]$limit = $null
    )
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -certToUse $certObject -filtCriteria $filtCriteria -offset $offset -limit $limit
       Write-Output $y
}

##
##
##
##
##
##
##
Function get-CmsCluster {
    Param([Parameter(Mandatory=$false,Position=1)][String]$servingHost = $MYserver,
            [Parameter(Mandatory=$false,Position=2)][String]$servingPort = $MYport,
            [Parameter(Mandatory=$false,Position=3)][String]$apiObject = "system/configuration/cluster",
            [Parameter(Mandatory=$false,Position=4)]
            [System.Security.Cryptography.X509Certificates.X509Certificate]$certObject = $MYcert,
            [Parameter(Mandatory=$false,Position=5)]
            [String]$filtCriteria = $null,
            [Parameter(Mandatory=$false,Position=6)]
            [String]$offset = $null,
            [Parameter(Mandatory=$false,Position=7)]
            [String]$limit = $null
    )
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -certToUse $certObject -filtCriteria $filtCriteria -offset $offset -limit $limit
       Write-Output $y
}

##
##
##
##
##
##
##
Function get-CmsDiagnostics {
    Param([Parameter(Mandatory=$false,Position=1)][String]$servingHost = $MYserver,
            [Parameter(Mandatory=$false,Position=2)][String]$servingPort = $MYport,
            [Parameter(Mandatory=$false,Position=3)][String]$apiObject = "system/diagnostics",
            [Parameter(Mandatory=$false,Position=4)]
            [System.Security.Cryptography.X509Certificates.X509Certificate]$certObject = $MYcert,
            [Parameter(Mandatory=$false,Position=5)]
            [String]$filtCriteria = $null,
            [Parameter(Mandatory=$false,Position=6)]
            [String]$offset = $null,
            [Parameter(Mandatory=$false,Position=7)]
            [String]$limit = $null
    )
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -certToUse $certObject -filtCriteria $filtCriteria -offset $offset -limit $limit
       Write-Output $y
}

##
##
##
##
##
##
##
Function get-CmsExternalDirectorySearchLocations {
    Param([Parameter(Mandatory=$false,Position=1)][String]$servingHost = $MYserver,
            [Parameter(Mandatory=$false,Position=2)][String]$servingPort = $MYport,
            [Parameter(Mandatory=$false,Position=3)][String]$apiObject = "externalDirectorySearchLocations",
            [Parameter(Mandatory=$false,Position=4)]
            [System.Security.Cryptography.X509Certificates.X509Certificate]$certObject = $MYcert,
            [Parameter(Mandatory=$false,Position=5)]
            [String]$filtCriteria = $null,
            [Parameter(Mandatory=$false,Position=6)]
            [String]$offset = $null,
            [Parameter(Mandatory=$false,Position=7)]
            [String]$limit = $null
    )
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -certToUse $certObject -filtCriteria $filtCriteria -offset $offset -limit $limit
       Write-Output $y
}

##
##
##
##
##
##
##
Function get-CmsTenantGroups {
    Param([Parameter(Mandatory=$false,Position=1)][String]$servingHost = $MYserver,
            [Parameter(Mandatory=$false,Position=2)][String]$servingPort = $MYport,
            [Parameter(Mandatory=$false,Position=3)][String]$apiObject = "tenantGroups",
            [Parameter(Mandatory=$false,Position=4)]
            [System.Security.Cryptography.X509Certificates.X509Certificate]$certObject = $MYcert,
            [Parameter(Mandatory=$false,Position=5)]
            [String]$filtCriteria = $null,
            [Parameter(Mandatory=$false,Position=6)]
            [String]$offset = $null,
            [Parameter(Mandatory=$false,Position=7)]
            [String]$limit = $null
    )
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -certToUse $certObject -filtCriteria $filtCriteria -offset $offset -limit $limit
       Write-Output $y
}

##
##
##
##
##
##
##
Function get-CmsAccessQuery {
    Param([Parameter(Mandatory=$false,Position=1)][String]$servingHost = $MYserver,
            [Parameter(Mandatory=$false,Position=2)][String]$servingPort = $MYport,
            [Parameter(Mandatory=$false,Position=3)][String]$apiObject = "accessQuery",
            [Parameter(Mandatory=$false,Position=4)]
            [System.Security.Cryptography.X509Certificates.X509Certificate]$certObject = $MYcert,
            [Parameter(Mandatory=$false,Position=5)]
            [String]$filtCriteria = $null,
            [Parameter(Mandatory=$false,Position=6)]
            [String]$offset = $null,
            [Parameter(Mandatory=$false,Position=7)]
            [String]$limit = $null
    )
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -certToUse $certObject -filtCriteria $filtCriteria -offset $offset -limit $limit
       Write-Output $y
}

## Function Exports
##
##
##
##
##
Export-ModuleMember -Function get-CmsSpaces -Alias get-CmsCoSpaces, get-CmsTeamSpaces, get-CmsVmrs
Export-ModuleMember -Function get-CmsCallLegProfiles
Export-ModuleMember -Function get-CmsTenants
Export-ModuleMember -Function get-CmsCallBrandingProfiles
Export-ModuleMember -Function get-CmsIvrBrandingProfiles
Export-ModuleMember -Function get-CmsCallProfiles
Export-ModuleMember -Function get-CmsLdapSources
Export-ModuleMember -Function get-CmsLdapServers
Export-ModuleMember -Function get-CmsLdapMappings
Export-ModuleMember -Function get-CmsLdapSyncs
Export-ModuleMember -Function get-CmsIvrs
Export-ModuleMember -Function get-CmsRecorders
Export-ModuleMember -Function get-CmsSystemProfile
Export-ModuleMember -Function get-CmsOutboundDialPlanRules
Export-ModuleMember -Function get-CmsInboundDialPlanRules
Export-ModuleMember -Function get-CmsCalls
Export-ModuleMember -Function get-CmsCallLegs
Export-ModuleMember -Function get-CmsDialTransforms
Export-ModuleMember -Function get-CmsDtmfProfiles
Export-ModuleMember -Function get-CmsParticipants
Export-ModuleMember -Function get-CmsUsers
Export-ModuleMember -Function get-CmsUserProfiles
Export-ModuleMember -Function get-CmsSystemStatus
Export-ModuleMember -Function get-CmsSystemAlarms
Export-ModuleMember -Function get-CmsSystemDatabase
Export-ModuleMember -Function get-CmsSystemLicensing
Export-ModuleMember -Function get-CmsMultiPartyLicensing
Export-ModuleMember -Function get-CmsMultiPartyLicensingActivePersonalLicensing
Export-ModuleMember -Function get-CmsTurnServers
Export-ModuleMember -Function get-CmsWebBridges
Export-ModuleMember -Function get-CmsCallBridges
Export-ModuleMember -Function get-CmsXmpp
Export-ModuleMember -Function get-CmsCluster
Export-ModuleMember -Function get-CmsDiagnostics
Export-ModuleMember -Function get-CmsExternalDirectorySearchLocations
Export-ModuleMember -Function get-CmsTenantGroups
Export-ModuleMember -Function get-CmsAccessQuery
Export-ModuleMember -Function trigger-apiCall

