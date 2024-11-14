.class public Lcom/sec/internal/ims/core/cmc/CmcAccountManager;
.super Ljava/lang/Object;
.source "CmcAccountManager.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;
.implements Lcom/sec/internal/ims/core/cmc/CmcSAManager$CmcSAEventListener;
.implements Lcom/sec/internal/interfaces/ims/core/ISequentialInitializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;,
        Lcom/sec/internal/ims/core/cmc/CmcAccountManager$DeviceType;
    }
.end annotation


# static fields
.field private static final EVENT_CMC_DEVICE_CHANGED:I = 0x5

.field private static final EVENT_CMC_NW_PREF_CHANGED:I = 0x6

.field private static final EVENT_HOTSPOT_STATE_CHANGED:I = 0x9

.field private static final EVENT_SA_REQUEST:I = 0x1

.field private static final EVENT_SA_REQUEST_EXPIRED:I = 0x7

.field private static final EVENT_SA_REQUEST_FAILED:I = 0x8

.field private static final EVENT_SA_UPDATE:I = 0x2

.field private static final EVENT_START_CMC_REGISTRATION:I = 0x3

.field private static final EVENT_STOP_CMC_REGISTRATION:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String; = "CmcAccountManager"

.field private static mIsCmcServiceInstalled:Z = true


# instance fields
.field private mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

.field private mCmcInfoUpdatedResult:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;

.field private mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

.field private mContext:Landroid/content/Context;

.field private mEmergencyNumberMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field private final mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

.field private mHotspotManager:Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;

.field private mIsCmcProfileAdded:Z

.field private mIsHotspotStateUpdateDelay:Z

.field private mIsHotspotUpdatePendingDuringRegistering:Z

.field private mPhoneCount:I

.field private mProfileMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/ims/settings/ImsProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mRegiEventNotifyHostInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

.field private mSABindRetryCount:I

.field private mSARequestRetryCount:I

.field private mSaService:Lcom/sec/internal/ims/core/cmc/CmcSAManager;

.field private mSaToken:Ljava/lang/String;

