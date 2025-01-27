.class public Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
.super Ljava/lang/Object;
.source "UaProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/internal/ims/core/handler/secims/UaProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field acb:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field activeDataPhoneId:I

.field addHistinfo:Z

.field addMmtelCallComposerTag:Z

.field audioEngineType:I

.field authalg:Ljava/lang/String;

.field callProfile:Lcom/sec/internal/ims/core/handler/secims/CallProfile;

.field capabilities:Lcom/sec/ims/options/Capabilities;

.field cmcProfile:Lcom/sec/internal/ims/core/handler/secims/CmcProfile;

.field contactDisplayName:Ljava/lang/String;

.field controlDscp:I

.field curPani:Ljava/lang/String;

.field dbrTimer:I

.field displayName:Ljava/lang/String;

.field domain:Ljava/lang/String;

.field earlyMediaRtpTimeoutTimer:I

.field enableVerstat:Z

.field encrNullRoaming:Z

.field encralg:Ljava/lang/String;

.field excludePaniVowifiInitialRegi:Z

.field hashAlgoType:I

.field hostname:Ljava/lang/String;

.field iface:Ljava/lang/String;

.field ignoreDisplayName:Z

.field imMsgTech:Ljava/lang/String;

.field impi:Ljava/lang/String;

.field impu:Ljava/lang/String;

.field impuList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field impuPreference:I

.field imsiBasedImpu:Ljava/lang/String;

.field instanceId:Ljava/lang/String;

.field isCdmalessEnabled:Z

.field isEnableGruu:Z

.field isEnableSessionId:Z

.field isEnableVcid:Z

.field isFullCodecOfferRequired:Z

.field isGcfConfigEnabled:Z

.field isMsrpBearerUsed:Z

.field isNsdsServiceEnabled:Z

.field isPttSupported:Z

.field isRcsAsJibe:Z

.field isRcsTelephonyFeatureTagRequired:Z

.field isSimMobility:Z

.field isSoftphoneEnabled:Z

.field isSubscribeReg:Z

.field isTcpGracefulShutdownEnabled:Z

.field isTransportNeeded:Z

.field isUpdateSaOnAirplaneModeSupported:Z

.field isUpdateSaOnStartSupported:Z

.field isVceConfigEnabled:Z

.field isXqEnabled:Z

.field isemergencysupport:Z

.field isenabletlsforsip:Z

.field isipsec:Z

.field isprecondenabled:Z

.field ispreconinitialsendrecv:Z

.field issipoutbound:Z

.field keepAliveFactor:I

.field lastPaniHeader:Ljava/lang/String;

.field mIsServerHeaderEnabled:Z

.field mIsWifiPreConditionEnabled:Z

.field mUseCompactHeader:Z

.field minSe:I

.field mno:Lcom/sec/internal/constants/Mno;

.field msrpTransType:Ljava/lang/String;

.field mssSize:I

.field mvno:Ljava/lang/String;

.field needCheckAllowedMethodForRefresh:Z

.field needPidfRat:I

.field needPidfSipMsg:I

.field needVolteRetryInNr:Z

.field netId:J

.field oipFromPreferred:Ljava/lang/String;

.field password:Ljava/lang/String;

.field pcscfIp:Ljava/lang/String;

.field pcscfPort:I

.field pdn:Ljava/lang/String;

.field phoneId:I

.field preferredId:Ljava/lang/String;

.field privacyHeaderRestricted:Ljava/lang/String;

.field profileId:I

.field qparam:I

.field rat:I

.field rcsProfile:I

.field realm:Ljava/lang/String;

.field regExpires:I

.field regRetryBaseTime:I

.field regRetryMaxTime:I

.field registeralgo:Ljava/lang/String;

.field remoteuritype:Lcom/sec/ims/util/ImsUri$UriType;

.field retryInviteOnTcpReset:Z

.field ringbackTimer:I

.field ringingTimer:I

.field scmVersion:I

.field selectTransportAfterTcpReset:Ljava/lang/String;

