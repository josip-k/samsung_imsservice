.class Lcom/sec/internal/ims/core/NetworkEventController;
.super Ljava/lang/Object;
.source "NetworkEventController.java"


# static fields
.field private static final EPDG_EVENT_TIMER:I = 0x1d8a8

.field static final IMS_DM_START:Ljava/lang/String; = "10"

.field private static final LOG_TAG:Ljava/lang/String; = "RegiMgr-NetEvtCtr"


# instance fields
.field protected mCmcAccountManager:Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

.field protected mContext:Landroid/content/Context;

.field protected mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field protected mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

.field protected mLastPcscfList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNetType:I

.field private mNwChanged:Z

.field protected mPdnController:Lcom/sec/internal/ims/core/PdnController;

.field protected mRcsPolicyManager:Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;

.field protected mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

.field protected mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

.field protected mRetryIntentOnPdnFail:Landroid/app/PendingIntent;

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

.field protected mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

.field private mWiFi:Z


# direct methods
.method public static synthetic $r8$lambda$0B_TSDREjoFjgm-HVIkoN_Kxy1Y(Lcom/sec/internal/ims/core/RegisterTask;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/core/NetworkEventController;->lambda$onPdnConnecting$0(Lcom/sec/internal/ims/core/RegisterTask;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$9PZNE4qVhGxqIo-5_cnqMdfHHko(ILcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/NetworkEventController;->lambda$onPdnConnecting$1(ILcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WgBcD_U-DZkoDhzYh8uYIplTaTM(Lcom/sec/internal/ims/core/RegisterTask;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/core/NetworkEventController;->lambda$onEpdgIkeError$4(Lcom/sec/internal/ims/core/RegisterTask;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$YwPw7M7wCTHVJ9fCPCTHTcDME4w(Lcom/sec/internal/ims/core/NetworkEventController;IIILcom/sec/internal/ims/core/RegisterTask;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/core/NetworkEventController;->lambda$onPdnFailed$3(IIILcom/sec/internal/ims/core/RegisterTask;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sRIy81ioMVSZIvP15pacjoYwLVw(Lcom/sec/internal/ims/core/RegisterTask;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/core/NetworkEventController;->lambda$onEpdgIkeError$5(Lcom/sec/internal/ims/core/RegisterTask;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yS3mJd2KOoniXsUUf1xNtjAJNaA(Lcom/sec/internal/ims/core/RegisterTask;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/core/NetworkEventController;->lambda$onPdnFailed$2(Lcom/sec/internal/ims/core/RegisterTask;)Z

    move-result p0

    return p0
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 107
    iput-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRetryIntentOnPdnFail:Landroid/app/PendingIntent;

    const/4 v0, 0x0

    .line 573
    iput v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mNetType:I

    .line 574
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mWiFi:Z

    .line 575
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mNwChanged:Z

    .line 114
    iput-object p1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mContext:Landroid/content/Context;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/helper/os/ITelephonyManager;Ljava/util/List;Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;Lcom/sec/internal/ims/core/RegistrationManagerBase;Lcom/sec/internal/interfaces/ims/IImsFramework;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sec/internal/ims/core/PdnController;",
            "Lcom/sec/internal/helper/os/ITelephonyManager;",
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/ISimManager;",
            ">;",
            "Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;",
            "Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;",
            "Lcom/sec/internal/ims/core/RegistrationManagerBase;",
            "Lcom/sec/internal/interfaces/ims/IImsFramework;",
            ")V"
        }
    .end annotation

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 107
    iput-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRetryIntentOnPdnFail:Landroid/app/PendingIntent;

    const/4 v0, 0x0

    .line 573
    iput v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mNetType:I

    .line 574
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mWiFi:Z

    .line 575
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mNwChanged:Z

    .line 119
    iput-object p1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mContext:Landroid/content/Context;

    .line 120
    iput-object p2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    .line 121
    iput-object p3, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 122
    iput-object p4, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mSimManagers:Ljava/util/List;

    .line 123
    iput-object p5, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mCmcAccountManager:Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    .line 124
    iput-object p6, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRcsPolicyManager:Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;

    .line 125
    iput-object p7, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    .line 126
    iput-object p8, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 127
    new-instance p2, Lcom/sec/internal/helper/SimpleEventLog;

    const-string p3, "RegiMgr-NetEvtCtr"

    const/16 p4, 0x12c

    invoke-direct {p2, p1, p3, p4}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object p2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    return-void
.end method

.method private deregisterByDefaultNwChanged(Lcom/sec/internal/ims/core/RegisterTask;IZ)V
    .locals 6

    .line 1478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deregisterByDefaultNwChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1479
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") needDeregi("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr-NetEvtCtr"

    .line 1478
    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1480
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/PdnController;->getDefaultNetworkBearer()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/PdnController;->translateNetworkBearer(I)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    .line 1482
    :goto_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 1483
    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v4, v5}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1484
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result p2

    if-nez p2, :cond_1

    sget-object p2, Lcom/sec/internal/constants/Mno;->TMOBILE:Lcom/sec/internal/constants/Mno;

    if-eq v0, p2, :cond_1

    sget-object p2, Lcom/sec/internal/constants/Mno;->H3G:Lcom/sec/internal/constants/Mno;

    if-ne v0, p2, :cond_4

    .line 1486
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isMobilePreferredForRcs()Z

    move-result p2

    if-eqz p2, :cond_2

    if-nez v3, :cond_2

    if-nez p3, :cond_2

    return-void

    :cond_2
    const/16 p2, 0xc

    .line 1490
    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 1491
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1, v2, v2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    goto :goto_1

    .line 1494
    :cond_3
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 1495
    sget-object p3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {p1, p3}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 1497
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p3

    invoke-interface {p3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isMobilePreferredForRcs()Z

    move-result p3

    if-eqz p3, :cond_4

    if-eqz v3, :cond_4

    const-string p3, "deregisterByDefaultNwChanged: stop pdn"

    .line 1498
    invoke-static {v1, p2, p3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1499
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    :cond_4
    :goto_1
    return-void
.end method

.method private handleNetworkEvent(ILcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/os/NetworkEvent;Lcom/sec/internal/constants/ims/os/NetworkEvent;ZZ)V
    .locals 9

    .line 1224
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1225
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/core/NetworkEventController;->handleRestrictionOnNetworkEventChanged(ILcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/os/NetworkEvent;)V

    .line 1227
    iget-object v0, p4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->operatorNumeric:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->operatorNumeric:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->operatorNumeric:Ljava/lang/String;

    iget-object v2, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->operatorNumeric:Ljava/lang/String;

    .line 1228
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1230
    :goto_0
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isThrottled()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isThrottledforImsNotAvailable()Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    .line 1231
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/PdnController;->isEpsOnlyReg(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1232
    :cond_1
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    const/16 v2, 0x9

    invoke-interface {v0, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->releaseThrottle(I)V

    .line 1238
    :cond_2
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isMobilePreferredForRcs()Z

    move-result v0

    const-string v2, "RegiMgr-NetEvtCtr"

    if-eqz v0, :cond_5

    .line 1239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNetworkEventChanged: event.isDataStateConnected: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataStateConnected:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " old.isDataStateConnected: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataStateConnected:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " event.outOfService: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " old.outOfService: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " task.getPdnType() "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1241
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " rat: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1242
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " isWifiConnected: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/PdnController;->isWifiConnected()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1243
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1239
    invoke-static {v2, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1244
    iget-boolean v0, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataStateConnected:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataStateConnected:Z

    if-eqz v0, :cond_4

    :cond_3
    iget-boolean v0, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    if-nez v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    .line 1245
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/PdnController;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v0

    if-ne v0, v1, :cond_5

    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->RESOLVING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->RESOLVED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONFIGURING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v6, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONFIGURED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v7, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v8, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array/range {v3 .. v8}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    .line 1246
    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1247
    invoke-virtual {p0, p2, p1, v1}, Lcom/sec/internal/ims/core/NetworkEventController;->isPreferredPdnForRCSRegister(Lcom/sec/internal/ims/core/RegisterTask;IZ)Z

    :cond_5
    if-nez p5, :cond_7

    if-eqz p6, :cond_6

    goto :goto_1

    :cond_6
    const-string p5, "onNetworkEventChanged: sendTryRegister"

    .line 1255
    invoke-static {v2, p1, p5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1256
    iget-object p5, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {p5, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(I)V

    goto :goto_2

    :cond_7
    :goto_1
    const-string p5, "onNetworkEventChanged: do not call sendTryRegister"

    .line 1253
    invoke-static {v2, p1, p5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1260
    :cond_8
    :goto_2
    invoke-virtual {p3, p4}, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isVopsUpdated(Lcom/sec/internal/constants/ims/os/NetworkEvent;)Lcom/sec/internal/constants/ims/os/NetworkEvent$VopsState;

    move-result-object p4

    sget-object p5, Lcom/sec/internal/constants/ims/os/NetworkEvent$VopsState;->DISABLED:Lcom/sec/internal/constants/ims/os/NetworkEvent$VopsState;

    if-ne p4, p5, :cond_9

    .line 1261
    invoke-virtual {p0, p2, p3, p1}, Lcom/sec/internal/ims/core/NetworkEventController;->handleVopsDisabledOnNetworkEventChanged(Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/os/NetworkEvent;I)V

    :cond_9
    return-void
.end method

.method private handleNetworkEventOnDeregistering(ILcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/os/NetworkEvent;Lcom/sec/internal/constants/ims/os/NetworkEvent;)V
    .locals 3

    .line 1205
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    const-string v2, "RegiMgr-NetEvtCtr"

    if-ne v0, v1, :cond_1

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/ims/settings/ImsProfile;->hasVolteService(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1206
    iget-boolean v0, p4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isPsOnlyReg:Z

    iget-boolean v1, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isPsOnlyReg:Z

    if-ne v0, v1, :cond_0

    iget-boolean p4, p4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isVoiceRoaming:Z

    iget-boolean v0, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isVoiceRoaming:Z

    if-eq p4, v0, :cond_1

    :cond_0
    const-string p4, "onNetworkEventChanged: roaming or ps-voice-only mode changed in de-registering state"

    .line 1207
    invoke-static {v2, p1, p4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1208
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p4

    iget-boolean v0, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isPsOnlyReg:Z

    iget-boolean p3, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isVoiceRoaming:Z

    invoke-interface {p4, v0, p3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onServiceStateDataChanged(ZZ)V

    .line 1212
    :cond_1
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object p3

    sget-object p4, Lcom/sec/internal/constants/Mno;->CU:Lcom/sec/internal/constants/Mno;

    if-ne p3, p4, :cond_2

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->isKeepPdn()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 1213
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getDeregiReason()I

    move-result p3

    const/4 p4, 0x2

    if-ne p3, p4, :cond_2

    iget-object p3, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mContext:Landroid/content/Context;

    iget-object p4, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    .line 1214
    invoke-static {p3, p2, p4, p0}, Lcom/sec/internal/ims/core/RegistrationRatDecider;->getDecidedRat(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;)I

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "CU, if not in LTE,will stop pdn when in deregistering state caused by pdn lost"

    .line 1215
    invoke-static {v2, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x0

    .line 1216
    invoke-virtual {p2, p0}, Lcom/sec/internal/ims/core/RegisterTask;->setKeepPdn(Z)V

    :cond_2
    return-void
.end method

.method private handleOutOfServiceOnNetworkEvnentChanged(Lcom/sec/internal/ims/core/RegisterTask;I)V
    .locals 7

    const-string/jumbo v0, "out of service."

    const-string v1, "RegiMgr-NetEvtCtr"

    .line 1291
    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1293
    invoke-static {p2}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 1295
    sget-object v2, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    const-string v2, "Set OutOfService True for RJIL"

    .line 1296
    invoke-static {v1, p2, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1297
    iget-object v2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {v2, v3, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->setOutOfService(ZI)V

    .line 1300
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result v2

    const/16 v4, 0x12

    if-eq v2, v4, :cond_1

    invoke-static {v0}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(Lcom/sec/internal/constants/Mno;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "set EVENT_RCS_DELAYED_DEREGISTER"

    .line 1301
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    iget-object v2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v4, 0x8e

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1303
    iget-object v2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x7530

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1306
    :cond_1
    invoke-static {v0}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsChn(Lcom/sec/internal/constants/Mno;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1307
    iget-object v2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-eqz v2, :cond_2

    invoke-interface {v2, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->hasCsCall(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "RCS deregister OOS during CS call"

    .line 1308
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x4

    .line 1309
    invoke-virtual {p1, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 1310
    iget-object v2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v2, p1, v3, v3}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    .line 1314
    :cond_2
    sget-object v2, Lcom/sec/internal/constants/Mno;->EE_ESN:Lcom/sec/internal/constants/Mno;

    const/4 v4, 0x0

    if-ne v0, v2, :cond_3

    const-string v2, "ESN send local deregi and PDN disconnect"

    .line 1315
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    iget-object v2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v2, p1, v3, v4}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    .line 1319
    :cond_3
    sget-object v2, Lcom/sec/internal/constants/Mno;->SMARTONE:Lcom/sec/internal/constants/Mno;

    sget-object v5, Lcom/sec/internal/constants/Mno;->ETISALAT_UAE:Lcom/sec/internal/constants/Mno;

    filled-new-array {v2, v5}, [Lcom/sec/internal/constants/Mno;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-eqz v0, :cond_4

    invoke-interface {v0, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->hasCsCall(I)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "Send local deregi and PDN disconnect after CSFB"

    .line 1320
    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    iget-object p2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p2, p1, v3, v4}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    .line 1325
    :cond_4
    iget-object p2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v0

    const-string/jumbo v1, "remove_icon_nosvc"

    invoke-interface {p2, v0, v1, v4}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getBoolean(ILjava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 1326
    iget-object p2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/core/RegistrationManager;->getImsIconManager(I)Lcom/sec/internal/ims/core/ImsIconManager;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 1327
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getImsIconManager(I)Lcom/sec/internal/ims/core/ImsIconManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->updateRegistrationIcon()V

    :cond_5
    return-void
.end method

.method private handleRestrictionOnNetworkEventChanged(ILcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/os/NetworkEvent;)V
    .locals 2

    .line 1332
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1333
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/core/RegistrationUtils;->isCmcProfile(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 1337
    :cond_0
    iget-boolean v0, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->allowRoaming()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    .line 1338
    invoke-static {v0}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceOverPs:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    sget-object v1, Lcom/sec/internal/constants/ims/os/VoPsIndication;->SUPPORTED:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    if-ne v0, v1, :cond_2

    iget-boolean v0, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    if-nez v0, :cond_2

    :cond_1
    iget-boolean v0, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    if-nez v0, :cond_3

    .line 1340
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    if-eq p1, v0, :cond_3

    const-string/jumbo v0, "ro.boot.hardware"

    const-string v1, ""

    .line 1341
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "qcom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->csOutOfService:Z

    if-nez v0, :cond_3

    iget p3, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceNetwork:I

    const/4 v0, 0x3

    if-ne p3, v0, :cond_3

    .line 1343
    :cond_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleRestrictionOnNetworkEventChanged: task:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1344
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "RegiMgr-NetEvtCtr"

    .line 1343
    invoke-static {v0, p1, p3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p3, 0x2

    .line 1345
    invoke-virtual {p2, p3}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    const-string p3, "handleRestrictionOnNetworkEventChanged: VoLTE roaming disabled(not LTE/NR, not VoPS) or VoLTE disabled(qcom non DDS is cs only in 3G)"

    .line 1346
    invoke-virtual {p2, p3}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 1347
    iget-object p3, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const/4 v1, 0x0

    invoke-virtual {p3, p2, v1, v1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    const-string p3, "handleRestrictionOnNetworkEventChanged: VoLTE roaming disabled(not LTE/NR, not VoPS) or VoLTE disabled(non DDS in 3G)"

    .line 1348
    invoke-static {v0, p1, p3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1349
    sget-object p1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object p3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->DEREGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {p1, p3, v0}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 1350
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p2, v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendDisconnectPdnByVolteDisabled(Lcom/sec/internal/ims/core/RegisterTask;J)V

    nop

    :cond_3
    :goto_0
    return-void
.end method

.method private handleSsacOnNetworkEventChanged(Lcom/sec/internal/ims/core/RegisterTask;ILcom/sec/internal/constants/ims/os/NetworkEvent;Lcom/sec/internal/constants/ims/os/NetworkEvent;)V
    .locals 3

    .line 1359
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x79

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p3, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->operatorNumeric:Ljava/lang/String;

    iget-object p4, p4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->operatorNumeric:Ljava/lang/String;

    .line 1360
    invoke-static {p3, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 1361
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object p1

    const-string p3, "RegiMgr-NetEvtCtr"

    if-nez p1, :cond_0

    const-string p1, "onNetworkEventChanged: remove SSAC re-regi"

    .line 1362
    invoke-static {p3, p2, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1363
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :cond_0
    const-string p0, "onNetworkEventChanged: set SSAC to default"

    .line 1366
    invoke-static {p3, p2, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1367
    invoke-static {p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->enableSsac(Z)V

    :cond_1
    return-void
.end method

.method private isHandoverBetweenEpdgAndLeagacy(II)Z
    .locals 1

    .line 0
    if-eq p1, p2, :cond_2

    if-eqz p2, :cond_2

    const/16 p0, 0xd

    const/16 v0, 0x12

    if-ne p1, v0, :cond_0

    if-ne p2, p0, :cond_1

    :cond_0
    if-eq p1, p0, :cond_2

    if-ne p2, v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isNewPcscfListAvailable(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z
    .locals 3

    .line 1650
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget-object v1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRcsPolicyManager:Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;

    iget-object v2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v2}, Lcom/sec/internal/helper/os/ITelephonyManager;->getIsimPcscf()[Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/sec/internal/ims/core/RegistrationUtils;->retrievePcscfByProfileSettings(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 1651
    invoke-static {p1}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mLastPcscfList:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$onEpdgIkeError$4(Lcom/sec/internal/ims/core/RegisterTask;)Z
    .locals 1

    .line 1528
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result p0

    const/16 v0, 0xb

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$onEpdgIkeError$5(Lcom/sec/internal/ims/core/RegisterTask;)V
    .locals 0

    .line 1529
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onEpdgIkeError()V

    return-void
.end method

.method private static synthetic lambda$onPdnConnecting$0(Lcom/sec/internal/ims/core/RegisterTask;)Z
    .locals 1

    .line 345
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result p0

    const/16 v0, 0xb

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$onPdnConnecting$1(ILcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;)V
    .locals 0

    .line 347
    invoke-interface {p1, p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onPdnConnecting(I)V

    return-void
.end method

.method private static synthetic lambda$onPdnFailed$2(Lcom/sec/internal/ims/core/RegisterTask;)Z
    .locals 1

    .line 705
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result p0

    const/16 v0, 0xb

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$onPdnFailed$3(IIILcom/sec/internal/ims/core/RegisterTask;)V
    .locals 5

    .line 707
    invoke-static {p1}, Lcom/sec/internal/constants/ims/core/PdnFailReason;->valueOf(I)Lcom/sec/internal/constants/ims/core/PdnFailReason;

    move-result-object v0

    .line 708
    iget-object v1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 709
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "onPdnFailed: %s(%d)"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 708
    invoke-virtual {v1, p2, p4, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    .line 710
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",PDN FAIL:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const v1, 0x1101000a

    invoke-static {v1, p1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 711
    invoke-virtual {p4}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p1

    invoke-interface {p1, v0, p3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onPdnRequestFailed(Lcom/sec/internal/constants/ims/core/PdnFailReason;I)V

    .line 714
    invoke-virtual {p4}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->getRetryTimeOnPdnFail()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    .line 717
    iget-object p1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRetryIntentOnPdnFail:Landroid/app/PendingIntent;

    if-eqz p1, :cond_0

    .line 718
    iget-object p3, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mContext:Landroid/content/Context;

    invoke-static {p3, p1}, Lcom/sec/internal/helper/AlarmTimer;->stop(Landroid/content/Context;Landroid/app/PendingIntent;)V

    const/4 p1, 0x0

    .line 719
    iput-object p1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRetryIntentOnPdnFail:Landroid/app/PendingIntent;

    .line 721
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string p3, "android.intent.action.retryTimeExpired"

    invoke-direct {p1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p3, "EXTRA_PHONE_ID"

    .line 722
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 723
    iget-object p2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mContext:Landroid/content/Context;

    const/4 p3, 0x0

    const/high16 v2, 0x2000000

    invoke-static {p2, p3, p1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRetryIntentOnPdnFail:Landroid/app/PendingIntent;

    .line 725
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, v0, v1}, Lcom/sec/internal/helper/AlarmTimer;->start(Landroid/content/Context;Landroid/app/PendingIntent;J)V

    .line 726
    invoke-virtual {p4}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p0

    const-wide/16 p1, -0x1

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->setRetryTimeOnPdnFail(J)V

    :cond_1
    return-void
.end method

.method private lookupPcscfIfRequired(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/interfaces/ims/core/IRegisterTask;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    .line 172
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 173
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 174
    invoke-static {v3}, Lcom/sec/internal/helper/NetworkUtil;->isValidPcscfAddress(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "RegiMgr-NetEvtCtr"

    if-eqz v4, :cond_f

    .line 175
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v4

    if-nez v4, :cond_1

    .line 176
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getPcscfPreference()I

    move-result v4

    if-eqz v4, :cond_1

    .line 177
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getPcscfPreference()I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_2

    .line 178
    :cond_1
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/core/NetworkEventController;->isDomainPattern(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 179
    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 183
    :cond_2
    iget-object v4, v0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v4, p1}, Lcom/sec/internal/ims/core/PdnController;->getDnsServers(Lcom/sec/internal/interfaces/ims/core/PdnEventListener;)Ljava/util/List;

    move-result-object v4

    .line 184
    invoke-interface {p1, v3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setPcscfHostname(Ljava/lang/String;)V

    .line 186
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getNetworkConnected()Landroid/net/Network;

    move-result-object v6

    if-nez v6, :cond_3

    const-wide/16 v6, 0x0

    goto :goto_1

    :cond_3
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getNetworkConnected()Landroid/net/Network;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Network;->getNetworkHandle()J

    move-result-wide v6

    :goto_1
    move-wide v8, v6

    .line 187
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "netId: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-eqz v4, :cond_5

    .line 189
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->getNeedNaptrDns()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsChn(Lcom/sec/internal/constants/Mno;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/core/NetworkEventController;->isDomainPattern(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_4
    const-string v2, "TLS"

    .line 191
    iget-object v6, v0, Lcom/sec/internal/ims/core/NetworkEventController;->mRcsPolicyManager:Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;

    invoke-interface {v6, p1, v2}, Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;->selectRcsTransportType(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 192
    iget-object v2, v0, Lcom/sec/internal/ims/core/NetworkEventController;->mRcsPolicyManager:Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;

    invoke-interface {v2, p1, v4}, Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;->selectRcsDnsType(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/util/List;)Ljava/lang/String;

    move-result-object v7

    .line 193
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v2

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ipver for NAPTR : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v2, v11}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 195
    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->RESOLVING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-interface {p1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 196
    iget-object v0, v0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const-string v5, "NAPTR"

    move-object v1, p1

    move-object/from16 v2, p3

    invoke-virtual/range {v0 .. v9}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->sendDnsQuery(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_7

    :cond_5
    if-eqz v4, :cond_9

    .line 200
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isSoftphoneEnabled()Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, v0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v6}, Lcom/sec/internal/ims/core/RegistrationManager;->getAresLookupRequired()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 201
    invoke-interface {p1, v3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setPcscfHostname(Ljava/lang/String;)V

    .line 202
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_sip._tls."

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 203
    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->RESOLVING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-interface {p1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 204
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 205
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 206
    invoke-static {v7}, Lcom/sec/internal/helper/NetworkUtil;->isIPv4Address(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 207
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 211
    :cond_7
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 212
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v2

    const-string v4, "ATT SoftPhone : found ipv4 dns"

    invoke-static {v5, v2, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 213
    iget-object v0, v0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const-string v5, "SRV"

    const-string/jumbo v7, "tcp"

    const-string v11, "IPV4"

    move-object v1, p1

    move-object/from16 v2, p3

    move-object v4, v6

    move-object v6, v7

    move-object v7, v11

    invoke-virtual/range {v0 .. v9}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->sendDnsQuery(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_7

    .line 215
    :cond_8
    iget-object v0, v0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const-string v5, "SRV"

    const-string/jumbo v6, "tcp"

    const-string v7, ""

    move-object v1, p1

    move-object/from16 v2, p3

    invoke-virtual/range {v0 .. v9}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->sendDnsQuery(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_7

    .line 221
    :cond_9
    :try_start_0
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v4

    const/4 v6, 0x0

    if-nez v4, :cond_c

    .line 222
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 223
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getNetworkConnected()Landroid/net/Network;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 224
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getNetworkConnected()Landroid/net/Network;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/net/Network;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v4

    array-length v7, v4

    :goto_3
    if-ge v6, v7, :cond_d

    aget-object v8, v4, v6

    .line 225
    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 228
    :cond_a
    invoke-static {v3}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v4

    array-length v7, v4

    :goto_4
    if-ge v6, v7, :cond_d

    aget-object v8, v4, v6

    .line 229
    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 233
    :cond_b
    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->RESOLVING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-interface {p1, v4}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 234
    iget-object v4, v0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object v6, v0, Lcom/sec/internal/ims/core/NetworkEventController;->mRcsPolicyManager:Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;

    invoke-static {v4, v6, p1, v3}, Lcom/sec/internal/ims/core/RegistrationUtils;->getHostAddressWithThread(Lcom/sec/internal/ims/core/RegistrationManagerHandler;Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    goto :goto_6

    .line 237
    :cond_c
    invoke-static {p1, v3}, Lcom/sec/internal/ims/core/RegistrationUtils;->getAllByNameWithThread(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v4

    array-length v7, v4

    :goto_5
    if-ge v6, v7, :cond_d

    aget-object v8, v4, v6

    .line 238
    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 242
    :cond_d
    :goto_6
    invoke-interface {p1, v3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setPcscfHostname(Ljava/lang/String;)V

    .line 244
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v3

    const/4 v4, 0x3

    if-lt v3, v4, :cond_0

    .line 245
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getDomain()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setPcscfHostname(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 248
    :catch_0
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v3

    const-string v4, "getPcscfIpAddresses: faild to resolve dns query... "

    invoke-static {v5, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 249
    iget-object v3, v0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/RegistrationManager;->setAresLookupRequired(Z)V

    .line 250
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    if-ne v3, v4, :cond_e

    .line 251
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->retryDNSQuery()V

    .line 253
    :cond_e
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v3

    if-eqz v3, :cond_0

    .line 254
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v0

    const-string v1, "CMC dns query failed"

    invoke-static {v5, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_7

    .line 259
    :cond_f
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getPcscfIpAddresses: pcscf is not valid... continue : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v4, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_10
    :goto_7
    return-object v10
.end method

.method private setOmaDmStateDB(ILcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;)V
    .locals 2

    .line 807
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 808
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;->TRIGGERED:Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    if-eq p2, v0, :cond_0

    goto :goto_1

    .line 811
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setOmaDmStateDB<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ">: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "RegiMgr-NetEvtCtr"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    :try_start_0
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "dm_state"

    const-string v1, "10"

    .line 814
    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "sim_slot_id"

    .line 815
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 816
    iget-object p1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "content://com.ims.dm.ContentProvider/imsDmStart"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 818
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setOmaDmStateDB : update failure - "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "null"

    :goto_0
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private tryCmcRegisterOnNetworkEventChanged(Lcom/sec/internal/constants/ims/os/NetworkEvent;Lcom/sec/internal/constants/ims/os/NetworkEvent;)V
    .locals 1

    .line 1390
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mCmcAccountManager:Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->isCmcProfileAdded()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean p1, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    if-nez p1, :cond_0

    iget-boolean p1, p2, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    if-eqz p1, :cond_0

    .line 1391
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mCmcAccountManager:Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->startCmcRegistration()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getNetType()I
    .locals 0

    .line 578
    iget p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mNetType:I

    return p0
.end method

.method public getPcscfIpAddress(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 139
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/Mno;->MTS_RUSSIA:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isRcsOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/NetworkEventController;->isNewPcscfListAvailable(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->resetPcscfList()V

    .line 142
    :cond_0
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->hasValidPcscfIpList()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 143
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget-object v2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRcsPolicyManager:Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;

    iget-object v3, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v3}, Lcom/sec/internal/helper/os/ITelephonyManager;->getIsimPcscf()[Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v0, v2, v3}, Lcom/sec/internal/ims/core/RegistrationUtils;->retrievePcscfByProfileSettings(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mLastPcscfList:Ljava/util/List;

    .line 145
    invoke-static {v0}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mLastPcscfList:Ljava/util/List;

    invoke-direct {p0, p1, v0, p2}, Lcom/sec/internal/ims/core/NetworkEventController;->lookupPcscfIfRequired(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    .line 150
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->checkValidPcscfIp(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 151
    invoke-static {p2}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 152
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->updatePcscfIpList(Ljava/util/List;)V

    .line 153
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRcsPolicyManager:Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;->updateDualRcsPcscfIp(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/util/List;)V

    .line 154
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->getCurrentPcscfIp()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v1

    .line 159
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRcsPolicyManager:Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;

    invoke-interface {p0, p1, v1}, Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;->updateDualRcsPcscfIp(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/util/List;)V

    .line 160
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->getCurrentPcscfIp()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method handOffEventTimeout(I)V
    .locals 3

    .line 1522
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handOffEventTimeout: mNetType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/NetworkEventController;->getNetType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mWiFi = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/NetworkEventController;->isWiFi()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1523
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->suspendRegister(ZI)V

    return-void
.end method

.method handleNetworkEventBeforeRegister(ILcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/os/NetworkEvent;Lcom/sec/internal/constants/ims/os/NetworkEvent;)Z
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 1007
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleNetworkEventBeforeRegister: new network event="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", old network event="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "RegiMgr-NetEvtCtr"

    invoke-static {v6, v1, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1008
    iget-object v5, v4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->operatorNumeric:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v8, 0x0

    if-nez v5, :cond_0

    iget-object v5, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->operatorNumeric:Ljava/lang/String;

    .line 1009
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->operatorNumeric:Ljava/lang/String;

    iget-object v9, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->operatorNumeric:Ljava/lang/String;

    .line 1010
    invoke-static {v5, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    move v5, v8

    .line 1011
    :goto_0
    invoke-virtual/range {p3 .. p4}, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isVopsUpdated(Lcom/sec/internal/constants/ims/os/NetworkEvent;)Lcom/sec/internal/constants/ims/os/NetworkEvent$VopsState;

    move-result-object v9

    sget-object v10, Lcom/sec/internal/constants/ims/os/NetworkEvent$VopsState;->ENABLED:Lcom/sec/internal/constants/ims/os/NetworkEvent$VopsState;

    if-ne v9, v10, :cond_1

    const/4 v9, 0x1

    goto :goto_1

    :cond_1
    move v9, v8

    .line 1012
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v10

    sget-object v11, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    sget-object v12, Lcom/sec/internal/constants/Mno;->DISH:Lcom/sec/internal/constants/Mno;

    filled-new-array {v11, v12}, [Lcom/sec/internal/constants/Mno;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v10

    const/16 v11, 0x9

    const/4 v12, 0x6

    if-eqz v10, :cond_5

    .line 1013
    iget v10, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    iget v13, v4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    if-ne v10, v13, :cond_2

    iget-boolean v10, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isWifiConnected:Z

    if-nez v10, :cond_2

    const-string v10, "onNetworkEventChanged: WiFi has turned off. release throttle."

    .line 1014
    invoke-static {v6, v1, v10}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1015
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v10

    const/4 v13, 0x2

    invoke-interface {v10, v13}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->releaseThrottle(I)V

    .line 1018
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v10

    invoke-interface {v10}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isThrottled()Z

    move-result v10

    if-eqz v10, :cond_5

    if-eqz v5, :cond_3

    .line 1020
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v10

    invoke-interface {v10, v11}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->releaseThrottle(I)V

    goto :goto_2

    .line 1021
    :cond_3
    iget v10, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    iget v13, v4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    if-eq v10, v13, :cond_4

    .line 1022
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v10

    invoke-interface {v10, v12}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->releaseThrottle(I)V

    goto :goto_2

    .line 1023
    :cond_4
    iget-boolean v10, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    if-nez v10, :cond_5

    iget-boolean v10, v4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    if-eqz v10, :cond_5

    .line 1024
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v10

    const/16 v13, 0xe

    invoke-interface {v10, v13}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->releaseThrottle(I)V

    .line 1030
    :cond_5
    :goto_2
    iget-object v10, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceOverPs:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    sget-object v13, Lcom/sec/internal/constants/ims/os/VoPsIndication;->NOT_SUPPORTED:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    const/16 v14, 0xb

    if-ne v10, v13, :cond_6

    .line 1031
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v10

    sget-object v13, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v10, v13, :cond_6

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v10

    if-ne v10, v14, :cond_6

    iget v10, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    .line 1032
    invoke-static {v10}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 1035
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v10

    sget-object v13, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-eq v10, v13, :cond_6

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v10

    sget-object v13, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-eq v10, v13, :cond_6

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v10

    sget-object v13, Lcom/sec/internal/constants/Mno;->TRUEMOVE:Lcom/sec/internal/constants/Mno;

    if-eq v10, v13, :cond_6

    .line 1036
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v10

    sget-object v13, Lcom/sec/internal/constants/Mno;->AIS:Lcom/sec/internal/constants/Mno;

    if-eq v10, v13, :cond_6

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v10

    sget-object v13, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-eq v10, v13, :cond_6

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v10

    if-nez v10, :cond_6

    .line 1037
    iget-object v10, v0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v13

    invoke-virtual {v10, v13, v2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 1038
    sget-object v10, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {v2, v10}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 1044
    :cond_6
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v10

    sget-object v13, Lcom/sec/internal/constants/Mno;->BOG:Lcom/sec/internal/constants/Mno;

    sget-object v15, Lcom/sec/internal/constants/Mno;->TELECOM_ITALY:Lcom/sec/internal/constants/Mno;

    sget-object v7, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    sget-object v11, Lcom/sec/internal/constants/Mno;->H3G:Lcom/sec/internal/constants/Mno;

    sget-object v12, Lcom/sec/internal/constants/Mno;->CU:Lcom/sec/internal/constants/Mno;

    filled-new-array {v13, v15, v7, v11, v12}, [Lcom/sec/internal/constants/Mno;

    move-result-object v7

    invoke-virtual {v10, v7}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1045
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v7

    sget-object v10, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v7, v10, :cond_7

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v7

    if-ne v7, v14, :cond_7

    iget-boolean v7, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    if-eqz v7, :cond_7

    .line 1046
    iget-object v7, v0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v10

    invoke-virtual {v7, v10, v2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 1047
    sget-object v7, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {v2, v7}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 1051
    :cond_7
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/internal/ims/core/RegistrationUtils;->isCmcProfile(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v7

    sget-object v10, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v7, v10, :cond_8

    iget-boolean v7, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isWifiConnected:Z

    if-eqz v7, :cond_8

    iget-boolean v7, v4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isWifiConnected:Z

    if-nez v7, :cond_8

    const-string v7, "onNetworkEventChanged: Wifi connected in CMC profile. Stop the conneting PDN"

    .line 1052
    invoke-static {v6, v1, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1053
    iget-object v7, v0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v10

    invoke-virtual {v7, v10, v2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 1054
    sget-object v7, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {v2, v7}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 1057
    :cond_8
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v7

    sget-object v10, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    sget-object v11, Lcom/sec/internal/constants/Mno;->CU:Lcom/sec/internal/constants/Mno;

    filled-new-array {v10, v11}, [Lcom/sec/internal/constants/Mno;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v7

    const/16 v10, 0x14

    if-eqz v7, :cond_d

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v7

    if-ne v7, v14, :cond_d

    .line 1058
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v7

    invoke-interface {v7}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isDelayedDeregisterTimerRunning()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1059
    iget v4, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-static {v4}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1060
    iget v3, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-static {v3}, Lcom/sec/ims/extensions/TelephonyManagerExt;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v3

    .line 1061
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onNetworkEventChanged: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "attached while DelayedDeregisterTimer running."

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1062
    iget-object v0, v0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->onDelayedDeregister(Lcom/sec/internal/ims/core/RegisterTask;)V

    goto :goto_3

    :cond_9
    const-string v0, "onNetworkEventChanged: Do not stop IMS PDN on delayedDeregisterTimer running"

    .line 1064
    invoke-static {v6, v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :goto_3
    return v8

    .line 1067
    :cond_a
    iget v7, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-static {v7}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result v7

    if-nez v7, :cond_b

    .line 1068
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v7

    invoke-interface {v7}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->resetAllPcscfChecked()V

    goto :goto_4

    .line 1069
    :cond_b
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v7

    invoke-interface {v7}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isThrottled()Z

    move-result v7

    if-eqz v7, :cond_c

    iget v7, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    if-ne v7, v10, :cond_c

    iget v11, v4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    if-eq v7, v11, :cond_c

    .line 1070
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v7

    const/4 v11, 0x6

    invoke-interface {v7, v11}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->releaseThrottle(I)V

    .line 1073
    :cond_c
    :goto_4
    iget-object v7, v0, Lcom/sec/internal/ims/core/NetworkEventController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v7}, Lcom/sec/internal/helper/os/ITelephonyManager;->getCallState()I

    move-result v7

    if-eqz v7, :cond_d

    iget v7, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    const/16 v11, 0x10

    if-ne v7, v11, :cond_d

    return v8

    .line 1080
    :cond_d
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v7

    sget-object v11, Lcom/sec/internal/constants/Mno;->ROGERS:Lcom/sec/internal/constants/Mno;

    if-ne v7, v11, :cond_12

    .line 1081
    iget v7, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result v11

    invoke-direct {v0, v7, v11}, Lcom/sec/internal/ims/core/NetworkEventController;->isHandoverBetweenEpdgAndLeagacy(II)Z

    move-result v7

    .line 1082
    iget-object v11, v0, Lcom/sec/internal/ims/core/NetworkEventController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-static/range {p1 .. p1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v12

    invoke-interface {v11, v12}, Lcom/sec/internal/helper/os/ITelephonyManager;->getGroupIdLevel1(I)Ljava/lang/String;

    move-result-object v11

    .line 1083
    iget v12, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-static {v12}, Lcom/sec/internal/helper/NetworkUtil;->is3gppLegacyNetwork(I)Z

    move-result v12

    if-eqz v12, :cond_e

    const-string v12, "A4"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_e

    const/4 v11, 0x1

    goto :goto_5

    :cond_e
    move v11, v8

    :goto_5
    if-nez v7, :cond_f

    if-eqz v11, :cond_12

    :cond_f
    if-eqz v7, :cond_10

    const-string v7, "Handover Between VoWifi and 2G/3G"

    .line 1086
    invoke-virtual {v2, v7}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    goto :goto_6

    :cond_10
    const-string v7, "RWC 5G SIM doesn\'t support IMS on 2G/3G"

    .line 1088
    invoke-virtual {v2, v7}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 1091
    :goto_6
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v7

    sget-object v11, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-eq v7, v11, :cond_11

    .line 1092
    iget-object v7, v0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v12

    invoke-virtual {v7, v12, v2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 1093
    invoke-virtual {v2, v11}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 1096
    :cond_11
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v7

    invoke-interface {v7}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isThrottled()Z

    move-result v7

    if-eqz v7, :cond_12

    .line 1097
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v7

    const/4 v11, 0x6

    invoke-interface {v7, v11}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->releaseThrottle(I)V

    .line 1102
    :cond_12
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v7

    invoke-interface {v7}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isThrottled()Z

    move-result v7

    if-eqz v7, :cond_13

    .line 1103
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v7

    sget-object v16, Lcom/sec/internal/constants/Mno;->TELUS:Lcom/sec/internal/constants/Mno;

    sget-object v17, Lcom/sec/internal/constants/Mno;->KOODO:Lcom/sec/internal/constants/Mno;

    sget-object v18, Lcom/sec/internal/constants/Mno;->ROGERS:Lcom/sec/internal/constants/Mno;

    sget-object v19, Lcom/sec/internal/constants/Mno;->VTR:Lcom/sec/internal/constants/Mno;

    sget-object v20, Lcom/sec/internal/constants/Mno;->EASTLINK:Lcom/sec/internal/constants/Mno;

    sget-object v21, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    filled-new-array/range {v16 .. v21}, [Lcom/sec/internal/constants/Mno;

    move-result-object v11

    invoke-virtual {v7, v11}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v7

    if-eqz v7, :cond_13

    if-eqz v5, :cond_13

    .line 1105
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v7

    const/16 v11, 0x9

    invoke-interface {v7, v11}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->releaseThrottle(I)V

    .line 1108
    :cond_13
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v7

    invoke-interface {v7}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isThrottled()Z

    move-result v7

    if-eqz v7, :cond_14

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v7

    sget-object v11, Lcom/sec/internal/constants/Mno;->APT:Lcom/sec/internal/constants/Mno;

    sget-object v12, Lcom/sec/internal/constants/Mno;->YOIGO_SPAIN:Lcom/sec/internal/constants/Mno;

    filled-new-array {v11, v12}, [Lcom/sec/internal/constants/Mno;

    move-result-object v11

    invoke-virtual {v7, v11}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v7

    if-eqz v7, :cond_14

    if-eqz v5, :cond_14

    .line 1109
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v5

    const/4 v7, 0x6

    invoke-interface {v5, v7}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->releaseThrottle(I)V

    .line 1112
    :cond_14
    iget-boolean v5, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    if-eqz v5, :cond_15

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->allowRoaming()Z

    move-result v5

    if-nez v5, :cond_15

    iget-object v5, v0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v5, v2}, Lcom/sec/internal/ims/core/PdnController;->isNetworkRequested(Lcom/sec/internal/interfaces/ims/core/PdnEventListener;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 1113
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stopPdnConnectivity(), task "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1114
    iget-object v0, v0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 1115
    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    return v8

    .line 1120
    :cond_15
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/internal/constants/Mno;->isEmeasewaoce()Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v5

    if-ne v5, v14, :cond_16

    .line 1121
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->allowRoaming()Z

    move-result v5

    if-eqz v5, :cond_16

    iget-boolean v5, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    if-nez v5, :cond_16

    iget-boolean v5, v4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    iget-boolean v7, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    if-eq v5, v7, :cond_16

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isThrottled()Z

    move-result v5

    if-eqz v5, :cond_16

    .line 1122
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v5

    invoke-interface {v5, v14}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->releaseThrottle(I)V

    .line 1125
    :cond_16
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v5

    sget-object v7, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-eq v5, v7, :cond_17

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v5

    sget-object v7, Lcom/sec/internal/constants/Mno;->WIND:Lcom/sec/internal/constants/Mno;

    if-ne v5, v7, :cond_20

    .line 1126
    :cond_17
    iget-object v5, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->operatorNumeric:Ljava/lang/String;

    iget-object v7, v4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->operatorNumeric:Ljava/lang/String;

    invoke-static {v5, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1a

    .line 1127
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v5

    const-string v7, "PlmnChanged"

    invoke-interface {v5, v7}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->stopTimsTimer(Ljava/lang/String;)V

    .line 1128
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->getThrottleState()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$ThrottleState;

    move-result-object v5

    sget-object v11, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$ThrottleState;->PERMANENTLY_STOPPED:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor$ThrottleState;

    if-ne v5, v11, :cond_18

    const-string v5, "PLMN changed but Permanent Stopped. Do nothing!"

    .line 1129
    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 1136
    :cond_18
    iget-object v5, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceOverPs:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    sget-object v11, Lcom/sec/internal/constants/ims/os/VoPsIndication;->SUPPORTED:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    if-ne v5, v11, :cond_19

    .line 1137
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v5

    invoke-interface {v5, v7}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->startTimsTimer(Ljava/lang/String;)V

    .line 1140
    :cond_19
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isThrottled()Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 1141
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v5

    const/16 v7, 0x9

    invoke-interface {v5, v7}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->releaseThrottle(I)V

    .line 1146
    :cond_1a
    :goto_7
    iget-object v5, v0, Lcom/sec/internal/ims/core/NetworkEventController;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/internal/helper/os/DeviceUtil;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1b

    iget-boolean v5, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    if-nez v5, :cond_1b

    iget-object v5, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->voiceOverPs:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    sget-object v7, Lcom/sec/internal/constants/ims/os/VoPsIndication;->SUPPORTED:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    if-ne v5, v7, :cond_1b

    iget v5, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    .line 1149
    invoke-static {v5}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result v5

    if-eqz v5, :cond_1b

    const/4 v8, 0x1

    .line 1151
    :cond_1b
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v5

    sget-object v7, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v5, v7, :cond_1c

    if-nez v8, :cond_1d

    :cond_1c
    if-eqz v9, :cond_1f

    :cond_1d
    if-eqz v9, :cond_1e

    const-string v5, "VopsChanged"

    goto :goto_8

    :cond_1e
    const-string v5, "ImsPdnRequst"

    .line 1153
    :goto_8
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v7

    invoke-interface {v7, v5}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->startTimsTimer(Ljava/lang/String;)V

    .line 1156
    :cond_1f
    iget v5, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    iget v7, v4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    if-eq v5, v7, :cond_20

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isThrottled()Z

    move-result v5

    if-eqz v5, :cond_20

    .line 1157
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v5

    const/4 v7, 0x6

    invoke-interface {v5, v7}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->releaseThrottle(I)V

    .line 1161
    :cond_20
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v5

    sget-object v7, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-ne v5, v7, :cond_22

    iget v5, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    iget v7, v4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    if-eq v5, v7, :cond_22

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isThrottled()Z

    move-result v5

    if-eqz v5, :cond_22

    .line 1162
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Kddi throttled, check Network Map for network="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    iget v5, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    const/16 v7, 0xd

    if-ne v5, v7, :cond_21

    .line 1164
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v5

    const/16 v7, 0xc

    invoke-interface {v5, v7}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->releaseThrottle(I)V

    goto :goto_9

    :cond_21
    if-ne v5, v10, :cond_22

    .line 1166
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v5

    invoke-interface {v5, v7}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->releaseThrottle(I)V

    .line 1170
    :cond_22
    :goto_9
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v5

    sget-object v7, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-ne v5, v7, :cond_24

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/ims/settings/ImsProfile;->hasVolteService(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 1171
    iget-boolean v5, v4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isPsOnlyReg:Z

    iget-boolean v7, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isPsOnlyReg:Z

    if-ne v5, v7, :cond_23

    iget-boolean v5, v4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isVoiceRoaming:Z

    iget-boolean v7, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isVoiceRoaming:Z

    if-eq v5, v7, :cond_24

    :cond_23
    const-string v5, "onNetworkEventChanged: roaming or ps-voice-only mode changed in idle/connecting state"

    .line 1172
    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v5

    invoke-static/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v6

    iget-boolean v6, v6, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isPsOnlyReg:Z

    .line 1174
    invoke-static/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v1

    iget-boolean v1, v1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isVoiceRoaming:Z

    .line 1173
    invoke-interface {v5, v6, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onServiceStateDataChanged(ZZ)V

    .line 1178
    :cond_24
    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v1, v5}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v1

    if-eqz v1, :cond_25

    iget v1, v4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    iget v3, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    if-eq v1, v3, :cond_25

    .line 1179
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/NetworkEventController;->reconnectPdn(Lcom/sec/internal/ims/core/RegisterTask;)V

    :cond_25
    const/4 v0, 0x1

    return v0
.end method

.method handleNetworkEventOnRegister(ILcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/os/NetworkEvent;Lcom/sec/internal/constants/ims/os/NetworkEvent;)Z
    .locals 8

    .line 917
    iget-boolean v0, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    const/4 v1, 0x0

    const-string v2, "RegiMgr-NetEvtCtr"

    if-eqz v0, :cond_0

    const-string/jumbo p4, "out of service."

    .line 918
    invoke-static {v2, p1, p4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 919
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/core/NetworkEventController;->handleRestrictionOnNetworkEventChanged(ILcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/os/NetworkEvent;)V

    .line 920
    invoke-direct {p0, p2, p1}, Lcom/sec/internal/ims/core/NetworkEventController;->handleOutOfServiceOnNetworkEvnentChanged(Lcom/sec/internal/ims/core/RegisterTask;I)V

    return v1

    .line 925
    :cond_0
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v0, v3, :cond_1

    iget v0, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result v3

    if-eq v0, v3, :cond_1

    const-string v0, "onNetworkEventChanged: setRegistrationRat"

    .line 926
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    iget v0, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setRegistrationRat(I)V

    .line 930
    :cond_1
    invoke-virtual {p0, p2, p3, p4}, Lcom/sec/internal/ims/core/NetworkEventController;->updateEpdgStatusOnNetworkEventChanged(Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/os/NetworkEvent;Lcom/sec/internal/constants/ims/os/NetworkEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 935
    :cond_2
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v3, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    const/4 v4, 0x1

    if-ne v0, v3, :cond_7

    .line 937
    iget v0, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-static {v0}, Lcom/sec/internal/helper/NetworkUtil;->is3gppLegacyNetwork(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-static {v0}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    .line 938
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v5, 0x79

    invoke-virtual {v0, v5, v3}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 939
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 940
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/core/SlotBasedConfig;->enableSsac(Z)V

    .line 949
    :cond_3
    invoke-virtual {p3, p4}, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isVopsUpdated(Lcom/sec/internal/constants/ims/os/NetworkEvent;)Lcom/sec/internal/constants/ims/os/NetworkEvent$VopsState;

    move-result-object v0

    sget-object v3, Lcom/sec/internal/constants/ims/os/NetworkEvent$VopsState;->ENABLED:Lcom/sec/internal/constants/ims/os/NetworkEvent$VopsState;

    const/16 v5, 0x326

    if-ne v0, v3, :cond_5

    iget-object v0, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->operatorNumeric:Ljava/lang/String;

    iget-object p4, p4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->operatorNumeric:Ljava/lang/String;

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_5

    .line 950
    iget-object p3, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mContext:Landroid/content/Context;

    const/16 p4, 0x3c

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const-string/jumbo v0, "tvolte_hys_timer"

    invoke-static {p3, v0, p4, p1}, Lcom/sec/internal/helper/DmConfigHelper;->readInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 951
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Pending re-regi to T_VoLTE_hys["

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] secs."

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v2, p1, p4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 953
    iget-object p1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {p1, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 954
    iget-object p1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {p1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 956
    :cond_4
    iget-object p1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    int-to-long v2, p3

    const-wide/16 v6, 0x3e8

    mul-long/2addr v2, v6

    invoke-virtual {p1, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 957
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p2, p3}, Lcom/sec/internal/ims/core/RegistrationManager;->addPendingUpdateRegistration(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;I)V

    return v1

    .line 961
    :cond_5
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result p4

    const/16 v0, 0xe

    if-ne p4, v0, :cond_6

    iget p3, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-static {p3}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 963
    iget-object p3, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mContext:Landroid/content/Context;

    const/4 p4, 0x5

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const-string/jumbo v0, "t_delay"

    invoke-static {p3, v0, p4, p1}, Lcom/sec/internal/helper/DmConfigHelper;->readInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 964
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onNetworkChanged: C2L, Tdelay="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v2, p1, p4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-lez p3, :cond_6

    .line 966
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p2, p3}, Lcom/sec/internal/ims/core/RegistrationManager;->addPendingUpdateRegistration(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;I)V

    return v1

    .line 971
    :cond_6
    iget-object p3, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {p3, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p3

    if-eqz p3, :cond_d

    const-string p0, "do not update registration due to HYS"

    .line 972
    invoke-static {v2, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v1

    .line 975
    :cond_7
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v3, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v3, :cond_8

    .line 978
    iget-object p1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/sec/internal/ims/core/RegistrationManager;->getImsIconManager(I)Lcom/sec/internal/ims/core/ImsIconManager;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 979
    iget-object p1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/sec/internal/ims/core/RegistrationManager;->getImsIconManager(I)Lcom/sec/internal/ims/core/ImsIconManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/ImsIconManager;->updateRegistrationIcon()V

    goto/16 :goto_0

    .line 981
    :cond_8
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v3, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v3, :cond_c

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v0

    if-nez v0, :cond_c

    .line 982
    iget-boolean p1, p4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    iget-boolean v0, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    if-ne p1, v0, :cond_9

    iget-boolean p1, p4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isVoiceRoaming:Z

    iget-boolean v0, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isVoiceRoaming:Z

    if-eq p1, v0, :cond_a

    :cond_9
    const-string p1, "onNetworkChanged: roaming event changed, check location cache"

    .line 983
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onLocationCacheExpiry()V

    .line 986
    :cond_a
    iget-boolean p1, p4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isPsOnlyReg:Z

    iget-boolean v0, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isPsOnlyReg:Z

    if-ne p1, v0, :cond_b

    iget-boolean p1, p4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isVoiceRoaming:Z

    iget-boolean p4, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isVoiceRoaming:Z

    if-eq p1, p4, :cond_d

    :cond_b
    const-string p1, "onNetworkEventChanged: roaming or ps-voice-only mode changed in registering/registered state"

    .line 987
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p1

    iget-boolean p4, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isPsOnlyReg:Z

    iget-boolean p3, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isVoiceRoaming:Z

    invoke-interface {p1, p4, p3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onServiceStateDataChanged(ZZ)V

    goto :goto_0

    .line 990
    :cond_c
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object p4

    invoke-static {p4}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsChn(Lcom/sec/internal/constants/Mno;)Z

    move-result p4

    if-eqz p4, :cond_d

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result p4

    if-eqz p4, :cond_d

    iget p3, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    const/16 p4, 0x10

    if-ne p3, p4, :cond_d

    .line 991
    iget-object p3, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-eqz p3, :cond_d

    invoke-interface {p3, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->hasCsCall(I)Z

    move-result p1

    if-eqz p1, :cond_d

    const-string p1, "RCS deregister during CS call - GSM : same as OOS"

    .line 992
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x4

    .line 993
    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 994
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p2, v4, v4}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    return v1

    :cond_d
    :goto_0
    const-string p1, "by network event changed"

    .line 998
    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 999
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    sget-object p1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;->NETWORK_EVENT_CHANGED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;

    invoke-virtual {p0, p2, p1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;)Z

    return v4
.end method

.method handleVopsDisabledOnNetworkEventChanged(Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/os/NetworkEvent;I)V
    .locals 5

    .line 1372
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    const/4 v2, 0x1

    const/16 v3, 0x84

    const-string v4, "VopsChanged"

    if-ne v0, v1, :cond_1

    .line 1373
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p2

    invoke-interface {p2, v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->stopTimsTimer(Ljava/lang/String;)V

    .line 1374
    iget-object p2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {p2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1376
    iget-object p2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {p2}, Lcom/sec/internal/helper/os/ITelephonyManager;->isNetworkRoaming()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mContext:Landroid/content/Context;

    invoke-static {p2, p3}, Lcom/sec/internal/ims/util/ImsUtil;->isCdmalessEnabled(Landroid/content/Context;I)Z

    move-result p2

    if-eqz p2, :cond_3

    :cond_0
    iget-object p2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p2, p3}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->getCsfbSupported(I)Z

    move-result p2

    if-nez p2, :cond_3

    .line 1377
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1, v2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->notifyImsNotAvailable(Lcom/sec/internal/ims/core/RegisterTask;Z)V

    goto :goto_0

    .line 1379
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p3}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->getCsfbSupported(I)Z

    move-result p3

    if-nez p3, :cond_3

    .line 1380
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p3

    invoke-interface {p3, v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->stopTimsTimer(Ljava/lang/String;)V

    .line 1381
    iget-object p3, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {p3, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1382
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object p3

    sget-object v0, Lcom/sec/internal/constants/Mno;->CTC:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->CTCMO:Lcom/sec/internal/constants/Mno;

    filled-new-array {v0, v1}, [Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 1383
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object p3

    sget-object v0, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->CU:Lcom/sec/internal/constants/Mno;

    filled-new-array {v0, v1}, [Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result p3

    if-eqz p3, :cond_3

    iget p2, p2, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    const/16 p3, 0x14

    if-ne p2, p3, :cond_3

    .line 1384
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1, v2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->notifyImsNotAvailable(Lcom/sec/internal/ims/core/RegisterTask;Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method hasRetryIntentOnPdnFail()Z
    .locals 0

    .line 741
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRetryIntentOnPdnFail:Landroid/app/PendingIntent;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isDomainPattern(Ljava/lang/String;)Z
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 166
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Landroid/util/Patterns;->DOMAIN_NAME:Ljava/util/regex/Pattern;

    .line 167
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 168
    invoke-static {p1}, Landroid/net/InetAddresses;->isNumericAddress(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNwChanged()Z
    .locals 0

    .line 586
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mNwChanged:Z

    return p0
.end method

.method isPreferredPdnForRCSRegister(Lcom/sec/internal/ims/core/RegisterTask;IZ)Z
    .locals 5

    .line 1413
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 1414
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOBILE:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/sec/internal/constants/Mno;->H3G:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_0

    return v2

    .line 1418
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v1

    const/16 v3, 0xb

    if-eq v1, v3, :cond_9

    const/16 v3, 0xf

    if-ne v1, v3, :cond_1

    goto/16 :goto_2

    .line 1427
    :cond_1
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1428
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isNeedDelayedDeregister()Z

    move-result v0

    .line 1429
    iget-object v1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/PdnController;->getDefaultNetworkBearer()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/core/PdnController;->translateNetworkBearer(I)I

    move-result v1

    .line 1430
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isPreferredPdnForRCSRegister: isNeedDelayedDeregister ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "], preferred PDN ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "], needDeregi ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "RegiMgr-NetEvtCtr"

    invoke-static {v4, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1432
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isMobilePreferredForRcs()Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez p3, :cond_3

    if-eqz v0, :cond_3

    if-ne v1, v2, :cond_3

    .line 1434
    iget-object p3, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v0, 0x12

    invoke-virtual {p3, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p3

    if-nez p3, :cond_2

    .line 1435
    iget-object p3, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "isPreferredPdnForRCSRegister : Delay event"

    invoke-virtual {p3, p2, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1436
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 p2, 0x7d0

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1439
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string p1, "isPreferredPdnForRCSRegister : Now pending"

    invoke-virtual {p0, p2, p1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    goto :goto_0

    .line 1442
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/core/NetworkEventController;->deregisterByDefaultNwChanged(Lcom/sec/internal/ims/core/RegisterTask;IZ)V

    :goto_0
    return v2

    .line 1448
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/PdnController;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/helper/NetworkUtil;->isMobileDataConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_2

    .line 1453
    :cond_5
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/PdnController;->getDefaultNetworkBearer()I

    move-result v0

    .line 1454
    iget-object v3, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v3, v0}, Lcom/sec/internal/ims/core/PdnController;->translateNetworkBearer(I)I

    move-result v0

    if-eq v1, v0, :cond_6

    .line 1459
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/core/NetworkEventController;->deregisterByDefaultNwChanged(Lcom/sec/internal/ims/core/RegisterTask;IZ)V

    const/4 v2, 0x0

    .line 1462
    :cond_6
    invoke-static {p2}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 1464
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/core/RegisterTask;

    if-eq v3, p1, :cond_7

    .line 1465
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_1

    .line 1468
    :cond_8
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v4

    if-eq v4, v0, :cond_7

    .line 1470
    invoke-direct {p0, v3, p2, p3}, Lcom/sec/internal/ims/core/NetworkEventController;->deregisterByDefaultNwChanged(Lcom/sec/internal/ims/core/RegisterTask;IZ)V

    goto :goto_1

    :cond_9
    :goto_2
    return v2
.end method

.method isTaskHasSepecificPdnType(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z
    .locals 0

    .line 408
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isWiFi()Z
    .locals 0

    .line 582
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mWiFi:Z

    return p0
.end method

.method needEmergencyRegistration(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z
    .locals 6

    .line 498
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v0

    .line 500
    iget-object v1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mSimManagers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    .line 501
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasNoSim()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v3

    if-nez v3, :cond_9

    .line 502
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasNoSim()Z

    move-result v3

    invoke-static {v0, v3}, Lcom/sec/internal/ims/util/ImsUtil;->needForceToUsePsE911(IZ)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_0

    .line 505
    :cond_0
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/Mno;->USCC:Lcom/sec/internal/constants/Mno;

    if-ne v3, v4, :cond_1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isISimDataValid()Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    .line 512
    :cond_1
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isAus()Z

    move-result v1

    const/4 v3, 0x1

    const-string v4, "RegiMgr-NetEvtCtr"

    if-eqz v1, :cond_3

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getRegistrationRat()I

    move-result v1

    invoke-static {v1}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 513
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPdnType()I

    move-result v1

    const/16 v5, 0xf

    if-ne v1, v5, :cond_3

    iget-object v1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    .line 514
    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/core/PdnController;->getVoiceRegState(I)I

    move-result v1

    const/4 v5, 0x2

    if-eq v1, v5, :cond_2

    iget-object v1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    .line 515
    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/core/PdnController;->getVoiceRegState(I)I

    move-result v1

    if-ne v1, v3, :cond_3

    :cond_2
    const-string p0, "needEmergencyRegistration[AUS]: limited mode but has valid SIM. Try register."

    .line 516
    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 520
    :cond_3
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isCanada()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/sec/internal/ims/core/PdnController;->hasEmergencyServiceOnly(I)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string p0, "needEmergencyRegistration: limited mode. Dont Skip for Canada."

    .line 521
    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 525
    :cond_4
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v1

    sget-object v5, Lcom/sec/internal/constants/Mno;->DOCOMO:Lcom/sec/internal/constants/Mno;

    if-eq v1, v5, :cond_6

    iget-object v1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/sec/internal/ims/core/PdnController;->hasEmergencyServiceOnly(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 527
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v1

    invoke-interface {p0, v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getEmcAttachAuth(I)Z

    move-result p0

    .line 528
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "needEmergencyRegistration: emcAttachAuth="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 529
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object p1

    sget-object v0, Lcom/sec/internal/constants/Mno;->GCF:Lcom/sec/internal/constants/Mno;

    if-ne p1, v0, :cond_5

    if-eqz p0, :cond_5

    const-string p0, "needEmergencyRegistration: limited mode. Dont Skip for GCF if EmcAttachAuth success"

    .line 530
    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_5
    const-string p0, "needEmergencyRegistration: limited mode. skip emergency registration."

    .line 534
    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 538
    :cond_6
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object p1

    sget-object v1, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne p1, v1, :cond_8

    .line 540
    iget-object p1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v1

    invoke-interface {p1, v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->validateMsisdn(I)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->isSelfActivationRequired(I)Z

    move-result p0

    if-eqz p0, :cond_8

    :cond_7
    const-string p0, "Get PCO 5. Skip emergency registration."

    .line 541
    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_8
    return v3

    :cond_9
    :goto_0
    return v2
.end method

.method notifyNetworkEvent(IZI)V
    .locals 10

    .line 612
    invoke-static {p3}, Lcom/sec/internal/ims/core/RegistrationUtils;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v9

    .line 613
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v0, p3}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v8

    if-eqz v9, :cond_2

    if-nez v8, :cond_0

    goto :goto_0

    .line 618
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/core/SipTestManagerFactory;->isSipTest()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 619
    invoke-static {}, Lcom/sec/internal/ims/core/SipTestManagerFactory;->getSipTestManager()Lcom/sec/internal/interfaces/ims/core/ISipTestManager;

    move-result-object v0

    invoke-interface {v0, p2, v8, p3}, Lcom/sec/internal/interfaces/ims/core/ISipTestManager;->notifyNetworkEvent(ZLcom/sec/internal/constants/ims/os/NetworkState;I)V

    .line 622
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 623
    invoke-interface {v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getVoiceNetworkType()I

    move-result v2

    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getCallState()I

    move-result v3

    .line 624
    invoke-virtual {v8}, Lcom/sec/internal/constants/ims/os/NetworkState;->isEpdgConnected()Z

    move-result v5

    invoke-virtual {v8}, Lcom/sec/internal/constants/ims/os/NetworkState;->isEpdgAVailable()Z

    move-result v6

    move v0, p3

    move v1, p1

    move v4, p2

    move-object v7, v9

    .line 622
    invoke-static/range {v0 .. v8}, Lcom/sec/internal/constants/ims/os/NetworkEvent;->buildNetworkEvent(IIIIZZZLcom/sec/internal/constants/ims/os/NetworkEvent;Lcom/sec/internal/constants/ims/os/NetworkState;)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object p1

    .line 625
    invoke-virtual {p1, v9}, Lcom/sec/internal/constants/ims/os/NetworkEvent;->equalsIgnoreEpdg(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 626
    invoke-virtual {p0, p1, p3}, Lcom/sec/internal/ims/core/NetworkEventController;->onNetworkEventChanged(Lcom/sec/internal/constants/ims/os/NetworkEvent;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method onCheckUnprocessedOmadmConfig(I)V
    .locals 2

    .line 745
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getUnprocessedOmadmConfig(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 746
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCheckUnprocessedOmadmConfig<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ">: triggerOmadmConfig"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr-NetEvtCtr"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    sget-object v1, Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;->IDLE:Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/core/RegistrationManager;->setOmadmState(ILcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;)V

    .line 748
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/NetworkEventController;->triggerOmadmConfig(I)V

    :cond_0
    return-void
.end method

.method onConfigUpdated(Ljava/lang/String;I)Z
    .locals 5

    .line 1607
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigUpdated: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr-NetEvtCtr"

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1608
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mSimManagers:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    .line 1613
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const/16 v3, 0x3a

    .line 1616
    invoke-static {p1, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 1617
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid DM item : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1618
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",INVLD DM: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const p1, 0x11010004

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    return v2

    .line 1622
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {v2, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->notifyDmValueChanged(Ljava/lang/String;I)V

    .line 1629
    :cond_2
    invoke-static {p2}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 1631
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/RegisterTask;

    .line 1632
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onConfigUpdated()V

    .line 1633
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v3, p2}, Lcom/sec/internal/ims/core/RegistrationManager;->getOmadmState(I)Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;->FINISHED:Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    if-ne v3, v4, :cond_4

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v3

    if-nez v3, :cond_4

    const-string v2, "onConfigUpdated:  mOmadmState is FINISHED"

    .line 1634
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1636
    :cond_4
    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v3, v4}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "IMS configuration changed"

    .line 1637
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 1638
    iget-object v3, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;->IMS_CONFIGURATION_CHANGED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;

    invoke-virtual {v3, v2, v4}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;)Z

    goto :goto_0

    .line 1639
    :cond_5
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v3, v4, :cond_3

    .line 1640
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/NetworkEventController;->reconnectPdn(Lcom/sec/internal/ims/core/RegisterTask;)V

    goto :goto_0

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method onDefaultNetworkStateChanged(I)V
    .locals 3

    .line 1507
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1509
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/RegisterTask;

    .line 1510
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1513
    invoke-virtual {p0, v1, p1, v0}, Lcom/sec/internal/ims/core/NetworkEventController;->isPreferredPdnForRCSRegister(Lcom/sec/internal/ims/core/RegisterTask;IZ)Z

    .line 1518
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/4 v0, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method onDmConfigCompleted(IZ)V
    .locals 2

    .line 753
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDmConfigCompleted<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ">: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string v1, "SUCCESS"

    goto :goto_0

    :cond_0
    const-string v1, "TIMEOUT"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr-NetEvtCtr"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getUnprocessedOmadmConfig(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 755
    iget-object p2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/sec/internal/ims/core/RegistrationManager;->setUnprocessedOmadmConfig(IZ)V

    .line 757
    :cond_1
    iget-object p2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->removeDmConfigTimeout(I)V

    .line 758
    iget-object p2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    sget-object v0, Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;->FINISHED:Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    invoke-virtual {p2, p1, v0}, Lcom/sec/internal/ims/core/RegistrationManager;->setOmadmState(ILcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;)V

    .line 759
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getRegistrationTasks()Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/core/RegisterTask;

    .line 760
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p2

    const/4 v0, 0x1

    invoke-interface {p2, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->checkProfileUpdateFromDM(Z)V

    goto :goto_1

    .line 762
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->tryRegister()V

    return-void
.end method

.method onEpdgConnected(I)V
    .locals 8

    .line 266
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v1, 0x87

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 268
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->updatePani(I)V

    const-string v0, "onEpdgConnected:"

    const-string v1, "RegiMgr-NetEvtCtr"

    .line 269
    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 270
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 273
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v0

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isEpdgConnected:Z

    .line 274
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 276
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/core/RegisterTask;

    .line 278
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v4

    const/16 v5, 0xb

    if-ne v4, v5, :cond_1

    .line 279
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onEpdgConnected: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " mIsUpdateRegistering="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v3, Lcom/sec/internal/ims/core/RegisterTask;->mIsUpdateRegistering:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " mno="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/sec/internal/ims/core/RegisterTask;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 279
    invoke-static {v1, p1, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 281
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v4

    .line 282
    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onEpdgConnected()V

    .line 283
    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v4, v5}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 284
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EPDG HO : L2"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v6, p1}, Lcom/sec/internal/ims/core/PdnController;->getEpdgPhysicalInterface(I)I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    const-string v6, "C"

    goto :goto_1

    :cond_2
    const-string v6, "W"

    .line 285
    :goto_1
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 284
    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 286
    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setEpdgHandoverInProgress(Z)V

    .line 287
    sget-object v4, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;->HAND_OVER:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiRequestType(Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;)V

    .line 288
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v4

    if-eq v4, v5, :cond_3

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->blockImmediatelyUpdateRegi()Z

    move-result v4

    if-nez v4, :cond_3

    move v4, v2

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    .line 289
    :goto_2
    iget-object v5, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    sget-object v6, Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;->EPDG_CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;

    invoke-virtual {v5, v3, v6, v4}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;Z)Z

    goto/16 :goto_0

    .line 291
    :cond_4
    iget-object v3, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v3, p1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryRegister(I)V

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method protected onEpdgDeregisterRequested(I)V
    .locals 1

    .line 340
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const/16 v0, 0x7c

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->sendDeregister(II)V

    return-void
.end method

.method onEpdgDisconnected(I)V
    .locals 8

    .line 299
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v1, 0x87

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 301
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->updatePani(I)V

    const-string v0, "onEpdgDisconnected:"

    const-string v1, "RegiMgr-NetEvtCtr"

    .line 302
    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 303
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 306
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v0

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isEpdgConnected:Z

    .line 307
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 309
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/core/RegisterTask;

    .line 311
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v4

    const/16 v5, 0xb

    if-ne v4, v5, :cond_1

    .line 312
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onEpdgDisconnected: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " mIsUpdateRegistering="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v3, Lcom/sec/internal/ims/core/RegisterTask;->mIsUpdateRegistering:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " mno="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/sec/internal/ims/core/RegisterTask;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 312
    invoke-static {v1, p1, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 315
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v4

    .line 316
    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onEpdgDisconnected()V

    .line 318
    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v6, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v5, v6}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 319
    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->checkEmergencyInProgress()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v4

    if-ne v4, v5, :cond_2

    const-string v0, "onEpdgDisconnected: Skip re-registration due to Emergency registration"

    .line 320
    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 321
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v0, 0x1b

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 325
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EPDG HO : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v5, p1}, Lcom/sec/internal/ims/core/PdnController;->getEpdgPhysicalInterface(I)I

    move-result v5

    const/4 v7, 0x2

    if-ne v5, v7, :cond_3

    const-string v5, "C"

    goto :goto_1

    :cond_3
    const-string v5, "W"

    .line 326
    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "2L"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 325
    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    const/4 v4, 0x1

    .line 327
    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/RegisterTask;->setEpdgHandoverInProgress(Z)V

    .line 329
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v5

    if-eq v5, v6, :cond_4

    goto :goto_2

    :cond_4
    move v4, v2

    .line 330
    :goto_2
    iget-object v5, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    sget-object v6, Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;->EPDG_DISCONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;

    invoke-virtual {v5, v3, v6, v4}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;Z)Z

    goto/16 :goto_0

    .line 332
    :cond_5
    iget-object v3, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v3, p1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryRegister(I)V

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method protected onEpdgIkeError(I)V
    .locals 0

    .line 1527
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getRegistrationTasks()Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/core/NetworkEventController$$ExternalSyntheticLambda3;

    invoke-direct {p1}, Lcom/sec/internal/ims/core/NetworkEventController$$ExternalSyntheticLambda3;-><init>()V

    .line 1528
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/core/NetworkEventController$$ExternalSyntheticLambda4;

    invoke-direct {p1}, Lcom/sec/internal/ims/core/NetworkEventController$$ExternalSyntheticLambda4;-><init>()V

    .line 1529
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method protected onIpsecDisconnected(I)V
    .locals 7

    const-string v0, "onIpsecDisconnected:"

    const-string v1, "RegiMgr-NetEvtCtr"

    .line 1533
    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1534
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mContext:Landroid/content/Context;

    const/4 v2, -0x1

    invoke-static {v0, v2, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getVoiceCallType(Landroid/content/Context;II)I

    move-result v0

    .line 1535
    iget-object v2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/sec/internal/constants/ims/VowifiConfig;->isEnabled(Landroid/content/Context;I)Z

    move-result v2

    .line 1536
    iget-object v3, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mContext:Landroid/content/Context;

    const/4 v4, 0x2

    invoke-static {v3, v4, p1}, Lcom/sec/internal/constants/ims/VowifiConfig;->getPrefMode(Landroid/content/Context;II)I

    move-result v3

    .line 1538
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onIpsecDisconnected: VoWiFi : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", pref: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", callType : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, p1, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-eqz v2, :cond_2

    if-ne v3, v4, :cond_2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 1540
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1542
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/RegisterTask;

    .line 1543
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isTw()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->isEpdgSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1544
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_0

    .line 1545
    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v2, v3}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1546
    iget-object v2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v3}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    goto :goto_0

    .line 1547
    :cond_1
    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v2, v3}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Stop pdn when ipsec disconnected."

    .line 1548
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    iget-object v2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 1550
    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected onLocalIpChanged(Lcom/sec/internal/ims/core/RegisterTask;)V
    .locals 2

    .line 1585
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onLocalIpChanged()V

    .line 1586
    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v0, v1}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "local IP changed"

    .line 1587
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    const/4 v0, 0x5

    .line 1588
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 1589
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, v1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    .line 1592
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1593
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    iget v0, p1, Lcom/sec/internal/ims/core/RegisterTask;->mPhoneId:I

    sget-object v1, Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;->IDLE:Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/core/RegistrationManager;->setOmadmState(ILcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;)V

    .line 1594
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->resetPcscfPreference()V

    .line 1595
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->resetIPSecAllow()V

    :cond_2
    return-void
.end method

.method onNetworkChanged(IZI)V
    .locals 3

    .line 594
    invoke-static {p3}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->isSuspendedWhileIrat()Z

    move-result v0

    .line 595
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNetworkChanged: suspendByIrat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegiMgr-NetEvtCtr"

    invoke-static {v2, p3, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-nez v0, :cond_1

    .line 597
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/PdnController;->isNeedCellLocationUpdate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v0, p3}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 599
    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/os/NetworkState;->setAllCellInfo(Ljava/util/List;)V

    .line 601
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p3}, Lcom/sec/internal/ims/core/RegistrationManager;->updatePani(I)V

    .line 602
    invoke-virtual {p0, p1, p3}, Lcom/sec/internal/ims/core/NetworkEventController;->updateRat(II)V

    .line 603
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/core/NetworkEventController;->notifyNetworkEvent(IZI)V

    goto :goto_0

    .line 605
    :cond_1
    iput p1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mNetType:I

    .line 606
    iput-boolean p2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mWiFi:Z

    const/4 p1, 0x1

    .line 607
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mNwChanged:Z

    :goto_0
    return-void
.end method

.method onNetworkEventChanged(Lcom/sec/internal/constants/ims/os/NetworkEvent;I)V
    .locals 13

    .line 823
    invoke-static {p2}, Lcom/sec/internal/ims/core/RegistrationUtils;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v7

    .line 824
    invoke-static {p2}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v0

    if-eqz v7, :cond_d

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 831
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNetworkEventChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Lcom/sec/internal/constants/ims/os/NetworkEvent;->changedEvent(Lcom/sec/internal/constants/ims/os/NetworkEvent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v8, "RegiMgr-NetEvtCtr"

    invoke-static {v8, p2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 833
    invoke-static {p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->setNetworkEvent(Lcom/sec/internal/constants/ims/os/NetworkEvent;)V

    .line 834
    iget-object v1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->notifyNetworkChanged(Lcom/sec/internal/constants/ims/os/NetworkEvent;I)V

    .line 835
    iget-object v1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getAECModule()Lcom/sec/internal/interfaces/ims/aec/IAECModule;

    move-result-object v1

    invoke-interface {v1, v7, p1, p2}, Lcom/sec/internal/interfaces/ims/aec/IAECModule;->onNetworkEventChanged(Lcom/sec/internal/constants/ims/os/NetworkEvent;Lcom/sec/internal/constants/ims/os/NetworkEvent;I)V

    .line 837
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v10, 0x0

    move v0, v10

    move v1, v0

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/RegisterTask;

    .line 838
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 840
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isExistRetryTimer()Z

    move-result v0

    move v11, v0

    move v1, v10

    goto :goto_1

    :cond_1
    move v11, v0

    .line 844
    :goto_1
    invoke-direct {p0, v2, p2, p1, v7}, Lcom/sec/internal/ims/core/NetworkEventController;->handleSsacOnNetworkEventChanged(Lcom/sec/internal/ims/core/RegisterTask;ILcom/sec/internal/constants/ims/os/NetworkEvent;Lcom/sec/internal/constants/ims/os/NetworkEvent;)V

    .line 846
    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v0, v4}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 847
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v4

    if-ne v4, v0, :cond_2

    .line 848
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v3

    .line 853
    :cond_2
    invoke-virtual {p0, p2, v2, p1, v7}, Lcom/sec/internal/ims/core/NetworkEventController;->handleNetworkEventOnRegister(ILcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/os/NetworkEvent;Lcom/sec/internal/constants/ims/os/NetworkEvent;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_2

    .line 857
    :cond_3
    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONFIGURING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONFIGURED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v6, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v0, v3, v4, v5, v6}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 858
    invoke-virtual {p0, p2, v2, p1, v7}, Lcom/sec/internal/ims/core/NetworkEventController;->handleNetworkEventBeforeRegister(ILcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/os/NetworkEvent;Lcom/sec/internal/constants/ims/os/NetworkEvent;)Z

    move-result v0

    if-nez v0, :cond_5

    :goto_2
    move v0, v11

    goto :goto_0

    .line 863
    :cond_4
    invoke-direct {p0, p2, v2, p1, v7}, Lcom/sec/internal/ims/core/NetworkEventController;->handleNetworkEventOnDeregistering(ILcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/os/NetworkEvent;Lcom/sec/internal/constants/ims/os/NetworkEvent;)V

    :cond_5
    move v12, v1

    move-object v0, p0

    move v1, p2

    move-object v3, p1

    move-object v4, v7

    move v5, v11

    move v6, v12

    .line 865
    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/core/NetworkEventController;->handleNetworkEvent(ILcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/os/NetworkEvent;Lcom/sec/internal/constants/ims/os/NetworkEvent;ZZ)V

    move v0, v11

    move v1, v12

    goto :goto_0

    .line 868
    :cond_6
    invoke-direct {p0, p1, v7}, Lcom/sec/internal/ims/core/NetworkEventController;->tryCmcRegisterOnNetworkEventChanged(Lcom/sec/internal/constants/ims/os/NetworkEvent;Lcom/sec/internal/constants/ims/os/NetworkEvent;)V

    .line 870
    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    if-eqz v0, :cond_7

    const-string/jumbo v0, "out of service."

    .line 871
    invoke-static {v8, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 873
    iput-boolean v3, v7, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    .line 874
    invoke-static {p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/sec/internal/ims/core/SlotBasedConfig;->setNetworkEvent(Lcom/sec/internal/constants/ims/os/NetworkEvent;)V

    .line 875
    invoke-static {p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/sec/internal/ims/core/SlotBasedConfig;->setNotifiedImsNotAvailable(Z)V

    .line 878
    :cond_7
    invoke-static {p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->isNotifiedImsNotAvailable()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 883
    iget-object v0, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->operatorNumeric:Ljava/lang/String;

    iget-object v1, v7, Lcom/sec/internal/constants/ims/os/NetworkEvent;->operatorNumeric:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, v7, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    iget v1, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    if-eq v0, v1, :cond_9

    const/16 v0, 0x14

    if-ne v1, v0, :cond_9

    .line 885
    :cond_8
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v2, v7, Lcom/sec/internal/constants/ims/os/NetworkEvent;->operatorNumeric:Ljava/lang/String;

    iget-object v3, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->operatorNumeric:Ljava/lang/String;

    iget v4, v7, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    .line 887
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Reset notifiedImsNotAvailable: operator [%s] => [%s], network [%s] => [%s]"

    .line 885
    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 888
    invoke-static {p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/sec/internal/ims/core/SlotBasedConfig;->setNotifiedImsNotAvailable(Z)V

    .line 892
    :cond_9
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mSimManagers:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    if-nez v0, :cond_a

    return-void

    .line 897
    :cond_a
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimAvailable()Z

    move-result v1

    invoke-virtual {p0, p2, v1, p1, v7}, Lcom/sec/internal/ims/core/NetworkEventController;->updateUtOnNetworkEventChanged(IZLcom/sec/internal/constants/ims/os/NetworkEvent;Lcom/sec/internal/constants/ims/os/NetworkEvent;)V

    .line 899
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result p1

    if-nez p1, :cond_b

    const-string p1, "onNetworkEventChanged: tryRegister by phoneID"

    .line 900
    invoke-static {v8, p2, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 901
    iget-object p1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryRegister(I)V

    goto :goto_3

    .line 903
    :cond_b
    iget-object p1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mCmcAccountManager:Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    invoke-interface {p1, p2}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->getCmcRegisterTask(I)Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/core/RegisterTask;

    if-eqz p1, :cond_c

    .line 904
    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->DEREGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v0, v1, v2}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "onNetworkEventChanged: tryRegister"

    .line 905
    invoke-static {v8, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 906
    iget-object p2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryRegister(Lcom/sec/internal/ims/core/RegisterTask;)Z

    .line 909
    :cond_c
    :goto_3
    iget-object p1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 p2, 0x20

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_d

    .line 910
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_d
    :goto_4
    return-void
.end method

.method protected onPdnConnected(Lcom/sec/internal/ims/core/RegisterTask;)V
    .locals 7

    const-string v0, "RegiMgr-NetEvtCtr"

    if-nez p1, :cond_0

    const-string/jumbo p0, "task is null. Skip pdnConnected event"

    .line 352
    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 356
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v1

    .line 357
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    .line 358
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPdnConnected: task="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 360
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/constants/Mno;->isEur()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v3

    const/16 v4, 0xb

    if-ne v3, v4, :cond_1

    .line 361
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v3

    const/4 v4, 0x6

    invoke-interface {v3, v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->releaseThrottle(I)V

    .line 364
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->needPendingPdnConnected()Z

    move-result v3

    if-eqz v3, :cond_2

    return-void

    .line 369
    :cond_2
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 371
    invoke-static {v1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 373
    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/core/RegisterTask;

    .line 374
    invoke-virtual {v6}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v6

    if-eqz v6, :cond_3

    move v3, v4

    goto :goto_0

    :cond_4
    move v3, v5

    :goto_0
    if-nez v3, :cond_5

    const-string p0, "onPdnConnected: Emergency task already removed"

    .line 381
    invoke-static {v0, v1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 386
    :cond_5
    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v6, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v3, v6}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 387
    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {p1, v3}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 388
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->resetPdnFailureInfo()V

    .line 389
    invoke-virtual {v2, v5}, Lcom/sec/ims/settings/ImsProfile;->setUicclessEmergency(Z)V

    .line 391
    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 392
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/NetworkEventController;->needEmergencyRegistration(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z

    move-result v3

    .line 393
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPdnConnected: need emergency Registration: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v1, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    xor-int/lit8 v0, v3, 0x1

    .line 394
    invoke-virtual {v2, v0}, Lcom/sec/ims/settings/ImsProfile;->setUicclessEmergency(Z)V

    .line 395
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegistrationManager;->removeE911RegiTimer()V

    .line 396
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/PdnController;->isEmergencyEpdgConnected(I)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0x12

    .line 397
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setRegistrationRat(I)V

    .line 401
    :cond_6
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onPdnConnected()V

    .line 403
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryRegister(Lcom/sec/internal/ims/core/RegisterTask;)Z

    :cond_7
    return-void
.end method

.method protected onPdnConnecting(II)V
    .locals 0

    .line 344
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getRegistrationTasks()Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/core/NetworkEventController$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/sec/internal/ims/core/NetworkEventController$$ExternalSyntheticLambda0;-><init>()V

    .line 345
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/core/NetworkEventController$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/sec/internal/ims/core/NetworkEventController$$ExternalSyntheticLambda1;-><init>()V

    .line 346
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/core/NetworkEventController$$ExternalSyntheticLambda2;

    invoke-direct {p1, p2}, Lcom/sec/internal/ims/core/NetworkEventController$$ExternalSyntheticLambda2;-><init>(I)V

    .line 347
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method protected onPdnDisconnected(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V
    .locals 9

    .line 412
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPdnDisconnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegiMgr-NetEvtCtr"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 413
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mSimManagers:Ljava/util/List;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 414
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 419
    :cond_0
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const/4 v5, 0x2

    if-ne v3, v4, :cond_1

    .line 420
    invoke-interface {p1, v5}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setDeregiReason(I)V

    .line 423
    :cond_1
    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v3, v4}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v4

    invoke-interface {p1, v4}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v4

    const/4 v6, 0x5

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v4, :cond_7

    const-string/jumbo v1, "pdn disconnected - REGISTERED or REGISTERING"

    .line 424
    invoke-interface {p1, v1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setReason(Ljava/lang/String;)V

    .line 425
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/ims/core/RegistrationUtils;->isCmcProfile(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v1

    if-ne v1, v3, :cond_2

    .line 426
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v1

    invoke-interface {v1, v6}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->releaseThrottle(I)V

    .line 428
    :cond_2
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/NetworkEventController;->isTaskHasSepecificPdnType(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 429
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_3

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v1

    if-nez v1, :cond_4

    .line 430
    :cond_3
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isAus()Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimLoaded()Z

    move-result v0

    if-nez v0, :cond_5

    .line 431
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p1, v8, v7}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    .line 432
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPdnType()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    goto/16 :goto_2

    .line 434
    :cond_5
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p1, v8, v8}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    goto/16 :goto_2

    .line 437
    :cond_6
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p1, v8, v7}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    .line 438
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPdnType()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    goto/16 :goto_2

    .line 440
    :cond_7
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->EMERGENCY:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v0, v3, :cond_8

    const-string/jumbo v0, "pdn disconnected - EMERGENCY"

    .line 441
    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setReason(Ljava/lang/String;)V

    const/4 v0, 0x3

    .line 442
    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setDeregiReason(I)V

    .line 443
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p1, v8, v7}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    .line 444
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPdnType()I

    move-result v2

    invoke-virtual {v0, v2, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 445
    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->remove(Ljava/lang/Object;)Z

    .line 446
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->removeExtendedProfile(I)V

    goto/16 :goto_2

    .line 447
    :cond_8
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->DEREGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v0, v1, :cond_a

    const-string v0, "PDN disconnected received in DEREGISTERING state, send DEREGISTER_TIMEOUT event"

    .line 448
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPdnType()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 450
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v1, 0x6b

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 451
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 453
    :cond_9
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    .line 455
    :cond_a
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/NetworkEventController;->isTaskHasSepecificPdnType(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 456
    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->AIRPLANE_MODE:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    iget-object v1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v7}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result v0

    sget v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->AIRPLANE_MODE_ON:I

    if-ne v0, v1, :cond_b

    goto :goto_0

    :cond_b
    move v8, v7

    .line 457
    :goto_0
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_c

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v0

    if-nez v0, :cond_e

    .line 458
    :cond_c
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isCanada()Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_d
    if-eqz v8, :cond_f

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPdnType()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_f

    .line 459
    :cond_e
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPdnType()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 460
    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    goto :goto_1

    .line 461
    :cond_f
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-eq v0, v1, :cond_11

    .line 462
    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    goto :goto_1

    .line 465
    :cond_10
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPdnType()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 466
    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-interface {p1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 469
    :cond_11
    :goto_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 474
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_12

    .line 475
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0, v6}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->releaseThrottle(I)V

    .line 479
    :cond_12
    :goto_2
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isRcsOnly()Z

    move-result v0

    if-nez v0, :cond_13

    .line 480
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0, v6}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->releaseThrottle(I)V

    .line 484
    :cond_13
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->resetTaskOnPdnDisconnected()V

    .line 485
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 486
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isRcsOnly()Z

    move-result v0

    if-nez v0, :cond_14

    .line 487
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v1

    sget-object v2, Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;->IDLE:Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/core/RegistrationManager;->setOmadmState(ILcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;)V

    .line 488
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->resetPcscfPreference()V

    .line 489
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->resetIPSecAllow()V

    .line 491
    :cond_14
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->resetAllRetryFlow()V

    .line 494
    :cond_15
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result p1

    const/4 v0, 0x0

    const/16 v1, 0x88

    invoke-virtual {p0, v1, p1, v7, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method onPdnFailed(III)V
    .locals 2

    .line 704
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getRegistrationTasks()Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/core/NetworkEventController$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/sec/internal/ims/core/NetworkEventController$$ExternalSyntheticLambda5;-><init>()V

    .line 705
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/core/NetworkEventController$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/sec/internal/ims/core/NetworkEventController$$ExternalSyntheticLambda6;-><init>(Lcom/sec/internal/ims/core/NetworkEventController;III)V

    .line 706
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 731
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isDualIMS()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 732
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getOppositeSimSlot(I)I

    move-result p1

    .line 733
    iget-object p2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mSimManagers:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    if-eqz p2, :cond_0

    .line 734
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimAvailable()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 735
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(I)V

    :cond_0
    return-void
.end method

.method onRetryTimeExpired(I)V
    .locals 4

    .line 684
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 686
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/RegisterTask;

    .line 687
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v2

    const/16 v3, 0xb

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 691
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRetryIntentOnPdnFail:Landroid/app/PendingIntent;

    if-eqz v2, :cond_1

    .line 692
    iget-object v3, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/sec/internal/helper/AlarmTimer;->stop(Landroid/content/Context;Landroid/app/PendingIntent;)V

    const/4 v2, 0x0

    .line 693
    iput-object v2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRetryIntentOnPdnFail:Landroid/app/PendingIntent;

    :cond_1
    const-string v2, "RegiMgr-NetEvtCtr"

    const-string v3, "RetrySetupEventReceiver: release throttle pdn fail"

    .line 696
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v1

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->releaseThrottle(I)V

    .line 698
    iget-object v1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/4 v2, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method onVoicePreferredChanged(I)V
    .locals 5

    const-string/jumbo v0, "onVoicePreferredChanged:"

    const-string v1, "RegiMgr-NetEvtCtr"

    .line 1559
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1560
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "VolteServiceModule is not create yet so retry after 3 seconds"

    .line 1561
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v0, 0x7b

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0xbb8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 1566
    :cond_0
    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->onVoWiFiSwitched(I)V

    .line 1567
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/PdnController;->isEpdgConnected(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1568
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getEpdgManager()Lcom/sec/epdg/EpdgManager;

    move-result-object v0

    .line 1569
    iget-object v3, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v3}, Lcom/sec/internal/helper/os/ITelephonyManager;->getDataNetworkType()I

    move-result v3

    if-eqz v0, :cond_1

    .line 1572
    invoke-virtual {v0, p1}, Lcom/sec/epdg/EpdgManager;->isPossibleW2LHOAfterCallEndBySim(I)Z

    move-result v2

    .line 1573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "W2L available : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/16 v0, 0xd

    if-ne v3, v0, :cond_2

    if-eqz v2, :cond_2

    const-string p0, "EpdgEventReceiver, waiting for W2L HO event w/o re-regi"

    .line 1576
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1579
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;->EPDG_VOICEPREFERENCE_CHANGED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->updateRegistration(ILcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method reconnectPdn(Lcom/sec/internal/ims/core/RegisterTask;)V
    .locals 6

    .line 631
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 636
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget-object v2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-static {v0, p1, v1, v2}, Lcom/sec/internal/ims/core/RegistrationRatDecider;->getDecidedRat(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;)I

    move-result v0

    .line 637
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sec/internal/ims/core/RegistrationUtils;->selectPdnType(Lcom/sec/ims/settings/ImsProfile;I)I

    move-result v1

    .line 638
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v2

    .line 640
    invoke-static {v2}, Lcom/sec/internal/ims/core/RegistrationUtils;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v3

    if-nez v3, :cond_1

    return-void

    .line 645
    :cond_1
    iget v4, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-static {v4}, Lcom/sec/ims/extensions/TelephonyManagerExt;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "RegiMgr-NetEvtCtr"

    if-nez v0, :cond_3

    .line 646
    iget-boolean v0, v3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    if-nez v0, :cond_3

    .line 647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cancel ongoing PDN in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 648
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 649
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object p0

    sget-object v0, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne p0, v0, :cond_2

    invoke-static {v2}, Lcom/sec/internal/ims/core/RegistrationUtils;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object p0

    iget p0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-static {p0}, Lcom/sec/internal/helper/NetworkUtil;->is3gppLegacyNetwork(I)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 653
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p0

    const/4 v0, 0x5

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->releaseThrottle(I)V

    .line 656
    :cond_2
    sget-object p0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    goto/16 :goto_0

    .line 657
    :cond_3
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v0

    if-eq v1, v0, :cond_7

    .line 658
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v0

    const-string/jumbo v3, "pdn type has been changed, reconnect."

    invoke-static {v5, v0, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 659
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v3

    invoke-virtual {v0, v3, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 660
    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setPdnType(I)V

    .line 661
    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 664
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isMobilePreferredForRcs()Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez v1, :cond_5

    .line 665
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/PdnController;->getDefaultNetworkBearer()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/core/PdnController;->translateNetworkBearer(I)I

    move-result v0

    .line 666
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reconnectPdn startTimsTimer rcs pdn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v2, 0x1

    const-string v3, "InternetPdnRequest"

    if-ne v0, v2, :cond_4

    .line 668
    iget-object v0, p1, Lcom/sec/internal/ims/core/RegisterTask;->mGovernor:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    invoke-interface {v0, v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->stopTimsTimer(Ljava/lang/String;)V

    .line 669
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v2

    invoke-virtual {v0, v2, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 671
    :cond_4
    iget-object v0, p1, Lcom/sec/internal/ims/core/RegisterTask;->mGovernor:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    invoke-interface {v0, v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->startTimsTimer(Ljava/lang/String;)V

    .line 674
    :cond_5
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPhoneIdForStartConnectivity(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)I

    move-result v0

    invoke-virtual {p0, v1, p1, v0}, Lcom/sec/internal/ims/core/PdnController;->startPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/PdnEventListener;I)I

    .line 675
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object p0

    sget-object v0, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->CTCMO:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->CTC:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    filled-new-array {v0, v1, v2, v3}, [Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result p0

    if-nez p0, :cond_6

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/constants/Mno;->isEmeasewaoce()Z

    move-result p0

    if-nez p0, :cond_6

    .line 676
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result p0

    if-eqz p0, :cond_7

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result p0

    if-nez p0, :cond_7

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/internal/ims/core/RegistrationUtils;->isCmcProfile(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result p0

    if-nez p0, :cond_7

    .line 677
    :cond_6
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p0

    const-string p1, "ImsPdnRequst"

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->startTimsTimer(Ljava/lang/String;)V

    :cond_7
    :goto_0
    return-void
.end method

.method public setNwChanged(Z)V
    .locals 0

    .line 590
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mNwChanged:Z

    return-void
.end method

.method public setRegistrationHandler(Lcom/sec/internal/ims/core/RegistrationManagerHandler;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    return-void
.end method

.method public setVolteServiceModule(Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    return-void
.end method

.method triggerOmadmConfig(I)V
    .locals 5

    const-string v0, ""

    .line 766
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "triggerOmadmConfig<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "> - mOmadmState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getOmadmState(I)Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegiMgr-NetEvtCtr"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    iget-object v1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getOmadmState(I)Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;->TRIGGERED:Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    if-eq v1, v2, :cond_3

    .line 768
    iget-object v1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const/4 v3, 0x1

    invoke-virtual {v1, p1, v3}, Lcom/sec/internal/ims/core/RegistrationManager;->setUnprocessedOmadmConfig(IZ)V

    .line 769
    iget-object v1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v1, p1, v2}, Lcom/sec/internal/ims/core/RegistrationManager;->setOmadmState(ILcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;)V

    .line 770
    iget-object v1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendDmConfigTimeout(ILjava/lang/String;)V

    .line 771
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getRegistrationTasks()Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/RegisterTask;

    .line 772
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v3

    if-nez v3, :cond_0

    .line 773
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    .line 774
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 775
    invoke-virtual {v1, v3}, Lcom/sec/ims/settings/ImsProfile;->setPcscfList(Ljava/util/List;)V

    .line 776
    invoke-virtual {v1, v3}, Lcom/sec/ims/settings/ImsProfile;->setLboPcscfAddressList(Ljava/util/List;)V

    const/4 v3, -0x1

    .line 777
    invoke-virtual {v1, v3}, Lcom/sec/ims/settings/ImsProfile;->setLboPcscfPort(I)V

    .line 778
    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setProfile(Lcom/sec/ims/settings/ImsProfile;)V

    .line 780
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "./3GPP_IMS/LBO_P-CSCF_Address/LBO_P-CSCF_Address_1/Address"

    .line 781
    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "./3GPP_IMS/LBO_P-CSCF_Address/LBO_P-CSCF_Address_2/Address"

    .line 782
    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "./3GPP_IMS/LBO_P-CSCF_Address/LBO_P-CSCF_Address_3/Address"

    .line 783
    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "./3GPP_IMS/LBO_P-CSCF_Address/LBO_P-CSCF_Address_4/Address"

    .line 784
    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "./3GPP_IMS/LBO_P-CSCF_Address/LBO_P-CSCF_Address_5/Address"

    .line 785
    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "./3GPP_IMS/LBO_P-CSCF_Address/LBO_P-CSCF_Address_6/Address"

    .line 786
    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "./3GPP_IMS/LBO_P-CSCF_Address/LBO_P-CSCF_Address_1/AddressType"

    .line 787
    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "./3GPP_IMS/LBO_P-CSCF_Address/LBO_P-CSCF_Address_2/AddressType"

    .line 788
    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "./3GPP_IMS/LBO_P-CSCF_Address/LBO_P-CSCF_Address_3/AddressType"

    .line 789
    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "./3GPP_IMS/LBO_P-CSCF_Address/LBO_P-CSCF_Address_4/AddressType"

    .line 790
    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "./3GPP_IMS/LBO_P-CSCF_Address/LBO_P-CSCF_Address_5/AddressType"

    .line 791
    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "./3GPP_IMS/LBO_P-CSCF_Address/LBO_P-CSCF_Address_6/AddressType"

    .line 792
    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "INTERNAL_KEY_PROCESS_NAME"

    const-string v3, "com.sec.imsservice"

    .line 793
    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "content://com.samsung.rcs.dmconfigurationprovider/omadm/"

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v2

    invoke-static {v3, v2}, Lcom/sec/internal/helper/UriUtil;->buildUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 796
    iget-object v1, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "triggerOmadmConfig : update failure - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "null"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 802
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getOmadmState(I)Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/core/NetworkEventController;->setOmaDmStateDB(ILcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;)V

    :cond_3
    return-void
.end method

.method updateEpdgStatusOnNetworkEventChanged(Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/os/NetworkEvent;Lcom/sec/internal/constants/ims/os/NetworkEvent;)Z
    .locals 5

    .line 1266
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->isEpdgSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 1267
    invoke-virtual {p2, p3}, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isEpdgHOEvent(Lcom/sec/internal/constants/ims/os/NetworkEvent;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    return v2

    .line 1272
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 1273
    sget-object v3, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v0, v3, :cond_3

    .line 1275
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/core/PdnController;->isEpdgConnected(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p2, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    iget v3, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    if-eq v0, v3, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1278
    :goto_0
    iget-object v3, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/PdnController;->isEpdgAvailable(I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p2, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    const/16 v4, 0x12

    if-ne v3, v4, :cond_2

    iget v3, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    if-ne v3, v4, :cond_2

    iget-boolean p2, p2, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isPsOnlyReg:Z

    iget-boolean p3, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isPsOnlyReg:Z

    if-eq p2, p3, :cond_2

    move p2, v2

    goto :goto_1

    :cond_2
    move p2, v1

    :goto_1
    or-int/2addr p2, v0

    if-eqz p2, :cond_3

    .line 1282
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 p2, 0x87

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/32 p2, 0x1d8a8

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return v2

    :cond_3
    return v1
.end method

.method updateRat(II)V
    .locals 8

    .line 549
    invoke-static {}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->getInstance()Lcom/sec/internal/ims/util/UriGeneratorFactory;

    move-result-object v0

    .line 551
    invoke-static {p2}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 553
    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/RegisterTask;

    .line 554
    iget-object v2, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v2, v1, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->updateRat(Lcom/sec/internal/ims/core/RegisterTask;I)V

    .line 557
    iget-object v1, v1, Lcom/sec/internal/ims/core/RegisterTask;->mReg:Lcom/sec/ims/ImsRegistration;

    if-eqz v1, :cond_0

    .line 559
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImpuList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/util/NameAddr;

    .line 560
    invoke-virtual {v2}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    .line 561
    invoke-static {}, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->values()[Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 562
    invoke-virtual {v0, v2, v6}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->contains(Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 563
    invoke-virtual {v0, v2, v6}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->get(Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v6

    .line 564
    invoke-virtual {v6, p1}, Lcom/sec/internal/ims/util/UriGenerator;->updateRat(I)V

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method updateUtOnNetworkEventChanged(IZLcom/sec/internal/constants/ims/os/NetworkEvent;Lcom/sec/internal/constants/ims/os/NetworkEvent;)V
    .locals 3

    .line 1396
    iget-object v0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    const-string/jumbo v1, "ss_enable_in_roaming"

    const/4 v2, 0x1

    invoke-interface {v0, p1, v1, v2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getBoolean(ILjava/lang/String;Z)Z

    move-result v0

    xor-int/2addr v0, v2

    if-eqz p2, :cond_4

    .line 1397
    iget-boolean p2, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    if-nez p2, :cond_4

    if-eqz v0, :cond_4

    .line 1398
    iget-boolean p2, p4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    iget-boolean v0, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isDataRoaming:Z

    const/16 v1, 0x12

    if-ne p2, v0, :cond_0

    iget p2, p4, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    iget p4, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    if-eq p2, p4, :cond_4

    if-eq p4, v1, :cond_0

    if-ne p2, v1, :cond_4

    .line 1401
    :cond_0
    iget p2, p3, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    const/4 p3, 0x0

    if-ne p2, v1, :cond_1

    move p2, v2

    goto :goto_0

    :cond_1
    move p2, p3

    :goto_0
    if-eqz v0, :cond_3

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    move v2, p3

    .line 1404
    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkEventController;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getUtServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 1406
    invoke-interface {p0, p1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;->enableUt(IZ)V

    :cond_4
    return-void
.end method
