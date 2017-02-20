##
## Command set to create new objects in Powershell
##
##
##
##
##
Function new-CmsSpaces {
    Param([Parameter(Mandatory=$false,Position=1)]
            [String]$servingHost = $MYserver,
            [Parameter(Mandatory=$false,Position=2)]
            [String]$servingPort = $MYport,
            [Parameter(Mandatory=$false,Position=3)]
            [String]$apiObject="coSpaces",
            [Parameter(Mandatory=$false,Position=4)]
            [System.Security.Cryptography.X509Certificates.X509Certificate]$certObject = $MYcert,
            [Parameter(Mandatory=$true,Position=5)]
            [String]$Name = $null,
            [Parameter(Mandatory=$true,Position=6)]
            [String]$Uri = $null,
            [Parameter(Mandatory=$true,Position=7)]
            [String]$SecondaryUri = $null,
            [Parameter(Mandatory=$true,Position=8)]
            [String]$CallId = $null
    )

        $requestBody = @{"name" = $Name; "uri" = $Uri; "secondaryUri" = $SecondaryUri; "callId" = $CallId}

        $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -methodAccess "POST" -reqBody $requestBody -certToUse $certObject -filtCriteria $filtCriteria -offset $offset -limit $limit
        Write-Output $y
}
Set-Alias new-CmsCoSpaces new-CmsSpaces
Set-Alias new-CmsTeamSpaces new-CmsSpaces
Set-Alias new-CmsVmrs new-CmsSpaces
Set-Alias new-CmsCoSpace new-CmsSpaces
Set-Alias new-CmsTeamSpace new-CmsSpaces
Set-Alias new-CmsVmr new-CmsSpaces

##
##
##
##
##
##
##
Function new-CmsCallLegProfiles {
    Param([Parameter(Mandatory=$false,Position=1)]
            [String]$servingHost = $MYserver,
            [Parameter(Mandatory=$false,Position=2)]
            [String]$servingPort = $myport,
            [Parameter(Mandatory=$false,Position=3)]
            [String]$apiObject = "callLegProfiles",
            [Parameter(Mandatory=$false,Position=4)]
            [System.Security.Cryptography.X509Certificates.X509Certificate]$certObject = $MYcert,
            [Parameter(Mandatory=$true,Position=5)]
            [String]$Name = $null,
            [Parameter(Mandatory=$false,Position=6)]
            [String]$callProfile = $null,
            [Parameter(Mandatory=$false,Position=7)]
            [String]$sipMediaEncryption = $null
    )

        $requestBody = @{"name" = $Name; "callProfile" = $callProfile; "sipMediaEncryption" = $sipMediaEncryption; `
        "needsActivation" = $needsActivation; "defaultLayout" = $defaultLayout; "changeLayoutAllowed" = $changeLayoutAllowed; `
        "participantLabels" = $participantLabels; "presentationDisplayMode" = $presentationDisplayMode; "presentationContributionAllowed" = $presentationContributionAllowed; `
        "allowAllPresentationContributionAllowed" = $allowAllPresentationContributionAllowed; "presentationViewingAllowed" = $presentationViewingAllowed; `
        "endCallAllowed" = $endCallAllowed; "muteOtherAllowed" = $muteOthersAllowed; "changeJoinAudioMuteAllowed" = $changeJoinAudioMuteAllowed; `
        "videoMuteOthersAllowed" = $videoMuteOthersAllowed; "muteSelfAllowed" = $muteSelfAllowed; "allowAllMuteSelfAllowed" = $allowAllMuteSelfAllowed; `
        "videoMuteSelfAllowed" = $videoMuteSelfAllowed; "joinToneParticipantThreshold" = $joinToneParticipantThreshold; "leaveToneParticipantThreshold" = $leaveToneParticipantThreshold; `
        "videoMode" = $videoMode; "rxAudioMute" = $rxAudioMute; "txAudioMute" = $txAudioMute; "rxVideoMute" = $rxVideoMute; "txVideoMute" = $txVideoMute; `
        "audioPacketSizeMs" = $audioPacketSizeMs; "deactivationMode" = $deactivationMode; "deactivationModeTime" = $deactivationModeTime; `
        "telepresenceCallsAllowed" = $telepresenceCallsAllowed; "sipPresentationChannelEnabled" = $sipPresentationChannelEnabled; "bfcpMode" = $bfcpMode; `
        "callLockAllowed" = $callLockAllowed; "recordingControlAllowed" = $recordingControlAllowed; "maxCallDurationTime" = $maxCallDurationTime}

        $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -methodAccess "POST" -reqBody $requestBody -certToUse $certObject -filtCriteria $filtCriteria -offset $offset -limit $limit
        Write-Output $y
}

##
##
##
##
##
##
##
Function new-CmsTenants {
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
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -methodAccess "POST" -certToUse $certObject -filtCriteria $filtCriteria -offset $offset -limit $limit
       Write-Output $y
}

