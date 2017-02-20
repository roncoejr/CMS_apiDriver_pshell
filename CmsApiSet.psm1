##
##
##
##
##
##
##
Function set-CmsSpaces {
    Param([Parameter(Mandatory=$true,Position=1)][String]$servingHost,
            [Parameter(Mandatory=$true,Position=2)][String]$servingPort,
            [Parameter(Mandatory=$false,Position=3)][String]$apiObject="coSpaces",
            [Parameter(Mandatory=$false,Position=4)][String]$certObject
    )
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -certToUse $certObject -methodAccess "PUT"
       Write-Output $y
}
Set-Alias set-CmsCoSpaces set-CmsSpaces
Set-Alias set-CmsTeamSpaces set-CmsSpaces
Set-Alias set-CmsVmrs set-CmsSpaces

##
##
##
##
##
##
##
Function set-CmsCallLegProfiles {
    Param([Parameter(Mandatory=$true,Position=1)][String]$servingHost,
            [Parameter(Mandatory=$true,Position=2)][String]$servingPort,
            [Parameter(Mandatory=$true,Position=3)][String]$apiObject="callLegProfiles",
            [Parameter(Mandatory=$false,Position=4)][String]$certObject
    )
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -certToUse $certObject -methodAccess "PUT"
       Write-Output $y
}

##
##
##
##
##
##
##
Function set-CmsTenants {
    Param([Parameter(Mandatory=$true,Position=1)][String]$servingHost,
            [Parameter(Mandatory=$true,Position=2)][String]$servingPort,
            [Parameter(Mandatory=$true,Position=3)][String]$apiObject="tenants",
            [Parameter(Mandatory=$false,Position=4)][String]$certObject
    )
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -certToUse $certObject -methodAccess "PUT"
       Write-Output $y
}

##
##
##
##
##
##
##
Function set-CmsCallBrandingProfiles {
    Param([Parameter(Mandatory=$true,Position=1)][String]$servingHost,
            [Parameter(Mandatory=$true,Position=2)][String]$servingPort,
            [Parameter(Mandatory=$true,Position=3)][String]$apiObject="callBrandingProfiles",
            [Parameter(Mandatory=$false,Position=4)][String]$certObject
    )
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -certToUse $certObject -methodAccess "PUT"
       Write-Output $y
}

##
##
##
##
##
##
##
Function set-CmsIvrBrandingProfiles {
    Param([Parameter(Mandatory=$true,Position=1)][String]$servingHost,
            [Parameter(Mandatory=$true,Position=2)][String]$servingPort,
            [Parameter(Mandatory=$true,Position=3)][String]$apiObject="ivrBrandingProfiles",
            [Parameter(Mandatory=$false,Position=4)][String]$certObject
    )
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -certToUse $certObject -methodAccess "PUT"
       Write-Output $y
}


##
##
##
##
##
##
##
Function set-CmsCallProfiles {
    Param([Parameter(Mandatory=$true,Position=1)][String]$servingHost,
            [Parameter(Mandatory=$true,Position=2)][String]$servingPort,
            [Parameter(Mandatory=$true,Position=3)][String]$apiObject="callProfiles",
            [Parameter(Mandatory=$false,Position=4)][String]$certObject
    )
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -certToUse $certObject -methodAccess "PUT"
       Write-Output $y
}

##
##
##
##
##
##
##
Function set-CmsLdapSources {
    Param([Parameter(Mandatory=$true,Position=1)][String]$servingHost,
            [Parameter(Mandatory=$true,Position=2)][String]$servingPort,
            [Parameter(Mandatory=$true,Position=3)][String]$apiObject="ldapSources",
            [Parameter(Mandatory=$false,Position=4)][String]$certObject
    )
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -certToUse $certObject -methodAccess "PUT"
       Write-Output $y
}

##
##
##
##
##
##
##
Function set-CmsLdapServers {
    Param([Parameter(Mandatory=$true,Position=1)][String]$servingHost,
            [Parameter(Mandatory=$true,Position=2)][String]$servingPort,
            [Parameter(Mandatory=$true,Position=3)][String]$apiObject="ldapServers",
            [Parameter(Mandatory=$false,Position=4)][String]$certObject
    )
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -certToUse $certObject -methodAccess "PUT"
       Write-Output $y
}