.field selfPort:I

.field send18xReliably:Z

.field sendByeForUssi:Z

.field serviceList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field sessionexpires:I

.field sessionrefresher:Ljava/lang/String;

.field signDigestResponseEnabled:Z

.field singleRegiEnabled:Z

.field sipMobility:I

.field srvccVersion:I

.field sslType:I

.field subscriberTimer:I

.field support183ForIr92v9Precondition:Z

.field support199ProvisionalResponse:Z

.field supportAccessType:Z

.field supportB2cCallcomposerWithoutFeaturetag:I

.field supportDatachannelWithFeatureCaps:Z

.field supportDualRcs:Z

.field supportEct:Z

.field supportImsNotAvailable:Z

.field supportLtePreferred:Z

.field supportNetworkInitUssi:Z

.field supportReplaceMerge:Z

.field supportRfc6337ForDelayedOffer:Z

.field supportScribeDialogEvent:Z

.field supportUac:Z

.field supportUpgradePrecondition:Z

.field supportedGeolocationPhase:I

.field tcpRstUacErrorcode:I

.field tcpRstUasErrorcode:I

.field textMode:I

.field timer1:I

.field timer2:I

.field timer4:I

.field timerA:I

.field timerB:I

.field timerC:I

.field timerD:I

.field timerE:I

.field timerF:I

.field timerG:I

.field timerH:I

.field timerI:I

.field timerJ:I

.field timerK:I

.field timerTS:I

.field transtype:Ljava/lang/String;

.field tryReregisterFromKeepalive:Z

.field uacSipList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field use183OnProgressIncoming:Z

.field use200offerWhenRemoteNotSupport100rel:Z

.field useKeepAlive:Z

.field usePemHeader:Z

.field useProvisionalResponse100rel:Z

.field useQ850causeOn480:Z

.field useSubcontactWhenResub:Z

.field userAgent:Ljava/lang/String;

.field uuid:Ljava/lang/String;

.field videoCrbtSupportType:I