.field private mSaUrl:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$DCsRDCthGqU5XRKEZ2HvMAjKwJU(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->lambda$onHotspotStateChanged$1(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$IqdfjMcO0fXdQOa_1muVyHCib-U(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->lambda$onHotspotStateChanged$0(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$zcjQWZiO6jKXO7lP1yd9ZeTCmV0(Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->lambda$onHotspotStateChanged$2(Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monHotspotStateChanged(Lcom/sec/internal/ims/core/cmc/CmcAccountManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->onHotspotStateChanged()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monSaUpdated(Lcom/sec/internal/ims/core/cmc/CmcAccountManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->onSaUpdated()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monStartCmcRegistration(Lcom/sec/internal/ims/core/cmc/CmcAccountManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->onStartCmcRegistration()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monStopCmcRegistration(Lcom/sec/internal/ims/core/cmc/CmcAccountManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->onStopCmcRegistration()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartSAServiceInternal(Lcom/sec/internal/ims/core/cmc/CmcAccountManager;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->startSAServiceInternal(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 3

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mProfileMap:Ljava/util/Map;

    .line 79
    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/cmc/CmcInfo;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    const-string v0, ""

    .line 80
    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSaUrl:Ljava/lang/String;

    .line 81
    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSaToken:Ljava/lang/String;

    .line 82
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEmergencyNumberMap:Ljava/util/Map;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mRegiEventNotifyHostInfo:Ljava/util/List;

    const/4 v0, 0x0

    .line 86
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mIsCmcProfileAdded:Z

    .line 87
    new-instance v1, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;

    invoke-direct {v1}, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfoUpdatedResult:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;

    .line 89
    iput v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSARequestRetryCount:I

    .line 90
    iput v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSABindRetryCount:I

    .line 105
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mIsHotspotUpdatePendingDuringRegistering:Z

    .line 106
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mIsHotspotStateUpdateDelay:Z

    const-string v0, "CmcAccountManager create"

    const-string v1, "CmcAccountManager"

    .line 119
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iput-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mContext:Landroid/content/Context;

    .line 121
    new-instance v0, Lcom/sec/internal/helper/SimpleEventLog;

    const/16 v2, 0x64

    invoke-direct {v0, p1, v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 122
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result p1

    iput p1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mPhoneCount:I

    .line 123
    iget-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mContext:Landroid/content/Context;

    invoke-static {p1, p0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerFactory;->createCmcSettingManager(Landroid/content/Context;Lcom/sec/internal/ims/core/cmc/CmcAccountManager;)Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    .line 124
    new-instance p1, Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p0, p0}, Lcom/sec/internal/ims/core/cmc/CmcSAManager;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/core/cmc/CmcAccountManager;Lcom/sec/internal/ims/core/cmc/CmcSAManager$CmcSAEventListener;)V

    iput-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSaService:Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    .line 125
    new-instance p1, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    invoke-direct {p1, p0, p2}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;-><init>(Lcom/sec/internal/ims/core/cmc/CmcAccountManager;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    .line 126
    new-instance p1, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;

    iget-object p2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHotspotManager:Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;

    .line 127
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isCmcServiceInstalled()Z

    move-result p1

    sput-boolean p1, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mIsCmcServiceInstalled:Z

    .line 128
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->initCmcFromPref()V

    return-void
.end method

.method private getCmcCallActivation(Ljava/lang/String;)Z
    .locals 0

    .line 655
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->getCmcCallActivation(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private getCmcInfo()Lcom/sec/internal/ims/core/cmc/CmcInfo;
    .locals 2

    .line 587
    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/cmc/CmcInfo;-><init>()V

    .line 589
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->getCmcSupported()Z

    move-result v1

    iput-boolean v1, v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mOobe:Z

    .line 590
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->getOwnCmcActivation()Z

    move-result v1

    iput-boolean v1, v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mActivation:Z

    .line 591
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->getDeviceType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mDeviceType:Ljava/lang/String;

    .line 592
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mDeviceId:Ljava/lang/String;

    .line 593
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getAccessTokenFromCmcPref()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mAccessToken:Ljava/lang/String;

    .line 594
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->getLineId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineId:Ljava/lang/String;

    .line 595
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getPrimaryDeviceId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineOwnerDeviceId:Ljava/lang/String;

    .line 596
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getImpuFromLineId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineImpu:Ljava/lang/String;

    .line 597
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->getPcscfAddressList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mPcscfAddrList:Ljava/util/List;

    .line 598
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSaUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mSaServerUrl:Ljava/lang/String;

    .line 599
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getLineSlotId()I

    move-result v1

    iput v1, v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineSlotIndex:I

    .line 600
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->hasSecondaryDevice()Z

    move-result v1

    iput-boolean v1, v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mHasSd:Z

    .line 601
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->getPreferredNetwork()I

    move-result v1

    iput v1, v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mNetworkPref:I

    .line 602
    iget-object v1, v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mDeviceId:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isCallAllowedSdByPd(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mCallforkingEnabled:Z

    .line 603
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->isEmergencyCallSupported()Z

    move-result v1

    iput-boolean v1, v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mIsEmergencyCallSupported:Z

    .line 604
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->isSameWifiNetworkOnly()Z

    move-result v1

    iput-boolean v1, v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mIsSameWiFiOnly:Z

    .line 605
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->isDualCmc()Z

    move-result p0

    iput-boolean p0, v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mIsDualCmc:Z

    .line 607
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCmcInfo: LineId: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineId:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", PcscfAddrList: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mPcscfAddrList:Ljava/util/List;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "CmcAccountManager"

    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private getCmcPhoneId()I
    .locals 2

    .line 853
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget v0, v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineSlotIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isSecondaryDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget p0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineSlotIndex:I

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result p0

    :goto_1
    return p0
.end method

.method private getCmcRegisterTaskList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/IRegisterTask;",
            ">;"
        }
    .end annotation

    .line 1211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 1212
    :goto_0
    iget v2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mPhoneCount:I

    if-ge v1, v2, :cond_1

    .line 1213
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getCmcRegisterTask(I)Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1215
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getCmcRelayType()Ljava/lang/String;
    .locals 0

    .line 497
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isSupportSameWiFiOnly()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string/jumbo p0, "priv-p2p"

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method private getEmergencyCallNumberString()Ljava/lang/String;
    .locals 3

    .line 976
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isSupportDualSimCMC()Z

    move-result v0

    const-string v1, "-"

    if-eqz v0, :cond_0

    .line 977
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    invoke-direct {p0, v2}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getEmergencyCallNumberString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_2:I

    .line 978
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getEmergencyCallNumberString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 980
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget v0, v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineSlotIndex:I

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getEmergencyCallNumberString(I)Ljava/lang/String;

    move-result-object p0

    .line 982
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_2
    :goto_1
    const-string p0, ""

    :goto_2
    return-object p0
.end method

.method private getEmergencyCallNumberString(I)Ljava/lang/String;
    .locals 4

    .line 987
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isSecondaryDevice()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    .line 990
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getEmergencyNumberList()Ljava/util/Map;

    move-result-object p0

    const-string v0, "CmcAccountManager"

    if-eqz p0, :cond_6

    .line 991
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    .line 995
    :cond_1
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_5

    .line 996
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 1000
    :cond_2
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1001
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/emergency/EmergencyNumber;

    .line 1002
    invoke-virtual {v3}, Landroid/telephony/emergency/EmergencyNumber;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1004
    :cond_3
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result p0

    if-lez p0, :cond_4

    const-string p0, ","

    .line 1005
    invoke-static {p0, v2}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    .line 1007
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEmergencyCallNumberString: slot("

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") ecall numbers result: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_5
    :goto_1
    const-string p0, "getEmergencyCallNumberString: ecall list empty"

    .line 997
    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_6
    :goto_2
    const-string p0, "getEmergencyCallNumberString: ecall list map empty"

    .line 992
    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private getImpuFromLineId()Ljava/lang/String;
    .locals 2

    .line 659
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->getLineImpu()Ljava/lang/String;

    move-result-object p0

    .line 660
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getImpuFromLineId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CmcAccountManager"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method private getLineSlotId()I
    .locals 4

    .line 681
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->getSelectedSimSlotsOnPd()Ljava/util/List;

    move-result-object p0

    .line 682
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getLineSlotId: selectedSimSlotOnPd: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CmcAccountManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 684
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 685
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 687
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLineSlotId: lineSlotId: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private getPrimaryDeviceId()Ljava/lang/String;
    .locals 4

    .line 666
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->getDeviceIdList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 667
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 668
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 669
    iget-object v2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->getDeviceTypeWithDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 670
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$DeviceType;->isPD(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const-string v1, ""

    .line 676
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getPrimaryDeviceId: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CmcAccountManager"

    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private getProfile(I)Lcom/sec/ims/settings/ImsProfile;
    .locals 2

    .line 485
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mProfileMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/ims/settings/ImsProfile;

    const-string p1, "CmcAccountManager"

    if-nez p0, :cond_0

    const-string p0, "mProfile is null"

    .line 487
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 491
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mProfile = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method private getSharedPrefString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 821
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getSharedPreference()Landroid/content/SharedPreferences;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 822
    :cond_0
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    return-object p2
.end method

.method private getSharedPreference()Landroid/content/SharedPreferences;
    .locals 3

    .line 817
    sget v0, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mContext:Landroid/content/Context;

    const-string v1, "cmcaccount"

    const/4 v2, 0x0

    invoke-static {v0, p0, v1, v2, v2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getSharedPref(ILandroid/content/Context;Ljava/lang/String;IZ)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method private hasCallForkingService()Z
    .locals 1

    .line 618
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isSecondaryDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isSdHasCallForkingService()Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isPdHasCallForkingService()Z

    move-result p0

    :goto_0
    return p0
.end method

.method private initCmcFromPref()V
    .locals 2

    const-string v0, "accesstoken"

    .line 826
    sget-object v1, Lcom/sec/internal/ims/core/cmc/CmcConstants$SA;->TOKEN_DEFAULT:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getSharedPrefString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSaToken:Ljava/lang/String;

    const-string/jumbo v0, "saurl"

    const-string/jumbo v1, "us-auth2.samsungosp.comus-aut"

    .line 827
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getSharedPrefString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSaUrl:Ljava/lang/String;

    const-string p0, "CmcAccountManager"

    const-string v0, "initCmcFromPref: "

    .line 828
    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private initProfile()V
    .locals 11

    const-string v0, "initProfile: build ImsProfile for CMC"

    const-string v1, "CmcAccountManager"

    .line 446
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget-object v0, v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineImpu:Ljava/lang/String;

    .line 449
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "urn:duid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget-object v4, v4, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 450
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget-object v3, v3, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineOwnerDeviceId:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 451
    iget-object v4, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget-object v4, v4, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mDeviceType:Ljava/lang/String;

    invoke-static {v4}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$DeviceType;->isPD(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "SamsungCMC_PD"

    goto :goto_0

    :cond_0
    const-string v4, "SamsungCMC_SD"

    :goto_0
    const-string/jumbo v5, "sip:"

    .line 454
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    const-string v5, ":"

    .line 455
    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object v5, v0

    :goto_1
    const-string v7, "@"

    .line 460
    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_2

    const/4 v8, 0x0

    .line 461
    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 462
    invoke-virtual {v5, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    add-int/2addr v7, v6

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 463
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "initProfile: password = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " / domain = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    const-string v7, ""

    move-object v8, v5

    .line 466
    :goto_2
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mProfileMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/ims/settings/ImsProfile;

    .line 467
    invoke-virtual {v9, v4}, Lcom/sec/ims/settings/ImsProfile;->setName(Ljava/lang/String;)V

    const/16 v10, 0x1f40

    .line 468
    invoke-virtual {v9, v10}, Lcom/sec/ims/settings/ImsProfile;->setSipPort(I)V

    .line 469
    invoke-virtual {v9, v8}, Lcom/sec/ims/settings/ImsProfile;->setPassword(Ljava/lang/String;)V

    .line 470
    invoke-virtual {v9, v7}, Lcom/sec/ims/settings/ImsProfile;->setDomain(Ljava/lang/String;)V

    .line 471
    invoke-virtual {v9, v6}, Lcom/sec/ims/settings/ImsProfile;->setVceConfigEnabled(Z)V

    .line 472
    invoke-virtual {v9, v2}, Lcom/sec/ims/settings/ImsProfile;->setDuid(Ljava/lang/String;)V

    .line 473
    iget-object v10, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget-object v10, v10, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mAccessToken:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/sec/ims/settings/ImsProfile;->setAccessToken(Ljava/lang/String;)V

    .line 474
    invoke-virtual {v9, v3}, Lcom/sec/ims/settings/ImsProfile;->setPriDeviceIdWithURN(Ljava/lang/String;)V

    .line 475
    iget-object v10, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget-object v10, v10, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/sec/ims/settings/ImsProfile;->setDisplayName(Ljava/lang/String;)V

    .line 476
    invoke-virtual {v9, v5}, Lcom/sec/ims/settings/ImsProfile;->setImpi(Ljava/lang/String;)V

    .line 477
    invoke-virtual {v9, v0}, Lcom/sec/ims/settings/ImsProfile;->setImpuList(Ljava/lang/String;)V

    .line 478
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 479
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 480
    invoke-virtual {v9, v10}, Lcom/sec/ims/settings/ImsProfile;->setExtImpuList(Ljava/util/List;)V

    goto :goto_3

    :cond_3
    return-void
.end method

.method private isCallAllowedSdByPd(Ljava/lang/String;)Z
    .locals 0

    .line 651
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->isCallAllowedSdByPd(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private isCmcInfoEqual(Lcom/sec/internal/ims/core/cmc/CmcInfo;Lcom/sec/internal/ims/core/cmc/CmcInfo;)Z
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 562
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 563
    invoke-static {}, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;->values()[Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

    move-result-object v2

    array-length v3, v2

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    .line 564
    invoke-virtual {p1, v5, p2}, Lcom/sec/internal/ims/core/cmc/CmcInfo;->compare(Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;Lcom/sec/internal/ims/core/cmc/CmcInfo;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 565
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;->isDumpPrintAvailable()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 567
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Lcom/sec/internal/ims/core/cmc/CmcInfo;->getValue(Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v6, ", "

    .line 569
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    iget-object v6, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfoUpdatedResult:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;

    invoke-virtual {v6, v5}, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;->addChangedCmcInfo(Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;)V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 574
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    .line 575
    iget-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfoUpdatedResult:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;->isFailed()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 576
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    invoke-virtual {v1, v0, p1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    const-string p1, "New valid CmcInfo "

    .line 577
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "isCmcInfoEqual: false - "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CmcAccountManager"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfoUpdatedResult:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;->setProfileUpdateReason(Ljava/lang/String;)V

    return v0

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method private isCmcInfoValid(Lcom/sec/internal/ims/core/cmc/CmcInfo;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string v1, "OwnDeviceInfo null"

    goto :goto_1

    .line 539
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;->values()[Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

    move-result-object v1

    array-length v2, v1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 540
    invoke-virtual {p1, v4}, Lcom/sec/internal/ims/core/cmc/CmcInfo;->checkValid(Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 541
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " empty"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const-string v1, ""

    .line 547
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const-string v3, "CmcAccountManager"

    if-nez v2, :cond_3

    .line 548
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCmcInfoValid: fail - "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfoUpdatedResult:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;->setProfileUpdateReason(Ljava/lang/String;)V

    return v0

    .line 552
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isCmcInfoValid: true "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/cmc/CmcInfo;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method private isCmcProfile(Lcom/sec/ims/settings/ImsProfile;)Z
    .locals 0

    .line 1013
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p1, 0x7

    if-eq p0, p1, :cond_0

    const/16 p1, 0x8

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isCmcRegistrationRequired()Z
    .locals 3

    .line 327
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isCmcActivated()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "CmcAccountManager"

    if-nez v0, :cond_0

    const-string p0, "isCmcRegistrationRequired: CMC not activated"

    .line 328
    invoke-static {v2, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 332
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->hasCallForkingService()Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "isCmcRegistrationRequired: CMC Call forking disabled"

    .line 333
    invoke-static {v2, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private isCmcServiceInstalled()Z
    .locals 3

    .line 1024
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.samsung.android.mdecservice"

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 1025
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "isCmcServiceInstalled: true"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    .line 1028
    :catch_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v0, "isCmcServiceInstalled: false"

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private isEmergencyNumberInternal(Ljava/lang/String;IZ)Z
    .locals 4

    .line 953
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isSupportDualSimCMC()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget p2, p2, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineSlotIndex:I

    :goto_0
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 954
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEmergencyNumberMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEmergencyNumberMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 957
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEmergencyNumberInternal: current emergencyNumbers: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEmergencyNumberMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CmcAccountManager"

    invoke-static {v2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 960
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEmergencyNumberMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz p3, :cond_3

    .line 962
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    return v1

    .line 966
    :cond_3
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    return v1

    :cond_4
    :goto_1
    return v0
.end method

.method private isPdHasCallForkingService()Z
    .locals 1

    .line 622
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getPrimaryDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getCmcCallActivation(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 623
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v0, "isPdHasCallForkingService: PD CmcCallActivation false"

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private isReadyRegisterP2p()Z
    .locals 3

    const/4 v0, 0x0

    .line 358
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v1, "com.samsung.android.mdecservice"

    const/16 v2, 0x80

    .line 360
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 362
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz p0, :cond_0

    const-string v1, "d2d_trial"

    .line 364
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v1, "CmcAccountManager"

    .line 369
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method

.method private isRegisterTaskAllowedToStartSA()Z
    .locals 4

    .line 753
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getCmcPhoneId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getCmcRegisterTask(I)Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 757
    :cond_0
    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v2, v3}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v2}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v2

    .line 758
    invoke-interface {v0, v2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isSABindRetryOver()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private isSABindRetryOver()Z
    .locals 1

    .line 1184
    iget p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSARequestRetryCount:I

    const/4 v0, 0x3

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSdHasCallForkingService()Z
    .locals 3

    .line 630
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 632
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v0, "isSdHasCallForkingService: deviceId is null"

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    return v1

    .line 635
    :cond_0
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isCallAllowedSdByPd(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 636
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v0, "isSdHasCallForkingService: isCallAllowedSdByPd false"

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    return v1

    .line 639
    :cond_1
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getCmcCallActivation(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 640
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v0, "isSdHasCallForkingService: Device CmcCallActivation false"

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    return v1

    .line 643
    :cond_2
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isPdHasCallForkingService()Z

    move-result v0

    if-nez v0, :cond_3

    .line 644
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v0, "isSdHasCallForkingService: PD CmcCallActivation false"

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic lambda$onHotspotStateChanged$0(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z
    .locals 2

    .line 1249
    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v0, v1}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$onHotspotStateChanged$1(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z
    .locals 2

    .line 1269
    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v0, v1}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$onHotspotStateChanged$2(Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V
    .locals 2

    .line 1270
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result p1

    const-wide/16 v0, 0x0

    invoke-interface {p0, p1, v0, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->requestTryRegsiter(IJ)V

    return-void
.end method

.method private makeProfileMap()V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    .line 143
    :goto_0
    iget v2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mPhoneCount:I

    if-ge v1, v2, :cond_4

    .line 144
    iget-object v2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mContext:Landroid/content/Context;

    const-string v3, "MDMN"

    invoke-static {v2, v3, v1}, Lcom/sec/ims/settings/ImsProfileLoader;->getProfileListWithMnoName(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    .line 146
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/settings/ImsProfile;

    .line 147
    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SamsungCMC"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    const-string v2, "CmcAccountManager"

    if-nez v3, :cond_2

    .line 154
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeProfileMap: No pre-defined profile slot: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 158
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "makeProfileMap: CMC profile found slot: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isSecondaryDevice()Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0xc

    const/16 v4, 0xe

    const/4 v5, 0x6

    const/4 v6, 0x5

    .line 160
    filled-new-array {v5, v6, v2, v4}, [I

    move-result-object v2

    .line 162
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    const-string v5, "mmtel"

    .line 163
    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move v5, v0

    :goto_2
    const/4 v6, 0x4

    if-ge v5, v6, :cond_3

    .line 164
    aget v6, v2, v5

    .line 165
    invoke-virtual {v3, v6, v4}, Lcom/sec/ims/settings/ImsProfile;->setServiceSet(ILjava/util/Set;)V

    const/4 v7, 0x1

    .line 166
    invoke-virtual {v3, v6, v7}, Lcom/sec/ims/settings/ImsProfile;->setNetworkEnabled(IZ)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 169
    :cond_3
    iget-object v2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mProfileMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method private needDeregiOnDeviceChange(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z
    .locals 5

    .line 1034
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfoUpdatedResult:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;->getChangedCmcInfoList()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1035
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfoUpdatedResult:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;->getChangedCmcInfoList()Ljava/util/Set;

    move-result-object v0

    sget-object v2, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;->NETWORK_PREF:Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    const-string v3, "CmcAccountManager"

    if-eqz v0, :cond_0

    .line 1036
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getRegistrationRat()I

    move-result v0

    const/16 v4, 0x12

    if-ne v0, v4, :cond_0

    const-string p0, "needDeregiOnDeviceChange: false with WiFi"

    .line 1037
    invoke-static {v3, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 1040
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfoUpdatedResult:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;->getChangedCmcInfoList()Ljava/util/Set;

    move-result-object v0

    sget-object v4, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;->ACCESS_TOKEN:Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfoUpdatedResult:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;

    .line 1041
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;->getChangedCmcInfoList()Ljava/util/Set;

    move-result-object v0

    sget-object v4, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;->PCSCF_ADDR_LIST:Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mContext:Landroid/content/Context;

    .line 1042
    invoke-static {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object p0

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v0

    invoke-interface {p0, v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getCallState(I)I

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "needDeregiOnDeviceChange: false: access token or pcscf update in call state"

    .line 1044
    invoke-static {v3, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    invoke-interface {p1, v1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setHasPendingDeregister(Z)V

    return v2

    :cond_2
    return v1
.end method

.method private onHotspotStateChanged()V
    .locals 6

    .line 1236
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isHotspotEnabled()Z

    move-result v0

    .line 1237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHotspotStateChanged: isHotspotEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CmcAccountManager"

    invoke-static {v2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1239
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mIsHotspotUpdatePendingDuringRegistering:Z

    .line 1240
    iget-object v3, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1242
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getCmcRegisterTaskList()Ljava/util/List;

    move-result-object v3

    .line 1243
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string p0, "onHotspotStateChanged: Empty CMC RegisterTask"

    .line 1245
    invoke-static {v2, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1249
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v4

    .line 1250
    invoke-interface {v4}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    if-eqz v4, :cond_3

    .line 1253
    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v3}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v3

    invoke-interface {v4, v3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1254
    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v0

    const-string v1, "onHotspotStateChanged: Pending to update hotspot state"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x1

    .line 1255
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mIsHotspotUpdatePendingDuringRegistering:Z

    return-void

    .line 1258
    :cond_1
    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getRegistrationRat()I

    move-result v3

    const/16 v5, 0x12

    if-ne v3, v5, :cond_2

    .line 1260
    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v1

    const-string v3, "onHotspotStateChanged: Update hotspot state"

    invoke-static {v2, v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1261
    invoke-direct {p0, v4, v0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->updateHotspotStateToStack(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Z)V

    goto :goto_0

    :cond_2
    if-nez v0, :cond_4

    .line 1263
    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v0

    const-string v3, "onHotspotStateChanged: Deregister CMC on hotspot disabled"

    invoke-static {v2, v0, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "CMC Hotspot disabled"

    const/4 v2, 0x4

    .line 1264
    invoke-direct {p0, v4, v0, v2, v1}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->triggerDeregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;IZ)V

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    const-string p0, "onHotspotStateChanged: Try register CMC when hotspot enabled"

    .line 1267
    invoke-static {v2, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1268
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p0

    .line 1269
    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$$ExternalSyntheticLambda2;-><init>(Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;)V

    .line 1270
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private onSaUpdated()V
    .locals 3

    const-string v0, "onSaUpdated: "

    const-string v1, "CmcAccountManager"

    .line 801
    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->updateCmcPref()V

    .line 803
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 808
    :cond_0
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mIsCmcProfileAdded:Z

    if-nez v0, :cond_1

    .line 809
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->startCmcRegistration()V

    goto :goto_0

    :cond_1
    const-string v0, "onSaUpdated: notifyCmcDeviceChanged with access token"

    .line 811
    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->notifyCmcDeviceChanged()V

    :goto_0
    return-void
.end method

.method private onStartCmcRegistration()V
    .locals 6

    .line 275
    sget-boolean v0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mIsCmcServiceInstalled:Z

    if-nez v0, :cond_0

    .line 276
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v0, "onStartCmcRegistration: Cmc service not installed"

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    return-void

    .line 279
    :cond_0
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mIsCmcProfileAdded:Z

    const-string v1, "CmcAccountManager"

    if-eqz v0, :cond_1

    const-string p0, "onStartCmcRegistration: Cmc Profile is already added"

    .line 280
    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 283
    :cond_1
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isCmcRegistrationRequired()Z

    move-result v0

    if-nez v0, :cond_2

    const-string p0, "onStartCmcRegistration: CMC registration is not required"

    .line 284
    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 288
    :cond_2
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 289
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/base/IServiceModule;->isRunning()Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "Start VoLteService"

    .line 290
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/base/IServiceModule;->start()V

    .line 294
    :cond_3
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->updateCmcProfile()V

    .line 295
    iget-object v2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfoUpdatedResult:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;->isFailed()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string p0, "onStartCmcRegistration: updateCmcProfile failed"

    .line 296
    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    const/4 v2, 0x0

    move v3, v2

    .line 300
    :goto_0
    iget v4, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mPhoneCount:I

    if-ge v3, v4, :cond_6

    .line 301
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getCmcRegisterTask(I)Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    move-result-object v4

    if-eqz v4, :cond_5

    const-string p0, "onStartCmcRegistration: manual deregister is ongoing"

    .line 302
    invoke-static {v1, v3, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 307
    :cond_6
    iget-object v3, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onStartCmcRegistration: registerProfile CMC: same WiFi: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isSupportSameWiFiOnly()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", ecall: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isEmergencyCallSupported()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 307
    invoke-virtual {v3, v4}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 309
    :goto_1
    iget v3, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mPhoneCount:I

    if-ge v2, v3, :cond_7

    .line 310
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->registerProfile(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    const/4 v2, 0x1

    .line 312
    iput-boolean v2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mIsCmcProfileAdded:Z

    .line 314
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isCmcSupportedOnHotspot()Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "onStartCmcRegistration: registerHotspotStateChangeEvent"

    .line 315
    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    iget-object v2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHotspotManager:Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;

    iget-object v3, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    const/16 v4, 0x9

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;->registerHotspotStateChangeEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_8
    if-eqz v0, :cond_9

    const-string v2, "onStartCmcRegistration: update lineId and deviceId for p2p"

    .line 320
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "urn:duid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget-object v2, v2, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 322
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getCmcServiceHelper()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/ICmcServiceHelper;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineId:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/ICmcServiceHelper;->setP2pServiceInfo(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method private onStopCmcRegistration()V
    .locals 5

    .line 376
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mIsCmcProfileAdded:Z

    const-string v1, "CmcAccountManager"

    if-nez v0, :cond_0

    const-string p0, "onStopCmcRegistration: no profile added"

    .line 377
    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    move v2, v0

    .line 381
    :goto_0
    iget v3, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mPhoneCount:I

    if-ge v2, v3, :cond_2

    .line 382
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getCmcRegisterTask(I)Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    move-result-object v3

    if-nez v3, :cond_1

    const-string p0, "onStopCmcRegistration: manual register is ongoing"

    .line 383
    invoke-static {v1, v2, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 388
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onStopCmcRegistration: deregisterProfile: activation["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isCmcActivated()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "] isSD["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isSecondaryDevice()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "] hasCallForking["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->hasCallForkingService()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 388
    invoke-virtual {v2, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 392
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isReadyRegisterP2p()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isSdHasCallForkingService()Z

    move-result v2

    if-nez v2, :cond_3

    .line 393
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getICmcConnectivityController()Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;->stopRegi()V

    .line 394
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mIsCmcProfileAdded:Z

    return-void

    :cond_3
    move v2, v0

    .line 398
    :goto_1
    iget v3, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mPhoneCount:I

    if-ge v2, v3, :cond_5

    .line 399
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getProfile(I)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 401
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v4

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v3

    invoke-interface {v4, v3, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->deregisterProfile(II)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 404
    :cond_5
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mIsCmcProfileAdded:Z

    .line 406
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isCmcSupportedOnHotspot()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "onStopCmcRegistration: unRegisterHotspotStateChangeEvent"

    .line 407
    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHotspotManager:Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;

    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;->unregisterHotspotStateChangeEvent(Landroid/os/Handler;)V

    :cond_6
    return-void
.end method

.method private registerProfile(I)V
    .locals 3

    .line 342
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isReadyRegisterP2p()Z

    move-result v0

    const-string v1, "CmcAccountManager"

    if-eqz v0, :cond_0

    const-string/jumbo p1, "registerProfile: ready to D2D register"

    .line 343
    invoke-static {v1, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getICmcConnectivityController()Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mDeviceId:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineOwnerDeviceId:Ljava/lang/String;

    invoke-interface {p1, v0, p0}, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;->startRegi(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 348
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerProfile("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getProfile(I)Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 351
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->registerProfile(Lcom/sec/ims/settings/ImsProfile;I)I

    :cond_1
    return-void
.end method

.method private resetSARetryCount()V
    .locals 1

    const/4 v0, 0x0

    .line 1180
    iput v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSARequestRetryCount:I

    return-void
.end method

.method private startDelayedCmcRegistration(I)V
    .locals 2

    .line 179
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v0, p1

    const/4 p1, 0x3

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private startSAServiceInternal(Z)V
    .locals 0

    .line 727
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->resetSARetryCount()V

    .line 728
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSaService:Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->connectToSamsungAccountService(Z)V

    return-void
.end method

.method private stopCmcRegistration()V
    .locals 1

    .line 183
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private triggerDeregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;IZ)V
    .locals 1

    .line 1203
    invoke-interface {p1, p2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setReason(Ljava/lang/String;)V

    .line 1204
    invoke-interface {p1, p3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setDeregiReason(I)V

    .line 1205
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "triggerDeregister: deregister slot["

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] reason["

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] isLocal["

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1207
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p0

    const/4 p3, 0x0

    invoke-interface {p0, p1, p4, p3, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    return-void
.end method

.method private updateCmcPref()V
    .locals 4

    .line 832
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getSharedPreference()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "CmcAccountManager"

    if-nez v0, :cond_0

    const-string/jumbo p0, "updateCmcPref: sp is null"

    .line 834
    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 837
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "accesstoken"

    .line 839
    iget-object v3, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSaToken:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "saurl"

    .line 840
    iget-object v3, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSaUrl:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 841
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 843
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateCmcPref: token: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSaToken:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", SaUrl: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSaUrl:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateCmcProfile()V
    .locals 3

    .line 504
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    .line 505
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getCmcInfo()Lcom/sec/internal/ims/core/cmc/CmcInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    .line 506
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfoUpdatedResult:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;->clearChangedCmcInfoList()V

    .line 508
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isCmcInfoValid(Lcom/sec/internal/ims/core/cmc/CmcInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 509
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateCmcProfile: Invalid CmcInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfoUpdatedResult:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;->getProfileUpdateReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 510
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfoUpdatedResult:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;

    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult$ProfileUpdateResult;->FAILED:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult$ProfileUpdateResult;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;->setProfileUpdatedResult(Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult$ProfileUpdateResult;)V

    return-void

    .line 514
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isCmcInfoEqual(Lcom/sec/internal/ims/core/cmc/CmcInfo;Lcom/sec/internal/ims/core/cmc/CmcInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "CmcAccountManager"

    const-string/jumbo v1, "updateCmcProfile: Same CmcInfo"

    .line 515
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfoUpdatedResult:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;

    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult$ProfileUpdateResult;->NOT_UPDATED:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult$ProfileUpdateResult;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;->setProfileUpdatedResult(Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult$ProfileUpdateResult;)V

    return-void

    .line 520
    :cond_1
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->initProfile()V

    .line 521
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->setPcscfList()V

    .line 523
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateCmcProfile: Update CmcInfo: Line["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget v2, v2, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineSlotIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfoUpdatedResult:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;

    .line 524
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;->getProfileUpdateReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 523
    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 525
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfoUpdatedResult:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;

    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult$ProfileUpdateResult;->UPDATED:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult$ProfileUpdateResult;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;->setProfileUpdatedResult(Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult$ProfileUpdateResult;)V

    return-void
.end method

.method private updateHotspotStateToStack(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Z)V
    .locals 4

    if-eqz p2, :cond_0

    .line 1275
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHotspotManager:Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;->getHotspotAddressesWithSubnetPrefix()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_0
    const-string v1, "CmcAccountManager"

    if-eqz p2, :cond_2

    .line 1276
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1278
    iget-boolean p2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mIsHotspotStateUpdateDelay:Z

    if-nez p2, :cond_1

    const/4 p2, 0x1

    .line 1279
    iput-boolean p2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mIsHotspotStateUpdateDelay:Z

    .line 1280
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    const/16 p2, 0x9

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, p2, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1281
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result p0

    const-string/jumbo p2, "updateHotspotStateToStack: Delay hotspot state update"

    invoke-static {v1, p0, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1283
    :cond_1
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result p0

    const-string/jumbo p1, "updateHotspotStateToStack: Hotspot ip is not updated in hotspot enabled state"

    invoke-static {v1, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_2
    const/4 v2, 0x0

    .line 1287
    iput-boolean v2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mIsHotspotStateUpdateDelay:Z

    .line 1288
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateHotspotStateToStack:  isHotspotEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", hotspotAddresses: "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1289
    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1288
    invoke-static {v1, p0, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1290
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getUserAgent()Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/core/IUserAgent;->updateCmcHotspotState(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public dump()V
    .locals 0

    .line 1294
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {p0}, Lcom/sec/internal/helper/SimpleEventLog;->dump()V

    return-void
.end method

.method public getAccessTokenFromCmcPref()Ljava/lang/String;
    .locals 2

    const-string v0, "accesstoken"

    .line 847
    sget-object v1, Lcom/sec/internal/ims/core/cmc/CmcConstants$SA;->TOKEN_DEFAULT:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getSharedPrefString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 848
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAccessTokenFromCmcPref: token: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CmcAccountManager"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public getCmcRegiConfigForUserAgent()Landroid/os/Bundle;
    .locals 3

    .line 879
    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;->SA_SERVER_URL:Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;

    iget-object v2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget-object v2, v2, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mSaServerUrl:Ljava/lang/String;

    .line 880
    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder;->setData(Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;Ljava/lang/Object;)Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;->RELAY_TYPE:Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;

    .line 881
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getCmcRelayType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder;->setData(Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;Ljava/lang/Object;)Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;->EMERGENCY_CALL_NUMBERS:Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;

    .line 882
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getEmergencyCallNumberString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder;->setData(Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;Ljava/lang/Object;)Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;->SUPPORT_DUAL_SIM_CMC:Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;

    .line 883
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isSupportDualSimCMC()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder;->setData(Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;Ljava/lang/Object;)Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;->HOTSPOT_ADDRESSES:Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;

    .line 885
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isCmcSupportedOnHotspot()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHotspotManager:Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;->getHotspotAddressesWithSubnetPrefix()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 884
    :goto_0
    invoke-virtual {v0, v1, p0}, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder;->setData(Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder$CmcRegiConfig;Ljava/lang/Object;)Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder;

    move-result-object p0

    .line 886
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcRegiConfigBuilder;->buildBundle()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getCmcRegisterTask(I)Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    .locals 3

    .line 858
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    .line 859
    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getPendingRegistration(I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "CmcAccountManager"

    const-string v0, "getCmcRegisterTask: rtl is null"

    .line 861
    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-object v1

    .line 864
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 865
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isCmcProfile(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    :cond_2
    return-object v1
.end method

.method public getCurrentLineOwnerDeviceId()Ljava/lang/String;
    .locals 0

    .line 698
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineOwnerDeviceId:Ljava/lang/String;

    return-object p0
.end method

.method public getCurrentLineSlotIndex()I
    .locals 0

    .line 693
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget p0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineSlotIndex:I

    return p0
.end method

.method public getRegiEventNotifyHostInfo()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 792
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mRegiEventNotifyHostInfo:Ljava/util/List;

    return-object p0
.end method

.method public handleSARequestFailed(Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;)V
    .locals 5

    .line 1142
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1144
    iget v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSARequestRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSARequestRetryCount:I

    const-string v1, "CmcAccountManager"

    const/4 v2, 0x3

    if-le v0, v2, :cond_0

    .line 1146
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleSARequestFailed: ignore fail: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;->description()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1150
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSARequestFailed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;->description()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", retry("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSARequestRetryCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1154
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;->NOT_LOGGED_IN:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;

    if-eq p1, v0, :cond_5

    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;->RESIGN_REQUIRED:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;

    if-eq p1, v0, :cond_5

    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;->OTHERS:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 1159
    :cond_1
    sget-object v0, Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;->NETWORK_UNAVAILABLE:Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;

    if-ne p1, v0, :cond_3

    .line 1161
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getCmcPhoneId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getCmcRegisterTask(I)Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1162
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isThrottled()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "handleSARequestFailed: release throttle"

    .line 1163
    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1164
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->releaseThrottleByCmc(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 1166
    :cond_2
    iput v2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSARequestRetryCount:I

    goto :goto_1

    .line 1167
    :cond_3
    iget p1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSARequestRetryCount:I

    if-ge p1, v2, :cond_4

    .line 1169
    iget-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSaService:Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->tryGetAccessToken()V

    goto :goto_1

    :cond_4
    const-string p1, "handleSARequestFailed: max count"

    .line 1171
    invoke-static {v1, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    :goto_0
    const-string p1, "handleSARequestFailed: stop requesting"

    .line 1157
    invoke-static {v1, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1158
    iput v2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSARequestRetryCount:I

    .line 1174
    :goto_1
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isSABindRetryOver()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1175
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSaService:Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->disconnectToSamsungAccountService()V

    :cond_6
    return-void
.end method

.method public hasSecondaryDevice()Z
    .locals 2

    .line 703
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->getDeviceType()Ljava/lang/String;

    move-result-object v0

    .line 704
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->getDeviceIdList()Ljava/util/List;

    move-result-object p0

    .line 705
    invoke-static {v0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$DeviceType;->isPD(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-gt p0, v1, :cond_0

    const-string p0, "CmcAccountManager"

    const-string v0, "hasSecondaryDevice : no SD with current PD"

    .line 706
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    return v1
.end method

.method public initSequentially()V
    .locals 2

    .line 133
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    .line 134
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->init()V

    .line 135
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->makeProfileMap()V

    .line 136
    sget-boolean v0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mIsCmcServiceInstalled:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->isWifiOnlyModel()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CmcAccountManager"

    const-string v1, "initSequentially: start cmc registration for wifi only model"

    .line 137
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    .line 138
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->startDelayedCmcRegistration(I)V

    :cond_0
    return-void
.end method

.method public isCmcActivated()Z
    .locals 0

    .line 614
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->getOwnCmcActivation()Z

    move-result p0

    return p0
.end method

.method public isCmcEnabled()Z
    .locals 3

    .line 763
    sget-boolean v0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mIsCmcServiceInstalled:Z

    const-string v1, "CmcAccountManager"

    if-nez v0, :cond_0

    const-string p0, "isCmcEnabled: Not installed "

    .line 764
    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 767
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isCmcActivated()Z

    move-result p0

    .line 768
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCmcEnabled: CmcActivated: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public isCmcProfileAdded()Z
    .locals 0

    .line 530
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mIsCmcProfileAdded:Z

    return p0
.end method

.method public isCmcSupportedOnHotspot()Z
    .locals 1

    const-string/jumbo p0, "persist.cmc.support_hotspot"

    const-string v0, ""

    .line 1222
    invoke-static {p0, v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    .line 1223
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isEmergencyCallSupported()Z
    .locals 2

    const-string/jumbo v0, "persist.cmc.enable_cmc30"

    const-string v1, ""

    .line 910
    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    .line 911
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 914
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->isEmergencyCallSupported()Z

    move-result p0

    return p0
.end method

.method public isEmergencyNumber(Ljava/lang/String;I)Z
    .locals 1

    const/4 v0, 0x1

    .line 940
    invoke-direct {p0, p1, p2, v0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isEmergencyNumberInternal(Ljava/lang/String;IZ)Z

    move-result p0

    .line 941
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isEmergencyNumber: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", number: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CmcAccountManager"

    invoke-static {p2, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public isHotspotEnabled()Z
    .locals 0

    .line 1232
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHotspotManager:Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;->isHotspotEnabled()Z

    move-result p0

    return p0
.end method

.method public isPotentialEmergencyNumber(Ljava/lang/String;I)Z
    .locals 1

    const/4 v0, 0x0

    .line 947
    invoke-direct {p0, p1, p2, v0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isEmergencyNumberInternal(Ljava/lang/String;IZ)Z

    move-result p0

    .line 948
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isPotentialEmergencyNumber: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", number: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CmcAccountManager"

    invoke-static {p2, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public isProfileUpdateFailed()Z
    .locals 0

    .line 874
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfoUpdatedResult:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;->isFailed()Z

    move-result p0

    return p0
.end method

.method public isSecondaryDevice()Z
    .locals 4

    .line 774
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    const/4 v0, 0x0

    const-string v1, "CmcAccountManager"

    if-nez p0, :cond_0

    const-string p0, "isSecondaryDevice : cmcsetting is null"

    .line 775
    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 778
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->getDeviceType()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$DeviceType;->isSD(Ljava/lang/String;)Z

    move-result p0

    const/4 v2, 0x1

    if-eqz p0, :cond_1

    const-string p0, "isSecondaryDevice: by cmcsetting"

    .line 779
    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1
    const-string/jumbo p0, "ro.cmc.device_type"

    const-string v3, ""

    .line 782
    invoke-static {p0, v3}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 783
    invoke-static {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$DeviceType;->isSD(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "isSecondaryDevice: by prop"

    .line 784
    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_2
    return v0
.end method

.method public isSupportDualSimCMC()Z
    .locals 2

    const-string/jumbo v0, "persist.cmc.enable_dualsim_cmc"

    const-string v1, ""

    .line 900
    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    .line 901
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 904
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSupportDualSimCMC: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget-boolean v1, v1, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mIsDualCmc:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CmcAccountManager"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget-boolean p0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mIsDualCmc:Z

    return p0
.end method

.method public isSupportSameWiFiOnly()Z
    .locals 2

    const-string/jumbo v0, "persist.cmc.enable_cmc30"

    const-string v1, ""

    .line 891
    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    .line 892
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 895
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcSetting:Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->isSameWifiNetworkOnly()Z

    move-result p0

    return p0
.end method

.method public isWifiOnly()Z
    .locals 1

    .line 714
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget p0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mNetworkPref:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public notifyCmcDeviceChanged()V
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 191
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public notifyCmcNwPrefChanged()V
    .locals 4

    .line 195
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 198
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    const-wide/16 v2, 0x258

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onChangedSamsungAccountInfo(Ljava/lang/String;)V
    .locals 2

    .line 732
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isCmcProfileAdded()Z

    move-result v0

    const-string v1, "CmcAccountManager"

    if-nez v0, :cond_0

    const-string p0, "onChangedSamsungAccountInfo: CmcProfile is not added state"

    .line 733
    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 736
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSaService:Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->isSAServiceIdle()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "onChangedSamsungAccountInfo: SA service not IDLE state"

    .line 737
    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 740
    :cond_1
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isRegisterTaskAllowedToStartSA()Z

    move-result v0

    if-nez v0, :cond_2

    const-string p0, "onChangedSamsungAccountInfo: CmcTask is not allowed for start SA"

    .line 741
    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 744
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getAccessTokenFromCmcPref()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    .line 748
    :cond_3
    iget-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v0, "onChangedSamsungAccountInfo: startSAService"

    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 749
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->startSAService(Z)V

    return-void

    :cond_4
    :goto_0
    const-string p0, "onChangedSamsungAccountInfo: AccessToken is empty or same with the previous one"

    .line 745
    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onCmcDeviceChanged()V
    .locals 8

    .line 202
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    const-string v1, "CmcAccountManager"

    if-nez v0, :cond_0

    const-string p0, "onCmcDeviceChanged: RegistrationManagerBase is null"

    .line 204
    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v2, 0x0

    move v3, v2

    .line 208
    :goto_0
    iget v4, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mPhoneCount:I

    if-ge v3, v4, :cond_2

    .line 209
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getCmcRegisterTask(I)Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 210
    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->DEREGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v4, v5, :cond_1

    const-string p0, "onCmcDeviceChanged: deregistering"

    .line 211
    invoke-static {v1, v3, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 216
    :cond_2
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getCmcPhoneId()I

    move-result v3

    .line 218
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getCmcRegisterTask(I)Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 220
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->updateCmcProfile()V

    .line 221
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->isCmcRegistrationRequired()Z

    move-result v5

    if-nez v5, :cond_3

    const-string v0, "onCmcDeviceChanged: stopCmcRegistration"

    .line 222
    invoke-static {v1, v3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 223
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->stopCmcRegistration()V

    return-void

    .line 225
    :cond_3
    iget-object v5, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfoUpdatedResult:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;->isNotUpdated()Z

    move-result v5

    if-eqz v5, :cond_4

    const-string p0, "onCmcDeviceChanged: Not updated"

    .line 226
    invoke-static {v1, v3, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 230
    :cond_4
    iget-object v5, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mRm:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v5, v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->releaseThrottleByCmc(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 234
    iget-object v5, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget-object v5, v5, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mDeviceType:Ljava/lang/String;

    invoke-static {v5}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$DeviceType;->isPD(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfoUpdatedResult:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;->isUpdated()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 235
    iget-object v5, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget v5, v5, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineSlotIndex:I

    goto :goto_1

    :cond_5
    move v5, v3

    .line 238
    :goto_1
    sget-object v6, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v7, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v6, v7}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 239
    invoke-direct {p0, v4}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->needDeregiOnDeviceChange(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z

    move-result v6

    if-eqz v6, :cond_8

    if-eq v5, v3, :cond_6

    const/4 v2, 0x1

    :cond_6
    const-string v3, "CMC profile updated"

    const/16 v6, 0x1d

    .line 241
    invoke-direct {p0, v4, v3, v6, v2}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->triggerDeregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;IZ)V

    goto :goto_2

    .line 243
    :cond_7
    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v6, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v2, v6}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v2

    invoke-interface {v4, v2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 244
    iget-object v2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCmcDeviceChanged: stopPdn slot["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 245
    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPdnType()I

    move-result v2

    invoke-interface {v0, v2, v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 246
    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-interface {v4, v2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 249
    :cond_8
    :goto_2
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object v2

    if-eqz v2, :cond_9

    const-string v3, "onCmcDeviceChanged: update lineId and deviceId for p2p"

    .line 251
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "urn:duid:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget-object v3, v3, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 253
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getCmcServiceHelper()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/ICmcServiceHelper;

    move-result-object v2

    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineId:Ljava/lang/String;

    invoke-interface {v2, v1, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/ICmcServiceHelper;->setP2pServiceInfo(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    const-wide/16 v1, 0x1f4

    .line 256
    invoke-interface {v0, v5, v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->requestTryRegsiter(IJ)V

    goto :goto_3

    :cond_a
    const-string v0, "onCmcDeviceChanged: startCmcRegistration"

    .line 258
    invoke-static {v1, v3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 259
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->startCmcRegistration()V

    :goto_3
    return-void
.end method

.method public onDeregistrationDone(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V
    .locals 0

    .line 1197
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->notifyCmcDeviceChanged()V

    const/4 p1, 0x0

    .line 1198
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mIsHotspotUpdatePendingDuringRegistering:Z

    .line 1199
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mIsHotspotStateUpdateDelay:Z

    return-void
.end method

.method public onRegistrationDone(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V
    .locals 0

    .line 1189
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->notifyCmcDeviceChanged()V

    .line 1190
    iget-boolean p1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mIsHotspotUpdatePendingDuringRegistering:Z

    if-eqz p1, :cond_0

    .line 1191
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    const/16 p1, 0x9

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public onSARequestFailed(Lcom/sec/internal/ims/core/cmc/CmcSAManager$SAErrorReason;)V
    .locals 1

    .line 1138
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onSARequested()V
    .locals 3

    .line 1114
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "onSARequested: expire 31 secs"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1115
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    const/4 v0, 0x7

    const-wide/16 v1, 0x7918

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onSAServiceBindResult(ZZ)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1095
    iget-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string p2, "onSAServiceBindResult: success"

    invoke-virtual {p1, p2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1096
    iput v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSABindRetryCount:I

    return-void

    .line 1101
    :cond_0
    iget p1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSABindRetryCount:I

    const/4 v1, 0x5

    if-ge p1, v1, :cond_1

    const/4 v0, 0x1

    add-int/2addr p1, v0

    .line 1102
    iput p1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSABindRetryCount:I

    .line 1103
    iget-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSAServiceBindResult: retry ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSABindRetryCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") after "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x1e

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "secs"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1105
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x7530

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1107
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string p2, "onSAServiceBindResult: retry over"

    invoke-virtual {p1, p2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1108
    iput v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSABindRetryCount:I

    :goto_0
    return-void
.end method

.method public onSAUpdated(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1120
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "onSAUpdated"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1121
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1122
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1123
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSaService:Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->disconnectToSamsungAccountService()V

    .line 1125
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSaToken:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "CmcAccountManager"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSaService:Lcom/sec/internal/ims/core/cmc/CmcSAManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/cmc/CmcSAManager;->isLocalCachedAccessTokenRequestState()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Same updated token with the previous one. Set force update"

    .line 1126
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfoUpdatedResult:Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/cmc/CmcInfoUpdateResult;->setForceUpdate()V

    .line 1130
    :cond_0
    iput-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSaToken:Ljava/lang/String;

    .line 1131
    iput-object p2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSaUrl:Ljava/lang/String;

    .line 1132
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onSAUpdated: Url: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSaUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " token: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mSaToken:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onSimRefresh(I)V
    .locals 3

    .line 264
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSimRefresh("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 265
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mIsCmcProfileAdded:Z

    if-eqz v0, :cond_1

    .line 266
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->getCmcRegisterTask(I)Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 267
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSimRefresh: RegisterTask is already in the slot ["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CmcAccountManager"

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 270
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->registerProfile(I)V

    :cond_1
    return-void
.end method

.method public setEmergencyNumbers(Ljava/lang/String;)V
    .locals 8

    .line 919
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "CmcAccountManager"

    if-eqz v0, :cond_0

    const-string/jumbo p0, "setEmergencyNumbers: no numbers"

    .line 920
    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 923
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEmergencyNumberMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const-string v0, "\""

    const-string v2, ""

    .line 924
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "-"

    .line 925
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "\\,"

    if-eqz v3, :cond_2

    .line 926
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 927
    sget v0, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    sget v3, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_2:I

    filled-new-array {v0, v3}, [I

    move-result-object v0

    const/4 v3, 0x0

    :goto_0
    const/4 v5, 0x2

    if-ge v3, v5, :cond_3

    .line 928
    aget v5, v0, v3

    .line 929
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v5, :cond_1

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v6, v2

    .line 930
    :goto_1
    iget-object v7, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEmergencyNumberMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v7, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 933
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEmergencyNumberMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget v2, v2, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineSlotIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 935
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setEmergencyNumbers: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEmergencyNumberMap:Ljava/util/Map;

    invoke-static {p0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPcscfList()V
    .locals 9

    .line 413
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget-object v0, v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mPcscfAddrList:Ljava/util/List;

    const-string v1, "CmcAccountManager"

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mProfileMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo p0, "setPcscfList: mProfileMap is empty"

    .line 419
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 423
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mCmcInfo:Lcom/sec/internal/ims/core/cmc/CmcInfo;

    iget-object v0, v0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mPcscfAddrList:Ljava/util/List;

    .line 425
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 426
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 427
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/16 v4, 0x1f40

    move v5, v4

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, ":"

    .line 428
    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_2

    .line 429
    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x0

    .line 430
    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_2
    move v7, v4

    :goto_1
    const-string v6, "(pcscf = "

    .line 434
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " / port = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v5, v7

    goto :goto_0

    .line 437
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "pcscfList size["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mProfileMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/settings/ImsProfile;

    .line 440
    invoke-virtual {v0, v2}, Lcom/sec/ims/settings/ImsProfile;->setPcscfList(Ljava/util/List;)V

    .line 441
    invoke-virtual {v0, v5}, Lcom/sec/ims/settings/ImsProfile;->setSipPort(I)V

    goto :goto_2

    :cond_4
    return-void

    :cond_5
    :goto_3
    const-string/jumbo p0, "setPcscfList: PcscfAddrList is empty"

    .line 414
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setRegiEventNotifyHostInfo(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 797
    iput-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mRegiEventNotifyHostInfo:Ljava/util/List;

    return-void
.end method

.method public startCmcRegistration()V
    .locals 1

    .line 175
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public startSAService(Z)V
    .locals 4

    .line 720
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 721
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startSAService: request SA, isLocal: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 722
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->mHandler:Lcom/sec/internal/ims/core/cmc/CmcAccountManager$InternalHandler;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