##
##
##
##
##
##
##
Function set-CmsLdapMappings {
    Param([Parameter(Mandatory=$true,Position=1)][String]$servingHost,
            [Parameter(Mandatory=$true,Position=2)][String]$servingPort,
            [Parameter(Mandatory=$true,Position=3)][String]$apiObject="ldapMappings",
            [Parameter(Mandatory=$false,Position=4)][String]$certObject
    )
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -certToUse $certObject -methodAccess "PUT"
       Write-Output $y
}

##
##
##
##
##
##
##
Function set-CmsLdapSyncs {
    Param([Parameter(Mandatory=$true,Position=1)][String]$servingHost,
            [Parameter(Mandatory=$true,Position=2)][String]$servingPort,
            [Parameter(Mandatory=$true,Position=3)][String]$apiObject="ldapSyncs",
            [Parameter(Mandatory=$false,Position=4)][String]$certObject
    )
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -certToUse $certObject -methodAccess "PUT"
       Write-Output $y
}

##
##
##
##
##
##
##
Function set-CmsIvrs {
    Param([Parameter(Mandatory=$true,Position=1)][String]$servingHost,
            [Parameter(Mandatory=$true,Position=2)][String]$servingPort,
            [Parameter(Mandatory=$true,Position=3)][String]$apiObject="ivrs",
            [Parameter(Mandatory=$false,Position=4)][String]$certObject
    )
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -certToUse $certObject -methodAccess "PUT"
       Write-Output $y
}

##
##
##
##
##
##
##
Function set-CmsRecorders {
    Param([Parameter(Mandatory=$true,Position=1)][String]$servingHost,
            [Parameter(Mandatory=$true,Position=2)][String]$servingPort,
            [Parameter(Mandatory=$true,Position=3)][String]$apiObject="recorders",
            [Parameter(Mandatory=$false,Position=4)][String]$certObject
    )
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -certToUse $certObject -methodAccess "PUT"
       Write-Output $y
}

##
##
##
##
##
##
##
Function set-CmsSystemProfile {
    Param([Parameter(Mandatory=$true,Position=1)][String]$servingHost,
            [Parameter(Mandatory=$true,Position=2)][String]$servingPort,
            [Parameter(Mandatory=$true,Position=3)][String]$apiObject="system/profiles",
            [Parameter(Mandatory=$false,Position=4)][String]$certObject
    )
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -certToUse $certObject -methodAccess "PUT"
       Write-Output $y
}

##
##
##
##
##
##
##
Function set-CmsOutboundDialPlanRules {
    Param([Parameter(Mandatory=$true,Position=1)][String]$servingHost,
            [Parameter(Mandatory=$true,Position=2)][String]$servingPort,
            [Parameter(Mandatory=$true,Position=3)][String]$apiObject="outboundDialPlanRules",
            [Parameter(Mandatory=$false,Position=4)][String]$certObject
    )
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -certToUse $certObject -methodAccess "PUT"
       Write-Output $y
}

##
##
##
##
##
##
##
Function set-CmsInboundDialPlanRules {
    Param([Parameter(Mandatory=$true,Position=1)][String]$servingHost,
            [Parameter(Mandatory=$true,Position=2)][String]$servingPort,
            [Parameter(Mandatory=$true,Position=3)][String]$apiObject="inboundDialPlanRules",
            [Parameter(Mandatory=$false,Position=4)][String]$certObject
    )
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -certToUse $certObject -methodAccess "PUT"
       Write-Output $y
}

##
##
##
##
##
##
##
Function set-CmsForwardingDialPlanRules {
    Param([Parameter(Mandatory=$true,Position=1)][String]$servingHost,
            [Parameter(Mandatory=$true,Position=2)][String]$servingPort,
            [Parameter(Mandatory=$true,Position=3)][String]$apiObject="forwardingDialPlanRules",
            [Parameter(Mandatory=$false,Position=4)][String]$certObject
    )
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -certToUse $certObject -methodAccess "PUT"
       Write-Output $y
}

##
##
##
##
##
##
##
Function set-CmsCalls {
    Param([Parameter(Mandatory=$true,Position=1)][String]$servingHost,
            [Parameter(Mandatory=$true,Position=2)][String]$servingPort,
            [Parameter(Mandatory=$true,Position=3)][String]$apiObject="calls",
            [Parameter(Mandatory=$false,Position=4)][String]$certObject
    )
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -certToUse $certObject -methodAccess "PUT"
       Write-Output $y
}