.field vowifi5gsaMode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 900
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newBuilder()Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 1

    .line 1071
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addService(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 1

    .line 1224
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->serviceList:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 1225
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->serviceList:Ljava/util/Set;

    .line 1228
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->serviceList:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lcom/sec/internal/ims/core/handler/secims/UaProfile;
    .locals 1

    .line 1075
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;-><init>(Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;)V

    return-object v0
.end method

.method public setAcb(Ljava/util/List;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;"
        }
    .end annotation

    .line 1738
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->acb:Ljava/util/List;

    return-object p0
.end method

.method public setActiveDataPhoneId(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1503
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->activeDataPhoneId:I

    return-object p0
.end method

.method public setAddHistinfo(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1583
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->addHistinfo:Z

    return-object p0
.end method

.method public setAddMmtelCallComposerTag(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1793
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->addMmtelCallComposerTag:Z

    return-object p0
.end method

.method public setAudioEngineType(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1448
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->audioEngineType:I

    return-object p0
.end method

.method public setAuthAlg(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1189
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->authalg:Ljava/lang/String;

    return-object p0
.end method

.method public setCallProfile(Lcom/sec/internal/ims/core/handler/secims/CallProfile;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1323
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->callProfile:Lcom/sec/internal/ims/core/handler/secims/CallProfile;

    return-object p0
.end method

.method public setCmcProfile(Lcom/sec/internal/ims/core/handler/secims/CmcProfile;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1853
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->cmcProfile:Lcom/sec/internal/ims/core/handler/secims/CmcProfile;

    return-object p0
.end method

.method public setContactDisplayName(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1298
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->contactDisplayName:Ljava/lang/String;

    return-object p0
.end method

.method public setControlDscp(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1154
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->controlDscp:I

    return-object p0
.end method

.method public setCurPani(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1453
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->curPani:Ljava/lang/String;

    return-object p0
.end method

.method public setDbrTimer(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1538
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->dbrTimer:I

    return-object p0
.end method

.method public setDisplayName(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1293
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->displayName:Ljava/lang/String;

    return-object p0
.end method

.method public setDomain(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1129
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->domain:Ljava/lang/String;

    return-object p0
.end method

.method public setEanbleVerstat(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1693
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->enableVerstat:Z

    return-object p0
.end method

.method public setEarlyMediaRtpTimeoutTimer(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1578
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->earlyMediaRtpTimeoutTimer:I

    return-object p0
.end method

.method public setEmergencyProfile(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1214
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isemergencysupport:Z

    return-object p0
.end method

.method public setEncrAlg(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1194
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->encralg:Ljava/lang/String;

    return-object p0
.end method

.method public setEncrNullRoaming(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1803
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->encrNullRoaming:Z

    return-object p0
.end method

.method public setExcludePaniVowifiInitialRegi(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1768
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->excludePaniVowifiInitialRegi:Z

    return-object p0
.end method

.method public setGcfConfigEnabled(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1463
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isGcfConfigEnabled:Z

    return-object p0
.end method

.method public setHashAlgoType(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1773
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->hashAlgoType:I

    return-object p0
.end method

.method public setHostname(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1199
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->hostname:Ljava/lang/String;

    return-object p0
.end method

.method public setIface(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1084
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->iface:Ljava/lang/String;

    return-object p0
.end method

.method public setIgnoreDisplayName(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1743
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->ignoreDisplayName:Z

    return-object p0
.end method

.method public setImMsgTech(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1318
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->imMsgTech:Ljava/lang/String;

    return-object p0
.end method

.method public setImpi(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1099
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->impi:Ljava/lang/String;

    return-object p0
.end method

.method public setImpu(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1104
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->impu:Ljava/lang/String;

    return-object p0
.end method

.method public setImpuPreference(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1823
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->impuPreference:I

    return-object p0
.end method

.method public setImsiBasedImpu(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1109
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->imsiBasedImpu:Ljava/lang/String;

    return-object p0
.end method

.method public setInstanceId(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1308
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->instanceId:Ljava/lang/String;

    return-object p0
.end method

.method public setIsCdmalessEnabled(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1408
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isCdmalessEnabled:Z

    return-object p0
.end method

.method public setIsEnableGruu(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1433
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isEnableGruu:Z

    return-object p0
.end method

.method public setIsEnableSessionId(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1443
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isEnableSessionId:Z

    return-object p0
.end method

.method public setIsEnableVcid(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1438
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isEnableVcid:Z

    return-object p0
.end method

.method public setIsFullCodecOfferRequired(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1263
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isFullCodecOfferRequired:Z

    return-object p0
.end method

.method public setIsIpSec(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1169
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isipsec:Z

    return-object p0
.end method

.method public setIsRcsAsJibe(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1858
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isRcsAsJibe:Z

    return-object p0
.end method

.method public setIsRcsTelephonyFeatureTagRequired(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1258
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isRcsTelephonyFeatureTagRequired:Z

    return-object p0
.end method

.method public setIsServerHeaderEnabled(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1179
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->mIsServerHeaderEnabled:Z

    return-object p0
.end method

.method public setIsSimMobility(Ljava/lang/Boolean;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1678
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isSimMobility:Z

    return-object p0
.end method

.method public setIsSoftphoneEnabled(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1403
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isSoftphoneEnabled:Z

    return-object p0
.end method

.method public setIsTcpGracefulShutdownEnabled(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1543
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isTcpGracefulShutdownEnabled:Z

    return-object p0
.end method

.method public setIsTransportNeeded(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1528
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isTransportNeeded:Z

    return-object p0
.end method

.method public setIsUpdateSaOnAirplaneModeSupported(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1833
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isUpdateSaOnAirplaneModeSupported:Z

    return-object p0
.end method

.method public setIsUpdateSaOnStartSupported(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1828
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isUpdateSaOnStartSupported:Z

    return-object p0
.end method

.method public setIsXqEnabled(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1513
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isXqEnabled:Z

    return-object p0
.end method

.method public setKeepAliveFactor(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1798
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->keepAliveFactor:I

    return-object p0
.end method

.method public setLastPaniHeader(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1653
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->lastPaniHeader:Ljava/lang/String;

    return-object p0
.end method

.method public setLinkedImpuList(Ljava/util/List;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;"
        }
    .end annotation

    .line 1114
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->impuList:Ljava/util/List;

    return-object p0
.end method

.method public setMinSe(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1273
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->minSe:I

    return-object p0
.end method

.method public setMno(Lcom/sec/internal/constants/Mno;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1238
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->mno:Lcom/sec/internal/constants/Mno;

    return-object p0
.end method

.method public setMsrpBearerUsed(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1473
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isMsrpBearerUsed:Z

    return-object p0
.end method

.method public setMsrpTransType(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1508
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->msrpTransType:Ljava/lang/String;

    return-object p0
.end method

.method public setMssSize(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1413
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->mssSize:I

    return-object p0
.end method

.method public setMvnoName(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1243
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->mvno:Ljava/lang/String;

    return-object p0
.end method

.method public setNeedCheckAllowedMethodForRefresh(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1788
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->needCheckAllowedMethodForRefresh:Z

    return-object p0
.end method

.method public setNeedPidfRat(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1598
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->needPidfRat:I

    return-object p0
.end method

.method public setNeedPidfSipMsg(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1593
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->needPidfSipMsg:I

    return-object p0
.end method

.method public setNeedVolteRetryInNr(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1818
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->needVolteRetryInNr:Z

    return-object p0
.end method

.method public setNetId(J)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1089
    iput-wide p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->netId:J

    return-object p0
.end method

.method public setNsdsServiceEnabled(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1468
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isNsdsServiceEnabled:Z

    return-object p0
.end method

.method public setOipFromPreferred(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1658
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->oipFromPreferred:Ljava/lang/String;

    return-object p0
.end method

.method public setOutboundSip(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1144
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->issipoutbound:Z

    return-object p0
.end method

.method public setOwnCapabilities(Lcom/sec/ims/options/Capabilities;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1233
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->capabilities:Lcom/sec/ims/options/Capabilities;

    return-object p0
.end method

.method public setPassword(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1139
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->password:Ljava/lang/String;

    return-object p0
.end method

.method public setPcscfIp(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1204
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->pcscfIp:Ljava/lang/String;

    return-object p0
.end method

.method public setPcscfPort(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1209
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->pcscfPort:I

    return-object p0
.end method

.method public setPdn(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1094
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->pdn:Ljava/lang/String;

    return-object p0
.end method

.method public setPhoneId(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1568
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->phoneId:I

    return-object p0
.end method

.method public setPrecondEnabled(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1248
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isprecondenabled:Z

    return-object p0
.end method

.method public setPrecondInitialSendrecv(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1253
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->ispreconinitialsendrecv:Z

    return-object p0
.end method

.method public setPreferredId(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1119
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->preferredId:Ljava/lang/String;

    return-object p0
.end method

.method public setPrivacyHeaderRestricted(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1558
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->privacyHeaderRestricted:Ljava/lang/String;

    return-object p0
.end method

.method public setProfileId(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1079
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->profileId:I

    return-object p0
.end method

.method public setPttSupported(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1718
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isPttSupported:Z

    return-object p0
.end method

.method public setQparam(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1149
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->qparam:I

    return-object p0
.end method

.method public setRat(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1533
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->rat:I

    return-object p0
.end method

.method public setRcsProfile(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1523
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->rcsProfile:I

    return-object p0
.end method

.method public setRealm(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1313
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->realm:Ljava/lang/String;

    return-object p0
.end method

.method public setRegExpires(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1283
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->regExpires:I

    return-object p0
.end method

.method public setRegRetryBaseTime(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1698
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->regRetryBaseTime:I

    return-object p0
.end method

.method public setRegRetryMaxTime(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1703
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->regRetryMaxTime:I

    return-object p0
.end method

.method public setRegiAlgorithm(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1134
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->registeralgo:Ljava/lang/String;

    return-object p0
.end method

.method public setRemoteUriType(Lcom/sec/ims/util/ImsUri$UriType;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1124
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->remoteuritype:Lcom/sec/ims/util/ImsUri$UriType;

    return-object p0
.end method

.method public setRetryInviteOnTcpReset(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1688
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->retryInviteOnTcpReset:Z

    return-object p0
.end method

.method public setRingbackTimer(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1418
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->ringbackTimer:I

    return-object p0
.end method

.method public setRingingTimer(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1423
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->ringingTimer:I

    return-object p0
.end method

.method public setScmVersion(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1498
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->scmVersion:I

    return-object p0
.end method

.method public setSelectTransportAfterTcpReset(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1663
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->selectTransportAfterTcpReset:Ljava/lang/String;

    return-object p0
.end method

.method public setSelfPort(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1493
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->selfPort:I

    return-object p0
.end method

.method public setSend18xReliably(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1733
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->send18xReliably:Z

    return-object p0
.end method

.method public setSendByeForUssi(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1753
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->sendByeForUssi:Z

    return-object p0
.end method

.method public setServiceList(Ljava/util/Set;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;"
        }
    .end annotation

    .line 1219
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->serviceList:Ljava/util/Set;

    return-object p0
.end method

.method public setSessionExpires(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1268
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->sessionexpires:I

    return-object p0
.end method

.method public setSessionRefresher(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1278
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->sessionrefresher:Ljava/lang/String;

    return-object p0
.end method

.method public setSignDigestResponseEnabled(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1848
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->signDigestResponseEnabled:Z

    return-object p0
.end method

.method public setSingleRegiEnabled(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1783
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->singleRegiEnabled:Z

    return-object p0
.end method

.method public setSipMobility(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1428
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->sipMobility:I

    return-object p0
.end method

.method public setSrvccVersion(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1668
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->srvccVersion:I

    return-object p0
.end method

.method public setSslType(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1723
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->sslType:I

    return-object p0
.end method

.method public setSubscribeDialogEvent(Ljava/lang/Boolean;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1673
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->supportScribeDialogEvent:Z

    return-object p0
.end method

.method public setSubscribeReg(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1483
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isSubscribeReg:Z

    return-object p0
.end method

.method public setSubscriberTimer(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1478
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->subscriberTimer:I

    return-object p0
.end method

.method public setSupport183ForIr92v9Precondition(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1623
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->support183ForIr92v9Precondition:Z

    return-object p0
.end method

.method public setSupport199ProvisionalResponse(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1728
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->support199ProvisionalResponse:Z

    return-object p0
.end method

.method public setSupportAccessType(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1648
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->supportAccessType:Z

    return-object p0
.end method

.method public setSupportB2cCallcomposerWithoutFeaturetag(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1843
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->supportB2cCallcomposerWithoutFeaturetag:I

    return-object p0
.end method

.method public setSupportDatachannelWithFeatureCaps(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1838
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->supportDatachannelWithFeatureCaps:Z

    return-object p0
.end method

.method public setSupportDualRcs(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1708
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->supportDualRcs:Z

    return-object p0
.end method

.method public setSupportEct(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1573
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->supportEct:Z

    return-object p0
.end method

.method public setSupportImsNotAvailable(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1628
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->supportImsNotAvailable:Z

    return-object p0
.end method

.method public setSupportLtePreferred(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1633
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->supportLtePreferred:Z

    return-object p0
.end method

.method public setSupportNetworkInitUssi(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1748
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->supportNetworkInitUssi:Z

    return-object p0
.end method

.method public setSupportReplaceMerge(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1643
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->supportReplaceMerge:Z

    return-object p0
.end method

.method public setSupportRfc6337ForDelayedOffer(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1758
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->supportRfc6337ForDelayedOffer:Z

    return-object p0
.end method

.method public setSupportUac(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1808
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->supportUac:Z

    return-object p0
.end method

.method public setSupportUpgradePrecondition(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1638
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->supportUpgradePrecondition:Z

    return-object p0
.end method

.method public setSupportedGeolocationPhase(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1588
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->supportedGeolocationPhase:I

    return-object p0
.end method

.method public setTcpRstUacErrorcode(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1548
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->tcpRstUacErrorcode:I

    return-object p0
.end method

.method public setTcpRstUasErrorcode(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1553
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->tcpRstUasErrorcode:I

    return-object p0
.end method

.method public setTextMode(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1518
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->textMode:I

    return-object p0
.end method

.method public setTimer1(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1328
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timer1:I

    return-object p0
.end method

.method public setTimer2(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1333
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timer2:I

    return-object p0
.end method

.method public setTimer4(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1338
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timer4:I

    return-object p0
.end method

.method public setTimerA(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1343
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timerA:I

    return-object p0
.end method

.method public setTimerB(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1348
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timerB:I

    return-object p0
.end method

.method public setTimerC(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1353
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timerC:I

    return-object p0
.end method

.method public setTimerD(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1358
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timerD:I

    return-object p0
.end method

.method public setTimerE(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1363
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timerE:I

    return-object p0
.end method

.method public setTimerF(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1368
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timerF:I

    return-object p0
.end method

.method public setTimerG(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1373
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timerG:I

    return-object p0
.end method

.method public setTimerH(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1378
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timerH:I

    return-object p0
.end method

.method public setTimerI(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1383
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timerI:I

    return-object p0
.end method

.method public setTimerJ(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1388
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timerJ:I

    return-object p0
.end method

.method public setTimerK(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1393
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timerK:I

    return-object p0
.end method

.method public setTimerTS(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1398
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timerTS:I

    return-object p0
.end method

.method public setTransportType(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1159
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->transtype:Ljava/lang/String;

    return-object p0
.end method

.method public setTryReregisterFromKeepalive(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1713
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->tryReregisterFromKeepalive:Z

    return-object p0
.end method

.method public setUacSipList(Ljava/util/List;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;"
        }
    .end annotation

    .line 1813
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->uacSipList:Ljava/util/List;

    return-object p0
.end method

.method public setUse183OnProgressIncoming(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1613
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->use183OnProgressIncoming:Z

    return-object p0
.end method

.method public setUse200offerWhenRemoteNotSupport100rel(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1763
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->use200offerWhenRemoteNotSupport100rel:Z

    return-object p0
.end method

.method public setUseCompactHeader(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1184
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->mUseCompactHeader:Z

    return-object p0
.end method

.method public setUseKeepAlive(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1488
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->useKeepAlive:Z

    return-object p0
.end method

.method public setUsePemHeader(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1563
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->usePemHeader:Z

    return-object p0
.end method

.method public setUseProvisionalResponse100rel(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1608
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->useProvisionalResponse100rel:Z

    return-object p0
.end method

.method public setUseQ850causeOn480(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1618
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->useQ850causeOn480:Z

    return-object p0
.end method

.method public setUseSubcontactWhenResub(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1603
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->useSubcontactWhenResub:Z

    return-object p0
.end method

.method public setUseTls(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1164
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isenabletlsforsip:Z

    return-object p0
.end method

.method public setUserAgent(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1288
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->userAgent:Ljava/lang/String;

    return-object p0
.end method

.method public setUuid(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1303
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->uuid:Ljava/lang/String;

    return-object p0
.end method

.method public setVceConfigEnabled(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1458
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isVceConfigEnabled:Z

    return-object p0
.end method

.method public setVideoCrbtSupportType(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1683
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->videoCrbtSupportType:I

    return-object p0
.end method

.method public setVowifi5gsaMode(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1778
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->vowifi5gsaMode:I

    return-object p0
.end method

.method public setWifiPreConditionEnabled(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1174
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->mIsWifiPreConditionEnabled:Z

    return-object p0
.end method