##
##
##
##
##
##
##
Function new-CmsCallBrandingProfiles {
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
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -methodAccess "POST" -certToUse $certObject -filtCriteria $filtCriteria -offset $offset -limit $limit
       Write-Output $y
}

##
##
##
##
##
##
##
Function new-CmsIvrBrandingProfiles {
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
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -methodAccess "POST" -certToUse $certObject -filtCriteria $filtCriteria -offset $offset -limit $limit
       Write-Output $y
}


##
##
##
##
##
##
##
Function new-CmsCallProfiles {
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
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -methodAccess "POST" -certToUse $certObject -filtCriteria $filtCriteria -offset $offset -limit $limit
       Write-Output $y
}

##
##
##
##
##
##
##
Function new-CmsLdapSources {
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
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -methodAccess "POST" -certToUse $certObject -filtCriteria $filtCriteria -offset $offset -limit $limit
       Write-Output $y
}

##
##
##
##
##
##
##
Function new-CmsLdapServers {
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
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -methodAccess "POST" -certToUse $certObject -filtCriteria $filtCriteria -offset $offset -limit $limit
       Write-Output $y
}

##
##
##
##
##
##
##
Function new-CmsLdapMappings {
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
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -methodAccess "POST" -certToUse $certObject -filtCriteria $filtCriteria -offset $offset -limit $limit
       Write-Output $y
}

##
##
##
##
##
##
##
Function new-CmsLdapSyncs {
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
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -methodAccess "POST" -certToUse $certObject -filtCriteria $filtCriteria -offset $offset -limit $limit
       Write-Output $y
}

##
##
##
##
##
##
##
Function new-CmsIvrs {
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
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -methodAccess "POST" -certToUse $certObject -filtCriteria $filtCriteria -offset $offset -limit $limit
       Write-Output $y
}

##
##
##
##
##
##
##
Function new-CmsRecorders {
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
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -methodAccess "POST" -certToUse $certObject -filtCriteria $filtCriteria -offset $offset -limit $limit
       Write-Output $y
}

##
##
##
##
##
##
##
Function new-CmsSystemProfile {
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
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -methodAccess "POST" -certToUse $certObject -filtCriteria $filtCriteria -offset $offset -limit $limit
       Write-Output $y
}

##
##
##
##
##
##
##
Function new-CmsOutboundDialPlanRules {
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
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -methodAccess "POST" -certToUse $certObject -filtCriteria $filtCriteria -offset $offset -limit $limit
       Write-Output $y
}

##
##
##
##
##
##
##
Function new-CmsInboundDialPlanRules {
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
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -methodAccess "POST" -certToUse $certObject -filtCriteria $filtCriteria -offset $offset -limit $limit
       Write-Output $y
}

##
##
##
##
##
##
##
Function new-CmsForwardingDialPlanRules {
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
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -methodAccess "POST" -certToUse $certObject -filtCriteria $filtCriteria -offset $offset -limit $limit
       Write-Output $y
}

##
##
##
##
##
##
##
Function new-CmsCalls {
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
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -methodAccess "POST" -certToUse $certObject -filtCriteria $filtCriteria -offset $offset -limit $limit
       Write-Output $y
}

##
##
##
##
##
##
##
Function new-CmsCallLegs {
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
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -methodAccess "POST" -certToUse $certObject -filtCriteria $filtCriteria -offset $offset -limit $limit
       Write-Output $y
}

##
##
##
##
##
##
##
Function new-CmsDialTransforms {
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
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -methodAccess "POST" -certToUse $certObject -filtCriteria $filtCriteria -offset $offset -limit $limit
       Write-Output $y
}

##
##
##
##
##
##
##
Function new-CmsDtmfProfiles {
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
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -methodAccess "POST" -certToUse $certObject -filtCriteria $filtCriteria -offset $offset -limit $limit
       Write-Output $y
}

##
##
##
##
##
##
##
Function new-CmsParticipants {
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
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -methodAccess "POST" -certToUse $certObject -filtCriteria $filtCriteria -offset $offset -limit $limit
       Write-Output $y
}

##
##
##
##
##
##
##
Function new-CmsUsers {
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
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -methodAccess "POST" -certToUse $certObject -filtCriteria $filtCriteria -offset $offset -limit $limit
       Write-Output $y
}

##
##
##
##
##
##
##
Function new-CmsUserProfiles {
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
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -methodAccess "POST" -certToUse $certObject -filtCriteria $filtCriteria -offset $offset -limit $limit
       Write-Output $y
}

##
##
##
##
##
##
##
Function new-CmsSystemStatus {
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
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -methodAccess "POST" -certToUse $certObject -filtCriteria $filtCriteria -offset $offset -limit $limit
       Write-Output $y
}

##
##
##
##
##
##
##
Function new-CmsSystemAlarms {
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
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -methodAccess "POST" -certToUse $certObject -filtCriteria $filtCriteria -offset $offset -limit $limit
       Write-Output $y
}