##
##
##
##
##
##
##
Function set-CmsCallLegs {
    Param([Parameter(Mandatory=$true,Position=1)][String]$servingHost,
            [Parameter(Mandatory=$true,Position=2)][String]$servingPort,
            [Parameter(Mandatory=$true,Position=3)][String]$apiObject="callLegs",
            [Parameter(Mandatory=$false,Position=4)][String]$certObject
    )
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -certToUse $certObject -methodAccess "PUT"
       Write-Output $y
}

##
##
##
##
##
##
##
Function set-CmsDialTransforms {
    Param([Parameter(Mandatory=$true,Position=1)][String]$servingHost,
            [Parameter(Mandatory=$true,Position=2)][String]$servingPort,
            [Parameter(Mandatory=$true,Position=3)][String]$apiObject="dialTransforms",
            [Parameter(Mandatory=$false,Position=4)][String]$certObject
    )
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -certToUse $certObject -methodAccess "PUT"
       Write-Output $y
}

##
##
##
##
##
##
##
Function set-CmsDtmfProfiles {
    Param([Parameter(Mandatory=$true,Position=1)][String]$servingHost,
            [Parameter(Mandatory=$true,Position=2)][String]$servingPort,
            [Parameter(Mandatory=$true,Position=3)][String]$apiObject="dtmfProfiles",
            [Parameter(Mandatory=$false,Position=4)][String]$certObject
    )
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -certToUse $certObject -methodAccess "PUT"
       Write-Output $y
}

##
##
##
##
##
##
##
Function set-CmsParticipants {
    Param([Parameter(Mandatory=$true,Position=1)][String]$servingHost,
            [Parameter(Mandatory=$true,Position=2)][String]$servingPort,
            [Parameter(Mandatory=$true,Position=3)][String]$apiObject="participants",
            [Parameter(Mandatory=$false,Position=4)][String]$certObject
    )
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -certToUse $certObject -methodAccess "PUT"
       Write-Output $y
}

##
##
##
##
##
##
##
Function set-CmsUsers {
    Param([Parameter(Mandatory=$true,Position=1)][String]$servingHost,
            [Parameter(Mandatory=$true,Position=2)][String]$servingPort,
            [Parameter(Mandatory=$true,Position=3)][String]$apiObject="users",
            [Parameter(Mandatory=$false,Position=4)][String]$certObject
    )
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -certToUse $certObject -methodAccess "PUT"
       Write-Output $y
}

##
##
##
##
##
##
##
Function set-CmsUserProfiles {
    Param([Parameter(Mandatory=$true,Position=1)][String]$servingHost,
            [Parameter(Mandatory=$true,Position=2)][String]$servingPort,
            [Parameter(Mandatory=$true,Position=3)][String]$apiObject="ldapSyncs",
            [Parameter(Mandatory=$false,Position=4)][String]$certObject
    )
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -certToUse $certObject -methodAccess "PUT"
       Write-Output $y
}

##
##
##
##
##
##
##
Function set-CmsSystemStatus {
    Param([Parameter(Mandatory=$true,Position=1)][String]$servingHost,
            [Parameter(Mandatory=$true,Position=2)][String]$servingPort,
            [Parameter(Mandatory=$true,Position=3)][String]$apiObject="system/status",
            [Parameter(Mandatory=$false,Position=4)][String]$certObject
    )
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -certToUse $certObject -methodAccess "PUT"
       Write-Output $y
}

##
##
##
##
##
##
##
Function set-CmsSystemAlarms {
    Param([Parameter(Mandatory=$true,Position=1)][String]$servingHost,
            [Parameter(Mandatory=$true,Position=2)][String]$servingPort,
            [Parameter(Mandatory=$true,Position=3)][String]$apiObject="system/alarms",
            [Parameter(Mandatory=$false,Position=4)][String]$certObject
    )
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -certToUse $certObject -methodAccess "PUT"
       Write-Output $y
}

##
##
##
##
##
##
##
Function set-CmsSystemDatabase {
    Param([Parameter(Mandatory=$true,Position=1)][String]$servingHost,
            [Parameter(Mandatory=$true,Position=2)][String]$servingPort,
            [Parameter(Mandatory=$true,Position=3)][String]$apiObject="system/database",
            [Parameter(Mandatory=$false,Position=4)][String]$certObject
    )
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -certToUse $certObject -methodAccess "PUT"
       Write-Output $y
}

