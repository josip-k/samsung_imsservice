.class public abstract Lcom/sec/internal/ims/core/RegistrationManager;
.super Ljava/lang/Object;
.source "RegistrationManager.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;
    }
.end annotation


# static fields
.field protected static final ADHOC_ID_SIM2_OFFSET:I = 0x4e20

.field protected static final ADHOC_IMS_PROFILE_ID_BASE:I = 0x2710

.field protected static final HANDOFF_EVENT_TIMER:I = 0x12c

.field protected static final ID_SIM2_OFFSET:I = 0x1388

.field protected static final MAX_RECOVERY_ACTION_COUNT:I = 0x7


# instance fields
.field protected mAresLookupRequired:Z

.field protected mAuEmergencyProfile:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/sec/ims/settings/ImsProfile;",
            ">;"
        }
    .end annotation
.end field

.field protected mCallState:I

.field protected mCmcAccountManager:Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

.field protected mConfigModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

.field protected mContext:Landroid/content/Context;

.field protected mEmmCause:I

.field protected mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field protected mGeolocationCon:Lcom/sec/internal/interfaces/ims/core/IGeolocationController;

.field protected mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

.field protected mHasSilentE911:Landroid/os/Message;

.field protected mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

.field protected mIsNonADSDeRegRequired:Z

.field protected mIsVolteAllowedWithDsac:Z

.field protected mJibeRcsRegistration:Lcom/sec/internal/interfaces/ims/core/IJibeRcsRegistration;

.field protected mMoveNextPcscf:Z

.field protected mNetEvtCtr:Lcom/sec/internal/ims/core/NetworkEventController;

.field protected mPdnController:Lcom/sec/internal/ims/core/PdnController;

.field protected mPhoneIdForSilentE911:I

.field protected mRcsPolicyManager:Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;

.field protected mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

.field protected mRegiRetryLimit:I

.field private mRegisterP2pListener:Lcom/sec/ims/IImsRegistrationListener;

.field protected mSecImsServiceConnector:Lcom/sec/internal/google/SecImsServiceConnector;

.field protected mSimManagers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/ISimManager;",
            ">;"
        }
    .end annotation
.end field

.field protected mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

.field protected mThirdPartyFeatureTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mUserEvtCtr:Lcom/sec/internal/ims/core/UserEventController;

.field protected mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

.field protected mlegacyPhoneCount:I