##
##
##
##
##
##
##
Function new-CmsSystemDatabase {
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
Function new-CmsSystemCdrReceivers {
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
Function new-CmsSystemLicensing {
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
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -methodAccess "POST" -certToUse $certObject -filtCriteria $filtCriteria -offset $offset -limit $limit
       Write-Output $y
}

##
##
##
##
##
##
##
Function new-CmsSystemMultiPartyLicensing {
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
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -methodAccess "POST" -certToUse $certObject -filtCriteria $filtCriteria -offset $offset -limit $limit
       Write-Output $y
}

##
##
##
##
##
##
##
Function new-CmsMultiPartyLicensingActivePersonalLicensing {
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
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -methodAccess "POST" -certToUse $certObject -filtCriteria $filtCriteria -offset $offset -limit $limit
       Write-Output $y
}

##
##
##
##
##
##
##
Function new-CmsTurnServers {
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
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -methodAccess "POST" -certToUse $certObject -filtCriteria $filtCriteria -offset $offset -limit $limit
       Write-Output $y
}

##
##
##
##
##
##
##
Function new-CmsWebBridges {
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
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -methodAccess "POST" -certToUse $certObject -filtCriteria $filtCriteria -offset $offset -limit $limit
       Write-Output $y
}

##
##
##
##
##
##
##
Function new-CmsCallBridges {
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
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -methodAccess "POST" -certToUse $certObject -filtCriteria $filtCriteria -offset $offset -limit $limit
       Write-Output $y
}

##
##
##
##
##
##
##
Function new-CmsXmpp {
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
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -methodAccess "POST" -certToUse $certObject -filtCriteria $filtCriteria -offset $offset -limit $limit
       Write-Output $y
}

##
##
##
##
##
##
##
Function new-CmsCluster {
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
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -methodAccess "POST" -certToUse $certObject -filtCriteria $filtCriteria -offset $offset -limit $limit
       Write-Output $y
}

##
##
##
##
##
##
##
Function new-CmsDiagnostics {
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
Function new-CmsExternalDirectorySearchLocations {
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
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -methodAccess "POST" -certToUse $certObject -filtCriteria $filtCriteria -offset $offset -limit $limit
       Write-Output $y
}

##
##
##
##
##
##
##
Function new-CmsTenantGroups {
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
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -methodAccess "POST" -certToUse $certObject -filtCriteria $filtCriteria -offset $offset -limit $limit
       Write-Output $y
}

##
##
##
##
##
##
##
Function new-CmsAccessQuery {
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
       $y = trigger-apiCall -hostToUse $servingHost -listenPort $servingPort -node $apiObject -methodAccess "POST" -certToUse $certObject -filtCriteria $filtCriteria -offset $offset -limit $limit
       Write-Output $y
}

## Function Exports
##
##
##
##
##
Export-ModuleMember -Function new-CmsSpaces -Alias new-CmsCoSpaces, new-CmsTeamSpaces, new-CmsVmrs
Export-ModuleMember -Function new-CmsCallLegProfiles
Export-ModuleMember -Function new-CmsTenants
Export-ModuleMember -Function new-CmsCallBrandingProfiles
Export-ModuleMember -Function new-CmsIvrBrandingProfiles
Export-ModuleMember -Function new-CmsCallProfiles
Export-ModuleMember -Function new-CmsLdapSources
Export-ModuleMember -Function new-CmsLdapServers
Export-ModuleMember -Function new-CmsLdapMappings
Export-ModuleMember -Function new-CmsLdapSyncs
Export-ModuleMember -Function new-CmsIvrs
Export-ModuleMember -Function new-CmsRecorders
Export-ModuleMember -Function new-CmsSystemProfile
Export-ModuleMember -Function new-CmsOutboundDialPlanRules
Export-ModuleMember -Function new-CmsInboundDialPlanRules
Export-ModuleMember -Function new-CmsCalls
Export-ModuleMember -Function new-CmsCallLegs
Export-ModuleMember -Function new-CmsDialTransforms
Export-ModuleMember -Function new-CmsDtmfProfiles
Export-ModuleMember -Function new-CmsParticipants
Export-ModuleMember -Function new-CmsUsers
Export-ModuleMember -Function new-CmsUserProfiles
Export-ModuleMember -Function new-CmsSystemStatus
Export-ModuleMember -Function new-CmsSystemAlarms
Export-ModuleMember -Function new-CmsSystemDatabase
Export-ModuleMember -Function new-CmsSystemLicensing
Export-ModuleMember -Function new-CmsMultiPartyLicensing
Export-ModuleMember -Function new-CmsMultiPartyLicensingActivePersonalLicensing
Export-ModuleMember -Function new-CmsTurnServers
Export-ModuleMember -Function new-CmsWebBridges
Export-ModuleMember -Function new-CmsCallBridges
Export-ModuleMember -Function new-CmsXmpp
Export-ModuleMember -Function new-CmsCluster
Export-ModuleMember -Function new-CmsDiagnostics
Export-ModuleMember -Function new-CmsExternalDirectorySearchLocations
Export-ModuleMember -Function new-CmsTenantGroups
Export-ModuleMember -Function new-CmsAccessQuery