##
##
##
##
##
##
##
Function set-CmsSystemCdrReceivers {
    Param([Parameter(Mandatory=$true,Position=1)][String]$servingHost,
            [Parameter(Mandatory=$true,Position=2)][String]$servingPort,
            [Parameter(Mandatory=$true,Position=3)][String]$apiObject="system/cdrReceivers",
            [Parameter(Mandatory=$false,Position=4)][String]$certObject
    )
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -certToUse $certObject -methodAccess "PUT"
       Write-Output $y
}

##
##
##
##
##
##
##
Function set-CmsSystemLicensing {
    Param([Parameter(Mandatory=$true,Position=1)][String]$servingHost,
            [Parameter(Mandatory=$true,Position=2)][String]$servingPort,
            [Parameter(Mandatory=$true,Position=3)][String]$apiObject="system/licensing",
            [Parameter(Mandatory=$false,Position=4)][String]$certObject
    )
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -certToUse $certObject -methodAccess "PUT"
       Write-Output $y
}

##
##
##
##
##
##
##
Function set-CmsSystemMultiPartyLicensing {
    Param([Parameter(Mandatory=$true,Position=1)][String]$servingHost,
            [Parameter(Mandatory=$true,Position=2)][String]$servingPort,
            [Parameter(Mandatory=$true,Position=3)][String]$apiObject="system/multiPartyLicensing",
            [Parameter(Mandatory=$false,Position=4)][String]$certObject
    )
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -certToUse $certObject -methodAccess "PUT"
       Write-Output $y
}

##
##
##
##
##
##
##
Function set-CmsMultiPartyLicensingActivePersonalLicensing {
    Param([Parameter(Mandatory=$true,Position=1)][String]$servingHost,
            [Parameter(Mandatory=$true,Position=2)][String]$servingPort,
            [Parameter(Mandatory=$true,Position=3)][String]$apiObject="system/MultiPartyLicensing/activePersonalLicensing",
            [Parameter(Mandatory=$false,Position=4)][String]$certObject
    )
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -certToUse $certObject -methodAccess "PUT"
       Write-Output $y
}

##
##
##
##
##
##
##
Function set-CmsTurnServers {
    Param([Parameter(Mandatory=$true,Position=1)][String]$servingHost,
            [Parameter(Mandatory=$true,Position=2)][String]$servingPort,
            [Parameter(Mandatory=$true,Position=3)][String]$apiObject="turnServers",
            [Parameter(Mandatory=$false,Position=4)][String]$certObject
    )
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -certToUse $certObject -methodAccess "PUT"
       Write-Output $y
}

##
##
##
##
##
##
##
Function set-CmsWebBridges {
    Param([Parameter(Mandatory=$true,Position=1)][String]$servingHost,
            [Parameter(Mandatory=$true,Position=2)][String]$servingPort,
            [Parameter(Mandatory=$true,Position=3)][String]$apiObject="webBridges",
            [Parameter(Mandatory=$false,Position=4)][String]$certObject
    )
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -certToUse $certObject -methodAccess "PUT"
       Write-Output $y
}

##
##
##
##
##
##
##
Function set-CmsCallBridges {
    Param([Parameter(Mandatory=$true,Position=1)][String]$servingHost,
            [Parameter(Mandatory=$true,Position=2)][String]$servingPort,
            [Parameter(Mandatory=$true,Position=3)][String]$apiObject="callBridges",
            [Parameter(Mandatory=$false,Position=4)][String]$certObject
    )
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -certToUse $certObject -methodAccess "PUT"
       Write-Output $y
}

##
##
##
##
##
##
##
Function set-CmsXmpp {
    Param([Parameter(Mandatory=$true,Position=1)][String]$servingHost,
            [Parameter(Mandatory=$true,Position=2)][String]$servingPort,
            [Parameter(Mandatory=$true,Position=3)][String]$apiObject="system/configuration/xmpp",
            [Parameter(Mandatory=$false,Position=4)][String]$certObject
    )
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -certToUse $certObject -methodAccess "PUT"
       Write-Output $y
}

##
##
##
##
##
##
##
Function set-CmsCluster {
    Param([Parameter(Mandatory=$true,Position=1)][String]$servingHost,
            [Parameter(Mandatory=$true,Position=2)][String]$servingPort,
            [Parameter(Mandatory=$true,Position=3)][String]$apiObject="system/configuration/cluster",
            [Parameter(Mandatory=$false,Position=4)][String]$certObject
    )
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -certToUse $certObject -methodAccess "PUT"
       Write-Output $y
}