# direct methods
.method public static synthetic $r8$lambda$Sbh4Z3ws95q9RbxR4xmEurD8wxE(Lcom/sec/ims/settings/ImsProfile;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/core/RegistrationManager;->lambda$getImsProfile$2(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$TreGUfJgX-KFLd1qgjj8CRzqWuw(Lcom/sec/ims/settings/ImsProfile;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/core/RegistrationManager;->lambda$getImsProfile$1(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Ze1kP1tO6HRg4ric8b0ZcwdIBdU(Lcom/sec/internal/ims/core/RegistrationManager;Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->lambda$updatePani$8(Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$c1ec4aREWT9Vi3G9kO59MErROj8(Lcom/sec/ims/settings/ImsProfile;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/core/RegistrationManager;->lambda$getImsProfile$4(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$j5CGuDiVlrVcJoiH2ut8GkhCCqw(Lcom/sec/ims/settings/ImsProfile;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/core/RegistrationManager;->lambda$getImsProfile$0(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$jRUODeGqEGgZQgaVGe9Gobc33Oc(Lcom/sec/internal/ims/core/RegisterTask;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/core/RegistrationManager;->lambda$onUpdateSipDelegateRegistrationTimeOut$5(Lcom/sec/internal/ims/core/RegisterTask;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$k_TxVxQfYhMTu3sO27_XMdWpwMI(ILcom/sec/ims/ImsRegistration;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->lambda$getPreferredImpuOnPdn$7(ILcom/sec/ims/ImsRegistration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$m8X8nq4TR7IXDqrJ4pks1KWjIhs(Lcom/sec/internal/ims/core/RegistrationManager;I)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->lambda$getInstanceId$6(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$zGRT7EW21tWWKBeBGXr8a3uk0B0(Lcom/sec/ims/settings/ImsProfile;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/core/RegistrationManager;->lambda$getImsProfile$3(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 3

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 122
    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mGeolocationCon:Lcom/sec/internal/interfaces/ims/core/IGeolocationController;

    const/4 v1, 0x1

    .line 136
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mIsVolteAllowedWithDsac:Z

    .line 138
    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHasSilentE911:Landroid/os/Message;

    const/4 v2, -0x1

    .line 139
    iput v2, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mPhoneIdForSilentE911:I

    const/4 v2, 0x0

    .line 140
    iput-boolean v2, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mMoveNextPcscf:Z

    .line 142
    iput v2, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mCallState:I

    .line 144
    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mThirdPartyFeatureTags:Ljava/util/List;

    .line 147
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mAresLookupRequired:Z

    .line 149
    iput-boolean v2, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mIsNonADSDeRegRequired:Z

    .line 151
    iput v2, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mlegacyPhoneCount:I

    .line 153
    iput v2, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRegiRetryLimit:I

    .line 169
    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRegisterP2pListener:Lcom/sec/ims/IImsRegistrationListener;

    return-void
.end method

.method private getRegisteringEmergencyTask(I)Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
    .locals 3

    .line 2067
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return-object p1

    .line 2071
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/RegisterTask;

    .line 2072
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v1, v2, :cond_1

    return-object v0

    :cond_2
    return-object p1
.end method

.method private static synthetic lambda$getImsProfile$0(Lcom/sec/ims/settings/ImsProfile;)Z
    .locals 0

    .line 684
    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static synthetic lambda$getImsProfile$1(Lcom/sec/ims/settings/ImsProfile;)Z
    .locals 1

    const-string v0, "ims"

    .line 685
    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getPdn()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getImsProfile$2(Lcom/sec/ims/settings/ImsProfile;)Z
    .locals 0

    .line 687
    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getEnableStatus()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$getImsProfile$3(Lcom/sec/ims/settings/ImsProfile;)Z
    .locals 0

    .line 694
    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getEnableStatus()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$getImsProfile$4(Lcom/sec/ims/settings/ImsProfile;)Z
    .locals 0

    .line 701
    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getEnableStatus()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$getInstanceId$6(I)Ljava/lang/String;
    .locals 3

    .line 1434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<urn:uuid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1435
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    const-string v1, "ims_user_data"

    const-string v2, "instanceId"

    invoke-static {p1, p0, v1, v2, v0}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static synthetic lambda$getPreferredImpuOnPdn$7(ILcom/sec/ims/ImsRegistration;)Z
    .locals 0

    .line 1480
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$onUpdateSipDelegateRegistrationTimeOut$5(Lcom/sec/internal/ims/core/RegisterTask;)Z
    .locals 2

    .line 912
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/ims/settings/ImsProfile;->hasChatService(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$updatePani$8(Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;)V
    .locals 1

    .line 1714
    new-instance v0, Lcom/sec/internal/ims/core/RegistrationManager$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/RegistrationManager$$ExternalSyntheticLambda3;-><init>(Lcom/sec/internal/ims/core/RegistrationManager;)V

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private notifyImsP2pRegistration(ZLcom/sec/ims/ImsRegistration;Lcom/sec/ims/ImsRegistrationError;I)V
    .locals 3

    .line 371
    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v0

    .line 372
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyImsP2pRegistration(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegiMgr"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRegisterP2pListener:Lcom/sec/ims/IImsRegistrationListener;

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    if-lt v0, v2, :cond_1

    if-eqz p1, :cond_0

    .line 376
    :try_start_0
    invoke-interface {v1, p2}, Lcom/sec/ims/IImsRegistrationListener;->onRegistered(Lcom/sec/ims/ImsRegistration;)V

    goto :goto_0

    .line 378
    :cond_0
    new-instance p1, Lcom/sec/ims/ImsRegistrationError;

    invoke-virtual {p3}, Lcom/sec/ims/ImsRegistrationError;->getSipErrorCode()I

    move-result v0

    .line 379
    invoke-virtual {p3}, Lcom/sec/ims/ImsRegistrationError;->getSipErrorReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/sec/ims/ImsRegistrationError;->getDetailedDeregiReason()I

    move-result p3

    invoke-direct {p1, v0, v1, p3, p4}, Lcom/sec/ims/ImsRegistrationError;-><init>(ILjava/lang/String;II)V

    .line 380
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRegisterP2pListener:Lcom/sec/ims/IImsRegistrationListener;

    invoke-interface {p0, p2, p1}, Lcom/sec/ims/IImsRegistrationListener;->onDeregistered(Lcom/sec/ims/ImsRegistration;Lcom/sec/ims/ImsRegistrationError;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 383
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public addPendingUpdateRegistration(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;I)V
    .locals 4

    const/4 v0, 0x1

    .line 1374
    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setPendingUpdate(Z)V

    .line 1375
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1376
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    int-to-long v0, p2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public blockVoWifiRegisterOnRoaminByCsfbError(II)V
    .locals 2

    .line 1146
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v0, 0x90

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected buildUserAgentString(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;I)Ljava/lang/String;
    .locals 16

    move-object/from16 v1, p0

    move/from16 v2, p3

    .line 1485
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1486
    iget-object v3, v1, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "volte"

    invoke-static {v3, v4, v2}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1487
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v6

    const-string v7, ""

    const/4 v8, 0x3

    if-eqz v3, :cond_a

    .line 1491
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/RegistrationManager;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v9

    const/16 v10, 0x14

    .line 1492
    iget v9, v9, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    if-ne v10, v9, :cond_2

    .line 1494
    iget-object v9, v1, Lcom/sec/internal/ims/core/RegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    const-string/jumbo v10, "sip_ua_vonr_service_type"

    invoke-interface {v9, v2, v10, v7}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1495
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 1496
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const-string v9, "EPSFB"

    .line 1498
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const-string v9, "VoLTE"

    .line 1501
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1503
    :goto_1
    iget-object v9, v1, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "rcs"

    invoke-static {v9, v10, v2}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v5, :cond_5

    .line 1506
    sget-object v9, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v6, v9, :cond_3

    const-string v9, "ft_http"

    move-object/from16 v10, p1

    invoke-virtual {v10, v9}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    const-string v9, "RCSUP"

    .line 1507
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    move-object/from16 v10, p1

    :cond_4
    const-string v9, "RCS"

    .line 1509
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    move-object/from16 v10, p1

    .line 1513
    :goto_2
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/RegistrationManager;->getPendingRegistration(I)Ljava/util/List;

    move-result-object v9

    .line 1515
    invoke-static {v9}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v11

    if-nez v11, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/settings/ImsProfile;->isEpdgSupported()Z

    move-result v11

    if-eqz v11, :cond_6

    const-string v11, "ePDG"

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 1516
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1519
    :cond_6
    iget-object v11, v1, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    const-string v12, "mmtel-video"

    invoke-static {v11, v12, v2}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v5, :cond_7

    const-string v11, "IR94"

    .line 1520
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1523
    :cond_7
    invoke-static {v9}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v11

    if-nez v11, :cond_9

    const-string v11, "RTT"

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/settings/ImsProfile;->getTtyType()I

    move-result v12

    const/4 v13, 0x4

    if-eq v12, v13, :cond_8

    .line 1524
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/settings/ImsProfile;->getTtyType()I

    move-result v12

    if-ne v12, v8, :cond_9

    .line 1525
    :cond_8
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1528
    :cond_9
    invoke-static {v9}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v9

    if-nez v9, :cond_b

    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/settings/ImsProfile;->getSupport3gppUssi()Z

    move-result v9

    if-eqz v9, :cond_b

    const-string/jumbo v9, "ussd"

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_b

    .line 1529
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_a
    move-object/from16 v10, p1

    const-string v9, "TAS"

    .line 1532
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1534
    :cond_b
    :goto_3
    sget-object v9, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v6, v9, :cond_c

    const-string v9, "VVM"

    .line 1535
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1540
    :cond_c
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v9, v7

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1541
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_d

    const-string v12, "-"

    .line 1542
    invoke-virtual {v9, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1544
    :cond_d
    invoke-virtual {v9, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_4

    :cond_e
    const-string v0, "[SUPPORT]"

    move-object/from16 v11, p2

    .line 1548
    invoke-virtual {v11, v0, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v11, "[OS_VERSION]"

    .line 1549
    sget-object v12, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v0, "ro.build.PDA"

    .line 1550
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1551
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/settings/ImsProfile;->getUiccMobilityVersion()Ljava/lang/String;

    move-result-object v13

    const-string v0, "[IMEISV]"

    .line 1552
    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    const-string v5, "RegiMgr"

    if-eqz v14, :cond_f

    const-string v14, "iphonesubinfo"

    .line 1553
    invoke-static {v14}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v14

    invoke-static {v14}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v14

    if-eqz v14, :cond_f

    .line 1556
    :try_start_0
    iget-object v8, v1, Lcom/sec/internal/ims/core/RegistrationManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v8, v2}, Lcom/sec/internal/helper/os/ITelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_f

    .line 1557
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v4, 0xe

    if-le v15, v4, :cond_f

    .line 1558
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x0

    invoke-virtual {v8, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "imsservice"
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v8, 0x0

    :try_start_1
    invoke-interface {v14, v4, v8}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDeviceSvn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1559
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "imeiSV = "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1560
    invoke-virtual {v11, v0, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1561
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "inside sipUserAgent = "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v11, v4

    goto :goto_6

    :catch_0
    move-exception v0

    move-object v11, v4

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    const/4 v8, 0x0

    .line 1565
    :goto_5
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_6

    :cond_f
    const/4 v8, 0x0

    .line 1569
    :goto_6
    iget-object v0, v1, Lcom/sec/internal/ims/core/RegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    move-result-object v0

    .line 1570
    iget-object v4, v1, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/settings/ImsProfile;->getRcsProfile()Ljava/lang/String;

    move-result-object v10

    if-eqz v0, :cond_10

    .line 1571
    invoke-interface {v0, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v15

    goto :goto_7

    :cond_10
    move-object v15, v8

    .line 1570
    :goto_7
    invoke-static {v4, v10, v11, v2, v15}, Lcom/sec/internal/ims/core/RegistrationUtils;->replaceEnablerPlaceholderWithEnablerVersion(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/sec/internal/ims/servicemodules/im/ImConfig;)Ljava/lang/String;

    move-result-object v0

    .line 1572
    invoke-virtual {v6}, Lcom/sec/internal/constants/Mno;->isTmobile()Z

    move-result v4

    const-string v8, "[BUILD_VERSION]"

    if-nez v4, :cond_11

    sget-object v4, Lcom/sec/internal/constants/Mno;->TELEKOM_ALBANIA:Lcom/sec/internal/constants/Mno;

    if-ne v6, v4, :cond_12

    :cond_11
    if-eqz v12, :cond_12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v10, 0x8

    if-le v4, v10, :cond_12

    .line 1573
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v10

    invoke-virtual {v12, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v8, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8

    .line 1574
    :cond_12
    sget-object v4, Lcom/sec/internal/constants/Mno;->PLUS_POLAND:Lcom/sec/internal/constants/Mno;

    const-string/jumbo v10, "ril.sw_ver"

    const-string v11, "_"

    if-ne v6, v4, :cond_14

    if-eqz v12, :cond_14

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v14, 0x3

    if-le v4, v14, :cond_14

    .line 1576
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v14

    invoke-virtual {v12, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 1577
    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v12, "ril.official_cscver"

    .line 1578
    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v10, :cond_13

    .line 1579
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v15

    if-le v15, v14, :cond_13

    if-eqz v12, :cond_13

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v15

    if-le v15, v14, :cond_13

    .line 1580
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v15

    sub-int/2addr v15, v14

    invoke-virtual {v10, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 1581
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v15

    sub-int/2addr v15, v14

    invoke-virtual {v12, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 1582
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1584
    :cond_13
    invoke-virtual {v0, v8, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 1585
    :cond_14
    invoke-virtual {v6}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v4

    if-nez v4, :cond_15

    invoke-static {v6}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(Lcom/sec/internal/constants/Mno;)Z

    move-result v4

    if-eqz v4, :cond_18

    :cond_15
    if-eqz v12, :cond_18

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v14, 0x3

    if-le v4, v14, :cond_18

    .line 1587
    invoke-virtual {v6}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKOROmcCode()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 1588
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v14

    invoke-virtual {v12, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 1589
    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_16

    .line 1590
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    if-le v12, v14, :cond_16

    .line 1591
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    sub-int/2addr v12, v14

    invoke-virtual {v10, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 1592
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1594
    :cond_16
    invoke-virtual {v0, v8, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 1597
    :cond_17
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v10, 0x3

    sub-int/2addr v4, v10

    invoke-virtual {v12, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v8, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_18
    if-eqz v12, :cond_19

    .line 1600
    invoke-virtual {v0, v8, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1602
    :cond_19
    :goto_8
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v8, "unknown"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v10, "[PRODUCT_MODEL]"

    if-eqz v8, :cond_1a

    const-string/jumbo v4, "ro.product.base_model"

    .line 1603
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v10, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 1604
    :cond_1a
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v8

    const-string v11, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_MHS_DONGLE"

    invoke-virtual {v8, v11}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1c

    .line 1606
    invoke-virtual {v6}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v4

    if-eqz v4, :cond_1b

    const-string v4, "NT930QCA"

    goto :goto_9

    :cond_1b
    const-string v4, "NP930QCA"

    :goto_9
    const-string/jumbo v8, "ril.PcModelName"

    invoke-static {v8, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1605
    invoke-virtual {v0, v10, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1607
    sget-object v4, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    if-ne v6, v4, :cond_1e

    const-string v4, "Android_Phone"

    const-string v8, "Laptop_PC"

    .line 1608
    invoke-virtual {v0, v4, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 1611
    :cond_1c
    invoke-static/range {p3 .. p3}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(I)Z

    move-result v8

    if-eqz v8, :cond_1d

    invoke-static/range {p1 .. p1}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsOnly(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v8

    if-eqz v8, :cond_1d

    .line 1613
    invoke-static {}, Lcom/sec/internal/ims/config/ConfigContract$BUILD;->getTerminalModel()Ljava/lang/String;

    move-result-object v4

    .line 1612
    invoke-virtual {v0, v10, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 1615
    :cond_1d
    invoke-virtual {v0, v10, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_1e
    :goto_a
    const-string v4, "[CLIENT_VERSION]"

    .line 1618
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1f

    .line 1619
    iget-object v8, v1, Lcom/sec/internal/ims/core/RegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    const-string/jumbo v10, "rcs_client_version"

    const-string v11, "6.0"

    .line 1620
    invoke-interface {v8, v2, v10, v11}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1619
    invoke-virtual {v0, v4, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1623
    :cond_1f
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isSKTOmcCode()Z

    move-result v4

    const-string v8, "[OMCCODE]"

    if-eqz v4, :cond_20

    const-string v4, "SKT"

    .line 1624
    invoke-virtual {v0, v8, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 1625
    :cond_20
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKTTOmcCode()Z

    move-result v4

    if-eqz v4, :cond_21

    const-string v4, "KT"

    .line 1626
    invoke-virtual {v0, v8, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 1627
    :cond_21
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isLGTOmcCode()Z

    move-result v4

    if-eqz v4, :cond_22

    const-string v4, "LGU"

    .line 1628
    invoke-virtual {v0, v8, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    .line 1629
    :cond_22
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKorOpenOmcCode()Z

    move-result v4

    if-nez v4, :cond_24

    invoke-virtual {v6}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/settings/ImsProfile;->getSimMobility()Z

    move-result v4

    if-eqz v4, :cond_23

    goto :goto_b

    .line 1632
    :cond_23
    invoke-static {v2, v6}, Lcom/sec/internal/helper/OmcCode;->getUserAgentNWCode(ILcom/sec/internal/constants/Mno;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v8, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :cond_24
    :goto_b
    const-string v4, "OMD"

    .line 1630
    invoke-virtual {v0, v8, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1635
    :goto_c
    invoke-virtual {v6}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v4

    if-eqz v4, :cond_25

    const-string v4, "[UICC_VERSION]"

    .line 1636
    invoke-virtual {v0, v4, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1639
    :cond_25
    iget-object v4, v1, Lcom/sec/internal/ims/core/RegistrationManager;->mSimManagers:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 1640
    invoke-virtual {v6}, Lcom/sec/internal/constants/Mno;->isOrange()Z

    move-result v8

    const-string v10, "[MNO_CUSTOM]"

    if-eqz v8, :cond_2a

    .line 1641
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1643
    invoke-virtual {v6}, Lcom/sec/internal/constants/Mno;->isOrangeGPG()Z

    move-result v11

    if-eqz v11, :cond_28

    .line 1644
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->isTablet()Z

    move-result v11

    const-string v12, "[PRODUCT_TYPE]"

    if-eqz v11, :cond_26

    const-string v11, "device-type/tablet"

    .line 1645
    invoke-virtual {v0, v12, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    :cond_26
    const-string v11, "device-type/smart-phone"

    .line 1647
    invoke-virtual {v0, v12, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :goto_d
    const-string v11, "mno-custom/"

    .line 1649
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_27

    .line 1650
    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimAvailable()Z

    move-result v11

    if-eqz v11, :cond_27

    .line 1651
    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimOperator()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1653
    :cond_27
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v10, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_28
    if-eqz v4, :cond_29

    .line 1655
    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimAvailable()Z

    move-result v11

    if-eqz v11, :cond_29

    .line 1656
    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimOperator()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_29
    const-string v11, "[MCCMNC]"

    .line 1658
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v11, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1662
    :cond_2a
    :goto_e
    sget-object v8, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v6, v8, :cond_2f

    const-string v6, "VoNR"

    .line 1664
    invoke-virtual {v9, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2b

    const-string v6, "PRD-NG114/1"

    goto :goto_f

    :cond_2b
    const-string v6, "PRD-IR92/13"

    :goto_f
    const-string v8, "[IMS_PROFILE_VOICE]"

    invoke-virtual {v0, v8, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1666
    invoke-static {}, Lcom/sec/internal/google/SecImsNotifier;->getInstance()Lcom/sec/internal/google/SecImsNotifier;

    move-result-object v6

    const/4 v8, 0x1

    invoke-virtual {v6, v2, v8}, Lcom/sec/internal/google/SecImsNotifier;->getRcsClientConfiguration(II)Ljava/lang/String;

    move-result-object v2

    .line 1667
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2c

    const-string v2, "UP_2.3"

    :cond_2c
    const-string v6, "[RCS_PROFILE]"

    invoke-virtual {v0, v6, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1669
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_2d

    iget-object v2, v1, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/internal/helper/os/DeviceUtil;->isSupport5G(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2d

    const-string v1, " [MNO_CUSTOM]"

    .line 1670
    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    .line 1672
    :cond_2d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v4, :cond_2e

    const-string v6, "cc/"

    .line 1674
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1675
    iget-object v1, v1, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSDatabaseHelper;->getConfigVersion(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1677
    :cond_2e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1681
    :cond_2f
    :goto_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buildUserAgentString: isVoLteEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", sipUserAgent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public cancelUpdateSipDelegateRegistration(I)V
    .locals 2

    .line 905
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "cancelUpdateSipDelegateRegistration"

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 906
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v0, 0x3a

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    return-void
.end method

.method public dump()V
    .locals 7

    const-string v0, "Dump of RegistrationManager:"

    const-string v1, "RegiMgr"

    .line 1742
    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 1743
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->increaseIndent(Ljava/lang/String;)V

    .line 1744
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GCF mode: ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->getGcfMode()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "RegisterTask(s) -"

    .line 1745
    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1746
    :goto_0
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mSimManagers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1747
    invoke-static {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getRegistrationTasks()Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/core/RegisterTask;

    .line 1748
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SIM slot: ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1749
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] state: ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "] IMS Profile: ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1748
    invoke-static {v1, v5}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 1750
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Governor: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1753
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {v0}, Lcom/sec/internal/helper/SimpleEventLog;->dump()V

    .line 1754
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->decreaseIndent(Ljava/lang/String;)V

    .line 1756
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->dump()V

    return-void
.end method

.method public forceNotifyToApp(I)V
    .locals 2

    .line 2027
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mConfigModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->isRcsEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "RegiMgr"

    const-string v1, "forceNotifyToApp"

    .line 2028
    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 2029
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.ims.IMS_SERVICE_UP"

    .line 2030
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android:phone_id"

    .line 2031
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "com.samsung.android.messaging"

    .line 2032
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 2033
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2035
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method getAresLookupRequired()Z
    .locals 0

    .line 236
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mAresLookupRequired:Z

    return p0
.end method

.method public getAvailableNetworkType(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 1466
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mSimManagers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1467
    invoke-static {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getImsRegistrations()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/ImsRegistration;

    .line 1468
    invoke-virtual {v2, p1}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1469
    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getPdn()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCmcLineSlotIndex()I
    .locals 0

    .line 1116
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mCmcAccountManager:Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->getCurrentLineSlotIndex()I

    move-result p0

    return p0
.end method

.method public getEmergencyGovernor(I)Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;
    .locals 2

    .line 798
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object p0

    const-string p1, "RegiMgr"

    if-eqz p0, :cond_1

    .line 800
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/RegisterTask;

    .line 801
    iget-object v1, v0, Lcom/sec/internal/ims/core/RegisterTask;->mProfile:Lcom/sec/ims/settings/ImsProfile;

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "getRegistrationGovernor: return Emergency Gvn"

    .line 802
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "getRegistrationGovernor: not found Emergency task"

    .line 807
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method protected getEmergencyProfile(I)Lcom/sec/ims/settings/ImsProfile;
    .locals 8

    const-string v0, "RegiMgr"

    const-string v1, "getEmergencyProfile:"

    .line 714
    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 715
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mSimManagers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 719
    :cond_0
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getDevMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 721
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasNoSim()Z

    move-result v3

    invoke-static {p1, v3}, Lcom/sec/internal/ims/util/ImsUtil;->needForceToUsePsE911(IZ)Z

    move-result v3

    .line 723
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasNoSim()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {v2, p1, v0}, Lcom/sec/internal/ims/core/RegistrationUtils;->checkAusEmergencyCall(Lcom/sec/internal/constants/Mno;ILcom/sec/internal/interfaces/ims/core/ISimManager;)Z

    move-result v4

    if-nez v4, :cond_5

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const-string p0, "RegiMgr"

    const-string v0, "getEmergencyProfile: from SlotBasedConfig"

    .line 769
    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 770
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getProfiles()Ljava/util/List;

    move-result-object v4

    .line 771
    invoke-static {v4}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "RegiMgr"

    const-string v0, "getEmergencyProfile: ProfileList is Empty"

    .line 772
    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-object v1

    .line 776
    :cond_2
    monitor-enter v4

    .line 777
    :try_start_0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/settings/ImsProfile;

    .line 778
    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string p0, "RegiMgr"

    .line 779
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEmergencyProfile: profile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 780
    monitor-exit v4

    return-object v0

    :cond_4
    const-string p0, "RegiMgr"

    const-string v0, "getEmergencyProfile: no profile found"

    .line 783
    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 784
    monitor-exit v4

    return-object v1

    :catchall_0
    move-exception p0

    .line 785
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_5
    :goto_0
    const-string v4, "RegiMgr"

    const-string v5, "getEmergencyProfile(no SIM): profile in case of no SIM or AU sales code"

    .line 725
    invoke-static {v4, p1, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 727
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasNoSim()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isAus()Z

    move-result v4

    if-nez v4, :cond_8

    .line 728
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    const-string v4, "globalsettings"

    const-string v5, "mnoname"

    const-string v6, ""

    invoke-static {p1, v2, v4, v5, v6}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getString(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 730
    invoke-static {v2}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v4

    .line 731
    sget-object v5, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    if-eq v4, v5, :cond_6

    sget-object v5, Lcom/sec/internal/constants/Mno;->GOOGLEGC:Lcom/sec/internal/constants/Mno;

    if-ne v4, v5, :cond_7

    .line 732
    :cond_6
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getNetMno()Lcom/sec/internal/constants/Mno;

    move-result-object v4

    :cond_7
    const-string v5, "RegiMgr"

    .line 734
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "getEmergencyProfile(no SIM): Previous mnoname [%s] => [%s]"

    filled-new-array {v2, v4}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v6, v7, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, p1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    move-object v2, v4

    .line 736
    :cond_8
    invoke-static {v2, p1, v0}, Lcom/sec/internal/ims/core/RegistrationUtils;->handleExceptionalMnoName(Lcom/sec/internal/constants/Mno;ILcom/sec/internal/interfaces/ims/core/ISimManager;)Ljava/lang/String;

    move-result-object v4

    .line 737
    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isAus()Z

    move-result v5

    if-eqz v5, :cond_9

    sget-object v5, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v5}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 738
    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mAuEmergencyProfile:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/ims/settings/ImsProfile;

    if-eqz v5, :cond_9

    return-object v5

    :cond_9
    if-eqz v3, :cond_b

    .line 745
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/internal/constants/ims/os/NetworkEvent;->operatorNumeric:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getMnoFromNetworkPlmn(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 746
    sget-object v2, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 747
    sget-object v0, Lcom/sec/internal/constants/Mno;->GCF:Lcom/sec/internal/constants/Mno;

    :cond_a
    move-object v2, v0

    .line 749
    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v0, "RegiMgr"

    .line 750
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getEmergencyProfile(networkPlmn or GCF): mno: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, p1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    :cond_b
    const-string v0, "RegiMgr"

    .line 752
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getEmergencyProfile(no SIM): mno: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, p1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 754
    :goto_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v4, p1}, Lcom/sec/internal/ims/settings/ImsProfileLoaderInternal;->getProfileListWithMnoName(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 756
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/settings/ImsProfile;

    .line 757
    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 758
    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isAus()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 759
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mAuEmergencyProfile:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_d
    const-string p0, "RegiMgr"

    .line 761
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getEmergencyProfile(no SIM or networkPlmn/GCF): profile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-object v3

    :cond_e
    const-string p0, "RegiMgr"

    const-string v0, "getEmergencyProfile(no SIM): no profile found"

    .line 765
    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-object v1
.end method

.method getEmmCause()I
    .locals 0

    .line 240
    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mEmmCause:I

    return p0
.end method

.method protected getEventLog()Lcom/sec/internal/helper/SimpleEventLog;
    .locals 0

    .line 224
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    return-object p0
.end method

.method public getHomeNetworkDomain(Lcom/sec/ims/settings/ImsProfile;I)Ljava/lang/String;
    .locals 6

    .line 1038
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRcsPolicyManager:Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/RegistrationManager;->getSimManager(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v5

    move-object v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Lcom/sec/internal/ims/core/RegistrationUtils;->getHomeNetworkDomain(Landroid/content/Context;Lcom/sec/ims/settings/ImsProfile;ILcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;Lcom/sec/internal/interfaces/ims/core/ISimManager;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getImpi(Lcom/sec/ims/settings/ImsProfile;I)Ljava/lang/String;
    .locals 6

    .line 1052
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRcsPolicyManager:Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/RegistrationManager;->getSimManager(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v5

    move-object v1, p1

    move v2, p2

    invoke-static/range {v0 .. v5}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPrivateUserIdentity(Landroid/content/Context;Lcom/sec/ims/settings/ImsProfile;ILcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;Lcom/sec/internal/interfaces/ims/core/ISimManager;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getImsIconManager(I)Lcom/sec/internal/ims/core/ImsIconManager;
    .locals 2

    .line 207
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getIconManager()Lcom/sec/internal/ims/core/ImsIconManager;

    move-result-object p0

    if-nez p0, :cond_0

    const-string v0, "RegiMgr"

    const-string v1, "getImsIconManager is not exist."

    .line 209
    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public getImsProfile(ILcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;)Lcom/sec/ims/settings/ImsProfile;
    .locals 5

    .line 676
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getImsProfile: profile ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "RegiMgr"

    invoke-static {v2, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 677
    sget-object v0, Lcom/sec/internal/ims/core/RegistrationManager$1;->$SwitchMap$com$sec$ims$settings$ImsProfile$PROFILE_TYPE:[I

    invoke-virtual {p2}, Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;->ordinal()I

    move-result v3

    aget v0, v0, v3

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    goto/16 :goto_0

    .line 699
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getProfileList(I)[Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/ims/core/RegistrationManager$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/RegistrationManager$$ExternalSyntheticLambda15;-><init>()V

    .line 700
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/ims/core/RegistrationManager$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/RegistrationManager$$ExternalSyntheticLambda16;-><init>()V

    .line 701
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 702
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Lcom/sec/ims/settings/ImsProfile;

    goto :goto_0

    .line 692
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getProfileList(I)[Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/ims/core/RegistrationManager$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/RegistrationManager$$ExternalSyntheticLambda13;-><init>()V

    .line 693
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/ims/core/RegistrationManager$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/RegistrationManager$$ExternalSyntheticLambda14;-><init>()V

    .line 694
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 695
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Lcom/sec/ims/settings/ImsProfile;

    goto :goto_0

    .line 683
    :cond_2
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getProfileList(I)[Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/ims/core/RegistrationManager$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/RegistrationManager$$ExternalSyntheticLambda9;-><init>()V

    .line 684
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/ims/core/RegistrationManager$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/RegistrationManager$$ExternalSyntheticLambda10;-><init>()V

    .line 685
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/ims/core/RegistrationManager$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/RegistrationManager$$ExternalSyntheticLambda11;-><init>()V

    .line 686
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/ims/core/RegistrationManager$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/RegistrationManager$$ExternalSyntheticLambda12;-><init>()V

    .line 687
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 688
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Lcom/sec/ims/settings/ImsProfile;

    goto :goto_0

    .line 679
    :cond_3
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getEmergencyProfile(I)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    .line 709
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getImsProfile: found ["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v0, v4

    :goto_1
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "] for ["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-object v4
.end method

.method public getImsiByUserAgent(Lcom/sec/internal/interfaces/ims/core/IUserAgent;)Ljava/lang/String;
    .locals 0

    .line 2022
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->getImsiByUserAgent(Lcom/sec/internal/interfaces/ims/core/IUserAgent;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getImsiByUserAgentHandle(I)Ljava/lang/String;
    .locals 0

    .line 2002
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->getImsiByUserAgentHandle(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getInstanceId(IILcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;
    .locals 3

    .line 1409
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    const/16 v1, 0xb

    const-string v2, "RegiMgr"

    if-eq p2, v1, :cond_2

    const/16 v1, 0xf

    if-eq p2, v1, :cond_2

    .line 1411
    invoke-static {v0}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsChn(Lcom/sec/internal/constants/Mno;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p3}, Lcom/sec/ims/settings/ImsProfile;->getRcsProfile()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sec/ims/settings/ImsProfile;->isRcsUp24Profile(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    :cond_0
    sget-object p2, Lcom/sec/internal/constants/Mno;->MTS_RUSSIA:Lcom/sec/internal/constants/Mno;

    if-ne v0, p2, :cond_2

    .line 1412
    :cond_1
    new-instance p2, Lcom/sec/internal/ims/util/TimeBasedUuidGenerator;

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    invoke-direct {p2, p1, p0}, Lcom/sec/internal/ims/util/TimeBasedUuidGenerator;-><init>(ILandroid/content/Context;)V

    invoke-virtual {p2}, Lcom/sec/internal/ims/util/TimeBasedUuidGenerator;->getUuidInstanceId()Ljava/lang/String;

    move-result-object p0

    .line 1413
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getInstanceId time based uuid: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1415
    :cond_2
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/core/RegistrationManager;->getInstanceId(ILcom/sec/internal/constants/Mno;)Ljava/lang/String;

    move-result-object p0

    .line 1416
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getInstanceId by phoneId: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method getInstanceId(ILcom/sec/internal/constants/Mno;)Ljava/lang/String;
    .locals 8

    const-string v0, "getInstanceId:"

    const-string v1, "RegiMgr"

    .line 1422
    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1423
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mSimManagers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    const-string v2, ""

    if-nez v0, :cond_0

    return-object v2

    .line 1428
    :cond_0
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/sec/internal/helper/os/ITelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v3

    .line 1430
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_6

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasVsim()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_0

    .line 1440
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getInstanceId: deviceId len: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1443
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v4, 0xe

    if-ge v0, v4, :cond_2

    const-string v0, "Invalid deviceId. Read imei again"

    .line 1444
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1445
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v0, p1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v3

    .line 1448
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v0, p1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getMeid(I)Ljava/lang/String;

    move-result-object v0

    .line 1449
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const-string v7, ">"

    if-nez v6, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v6, v4, :cond_4

    .line 1450
    sget-object v0, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne p2, v0, :cond_3

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result p2

    invoke-interface {p0, p2}, Lcom/sec/internal/helper/os/ITelephonyManager;->getDeviceSoftwareVersion(I)Ljava/lang/String;

    move-result-object v2

    .line 1451
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getInstanceId: imei len="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", dsv="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1453
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "<urn:gsma:imei:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v2}, Lcom/sec/internal/helper/os/DeviceUtil;->getFormattedDeviceId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 1454
    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    if-lt p0, v4, :cond_5

    .line 1455
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getInstanceId: meid len="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1456
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "<urn:device-id:meid:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v2}, Lcom/sec/internal/helper/os/DeviceUtil;->getFormattedDeviceId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_5
    const-string p0, "getInstanceId: imei/meid seems be wrong!"

    .line 1458
    invoke-static {v1, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    .line 1432
    :cond_6
    :goto_0
    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    const-string v0, "ims_user_data"

    const-string v1, "instanceId"

    invoke-static {p1, p2, v0, v1, v5}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getString(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    new-instance v0, Lcom/sec/internal/ims/core/RegistrationManager$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/core/RegistrationManager$$ExternalSyntheticLambda4;-><init>(Lcom/sec/internal/ims/core/RegistrationManager;I)V

    .line 1433
    invoke-virtual {p2, v0}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Ljava/lang/String;

    :goto_1
    return-object v5
.end method

.method protected getInterfaceName(Lcom/sec/internal/ims/core/RegisterTask;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 1057
    invoke-static {p3}, Lcom/sec/internal/ims/util/ConfigUtil;->getAcsServerType(I)Ljava/lang/String;

    move-result-object p3

    .line 1058
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isVodafone()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isDualRcsReg()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "jibe"

    .line 1059
    invoke-virtual {v0, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 1060
    iget-object p3, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRcsPolicyManager:Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-interface {p3, p1, v0, p2}, Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;->changeRcsIfacename(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Lcom/sec/internal/interfaces/ims/core/IPdnController;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 1062
    :cond_2
    iget-object p3, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {p3, p1}, Lcom/sec/internal/ims/core/PdnController;->getInterfaceName(Lcom/sec/internal/interfaces/ims/core/PdnEventListener;)Ljava/lang/String;

    move-result-object p3

    .line 1066
    :goto_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1067
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_4

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    const-string/jumbo p3, "swlan0"

    goto :goto_2

    :cond_4
    :goto_1
    const-string/jumbo p3, "p2p-wlan0-0"

    .line 1075
    :cond_5
    :goto_2
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isSoftphoneEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p2}, Lcom/sec/internal/helper/NetworkUtil;->isIPv4Address(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    .line 1076
    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/core/PdnController;->getLinkProperties(Lcom/sec/internal/interfaces/ims/core/PdnEventListener;)Lcom/sec/internal/helper/os/LinkPropertiesWrapper;

    move-result-object p2

    if-eqz p2, :cond_6

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getLinkProperties(Lcom/sec/internal/interfaces/ims/core/PdnEventListener;)Lcom/sec/internal/helper/os/LinkPropertiesWrapper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->hasIPv4Address()Z

    move-result p0

    if-nez p0, :cond_6

    if-eqz p3, :cond_6

    const-string/jumbo p0, "v4"

    .line 1077
    invoke-virtual {p3, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_6

    .line 1078
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "v4-"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1079
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Stacked IP interface"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "RegiMgr"

    invoke-static {p3, p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-object p0

    :cond_6
    return-object p3
.end method

.method public getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;
    .locals 0

    .line 1101
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object p0

    return-object p0
.end method

.method public getOmadmState(I)Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;
    .locals 0

    .line 228
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getOmadmState()Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    move-result-object p0

    return-object p0
.end method

.method public getP2pListener()Lcom/sec/ims/IImsRegistrationListener;
    .locals 0

    .line 367
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRegisterP2pListener:Lcom/sec/ims/IImsRegistrationListener;

    return-object p0
.end method

.method public getPendingRegistration(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/IRegisterTask;",
            ">;"
        }
    .end annotation

    .line 464
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "RegiMgr"

    const-string p1, "getPendingRegistration : no task return null"

    .line 466
    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 469
    :cond_0
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method protected getPreferredImpuOnPdn(II)Ljava/lang/String;
    .locals 1

    .line 1478
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getPreferredImpuOnPdn: phoneId="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " pdn="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "RegiMgr"

    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1479
    invoke-static {p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getImsRegistrations()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p2, Lcom/sec/internal/ims/core/RegistrationManager$$ExternalSyntheticLambda6;

    invoke-direct {p2, p1}, Lcom/sec/internal/ims/core/RegistrationManager$$ExternalSyntheticLambda6;-><init>(I)V

    .line 1480
    invoke-interface {p0, p2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 1481
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/core/RegistrationManager$$ExternalSyntheticLambda7;

    invoke-direct {p1}, Lcom/sec/internal/ims/core/RegistrationManager$$ExternalSyntheticLambda7;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/core/RegistrationManager$$ExternalSyntheticLambda8;

    invoke-direct {p1}, Lcom/sec/internal/ims/core/RegistrationManager$$ExternalSyntheticLambda8;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getPrivateUserIdentity(Lcom/sec/internal/ims/core/RegisterTask;)Ljava/lang/String;
    .locals 4

    .line 1042
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v0

    .line 1043
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    .line 1044
    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/core/RegistrationManager;->getImpi(Lcom/sec/ims/settings/ImsProfile;I)Ljava/lang/String;

    move-result-object v1

    .line 1045
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/Mno;->SINGTEL:Lcom/sec/internal/constants/Mno;

    if-eq v2, v3, :cond_0

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/Mno;->STARHUB:Lcom/sec/internal/constants/Mno;

    if-eq v2, v3, :cond_0

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object p1

    sget-object v2, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    if-ne p1, v2, :cond_1

    .line 1046
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/sec/internal/helper/RcsConfigurationHelper;->getUserName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public getProfileList(I)[Lcom/sec/ims/settings/ImsProfile;
    .locals 0

    .line 1111
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getProfileList(I)[Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    return-object p0
.end method

.method protected getPublicUserIdentity(Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/interfaces/ims/core/ISimManager;)Ljava/lang/String;
    .locals 7

    .line 929
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v0

    .line 930
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    .line 933
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->getNextImpuType()I

    move-result v2

    const/4 v3, 0x1

    const-string v4, "RegiMgr"

    if-ne v2, v3, :cond_0

    .line 934
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getDerivedImpu()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_2

    .line 935
    :cond_0
    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v2

    const/16 v3, 0xb

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->isUicclessEmergency()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v1, "profile.hasEmergencySupport() && profile.isUicclessEmergency()"

    .line 936
    invoke-static {v4, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getEmergencyImpu()Ljava/lang/String;

    move-result-object v1

    .line 939
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    sget-object v5, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v2, v5, :cond_1

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasNoSim()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/core/PdnController;->hasEmergencyServiceOnly(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 940
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getDerivedImpu()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_2

    .line 941
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasNoSim()Z

    move-result p1

    if-nez p1, :cond_2

    .line 942
    invoke-virtual {p0, v3, v0}, Lcom/sec/internal/ims/core/RegistrationManager;->getPreferredImpuOnPdn(II)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move-object p0, v1

    goto :goto_2

    .line 947
    :cond_3
    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->isUicclessEmergency()Z

    move-result v2

    if-nez v2, :cond_7

    const-string/jumbo v2, "profile.hasEmergencySupport() && !profile.isUicclessEmergency()"

    .line 948
    invoke-static {v4, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 960
    invoke-virtual {p0, v3, v0}, Lcom/sec/internal/ims/core/RegistrationManager;->getPreferredImpuOnPdn(II)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_4
    const-string v2, ""

    .line 965
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {v2}, Lcom/sec/internal/ims/core/sim/SimManager;->isValidImpu(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object p1

    sget-object v3, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    sget-object v5, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    sget-object v6, Lcom/sec/internal/constants/Mno;->H3G_AT:Lcom/sec/internal/constants/Mno;

    filled-new-array {v3, v5, v6}, [Lcom/sec/internal/constants/Mno;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    move-object p0, v2

    goto :goto_2

    .line 968
    :cond_6
    :goto_1
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRcsPolicyManager:Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;->getRcsPublicUserIdentity(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v0, p0, p2}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPublicUserIdentity(Lcom/sec/ims/settings/ImsProfile;ILjava/lang/String;Lcom/sec/internal/interfaces/ims/core/ISimManager;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 971
    :cond_7
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRcsPolicyManager:Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;->getRcsPublicUserIdentity(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v0, p0, p2}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPublicUserIdentity(Lcom/sec/ims/settings/ImsProfile;ILjava/lang/String;Lcom/sec/internal/interfaces/ims/core/ISimManager;)Ljava/lang/String;

    move-result-object p0

    .line 974
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "impu : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, v0, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    return-object p0
.end method

.method protected getRegisterTask(I)Lcom/sec/internal/ims/core/RegisterTask;
    .locals 3

    const-string v0, "getRegisterTask:"

    const-string v1, "RegiMgr"

    .line 830
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 831
    :goto_0
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mSimManagers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 832
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/core/RegistrationManager;->getRegisterTaskByProfileId(II)Lcom/sec/internal/ims/core/RegisterTask;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "getRegisterTask: Not exist matched RegisterTask. Return null.."

    .line 837
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method protected getRegisterTaskByProfileId(II)Lcom/sec/internal/ims/core/RegisterTask;
    .locals 1

    .line 857
    invoke-static {p2}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 859
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/core/RegisterTask;

    .line 860
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-object p2

    .line 865
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getRegisterTaskByProfileId: can not find profile id : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RegiMgr"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method protected getRegisterTaskByRegHandle(I)Lcom/sec/internal/ims/core/RegisterTask;
    .locals 4

    const/4 v0, 0x0

    .line 842
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mSimManagers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 843
    invoke-static {v0}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 845
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/RegisterTask;

    .line 846
    iget-object v3, v2, Lcom/sec/internal/ims/core/RegisterTask;->mReg:Lcom/sec/ims/ImsRegistration;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v3

    if-ne v3, p1, :cond_0

    return-object v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 852
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getRegisterTaskByRegHandle: can not find handle : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RegiMgr"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getRegistrationGovernor(I)Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;
    .locals 1

    .line 813
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getRegisterTaskByRegHandle(I)Lcom/sec/internal/ims/core/RegisterTask;

    move-result-object p0

    if-nez p0, :cond_0

    .line 815
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getRegistrationGovernor: unknown handle "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RegiMgr"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 818
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p0

    return-object p0
.end method

.method public getRegistrationGovernorByProfileId(II)Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;
    .locals 0

    .line 823
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManager;->getRegisterTaskByProfileId(II)Lcom/sec/internal/ims/core/RegisterTask;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/core/NetworkEventController$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/sec/internal/ims/core/NetworkEventController$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    return-object p0
.end method

.method public getRegistrationInfo(I)Lcom/sec/ims/ImsRegistration;
    .locals 1

    .line 1088
    sget p0, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    const/16 v0, 0x4e20

    if-lt p1, v0, :cond_0

    .line 1090
    sget p0, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_2:I

    goto :goto_0

    :cond_0
    const/16 v0, 0x2710

    if-lt p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x1388

    if-lt p1, v0, :cond_2

    .line 1094
    sget p0, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_2:I

    .line 1096
    :cond_2
    :goto_0
    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getRegistrationInfo(II)Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    return-object p0
.end method

.method public getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;
    .locals 7

    .line 475
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 476
    :goto_0
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mSimManagers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 477
    invoke-static {v2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getImsRegistrations()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/ims/ImsRegistration;

    if-nez v4, :cond_1

    goto :goto_1

    .line 483
    :cond_1
    invoke-virtual {v4}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/core/RegistrationManager;->getRegisterTaskByRegHandle(I)Lcom/sec/internal/ims/core/RegisterTask;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 484
    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v5

    sget-object v6, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-eq v5, v6, :cond_2

    goto :goto_1

    .line 488
    :cond_2
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    new-array p0, v1, [Lcom/sec/ims/ImsRegistration;

    .line 492
    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/sec/ims/ImsRegistration;

    return-object p0
.end method

.method public getRegistrationInfoByPhoneId(I)[Lcom/sec/ims/ImsRegistration;
    .locals 0

    .line 1106
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationManager;->getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/internal/ims/core/RegistrationUtils;->getRegistrationInfoByPhoneId(I[Lcom/sec/ims/ImsRegistration;)[Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    return-object p0
.end method

.method public getRegistrationInfoByServiceType(Ljava/lang/String;I)Lcom/sec/ims/ImsRegistration;
    .locals 5

    .line 496
    invoke-static {p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getImsRegistrations()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/ImsRegistration;

    if-eqz v1, :cond_0

    .line 498
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v2

    if-ne v2, p2, :cond_0

    .line 499
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v2

    if-nez v2, :cond_0

    .line 500
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 505
    :cond_1
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/RegistrationManager;->getRegisterTaskByRegHandle(I)Lcom/sec/internal/ims/core/RegisterTask;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 506
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-eq v3, v4, :cond_2

    goto :goto_0

    .line 510
    :cond_2
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getServices()Ljava/util/Set;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/sec/internal/ims/util/ImsUtil;->isMatchedService(Ljava/util/Set;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 511
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 512
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getServices()Ljava/util/Set;

    move-result-object p1

    .line 514
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/RegistrationManager;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object p2

    if-nez p2, :cond_3

    return-object v1

    .line 518
    :cond_3
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getServices()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "mmtel"

    .line 519
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 520
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/core/RegistrationManager;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v3

    iget v3, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-static {v3}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 521
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/core/RegistrationManager;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v3

    iget-boolean v3, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    if-eqz v3, :cond_4

    .line 522
    :cond_5
    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 526
    :cond_6
    new-instance p0, Lcom/sec/ims/ImsRegistration;

    invoke-direct {p0, v1, p1}, Lcom/sec/ims/ImsRegistration;-><init>(Lcom/sec/ims/ImsRegistration;Ljava/util/Set;)V

    return-object p0

    :cond_7
    return-object v1

    :cond_8
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRegistrationList()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/ims/ImsRegistration;",
            ">;"
        }
    .end annotation

    .line 1208
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 1209
    :goto_0
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mSimManagers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1210
    invoke-static {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getImsRegistrations()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method getRegistrationManagerHandler()Lcom/sec/internal/ims/core/RegistrationManagerHandler;
    .locals 0

    .line 202
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    return-object p0
.end method

.method public getServiceForNetwork(Lcom/sec/ims/settings/ImsProfile;IZI)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/ims/settings/ImsProfile;",
            "IZI)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getServiceForNetwork: network "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr"

    invoke-static {v1, p4, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1338
    invoke-static {p2}, Lcom/sec/internal/constants/ims/os/NetworkEvent;->blurNetworkType(I)I

    move-result p2

    .line 1340
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1341
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getNetworkSet()Ljava/util/Set;

    move-result-object v2

    .line 1342
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v0

    .line 1346
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/ims/settings/ImsProfile;->getServiceSet(Ljava/lang/Integer;)Ljava/util/Set;

    move-result-object v0

    if-eqz p3, :cond_1

    .line 1348
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getAllServiceSetFromAllNetwork()Ljava/util/Set;

    move-result-object v0

    .line 1351
    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getServiceForNetwork: service "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p4, p3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1354
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result p3

    if-eqz p3, :cond_2

    return-object v0

    .line 1358
    :cond_2
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result p1

    invoke-virtual {p0, p1, p4}, Lcom/sec/internal/ims/core/RegistrationManager;->getRegisterTaskByProfileId(II)Lcom/sec/internal/ims/core/RegisterTask;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1360
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->clearFilteredReason()V

    const/16 p3, 0x12

    if-ne p2, p3, :cond_3

    .line 1362
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p3

    invoke-virtual {p3}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result p3

    const/16 v2, 0xb

    if-ne p3, v2, :cond_3

    iget-object p3, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    .line 1363
    invoke-virtual {p3, p4}, Lcom/sec/internal/ims/core/PdnController;->getEpdgPhysicalInterface(I)I

    move-result p3

    const/4 v2, 0x2

    if-ne p3, v2, :cond_3

    .line 1364
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p3

    invoke-interface {p3, v0, p4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->applyCrossSimPolicy(Ljava/util/Set;I)Ljava/util/Set;

    move-result-object v0

    .line 1366
    :cond_3
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p3

    invoke-interface {p3, v0, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->filterService(Ljava/util/Set;I)Ljava/util/Set;

    move-result-object p2

    .line 1367
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-static {p0, p2, p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->filterserviceFbe(Landroid/content/Context;Ljava/util/Set;Lcom/sec/ims/settings/ImsProfile;)Ljava/util/Set;

    move-result-object v0

    .line 1368
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getServiceForNetwork: filtered service "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p4, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :cond_4
    return-object v0
.end method

.method public getSimManager(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;
    .locals 2

    .line 216
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mSimManagers:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/interfaces/ims/core/ISimManager;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSimManager: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "RegiMgr"

    invoke-static {v0, p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTelephonyCallStatus(I)I
    .locals 7

    const-string v0, "getTelephonyCallStatus:"

    const-string v1, "RegiMgr"

    .line 1294
    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1295
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 1300
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v2, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getSessionCount(I)I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    .line 1301
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getTelephonyCallStatus: hasImsCall = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, p1, v4}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 1303
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/core/RegisterTask;

    .line 1304
    iget-object v5, v4, Lcom/sec/internal/ims/core/RegisterTask;->mProfile:Lcom/sec/ims/settings/ImsProfile;

    invoke-virtual {v5}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v5

    if-eqz v5, :cond_3

    return v3

    :cond_3
    if-nez v2, :cond_2

    .line 1307
    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v6

    invoke-interface {v5, v6}, Lcom/sec/internal/helper/os/ITelephonyManager;->getVoiceNetworkType(I)I

    move-result v5

    if-nez v5, :cond_2

    .line 1308
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result v5

    const/16 v6, 0x12

    if-ne v5, v6, :cond_2

    .line 1309
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/settings/ImsProfile;->getPdn()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ims"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-eq v4, v5, :cond_2

    const-string p0, "getTelephonyCallStatus: Have No normal IMS/CS call => allow VoWifi registration."

    .line 1310
    invoke-static {v1, p1, p0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return v3

    .line 1314
    :cond_4
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {p0, p1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getCallState(I)I

    move-result p0

    return p0
.end method

.method getUnprocessedOmadmConfig(I)Z
    .locals 0

    .line 271
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getUnprocessedOmadmConfig()Z

    move-result p0

    return p0
.end method

.method public getUserAgent(I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;
    .locals 0

    .line 1982
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->getUserAgent(I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object p0

    return-object p0
.end method

.method public getUserAgent(Ljava/lang/String;)Lcom/sec/internal/interfaces/ims/core/IUserAgent;
    .locals 0

    .line 2017
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->getUserAgent(Ljava/lang/String;)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object p0

    return-object p0
.end method

.method public getUserAgent(Ljava/lang/String;I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;
    .locals 0

    .line 1987
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->getUserAgent(Ljava/lang/String;I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object p0

    return-object p0
.end method

.method public getUserAgentByImsi(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/interfaces/ims/core/IUserAgent;
    .locals 0

    .line 1997
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->getUserAgentByImsi(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object p0

    return-object p0
.end method

.method public getUserAgentByPhoneId(ILjava/lang/String;)[Lcom/sec/internal/interfaces/ims/core/IUserAgent;
    .locals 0

    .line 2007
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->getUserAgentByPhoneId(ILjava/lang/String;)[Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object p0

    return-object p0
.end method

.method public getUserAgentByRegId(I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;
    .locals 0

    .line 1992
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->getUserAgentByRegId(I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object p0

    return-object p0
.end method

.method public getUserAgentOnPdn(II)Lcom/sec/internal/interfaces/ims/core/IUserAgent;
    .locals 0

    .line 2012
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->getUserAgentOnPdn(II)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object p0

    return-object p0
.end method

.method protected getUuid(ILcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;
    .locals 1

    const-string p0, "getUuid:"

    const-string v0, "RegiMgr"

    .line 1380
    invoke-static {v0, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1382
    invoke-virtual {p2}, Lcom/sec/ims/settings/ImsProfile;->isEnableSessionId()Z

    move-result p0

    const-string p1, ""

    if-eqz p0, :cond_0

    .line 1383
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "-"

    .line 1384
    invoke-virtual {p0, p2, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 1385
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "UUID="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_0
    return-object p1
.end method

.method getVolteAllowedWithDsac()Z
    .locals 0

    .line 252
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mIsVolteAllowedWithDsac:Z

    return p0
.end method

.method public hasOmaDmFinished(I)Z
    .locals 0

    .line 232
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->hasOmaDmFinished()Z

    move-result p0

    return p0
.end method

.method public hasVoLteSim(I)Z
    .locals 2

    .line 1199
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getSimManager(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1200
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getSimManager(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 1201
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v1

    .line 1200
    invoke-static {p1, v0, p0, v1}, Lcom/sec/internal/ims/core/RegistrationUtils;->hasVoLteSim(ILcom/sec/internal/interfaces/ims/core/ISimManager;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method isAdhocProfile(Lcom/sec/ims/settings/ImsProfile;)Z
    .locals 0

    .line 248
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result p0

    const/16 p1, 0x2710

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isAnonymousEmergencyCallRequired(I)Z
    .locals 2

    const-string p0, "RegiMgr"

    const-string v0, "isAnonymousEmergencyCallRequired:"

    .line 1235
    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1236
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1238
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/core/RegisterTask;

    if-eqz p1, :cond_0

    .line 1240
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    .line 1241
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isAnonymousEmergencyCallRequired()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method protected isCdmaAvailableForVoice(I)Z
    .locals 0

    .line 256
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->isCdmaAvailableForVoice()Z

    move-result p0

    return p0
.end method

.method public isCmcRegistered(I)I
    .locals 2

    .line 1276
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getRegistrationTasks()Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/core/RegisterTask;

    .line 1277
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1280
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v0, v1, :cond_0

    .line 1281
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public isEmergencyCallProhibited(I)Z
    .locals 2

    const-string p0, "RegiMgr"

    const-string v0, "isEmergencyCallProhibited:"

    .line 1216
    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1218
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1220
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/core/RegisterTask;

    if-eqz p1, :cond_0

    .line 1222
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 1223
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isPse911Prohibited()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isEpdnRequestPending(I)Z
    .locals 1

    const-string p0, "RegiMgr"

    const-string v0, "isEpdnRequestPending:"

    .line 1253
    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1255
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1257
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/core/RegisterTask;

    .line 1258
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1259
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object p1

    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne p1, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isInvite403DisabledService(I)Z
    .locals 0

    .line 244
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->isInviteRejected()Z

    move-result p0

    return p0
.end method

.method public isPdnConnected(Lcom/sec/ims/settings/ImsProfile;I)Z
    .locals 2

    const/4 v0, 0x0

    const-string v1, "RegiMgr"

    if-nez p1, :cond_0

    const-string p0, "isPdnConnected: profile not found."

    .line 1183
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1187
    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManager;->getRegisterTaskByProfileId(II)Lcom/sec/internal/ims/core/RegisterTask;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p0, "isPdnConnected: task not found."

    .line 1189
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1193
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Lcom/sec/internal/ims/core/PdnController;->isConnected(ILcom/sec/internal/interfaces/ims/core/PdnEventListener;)Z

    move-result p0

    .line 1194
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isPdnConnected: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", PdnType: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isRcsRegistered(I)Z
    .locals 0

    .line 1270
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationManager;->getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/internal/ims/core/RegistrationUtils;->isRcsRegistered(I[Lcom/sec/ims/ImsRegistration;)Z

    move-result p0

    return p0
.end method

.method public isVoWiFiSupported(I)Z
    .locals 4

    const/4 v0, 0x0

    .line 1173
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    const-string v2, "mmtel"

    const/16 v3, 0x12

    invoke-interface {v1, v2, v3, p1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->isServiceAvailable(Ljava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    const-string v1, "mmtel-video"

    .line 1174
    invoke-interface {p0, v1, v3, p1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->isServiceAvailable(Ljava/lang/String;II)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    move v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1176
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_0
    return v0
.end method

.method protected logTask()V
    .locals 7

    const/4 v0, 0x0

    .line 1690
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mSimManagers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1691
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RegisterTask(s): "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1693
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManager;->getPendingRegistration(I)Ljava/util/List;

    move-result-object v2

    .line 1694
    invoke-static {v2}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v2, "Nothing!"

    .line 1695
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 1697
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, ""

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 1698
    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1699
    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v6, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v5, v6}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, ", rat = "

    .line 1700
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getRegistrationRat()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", service = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1701
    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    new-instance v5, Lcom/sec/internal/ims/core/RegistrationManager$$ExternalSyntheticLambda1;

    invoke-direct {v5}, Lcom/sec/internal/ims/core/RegistrationManager$$ExternalSyntheticLambda1;-><init>()V

    .line 1702
    invoke-virtual {v3, v5}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v3

    new-instance v5, Lcom/sec/internal/ims/core/RegistrationManager$$ExternalSyntheticLambda5;

    invoke-direct {v5}, Lcom/sec/internal/ims/core/RegistrationManager$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {v3, v5}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1701
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v3, "), "

    .line 1704
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1707
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ", $"

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegiMgr"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method notifyCmcRegistration(ZLcom/sec/ims/ImsRegistration;Lcom/sec/ims/ImsRegistrationError;)V
    .locals 3

    .line 646
    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 649
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "notifyCmcRegistration(): CmcType: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "RegiMgr"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result p0

    invoke-static {p0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getCmcRegistrationListeners()Landroid/os/RemoteCallbackList;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 652
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    :goto_0
    if-lez v1, :cond_2

    add-int/lit8 v1, v1, -0x1

    if-eqz p1, :cond_1

    .line 657
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/IImsRegistrationListener;

    invoke-interface {v2, p2}, Lcom/sec/ims/IImsRegistrationListener;->onRegistered(Lcom/sec/ims/ImsRegistration;)V

    goto :goto_0

    .line 659
    :cond_1
    invoke-virtual {p0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/IImsRegistrationListener;

    invoke-interface {v2, p2, p3}, Lcom/sec/ims/IImsRegistrationListener;->onDeregistered(Lcom/sec/ims/ImsRegistration;Lcom/sec/ims/ImsRegistrationError;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 662
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_2
    const-string p1, "notifyCmcRegistration, finish"

    .line 665
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    :cond_3
    return-void
.end method

.method protected declared-synchronized notifyImsRegistration(Lcom/sec/ims/ImsRegistration;ZLcom/sec/internal/interfaces/ims/core/IRegisterTask;Lcom/sec/ims/ImsRegistrationError;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    const-string v0, "RegiMgr"

    .line 395
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyImsRegistration(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 398
    invoke-interface {p3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getDeregiReason()I

    move-result v0

    invoke-direct {p0, p2, p1, p4, v0}, Lcom/sec/internal/ims/core/RegistrationManager;->notifyImsP2pRegistration(ZLcom/sec/ims/ImsRegistration;Lcom/sec/ims/ImsRegistrationError;I)V

    .line 400
    invoke-virtual {p0, p2, p1, p4}, Lcom/sec/internal/ims/core/RegistrationManager;->notifyCmcRegistration(ZLcom/sec/ims/ImsRegistration;Lcom/sec/ims/ImsRegistrationError;)V

    .line 402
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getIilManager(I)Lcom/sec/internal/interfaces/ims/core/iil/IIilManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result p3

    invoke-interface {v0, p3}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getIilManager(I)Lcom/sec/internal/interfaces/ims/core/iil/IIilManager;

    move-result-object p3

    invoke-interface {p3, p1, p2, p4}, Lcom/sec/internal/interfaces/ims/core/iil/IIilManager;->notifyImsRegistration(Lcom/sec/ims/ImsRegistration;ZLcom/sec/ims/ImsRegistrationError;)V

    .line 405
    invoke-static {}, Lcom/sec/internal/ims/core/SipTestManagerFactory;->isSipTest()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 406
    invoke-static {}, Lcom/sec/internal/ims/core/SipTestManagerFactory;->getSipTestManager()Lcom/sec/internal/interfaces/ims/core/ISipTestManager;

    move-result-object p3

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/PdnController;->isWifiConnected()Z

    move-result v0

    .line 407
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getCurrentRat()I

    move-result v1

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v2

    .line 406
    invoke-interface {p3, v0, v1, v2}, Lcom/sec/internal/interfaces/ims/core/ISipTestManager;->notifyImsRegistration(ZII)V

    .line 411
    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p3

    invoke-static {p3}, Lcom/sec/internal/ims/core/RegistrationUtils;->isCmcProfile(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 412
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result p3

    invoke-static {p3}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object p3

    invoke-virtual {p3}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getImsRegistrationListeners()Landroid/os/RemoteCallbackList;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 414
    invoke-virtual {p3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-lez v0, :cond_2

    add-int/lit8 v0, v0, -0x1

    if-eqz p2, :cond_1

    .line 419
    :try_start_1
    invoke-virtual {p3, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/IImsRegistrationListener;

    invoke-interface {v1, p1}, Lcom/sec/ims/IImsRegistrationListener;->onRegistered(Lcom/sec/ims/ImsRegistration;)V

    goto :goto_0

    .line 421
    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/IImsRegistrationListener;

    invoke-interface {v1, p1, p4}, Lcom/sec/ims/IImsRegistrationListener;->onDeregistered(Lcom/sec/ims/ImsRegistration;Lcom/sec/ims/ImsRegistrationError;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 424
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_2
    const-string v0, "RegiMgr"

    const-string v1, "notify mRegistrationList, finish"

    .line 427
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    invoke-virtual {p3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 434
    :cond_3
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p3

    invoke-static {p3}, Lcom/sec/internal/ims/core/RegistrationUtils;->isCmcProfile(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result p3

    if-nez p3, :cond_4

    .line 435
    invoke-static {}, Lcom/sec/internal/google/SecImsNotifier;->getInstance()Lcom/sec/internal/google/SecImsNotifier;

    move-result-object p3

    invoke-virtual {p3, p1, p2, p4}, Lcom/sec/internal/google/SecImsNotifier;->notifyImsRegistration(Lcom/sec/ims/ImsRegistration;ZLcom/sec/ims/ImsRegistrationError;)V

    .line 438
    :cond_4
    iget-object p3, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p3}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object p3

    invoke-virtual {p4}, Lcom/sec/ims/ImsRegistrationError;->getSipErrorCode()I

    move-result v0

    invoke-interface {p3, p1, p2, v0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->notifyImsRegistration(Lcom/sec/ims/ImsRegistration;ZI)V

    .line 440
    iget-object p3, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p3}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getImsDiagMonitor()Lcom/sec/internal/interfaces/ims/core/imslogger/IImsDiagMonitor;

    move-result-object p3

    invoke-interface {p3, p1, p2}, Lcom/sec/internal/interfaces/ims/core/imslogger/IImsDiagMonitor;->handleRegistrationEvent(Lcom/sec/ims/ImsRegistration;Z)V

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_6

    .line 443
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getEpdgStatus()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "mmtel"

    .line 444
    invoke-virtual {p1, v1}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "mmtel-video"

    invoke-virtual {p1, v1}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    move v1, p3

    goto :goto_1

    :cond_6
    move v1, v0

    :goto_1
    const-string v2, "RegiMgr"

    .line 445
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyImsRegistration: isVoWiFiRegistered ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_7

    goto :goto_2

    :cond_7
    move p3, v0

    :goto_2
    invoke-static {v2, p3}, Lcom/sec/ims/extensions/WiFiManagerExt;->setMaxDtimInSuspendMode(Landroid/content/Context;Z)V

    .line 450
    new-instance p3, Landroid/content/Intent;

    const-string v0, "com.samsung.ims.action.IMS_REGISTRATION"

    invoke-direct {p3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "REGISTERED"

    .line 451
    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p2

    const-string v0, "SERVICE"

    .line 452
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getServices()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    const-string v0, "VOWIFI"

    .line 453
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getEpdgStatus()Z

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p2

    const-string v0, "SIP_ERROR"

    .line 454
    invoke-virtual {p4}, Lcom/sec/ims/ImsRegistrationError;->getSipErrorCode()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p2

    const-string v0, "PHONE_ID"

    .line 455
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result p1

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "ERROR_REASON"

    .line 456
    invoke-virtual {p4}, Lcom/sec/ims/ImsRegistrationError;->getSipErrorReason()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 458
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    invoke-static {p1, p3}, Lcom/sec/internal/helper/os/IntentUtil;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 459
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public notifyRCSAllowedChangedbyMDM()V
    .locals 1

    .line 1332
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v0, 0x35

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyRomaingSettingsChanged(II)V
    .locals 2

    .line 1327
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v0, 0x2e

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected notifySimMobilityStatusChanged(ILcom/sec/internal/interfaces/ims/core/ISimManager;)V
    .locals 5

    .line 540
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->hasSimMobilityProfile(I)Z

    move-result v0

    .line 541
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifySimMobilityStatusChanged: old["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->isSimMobilityActivated()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "], new ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegiMgr"

    .line 541
    invoke-static {v2, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 545
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/sec/internal/constants/ims/ImsConstants$Uris;->SETTINGS_PROVIDER_SIMMOBILITY_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/sec/internal/helper/UriUtil;->buildUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 550
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isSimMobilityFeatureEnabled()Z

    move-result v1

    .line 554
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v3

    .line 555
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isLabSimCard()Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/sec/internal/constants/Mno;->GCF:Lcom/sec/internal/constants/Mno;

    if-eq v3, v4, :cond_0

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getNetworkNames()Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 v1, 0x2

    .line 559
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->hasSimMobilityProfile(I)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 v1, 0x4

    .line 563
    :cond_1
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    const/4 v3, 0x0

    .line 564
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "overwrite_mode"

    invoke-virtual {p2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "SMMO"

    .line 565
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 567
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    const-string v4, "DRPT"

    invoke-static {p1, v3, v4, p2}, Lcom/sec/internal/ims/diagnosis/ImsLogAgentUtil;->storeLogToAgent(ILandroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 568
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifySimMobilityStatusChanged: "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 569
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",SIMMO:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const p2, 0x11010008

    invoke-static {p2, p0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 571
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getSimMobilityStatusListeners()Landroid/os/RemoteCallbackList;

    move-result-object p0

    .line 572
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_2

    .line 574
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object p2

    check-cast p2, Lcom/sec/ims/ISimMobilityStatusListener;

    invoke-interface {p2, v0}, Lcom/sec/ims/ISimMobilityStatusListener;->onSimMobilityStateChanged(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 576
    invoke-virtual {p2}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_2
    const-string p1, "notify SimMobilityStatusChanged, finish"

    .line 579
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public onDmConfigurationComplete(I)V
    .locals 2

    .line 790
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v0, 0x1d

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onUpdateSipDelegateRegistrationTimeOut(I)V
    .locals 2

    .line 911
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getRegistrationTasks()Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/core/RegistrationManager$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/sec/internal/ims/core/RegistrationManager$$ExternalSyntheticLambda0;-><init>()V

    .line 912
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 913
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo v0, "onUpdateSipDelegateRegistrationTimeOut: But now registering. Ignore."

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    return-void

    .line 916
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mSecImsServiceConnector:Lcom/sec/internal/google/SecImsServiceConnector;

    invoke-virtual {p0, p1}, Lcom/sec/internal/google/SecImsServiceConnector;->getSipTransportImpl(I)Lcom/sec/internal/imsphone/SipTransportImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/imsphone/SipTransportImpl;->onUpdateRegistrationTimeout()V

    return-void
.end method

.method public declared-synchronized registerCmcRegiListener(Lcom/sec/ims/IImsRegistrationListener;I)V
    .locals 3

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, "RegiMgr"

    const-string/jumbo v0, "registerCmcRegiListener: listener is null.."

    .line 611
    invoke-static {p1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 612
    monitor-exit p0

    return-void

    .line 615
    :cond_0
    :try_start_1
    invoke-static {p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getCmcRegistrationListeners()Landroid/os/RemoteCallbackList;

    move-result-object v0

    if-nez v0, :cond_1

    .line 617
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 618
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 619
    invoke-static {p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->setCmcRegistrationListeners(Landroid/os/RemoteCallbackList;)V

    goto :goto_0

    .line 621
    :cond_1
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 624
    :goto_0
    invoke-static {p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getImsRegistrations()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/ImsRegistration;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 626
    :try_start_2
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v2

    if-ne v2, p2, :cond_2

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/ims/core/RegistrationUtils;->isCmcProfile(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 627
    invoke-interface {p1, v1}, Lcom/sec/ims/IImsRegistrationListener;->onRegistered(Lcom/sec/ims/ImsRegistration;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 630
    :try_start_3
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 633
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerListener(Lcom/sec/ims/IImsRegistrationListener;I)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 311
    :try_start_0
    invoke-virtual {p0, p1, v0, p2}, Lcom/sec/internal/ims/core/RegistrationManager;->registerListener(Lcom/sec/ims/IImsRegistrationListener;ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerListener(Lcom/sec/ims/IImsRegistrationListener;ZI)V
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, "RegiMgr"

    const-string p2, "listener is null.."

    .line 317
    invoke-static {p1, p3, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    monitor-exit p0

    return-void

    .line 321
    :cond_0
    :try_start_1
    invoke-static {p3}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getImsRegistrationListeners()Landroid/os/RemoteCallbackList;

    move-result-object v0

    if-nez v0, :cond_1

    .line 323
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 324
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 325
    invoke-static {p3}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->setImsRegistrationListeners(Landroid/os/RemoteCallbackList;)V

    goto :goto_0

    .line 327
    :cond_1
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    :goto_0
    if-eqz p2, :cond_3

    .line 331
    invoke-static {p3}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getImsRegistrations()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/ImsRegistration;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 333
    :try_start_2
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v1

    if-ne v1, p3, :cond_2

    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/ims/core/RegistrationUtils;->isCmcProfile(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 334
    invoke-interface {p1, v0}, Lcom/sec/ims/IImsRegistrationListener;->onRegistered(Lcom/sec/ims/ImsRegistration;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 337
    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 341
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerP2pListener(Lcom/sec/ims/IImsRegistrationListener;)V
    .locals 1

    monitor-enter p0

    .line 361
    :try_start_0
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRegisterP2pListener:Lcom/sec/ims/IImsRegistrationListener;

    const-string p1, "RegiMgr"

    const-string/jumbo v0, "registerP2pListener done"

    .line 362
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerSimMobilityStatusListener(Lcom/sec/ims/ISimMobilityStatusListener;I)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 584
    :try_start_0
    invoke-virtual {p0, p1, v0, p2}, Lcom/sec/internal/ims/core/RegistrationManager;->registerSimMobilityStatusListener(Lcom/sec/ims/ISimMobilityStatusListener;ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 585
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerSimMobilityStatusListener(Lcom/sec/ims/ISimMobilityStatusListener;ZI)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, "RegiMgr"

    const-string p2, "listener is null.."

    .line 589
    invoke-static {p1, p3, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 590
    monitor-exit p0

    return-void

    .line 593
    :cond_0
    :try_start_1
    invoke-static {p3}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getSimMobilityStatusListeners()Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_1

    .line 597
    :try_start_2
    invoke-static {p3}, Lcom/sec/internal/ims/core/RegistrationUtils;->hasSimMobilityProfile(I)Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/sec/ims/ISimMobilityStatusListener;->onSimMobilityStateChanged(Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 599
    :try_start_3
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 602
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public releaseThrottleByAcs(I)V
    .locals 3

    .line 1123
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1125
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/RegisterTask;

    .line 1126
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/ims/settings/ImsProfile;->hasRcsService(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1127
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->releaseThrottle(I)V

    .line 1133
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/4 v0, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public releaseThrottleByCmc(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V
    .locals 2

    .line 1138
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isThrottled()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1139
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result p0

    const-string/jumbo v0, "releaseThrottleByCmc: releaseThrottle"

    const-string v1, "RegiMgr"

    invoke-static {v1, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1140
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p0

    const/16 p1, 0x8

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->releaseThrottle(I)V

    :cond_0
    return-void
.end method

.method public removeE911RegiTimer()V
    .locals 2

    .line 2047
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v1, 0x9b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2048
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method protected reportDualImsStatus(I)V
    .locals 4

    .line 1964
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isDualIMS()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    rsub-int/lit8 v0, p1, 0x1

    .line 1966
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManager;->getRegistrationInfoByPhoneId(I)[Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1971
    :goto_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "overwrite_mode"

    .line 1972
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "DIMS"

    .line 1973
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1975
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    const-string v1, "DRPT"

    invoke-static {p1, p0, v1, v2}, Lcom/sec/internal/ims/diagnosis/ImsLogAgentUtil;->storeLogToAgent(ILandroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 1976
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reportDualImsStatus: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "RegiMgr"

    invoke-static {v0, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method protected reportRcsChatRegistrationStatus(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V
    .locals 6

    .line 1853
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/ims/settings/ImsProfile;->hasRcsService(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1854
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1855
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v1

    .line 1864
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_1

    .line 1865
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1866
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v3, Lcom/sec/internal/ims/core/RegistrationManager$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/sec/internal/ims/core/RegistrationManager$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p1, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p1, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v2, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1867
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getChatServiceList()[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    .line 1869
    :cond_0
    invoke-static {}, Lcom/sec/ims/settings/ImsProfile;->getRcsServiceList()[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v4

    goto :goto_0

    :cond_1
    move p1, v5

    :goto_0
    const-string/jumbo v2, "send_mode"

    .line 1874
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v2, "overwrite_mode"

    .line 1875
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "RCRS"

    .line 1876
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1877
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    const-string v2, "DRCS"

    invoke-static {v1, p0, v2, v0}, Lcom/sec/internal/ims/diagnosis/ImsLogAgentUtil;->storeLogToAgent(ILandroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 1878
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "reportRcsRegiStatus: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RegiMgr"

    invoke-static {p1, v1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :cond_2
    return-void
.end method

.method protected reportRegistrationCount(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V
    .locals 8

    .line 1886
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "R"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1893
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPdnType()I

    move-result v2

    const/4 v3, -0x1

    const-string v4, "] - ignore!"

    const-string v5, "RegiMgr"

    const/4 v6, 0x1

    if-eq v2, v3, :cond_1

    if-eqz v2, :cond_1

    if-eq v2, v6, :cond_1

    const/16 v1, 0xb

    if-eq v2, v1, :cond_0

    .line 1906
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "reportRegistrationCount: PDN type ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "G"

    .line 1896
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1902
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1915
    :goto_0
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v1, v2, :cond_2

    const-string v1, "S"

    .line 1916
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v1, "F"

    .line 1918
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1929
    :goto_1
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getRegistrationRat()I

    move-result v1

    .line 1930
    invoke-static {v1}, Lcom/sec/ims/extensions/TelephonyManagerExt;->getNetworkClass(I)I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    const-string v1, "N"

    .line 1932
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_3
    const/4 v3, 0x3

    const/4 v7, 0x2

    if-ne v2, v3, :cond_6

    const/16 v2, 0x12

    if-ne v1, v2, :cond_5

    .line 1935
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/PdnController;->getEpdgPhysicalInterface(I)I

    move-result v1

    if-ne v1, v7, :cond_4

    const-string v1, "C"

    .line 1936
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_4
    const-string v1, "W"

    .line 1938
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_5
    const-string v1, "4"

    .line 1941
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_6
    if-eq v2, v7, :cond_8

    if-ne v2, v6, :cond_7

    goto :goto_2

    .line 1946
    :cond_7
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "reportRegistrationCount: rat ["

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_3

    :cond_8
    :goto_2
    const-string v1, "L"

    .line 1944
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1949
    :goto_3
    sget-object v1, Lcom/sec/internal/constants/ims/DiagnosisConstants;->REGI_COUNT_KEYS:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1950
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "overwrite_mode"

    .line 1951
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1952
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1954
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reportRegistrationCount: key ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1955
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result p1

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    const-string v0, "DRPT"

    invoke-static {p1, p0, v0, v1}, Lcom/sec/internal/ims/diagnosis/ImsLogAgentUtil;->storeLogToAgent(ILandroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V

    :cond_9
    return-void
.end method

.method protected reportRegistrationStatus(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V
    .locals 10

    .line 1763
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v0

    .line 1764
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1777
    sget-object v2, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->UNKNOWN:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v3

    .line 1778
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getLastRegiFailReason()I

    move-result v4

    .line 1779
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getUserAgent()Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 1781
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getUserAgent()Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/core/IUserAgent;->getErrorCode()Lcom/sec/ims/util/SipError;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1783
    invoke-virtual {v5}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v3

    .line 1786
    :cond_0
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getRegistrationRat()I

    move-result v5

    .line 1787
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    .line 1790
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v7

    new-instance v8, Lcom/sec/internal/ims/core/RegistrationManager$$ExternalSyntheticLambda1;

    invoke-direct {v8}, Lcom/sec/internal/ims/core/RegistrationManager$$ExternalSyntheticLambda1;-><init>()V

    .line 1791
    invoke-virtual {v7, v8}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v7

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v7, v8}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    .line 1793
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v8

    sget-object v9, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v8, v9, :cond_2

    sget-object v8, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->OK:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v8}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v8

    if-ne v3, v8, :cond_2

    if-eq v3, v4, :cond_1

    .line 1796
    sget-object v8, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->OK_AFTER_FAIL:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v8}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v9

    if-eq v4, v9, :cond_1

    .line 1797
    invoke-virtual {v8}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v3

    :cond_1
    const-string v8, "mmtel"

    .line 1800
    invoke-virtual {v6, v8, v5}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 1801
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getRegiFailReason()I

    move-result v3

    goto :goto_1

    .line 1803
    :cond_2
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v8

    if-eq v8, v9, :cond_4

    .line 1804
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getRegiFailReason()I

    move-result v8

    sget-object v9, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->OFFSET_DEREGI_REASON:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v9}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 1808
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v8

    invoke-interface {v8}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->getFailureCount()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "FALC"

    invoke-virtual {v1, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 1813
    :cond_3
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getRegiFailReason()I

    move-result v3

    .line 1817
    :goto_0
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v8

    invoke-interface {p1, v8}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setRegiFailReason(I)V

    :cond_4
    :goto_1
    const-string v8, "DRAT"

    .line 1820
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1821
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/sec/ims/settings/ImsProfile;->getServiceSet(Ljava/lang/Integer;)Ljava/util/Set;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/internal/constants/ims/DiagnosisConstants;->convertServiceSetToHex(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "SVCA"

    invoke-virtual {v1, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1822
    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "SVCR"

    .line 1823
    invoke-static {v7}, Lcom/sec/internal/constants/ims/DiagnosisConstants;->convertServiceSetToHex(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1825
    :cond_5
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPani()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/internal/constants/ims/DiagnosisConstants;->getPaniPrefix(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v7, "PNPR"

    invoke-virtual {v1, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1826
    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->getPdn()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/internal/constants/ims/DiagnosisConstants;->getPdnType(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "PDTY"

    invoke-virtual {v1, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1827
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->getPcscfOrdinal()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "PCOD"

    invoke-virtual {v1, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1829
    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v5, v0}, Lcom/sec/internal/ims/core/PdnController;->isDataRoaming(I)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "ROAM"

    .line 1828
    invoke-virtual {v1, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1830
    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-eqz v5, :cond_7

    const/4 v6, 0x0

    .line 1831
    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getSignalLevel()I

    move-result v5

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "SIGS"

    invoke-virtual {v1, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    .line 1835
    :cond_6
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getRegiFailReason()I

    move-result v3

    .line 1839
    :cond_7
    :goto_2
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getRegiRequestType()Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;->getCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "REQC"

    invoke-virtual {v1, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "FRSN"

    .line 1840
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1842
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "reportRegiStatus: reason ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "], prev ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "RegiMgr"

    invoke-static {v5, v0, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1843
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v2

    if-le v3, v2, :cond_8

    sget-object v2, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->OK:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v2

    if-eq v3, v2, :cond_8

    .line 1844
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    const-string v4, "REGI"

    invoke-static {v0, v2, v4, v1}, Lcom/sec/internal/ims/diagnosis/ImsLogAgentUtil;->sendLogToAgent(ILandroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 1847
    :cond_8
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->reportRcsChatRegistrationStatus(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 1849
    invoke-interface {p1, v3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setLastRegiFailReason(I)V

    return-void
.end method

.method public requestFullNetworkRegistration(IILjava/lang/String;)V
    .locals 2

    .line 885
    iget-object p3, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x3f

    invoke-virtual {p3, v1, v0}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 887
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/4 p3, -0x1

    .line 888
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 887
    invoke-virtual {p0, v1, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 888
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public requestTryRegister(I)V
    .locals 1

    .line 875
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/4 v0, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public requestTryRegsiter(IJ)V
    .locals 1

    .line 880
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/4 v0, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public requestUpdateSipDelegateRegistration(I)V
    .locals 3

    .line 894
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v1, 0x8b

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 895
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo v0, "requestUpdateSipDelegateRegistration: Ignore by postponed update registration event by dma change"

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    return-void

    .line 899
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mSecImsServiceConnector:Lcom/sec/internal/google/SecImsServiceConnector;

    invoke-virtual {v0, p1}, Lcom/sec/internal/google/SecImsServiceConnector;->getSipTransportImpl(I)Lcom/sec/internal/imsphone/SipTransportImpl;

    move-result-object v0

    .line 900
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {v0}, Lcom/sec/internal/imsphone/SipTransportImpl;->hasSipDelegate()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->updateSipDelegateRegistration(IZ)V

    return-void
.end method

.method resetNotifiedImsNotAvailable(I)V
    .locals 0

    .line 263
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->setNotifiedImsNotAvailable(Z)V

    return-void
.end method

.method public sendDmState(IZ)V
    .locals 2

    .line 2040
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isDualIMS()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveSubInfoCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 2041
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->sendDmState(IZ)V

    :cond_0
    return-void
.end method

.method public sendReRegister(Lcom/sec/internal/ims/core/RegisterTask;)V
    .locals 0

    .line 925
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->notifySendReRegisterRequested(Lcom/sec/internal/ims/core/RegisterTask;)V

    return-void
.end method

.method setAresLookupRequired(Z)V
    .locals 0

    .line 279
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mAresLookupRequired:Z

    return-void
.end method

.method protected setCallState(I)V
    .locals 0

    .line 299
    iput p1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mCallState:I

    return-void
.end method

.method setCdmaAvailableForVoice(IZ)V
    .locals 0

    .line 295
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->setCdmaAvailableForVoice(Z)V

    return-void
.end method

.method public setConfigModule(Lcom/sec/internal/interfaces/ims/config/IConfigModule;)V
    .locals 1

    .line 181
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mConfigModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    .line 182
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->setConfigModule(Lcom/sec/internal/interfaces/ims/config/IConfigModule;)V

    .line 183
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mUserEvtCtr:Lcom/sec/internal/ims/core/UserEventController;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/UserEventController;->setConfigModule(Lcom/sec/internal/interfaces/ims/config/IConfigModule;)V

    return-void
.end method

.method setEmmCause(I)V
    .locals 0

    .line 283
    iput p1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mEmmCause:I

    return-void
.end method

.method public setGeolocationController(Lcom/sec/internal/ims/core/GeolocationController;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mGeolocationCon:Lcom/sec/internal/interfaces/ims/core/IGeolocationController;

    return-void
.end method

.method public setInvite403DisableService(ZI)V
    .locals 0

    .line 287
    invoke-static {p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->setInviteReject(Z)V

    return-void
.end method

.method public setNonADSDeRegRequired(Z)V
    .locals 0

    .line 303
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mIsNonADSDeRegRequired:Z

    return-void
.end method

.method setOmadmState(ILcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;)V
    .locals 0

    .line 267
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->setOmadmState(Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;)V

    return-void
.end method

.method public setSSACPolicy(IZ)V
    .locals 1

    .line 1319
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->enableSsac(Z)V

    if-nez p2, :cond_0

    .line 1321
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 p2, 0x79

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setStackInterface(Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;)V
    .locals 1

    .line 187
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    .line 188
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->setEventLog(Lcom/sec/internal/helper/SimpleEventLog;)V

    .line 189
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->setRegistrationHandler(Lcom/sec/internal/interfaces/ims/core/IRegistrationHandlerNotifiable;)V

    .line 190
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mSimManagers:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->setSimManagers(Ljava/util/List;)V

    .line 191
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-interface {p1, p0}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->setPdnController(Lcom/sec/internal/interfaces/ims/core/IPdnController;)V

    return-void
.end method

.method setUnprocessedOmadmConfig(IZ)V
    .locals 0

    .line 275
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->setUnprocessedOmadmConfig(Z)V

    return-void
.end method

.method setVolteAllowedWithDsac(Z)V
    .locals 0

    .line 291
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mIsVolteAllowedWithDsac:Z

    return-void
.end method

.method public setVolteServiceModule(Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;)V
    .locals 1

    .line 175
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    .line 176
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mNetEvtCtr:Lcom/sec/internal/ims/core/NetworkEventController;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/NetworkEventController;->setVolteServiceModule(Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;)V

    .line 177
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mUserEvtCtr:Lcom/sec/internal/ims/core/UserEventController;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/UserEventController;->setVolteServiceModule(Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;)V

    return-void
.end method

.method public testNotifyImsRegistration(Lcom/sec/ims/ImsRegistration;ZLcom/sec/internal/ims/core/RegisterTask;Lcom/sec/ims/ImsRegistrationError;)V
    .locals 0

    .line 390
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/core/RegistrationManager;->notifyImsRegistration(Lcom/sec/ims/ImsRegistration;ZLcom/sec/internal/interfaces/ims/core/IRegisterTask;Lcom/sec/ims/ImsRegistrationError;)V

    return-void
.end method

.method public declared-synchronized unregisterCmcRegiListener(Lcom/sec/ims/IImsRegistrationListener;I)V
    .locals 0

    monitor-enter p0

    .line 637
    :try_start_0
    invoke-static {p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getCmcRegistrationListeners()Landroid/os/RemoteCallbackList;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_0

    .line 639
    monitor-exit p0

    return-void

    .line 642
    :cond_0
    :try_start_1
    invoke-virtual {p2, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 643
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unregisterListener(Lcom/sec/ims/IImsRegistrationListener;I)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, "RegiMgr"

    const-string v0, "listener is null.."

    .line 346
    invoke-static {p1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    monitor-exit p0

    return-void

    .line 350
    :cond_0
    :try_start_1
    invoke-static {p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getImsRegistrationListeners()Landroid/os/RemoteCallbackList;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p2, :cond_1

    .line 352
    monitor-exit p0

    return-void

    .line 355
    :cond_1
    :try_start_2
    invoke-virtual {p2, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 356
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unregisterSimMobilityStatusListener(Lcom/sec/ims/ISimMobilityStatusListener;I)V
    .locals 0

    monitor-enter p0

    .line 605
    :try_start_0
    invoke-static {p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getSimMobilityStatusListeners()Landroid/os/RemoteCallbackList;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 606
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public updateChatService(II)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, -0x1

    if-ne p2, v0, :cond_0

    const/16 p2, 0x8a

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    const/16 p2, 0x89

    goto :goto_0

    :cond_1
    move p2, v1

    :goto_0
    if-eq p2, v1, :cond_2

    .line 1160
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1161
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    return-void
.end method

.method public updateEmergencyTaskByAuthFailure(I)V
    .locals 2

    .line 2054
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getRegisteringEmergencyTask(I)Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2056
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getResultMessage()Landroid/os/Message;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2057
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "isERegiAuthFailed"

    const/4 v1, 0x1

    .line 2058
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2060
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getResultMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2062
    :cond_0
    invoke-static {p0}, Lcom/sec/internal/ims/core/RegistrationUtils;->sendEmergencyRegistrationFailed(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    :cond_1
    return-void
.end method

.method protected updatePani(I)V
    .locals 1

    .line 1713
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/sec/internal/ims/core/RegistrationManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/RegistrationManager$$ExternalSyntheticLambda2;-><init>(Lcom/sec/internal/ims/core/RegistrationManager;)V

    .line 1714
    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method protected updatePani(Lcom/sec/internal/ims/core/RegisterTask;)V
    .locals 4

    .line 1718
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    .line 1719
    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v1, v2}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1720
    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getLastPaniHeader()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 1724
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v1

    .line 1726
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updatePani "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RegiMgr"

    invoke-static {v3, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1727
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    invoke-interface {v2, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->updatePani(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 1729
    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0}, Lcom/sec/internal/ims/core/RegistrationUtils;->isCmcProfile(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1730
    invoke-static {v0}, Lcom/sec/ims/settings/ImsProfile;->hasRcsService(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 1734
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPani()Ljava/lang/String;

    move-result-object v0

    .line 1735
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getLastPani()Ljava/lang/String;

    move-result-object p1

    .line 1736
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1737
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mSecImsServiceConnector:Lcom/sec/internal/google/SecImsServiceConnector;

    invoke-virtual {p0, v1}, Lcom/sec/internal/google/SecImsServiceConnector;->getSipTransportImpl(I)Lcom/sec/internal/imsphone/SipTransportImpl;

    move-result-object p0

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/imsphone/SipTransportImpl;->onPaniUpdated(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public updatePcoInfo(III)V
    .locals 1

    .line 1167
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v0, 0x2bf

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, v0, p3, p1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected updateVceConfig(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Z)V
    .locals 0

    .line 1686
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->updateVceConfig(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Z)V

    return-void
.end method

.method protected validateImpi(Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/interfaces/ims/core/ISimManager;Ljava/lang/String;)Z
    .locals 6

    .line 979
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v0

    .line 980
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 983
    sget-object v2, Lcom/sec/internal/constants/Mno;->TELEFONICA_GERMANY:Lcom/sec/internal/constants/Mno;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_5

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 987
    :cond_0
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasIsim()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 988
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-static {v0, v2, p2, v1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPrivateUserIdentityfromIsim(ILcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/interfaces/ims/core/ISimManager;Lcom/sec/internal/constants/Mno;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 990
    :cond_1
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getDerivedImpi()Ljava/lang/String;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_5

    if-nez p3, :cond_2

    goto :goto_1

    :cond_2
    const/16 v1, 0x40

    .line 997
    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v4, 0x0

    if-lez v2, :cond_3

    .line 999
    invoke-virtual {p2, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 1002
    :cond_3
    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_4

    .line 1004
    invoke-virtual {p3, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    .line 1007
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "impiFromSim : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegiMgr"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 1008
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "impi : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 1010
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    const-string p2, "error : invalid IMPI"

    .line 1011
    invoke-static {v2, v0, p2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1012
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo p2, "registerInternal : error - invalid IMPI"

    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    .line 1013
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",REG FAIL:INVALID IMPI"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const p2, 0x11020005

    invoke-static {p2, p0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    const-string p0, ""

    .line 1014
    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    return v4

    :cond_5
    :goto_1
    return v3
.end method

.method protected validateImpu(Lcom/sec/internal/ims/core/RegisterTask;Ljava/lang/String;)Z
    .locals 4

    .line 1022
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v0

    .line 1023
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    .line 1025
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    if-eq v2, v3, :cond_0

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/Mno;->CU:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_1

    :cond_0
    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->isUicclessEmergency()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1026
    :cond_1
    invoke-static {p2}, Lcom/sec/internal/ims/core/sim/SimManager;->isValidImpu(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "RegiMgr"

    const-string v1, "error : invalid IMPU"

    .line 1027
    invoke-static {p2, v0, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1028
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo p2, "registerInternal : error - invalid IMPU"

    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    .line 1029
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",REG FAIL:INVALD IMPU"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/high16 p2, 0x11020000

    invoke-static {p2, p0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    const-string p0, ""

    .line 1030
    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method