##
##
##
##
##
##
##
Function set-CmsDiagnostics {
    Param([Parameter(Mandatory=$true,Position=1)][String]$servingHost,
            [Parameter(Mandatory=$true,Position=2)][String]$servingPort,
            [Parameter(Mandatory=$true,Position=3)][String]$apiObject="system/diagnostics",
            [Parameter(Mandatory=$false,Position=4)][String]$certObject
    )
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -certToUse $certObject -methodAccess "PUT"
       Write-Output $y
}

##
##
##
##
##
##
##
Function set-CmsExternalDirectorySearchLocations {
    Param([Parameter(Mandatory=$true,Position=1)][String]$servingHost,
            [Parameter(Mandatory=$true,Position=2)][String]$servingPort,
            [Parameter(Mandatory=$true,Position=3)][String]$apiObject="externalDirectorySearchLocations",
            [Parameter(Mandatory=$false,Position=4)][String]$certObject
    )
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -certToUse $certObject -methodAccess "PUT"
       Write-Output $y
}

##
##
##
##
##
##
##
Function set-CmsTenantGroups {
    Param([Parameter(Mandatory=$true,Position=1)][String]$servingHost,
            [Parameter(Mandatory=$true,Position=2)][String]$servingPort,
            [Parameter(Mandatory=$true,Position=3)][String]$apiObject="tenantGroups",
            [Parameter(Mandatory=$false,Position=4)][String]$certObject
    )
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -certToUse $certObject -methodAccess "PUT"
       Write-Output $y
}

##
##
##
##
##
##
##
Function set-CmsAccessQuery {
    Param([Parameter(Mandatory=$true,Position=1)][String]$servingHost,
            [Parameter(Mandatory=$true,Position=2)][String]$servingPort,
            [Parameter(Mandatory=$true,Position=3)][String]$apiObject="accessQuery",
            [Parameter(Mandatory=$false,Position=4)][String]$certObject
    )
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -certToUse $certObject -methodAccess "PUT"
       Write-Output $y
}

## Function Exports
##
##
##
##
##
Export-ModuleMember -Function set-CmsSpaces -Alias set-CmsCoSpaces, set-CmsTeamSpaces, set-CmsVmrs
Export-ModuleMember -Function set-CmsCallLegProfiles
Export-ModuleMember -Function set-CmsTenants
Export-ModuleMember -Function set-CmsCallBrandingProfiles
Export-ModuleMember -Function set-CmsIvrBrandingProfiles
Export-ModuleMember -Function set-CmsCallProfiles
Export-ModuleMember -Function set-CmsLdapSources
Export-ModuleMember -Function set-CmsLdapServers
Export-ModuleMember -Function set-CmsLdapMappings
Export-ModuleMember -Function set-CmsLdapSyncs
Export-ModuleMember -Function set-CmsIvrs
Export-ModuleMember -Function set-CmsRecorders
Export-ModuleMember -Function set-CmsSystemProfile
Export-ModuleMember -Function set-CmsOutboundDialPlanRules
Export-ModuleMember -Function set-CmsInboundDialPlanRules
Export-ModuleMember -Function set-CmsCalls
Export-ModuleMember -Function set-CmsCallLegs
Export-ModuleMember -Function set-CmsDialTransforms
Export-ModuleMember -Function set-CmsDtmfProfiles
Export-ModuleMember -Function set-CmsParticipants
Export-ModuleMember -Function set-CmsUsers
Export-ModuleMember -Function set-CmsUserProfiles
Export-ModuleMember -Function set-CmsSystemStatus
Export-ModuleMember -Function set-CmsSystemAlarms
Export-ModuleMember -Function set-CmsSystemDatabase
Export-ModuleMember -Function set-CmsSystemLicensing
Export-ModuleMember -Function set-CmsMultiPartyLicensing
Export-ModuleMember -Function set-CmsMultiPartyLicensingActivePersonalLicensing
Export-ModuleMember -Function set-CmsTurnServers
Export-ModuleMember -Function set-CmsWebBridges
Export-ModuleMember -Function set-CmsCallBridges
Export-ModuleMember -Function set-CmsXmpp
Export-ModuleMember -Function set-CmsCluster
Export-ModuleMember -Function set-CmsDiagnostics
Export-ModuleMember -Function set-CmsExternalDirectorySearchLocations
Export-ModuleMember -Function set-CmsTenantGroups
Export-ModuleMember -Function set-CmsAccessQuery

