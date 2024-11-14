.class public Lcom/sec/internal/ims/core/RegistrationManagerBase;
.super Lcom/sec/internal/ims/core/RegistrationManagerInternal;
.source "RegistrationManagerBase.java"


# static fields
.field public static final DELAY:J = 0x2710L

.field public static final DNS_QUERY_RETRY_COUNT:I = 0x5


# direct methods
.method public static synthetic $r8$lambda$VvSWHsFpmzN3qDMeZ4G-ZCS0hE8(Lcom/sec/internal/ims/core/RegistrationManagerBase;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->lambda$onFlightModeChanged$0(Lcom/sec/internal/interfaces/ims/core/ISimManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_hsnSQnWgbITtg3DxRrhk0kI5Ps(Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->lambda$checkUnProcessedVoLTEState$1(Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/IImsFramework;Landroid/content/Context;Lcom/sec/internal/ims/core/PdnController;Ljava/util/List;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lcom/sec/internal/interfaces/ims/IImsFramework;",
            "Landroid/content/Context;",
            "Lcom/sec/internal/ims/core/PdnController;",
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/ISimManager;",
            ">;",
            "Lcom/sec/internal/helper/os/ITelephonyManager;",
            "Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;",
            "Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;",
            ")V"
        }
    .end annotation

    move-object v12, p0

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    .line 122
    invoke-direct/range {v0 .. v7}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;-><init>(Lcom/sec/internal/interfaces/ims/IImsFramework;Landroid/content/Context;Lcom/sec/internal/ims/core/PdnController;Ljava/util/List;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;)V

    .line 124
    new-instance v9, Lcom/sec/internal/ims/core/NetworkEventController;

    iget-object v8, v12, Lcom/sec/internal/ims/core/RegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-object v0, v9

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object v7, p0

    invoke-direct/range {v0 .. v8}, Lcom/sec/internal/ims/core/NetworkEventController;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/helper/os/ITelephonyManager;Ljava/util/List;Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;Lcom/sec/internal/ims/core/RegistrationManagerBase;Lcom/sec/internal/interfaces/ims/IImsFramework;)V

    iput-object v9, v12, Lcom/sec/internal/ims/core/RegistrationManager;->mNetEvtCtr:Lcom/sec/internal/ims/core/NetworkEventController;

    .line 125
    new-instance v7, Lcom/sec/internal/ims/core/UserEventController;

    iget-object v6, v12, Lcom/sec/internal/ims/core/RegistrationManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    move-object v0, v7

    move-object v2, p0

    move-object/from16 v3, p4

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/core/UserEventController;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/core/RegistrationManagerBase;Lcom/sec/internal/ims/core/PdnController;Ljava/util/List;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/helper/SimpleEventLog;)V

    iput-object v7, v12, Lcom/sec/internal/ims/core/RegistrationManager;->mUserEvtCtr:Lcom/sec/internal/ims/core/UserEventController;

    .line 126
    new-instance v13, Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object v9, v12, Lcom/sec/internal/ims/core/RegistrationManager;->mNetEvtCtr:Lcom/sec/internal/ims/core/NetworkEventController;

    iget-object v10, v12, Lcom/sec/internal/ims/core/RegistrationManager;->mUserEvtCtr:Lcom/sec/internal/ims/core/UserEventController;

    iget-object v11, v12, Lcom/sec/internal/ims/core/RegistrationManager;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-object v0, v13

    move-object v1, p1

    move-object/from16 v2, p3

    move-object v3, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v11}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/core/RegistrationManagerBase;Lcom/sec/internal/interfaces/ims/IImsFramework;Lcom/sec/internal/ims/core/PdnController;Ljava/util/List;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;Lcom/sec/internal/ims/core/NetworkEventController;Lcom/sec/internal/ims/core/UserEventController;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;)V

    iput-object v13, v12, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    .line 128
    iget-object v0, v12, Lcom/sec/internal/ims/core/RegistrationManager;->mUserEvtCtr:Lcom/sec/internal/ims/core/UserEventController;

    iput-object v13, v0, Lcom/sec/internal/ims/core/UserEventController;->mRegHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    return-void
.end method

.method private initImsIconManagerOrCreate(I)V
    .locals 6

    .line 641
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    .line 642
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getIconManager()Lcom/sec/internal/ims/core/ImsIconManager;

    move-result-object v1

    .line 643
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->hasLoadedProfile(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 644
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v4

    if-nez v1, :cond_0

    const-string v1, "RegiMgr"

    const-string v2, "initImsIconManagerOrCreate: added iconmanager."

    .line 646
    invoke-static {v1, p1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 647
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    move-object v2, p0

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/core/SlotBasedConfig;->createIconManager(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/constants/Mno;I)V

    goto :goto_0

    .line 649
    :cond_0
    invoke-virtual {v1, v4, p1}, Lcom/sec/internal/ims/core/ImsIconManager;->initConfiguration(Lcom/sec/internal/constants/Mno;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private isHoEnable(I)Z
    .locals 4

    .line 1633
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getHoEnable()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 1635
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user_config"

    const-string v3, "EPDGHANDOVERENABLE"

    invoke-static {p1, v0, v1, v3, v2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getBoolean(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 1638
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->setHoEnable(IZ)V

    .line 1640
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isHoEnable: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "RegiMgr"

    invoke-static {v1, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x1

    if-ne v0, p0, :cond_1

    move v2, p0

    :cond_1
    return v2
.end method

.method private isOnlyEpsFallback(I)Z
    .locals 4

    .line 1651
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getOnlyEpsFallback()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 1653
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user_config"

    const-string v3, "ONLYEPSFALLBACK"

    invoke-static {p1, v0, v1, v3, v2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getBoolean(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 1656
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->setOnlyEpsFallback(IZ)V

    .line 1658
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isOnlyEpsFallback: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "RegiMgr"

    invoke-static {v1, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x1

    if-ne v0, p0, :cond_1

    move v2, p0

    :cond_1
    return v2
.end method

.method private static synthetic lambda$checkUnProcessedVoLTEState$1(Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;)V
    .locals 1

    .line 1860
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/ims/core/NetworkEventController$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/NetworkEventController$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/ims/core/RegistrationManagerBase$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/RegistrationManagerBase$$ExternalSyntheticLambda1;-><init>()V

    .line 1861
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$onFlightModeChanged$0(Lcom/sec/internal/interfaces/ims/core/ISimManager;)V
    .locals 8

    .line 1517
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v0

    .line 1519
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/Mno;->VODAFONE_UK:Lcom/sec/internal/constants/Mno;

    if-eq v1, v2, :cond_0

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/Mno;->ORANGE_SPAIN:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_1

    .line 1520
    :cond_0
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->sendNrDisableDuringEpdgCall(I)V

    .line 1523
    :cond_1
    invoke-static {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->setNotifiedImsNotAvailable(Z)V

    .line 1524
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/Mno;->VELCOM_BY:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->SBERBANK_RUSSIA:Lcom/sec/internal/constants/Mno;

    sget-object v4, Lcom/sec/internal/constants/Mno;->MTS_RUSSIA:Lcom/sec/internal/constants/Mno;

    sget-object v5, Lcom/sec/internal/constants/Mno;->MEGAFON_RUSSIA:Lcom/sec/internal/constants/Mno;

    sget-object v6, Lcom/sec/internal/constants/Mno;->BEELINE_RUSSIA:Lcom/sec/internal/constants/Mno;

    sget-object v7, Lcom/sec/internal/constants/Mno;->TMOBILE:Lcom/sec/internal/constants/Mno;

    filled-new-array/range {v2 .. v7}, [Lcom/sec/internal/constants/Mno;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 1525
    invoke-virtual {p0, v0, v2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->updateTimeInPlani(IZ)V

    .line 1530
    :cond_2
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1531
    invoke-static {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getRegistrationTasks()Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 1532
    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isMobilePreferredForRcs()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    .line 1533
    invoke-static {v4}, Lcom/sec/internal/helper/NetworkUtil;->isMobileDataOn(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    .line 1534
    invoke-static {v4}, Lcom/sec/internal/helper/NetworkUtil;->isMobileDataPressed(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    .line 1535
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/PdnController;->isWifiConnected()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1536
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mNetEvtCtr:Lcom/sec/internal/ims/core/NetworkEventController;

    check-cast v3, Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v4, v3, v0, v2}, Lcom/sec/internal/ims/core/NetworkEventController;->isPreferredPdnForRCSRegister(Lcom/sec/internal/ims/core/RegisterTask;IZ)Z

    goto :goto_0

    .line 1541
    :cond_4
    invoke-static {v0}, Lcom/sec/internal/log/IMSLogTimer;->setLatchStartTime(I)V

    .line 1542
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryRegister(I)V

    return-void
.end method

.method private setHoEnable(IZ)V
    .locals 2

    .line 1645
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->setHoEnable(Z)V

    .line 1646
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "user_config"

    const-string v1, "EPDGHANDOVERENABLE"

    invoke-static {p1, p0, v0, v1, p2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1647
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setHoEnable: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "RegiMgr"

    invoke-static {p2, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private setNrPreferredMode(IZ)V
    .locals 2

    .line 1676
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "user_config"

    const-string v1, "NRPREFERREDMODE"

    invoke-static {p1, p0, v0, v1, p2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1677
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setNrPreferredMode: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "RegiMgr"

    invoke-static {p2, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private setNrSaMode(IZ)V
    .locals 2

    .line 1693
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->setNrSaMode(Z)V

    .line 1694
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "user_config"

    const-string v1, "NRSAMODE"

    invoke-static {p1, p0, v0, v1, p2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1695
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setNrSaMode : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "RegiMgr"

    invoke-static {p2, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private setOnlyEpsFallback(IZ)V
    .locals 2

    .line 1663
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->setOnlyEpsFallback(Z)V

    .line 1664
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "user_config"

    const-string v1, "ONLYEPSFALLBACK"

    invoke-static {p1, p0, v0, v1, p2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->save(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1665
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setOnlyEpsFallback: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "RegiMgr"

    invoke-static {p2, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private startEmergencyRegistrationInternal(ILandroid/os/Message;)V
    .locals 6

    const-string/jumbo v0, "startEmergencyRegistration:"

    const-string v1, "RegiMgr"

    .line 1261
    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1262
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mSimManagers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 1263
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v2

    if-eqz v0, :cond_d

    if-nez v2, :cond_0

    goto/16 :goto_2

    .line 1268
    :cond_0
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1269
    iput-object p2, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHasSilentE911:Landroid/os/Message;

    .line 1270
    iput p1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mPhoneIdForSilentE911:I

    const-string/jumbo p0, "startEmergencyRegistration: retry after previous stopEmergencyRegistration"

    .line 1271
    invoke-static {v1, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 1276
    :cond_1
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getIconManager()Lcom/sec/internal/ims/core/ImsIconManager;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1277
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getIconManager()Lcom/sec/internal/ims/core/ImsIconManager;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/core/ImsIconManager;->setDuringEmergencyCall(Z)V

    .line 1282
    :cond_2
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/core/RegisterTask;

    .line 1283
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1284
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startEmergencyRegistration: EmergencyRegistration state="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v4, Lcom/sec/internal/ims/core/RegisterTask;->mState:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1285
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v3

    const/16 v5, 0xf

    invoke-interface {v3, v5}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->releaseThrottle(I)V

    .line 1286
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/constants/Mno;->isAus()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1287
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mAuEmergencyProfile:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/settings/ImsProfile;

    if-eqz v3, :cond_4

    .line 1288
    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v3

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v5

    if-eq v3, v5, :cond_4

    const-string v3, "Aus Emergency case, remove emergency task if old and new profile ID are different."

    .line 1289
    invoke-static {v1, p1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1290
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v3

    invoke-virtual {p0, v3, v4}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 1291
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    invoke-interface {v3, v4}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->removeUserAgent(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 1292
    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1297
    :cond_4
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v3

    sget-object v5, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-ne v3, v5, :cond_5

    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v3, v5}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string/jumbo v3, "remove emergency pending RegiTask."

    .line 1301
    invoke-static {v1, p1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1302
    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1304
    :cond_5
    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->EMERGENCY:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v3, v5}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1305
    iget-object p1, v4, Lcom/sec/internal/ims/core/RegisterTask;->mState:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne p1, v5, :cond_6

    iget-object p1, v4, Lcom/sec/internal/ims/core/RegisterTask;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v0, Lcom/sec/internal/constants/Mno;->GENERIC_IR92:Lcom/sec/internal/constants/Mno;

    if-ne p1, v0, :cond_6

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getUserAgent()Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object p1

    if-nez p1, :cond_6

    const-string/jumbo p1, "startEmergencyRegistration: Trigger New Register with same task"

    .line 1307
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    sget-object p1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {v4, p1}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 1309
    invoke-virtual {v4, p2}, Lcom/sec/internal/ims/core/RegisterTask;->setResultMessage(Landroid/os/Message;)V

    .line 1310
    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->remove(Ljava/lang/Object;)Z

    .line 1311
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->requestTryEmergencyRegister(Lcom/sec/internal/ims/core/RegisterTask;)V

    return-void

    :cond_6
    const-string/jumbo p0, "startEmergencyRegistration: already registered."

    .line 1314
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 1317
    :cond_7
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->DEREGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v2, v3, :cond_8

    const-string/jumbo v2, "startEmergencyRegistration: DeRegistering Mode. Deregister current and start new registration."

    .line 1318
    invoke-static {v1, p1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1319
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v3, 0x6b

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1320
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1321
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 1326
    :cond_8
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getResultMessage()Landroid/os/Message;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 1327
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getResultMessage()Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 1329
    :cond_9
    invoke-virtual {v4, p2}, Lcom/sec/internal/ims/core/RegisterTask;->setResultMessage(Landroid/os/Message;)V

    :cond_a
    :goto_0
    return-void

    .line 1336
    :cond_b
    :goto_1
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getDevMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isAus()Z

    move-result v2

    if-eqz v2, :cond_c

    const-string/jumbo v2, "startEmergencyRegistration: refresh Emergency profile..."

    .line 1337
    invoke-static {v1, p1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1338
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->refreshAuEmergencyProfile(I)V

    .line 1341
    :cond_c
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getEmergencyProfile(I)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 1343
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasNoSim()Z

    move-result v0

    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryEmergencyRegister(ILcom/sec/ims/settings/ImsProfile;Landroid/os/Message;Z)V

    :cond_d
    :goto_2
    return-void
.end method

.method private supportVoWiFiDisable5GSA(IZZZZ)V
    .locals 9

    const-string v0, "mmtel"

    const-string v1, "RegiMgr"

    .line 1700
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mSimManagers:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 1701
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 1703
    sget-object v3, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_0

    return-void

    .line 1707
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    const-string/jumbo v3, "vowifi_5gsa_mode"

    const-string v4, "ENABLE"

    invoke-interface {v2, p1, v3, v4}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1709
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "DEPRIORITIZE"

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    .line 1710
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    const-string/jumbo v3, "support_vowifi_deprioritize_nr5g"

    .line 1711
    invoke-interface {v2, p1, v3, v5}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getBoolean(ILjava/lang/String;Z)Z

    move-result v2

    .line 1712
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    const-string/jumbo v6, "support_disable_vowifi_5gsa"

    .line 1713
    invoke-interface {v3, p1, v6, v5}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getBoolean(ILjava/lang/String;Z)Z

    move-result v3

    if-eqz v2, :cond_1

    move-object v2, v4

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    const-string v2, "DISABLE"

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_0
    const/4 v3, 0x1

    .line 1725
    :try_start_0
    iget-object v6, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    const/16 v7, 0x14

    invoke-interface {v6, v0, v7, p1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->isServiceAvailable(Ljava/lang/String;II)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    const/16 v7, 0x12

    .line 1726
    invoke-interface {v6, v0, v7, p1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->isServiceAvailable(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 1727
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getWfcEpdgManager()Lcom/sec/internal/interfaces/ims/core/IWfcEpdgManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/IWfcEpdgManager;->getNrInterworkingMode(I)I

    move-result v0

    sget v6, Lcom/sec/internal/constants/ims/ImsConstants$NrInterworking;->FULL_SUPPORT:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v0, v6, :cond_4

    move v0, v3

    goto :goto_1

    :catch_0
    const-string v0, "isServiceAvailable RemoteException do nothing"

    .line 1729
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move v0, v5

    .line 1732
    :goto_1
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->isOnlyEpsFallback(I)Z

    move-result v6

    .line 1733
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->isHoEnable(I)Z

    move-result v7

    .line 1734
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->isNrPreferredMode(I)Z

    move-result v8

    if-eqz v0, :cond_5

    .line 1738
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "supportVoWiFiDisable5GSA: requires alwaysDisable5gsa(Nr interworking FULL_SUPPORT) "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, p1, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    move v6, v5

    goto :goto_3

    :cond_5
    if-eq v6, p2, :cond_6

    .line 1741
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->setOnlyEpsFallback(IZ)V

    move v6, v3

    goto :goto_2

    :cond_6
    move v6, v5

    :goto_2
    if-eq v7, p3, :cond_7

    .line 1745
    invoke-direct {p0, p1, p3}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->setHoEnable(IZ)V

    move v6, v3

    :cond_7
    :goto_3
    if-eq v8, p4, :cond_8

    .line 1751
    invoke-direct {p0, p1, p4}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->setNrPreferredMode(IZ)V

    move v6, v3

    :cond_8
    if-eqz p5, :cond_9

    move v6, v3

    .line 1759
    :cond_9
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "supportVoWiFiDisable5GSA: needToSendIpc : "

    invoke-virtual {p5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {v1, p1, p5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-nez v6, :cond_a

    return-void

    :cond_a
    if-eqz p3, :cond_b

    if-nez p2, :cond_c

    :cond_b
    if-eqz v0, :cond_d

    :cond_c
    if-eqz p4, :cond_d

    .line 1765
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->isNrSaMode(I)Z

    move-result p0

    if-eqz p0, :cond_d

    move v5, v3

    .line 1767
    :cond_d
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 1769
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_e
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/core/RegisterTask;

    .line 1770
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getUserAgent()Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object p2

    if-eqz p2, :cond_e

    if-eqz v5, :cond_10

    .line 1772
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getUserAgent()Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object p1

    .line 1773
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_f

    sget p2, Lcom/sec/internal/constants/ims/ImsConstants$NrSaMode;->DEPRIORITIZE:I

    goto :goto_5

    :cond_f
    sget p2, Lcom/sec/internal/constants/ims/ImsConstants$NrSaMode;->DISABLE:I

    .line 1772
    :goto_5
    invoke-interface {p1, p2}, Lcom/sec/internal/interfaces/ims/core/IUserAgent;->setVowifi5gsaMode(I)V

    goto :goto_4

    .line 1775
    :cond_10
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getUserAgent()Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object p1

    sget p2, Lcom/sec/internal/constants/ims/ImsConstants$NrSaMode;->ENABLE:I

    invoke-interface {p1, p2}, Lcom/sec/internal/interfaces/ims/core/IUserAgent;->setVowifi5gsaMode(I)V

    goto :goto_4

    :cond_11
    return-void
.end method

.method private updateImsIconManagerOrCreate(I)V
    .locals 6

    .line 655
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    .line 656
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getIconManager()Lcom/sec/internal/ims/core/ImsIconManager;

    move-result-object v1

    .line 657
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->hasLoadedProfile(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 658
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v4

    if-nez v1, :cond_0

    const-string v1, "RegiMgr"

    const-string/jumbo v2, "updateImsIconManagerOrCreate: added iconmanager."

    .line 660
    invoke-static {v1, p1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 661
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    move-object v2, p0

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/core/SlotBasedConfig;->createIconManager(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/constants/Mno;I)V

    goto :goto_0

    .line 663
    :cond_0
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/ImsIconManager;->updateRegistrationIcon()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public bootCompleted()V
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 229
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public checkUnProcessedVoLTEState(I)V
    .locals 0

    .line 1859
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/core/RegistrationManagerBase$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase$$ExternalSyntheticLambda2;-><init>()V

    .line 1860
    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZILjava/lang/String;)V
    .locals 7

    .line 252
    invoke-static {p1}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    invoke-interface {p1, p5}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setReason(Ljava/lang/String;)V

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deregister: task="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " local="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " keepPdn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " delay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    const-string v0, "RegiMgr"

    invoke-static {v0, p5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    int-to-long v5, p4

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->requestPendingDeregistration(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZJ)V

    return-void
.end method

.method public deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V
    .locals 6

    .line 240
    invoke-static {p1}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    .line 241
    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZILjava/lang/String;)V

    return-void
.end method

.method public deregisterProfile(II)V
    .locals 2

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deregisterProfile: handle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr"

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 187
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->notifyManualDeRegisterRequested(II)V

    return-void
.end method

.method public deregisterProfile(IIZ)V
    .locals 2

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deregisterProfile: handle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", disconnectPdn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr"

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 193
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->notifyManualDeRegisterRequested(IIZ)V

    return-void
.end method

.method public deregisterProfile(Ljava/util/List;ZI)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;ZI)V"
        }
    .end annotation

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deregisterProfile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " disconnectPdn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr"

    invoke-static {v1, p3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 156
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->notifyManualDeRegisterRequested(Ljava/util/List;ZI)V

    return-void
.end method

.method public doPendingUpdateRegistration()V
    .locals 2

    .line 223
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 224
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public finishThreadForGettingHostAddress(Ljava/lang/Thread;I)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1597
    invoke-virtual {p1}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1598
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    const-string p1, "getHostAddress time out or failed"

    const-string v0, "RegiMgr"

    .line 1600
    invoke-static {v0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1602
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/RegistrationManager;->getRegisterTask(I)Lcom/sec/internal/ims/core/RegisterTask;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1603
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object p2

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->RESOLVING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne p2, v1, :cond_1

    .line 1604
    sget-object p2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 1605
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getDnsQueryRetryCount()I

    move-result p2

    .line 1606
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDnsResponse: retrycount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x5

    if-gt p2, v0, :cond_1

    add-int/lit8 p2, p2, 0x1

    .line 1609
    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/core/RegisterTask;->setDnsQueryRetryCount(I)V

    .line 1610
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result p1

    const-wide/16 v0, 0x2710

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(IJ)V

    :cond_1
    return-void
.end method

.method public forcedUpdateRegistration(Lcom/sec/ims/settings/ImsProfile;I)I
    .locals 6

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "forcedUpdateRegistration: profile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr"

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    .line 208
    :cond_0
    invoke-static {p2}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 210
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/core/RegisterTask;

    .line 211
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v4

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v5

    if-ne v4, v5, :cond_1

    const-string/jumbo p1, "start updateRegistration"

    .line 212
    invoke-static {v1, p2, v3, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    .line 213
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const-wide/16 p1, 0x0

    invoke-virtual {p0, v3, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->requestForcedUpdateRegistration(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;J)V

    const/4 p0, 0x0

    return p0

    :cond_2
    return v0
.end method

.method public getCsfbSupported(I)Z
    .locals 7

    const-string v0, "getCsfbSupported:"

    const-string v1, "RegiMgr"

    .line 746
    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 747
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    .line 751
    :cond_0
    iget v3, v0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-static {v3}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    .line 752
    iget-boolean v0, v0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->csOutOfService:Z

    .line 753
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v3, p1}, Lcom/sec/internal/ims/core/PdnController;->isPsOnlyReg(I)Z

    move-result v3

    .line 755
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isPsOnlyReg : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " mEmmCause = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationManager;->getEmmCause()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, p1, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 757
    iget p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mEmmCause:I

    const/16 v5, 0x16

    if-ne p0, v5, :cond_1

    const-string p0, "Support for EMM Cause 22"

    .line 758
    invoke-static {v1, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v4

    :cond_1
    if-nez v0, :cond_2

    if-eqz v3, :cond_3

    :cond_2
    const-string p0, "CS OOS or CSFB not supported."

    .line 762
    invoke-static {v1, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v2

    :cond_3
    return v4
.end method

.method public getCurrentNetwork(I)I
    .locals 1

    .line 293
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getRegisterTaskByRegHandle(I)Lcom/sec/internal/ims/core/RegisterTask;

    move-result-object p0

    if-nez p0, :cond_0

    .line 296
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getCurrentNetwork: unknown handle "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RegiMgr"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 299
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result p0

    return p0
.end method

.method public getCurrentNetworkByPhoneId(I)I
    .locals 1

    .line 286
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 289
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object p0

    iget p0, p0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    return p0
.end method

.method public getCurrentPcscf(I)[Ljava/lang/String;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 311
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getRegisterTaskByRegHandle(I)Lcom/sec/internal/ims/core/RegisterTask;

    move-result-object p0

    if-nez p0, :cond_0

    .line 313
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getCurrentPcscf: unknown handle "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RegiMgr"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 317
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->getCurrentPcscfIp()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 318
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getSipPort()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v0, p1

    return-object v0
.end method

.method handleAdsChangeOnDualIms()V
    .locals 9

    .line 1046
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    .line 1047
    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;->ADS_CHANGED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->updateRegistration(ILcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;)Z

    .line 1049
    invoke-static {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getRegistrationTasks()Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "onActiveDataSubscriptionChanged: stopPdnConnectivity"

    const-string v4, "RegiMgr"

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/RegisterTask;

    .line 1050
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v5

    if-nez v5, :cond_0

    .line 1051
    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v5}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1052
    invoke-static {v4, v0, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1053
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v3

    invoke-virtual {p0, v3, v2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 1054
    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 1055
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryRegister(I)V

    goto :goto_0

    .line 1061
    :cond_1
    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getOppositeSimSlot(I)I

    move-result v1

    .line 1062
    invoke-static {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getRegistrationTasks()Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "ADS change"

    if-eqz v5, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/core/RegisterTask;

    .line 1063
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/internal/ims/core/RegistrationUtils;->isCmcProfile(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v7

    if-eqz v7, :cond_4

    sget-object v7, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v8, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v7, v8}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1064
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_3

    .line 1065
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result v7

    const/16 v8, 0x12

    if-eq v7, v8, :cond_4

    .line 1066
    :cond_3
    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    const/16 v6, 0x23

    .line 1067
    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1068
    invoke-virtual {p0, v5, v6, v7}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    const-string v6, "onActiveDataSubscriptionChanged: Cmc deregister"

    .line 1069
    invoke-static {v4, v1, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_2

    .line 1070
    :cond_4
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v6

    if-nez v6, :cond_5

    .line 1071
    sget-object v6, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v6}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1072
    invoke-static {v4, v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1073
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v6

    invoke-virtual {p0, v6, v5}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 1074
    sget-object v6, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 1075
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryRegister(I)V

    .line 1078
    :cond_5
    :goto_2
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v6

    const/16 v7, 0xb

    if-ne v6, v7, :cond_2

    .line 1079
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v5

    invoke-interface {v5, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onAdsChanged(I)V

    goto :goto_1

    .line 1084
    :cond_6
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isRegAllowed(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "ADS set to other SIM, dual rcs not supported, dereg previous ads rcs."

    .line 1085
    invoke-static {v4, v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1086
    invoke-static {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getRegistrationTasks()Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/RegisterTask;

    .line 1087
    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v2, v3}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1088
    invoke-virtual {v1, v6}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 1089
    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;->ADS_CHANGED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;

    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;)Z

    goto :goto_3

    :cond_8
    return-void
.end method

.method public handleE911RegiTimeOut(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V
    .locals 3

    const-string p0, "RegiMgr"

    const-string v0, "handleE911RegiTimeOut"

    .line 1854
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1855
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p0

    sget-object p1, Lcom/sec/internal/constants/ims/SipErrorBase;->SIP_TIMEOUT:Lcom/sec/ims/util/SipError;

    const-wide/16 v0, 0x3e8

    const/4 v2, 0x1

    invoke-interface {p0, p1, v0, v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onRegistrationError(Lcom/sec/ims/util/SipError;JZ)V

    return-void
.end method

.method public handleInactiveCiaOnMobileConnected(I)V
    .locals 3

    .line 1463
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1465
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/RegisterTask;

    .line 1466
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1467
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    invoke-interface {v2, p1, v1}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->handleInactiveCiaOnMobileConnected(ILcom/sec/internal/ims/core/RegisterTask;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public handleInactiveCiaOnMobileDisconnected(I)V
    .locals 3

    .line 1474
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1476
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/RegisterTask;

    .line 1477
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1478
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    invoke-interface {v2, p1, v1}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->handleInactiveCiaOnMobileDisconnected(ILcom/sec/internal/ims/core/RegisterTask;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public bridge synthetic initSequentially()V
    .locals 0

    .line 115
    invoke-super {p0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->initSequentially()V

    return-void
.end method

.method public isNrPreferredMode(I)Z
    .locals 3

    .line 1669
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    const-string v0, "NRPREFERREDMODE"

    const/4 v1, 0x0

    const-string/jumbo v2, "user_config"

    invoke-static {p1, p0, v2, v0, v1}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getBoolean(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    .line 1671
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nrPreferredMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return p0
.end method

.method public isNrSaMode(I)Z
    .locals 4

    .line 1681
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getNrSaMode()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 1683
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user_config"

    const-string v3, "NRSAMODE"

    invoke-static {p1, v0, v1, v3, v2}, Lcom/sec/internal/helper/ImsSharedPrefHelper;->getBoolean(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 1686
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->setNrSaMode(IZ)V

    .line 1688
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nrSaMode : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "RegiMgr"

    invoke-static {v1, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public isSelfActivationRequired(I)Z
    .locals 1

    .line 1234
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1236
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/core/RegisterTask;

    .line 1237
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->getPcoType()Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    move-result-object p1

    sget-object v0, Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;->PCO_SELF_ACTIVATION:Lcom/sec/internal/ims/core/RegistrationGovernor$PcoType;

    if-ne p1, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 1243
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isSelfActivationRequired = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RegiMgr"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isSupportVoWiFiDisable5GSA(I)Z
    .locals 4

    .line 1784
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mSimManagers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 1785
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 1788
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isEmeasewaoce()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1792
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    const-string/jumbo v2, "vowifi_5gsa_mode"

    const-string v3, "ENABLE"

    invoke-interface {v0, p1, v2, v3}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1794
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1795
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    const-string/jumbo v2, "support_vowifi_deprioritize_nr5g"

    .line 1796
    invoke-interface {v0, p1, v2, v1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getBoolean(ILjava/lang/String;Z)Z

    move-result v0

    .line 1797
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    const-string/jumbo v3, "support_disable_vowifi_5gsa"

    .line 1798
    invoke-interface {v2, p1, v3, v1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getBoolean(ILjava/lang/String;Z)Z

    move-result v2

    if-nez v0, :cond_1

    if-nez v2, :cond_1

    return v1

    .line 1804
    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->isHoEnable(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->isOnlyEpsFallback(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->isNrPreferredMode(I)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public isSupportVoWiFiDisable5GSAFromConfiguration(I)Z
    .locals 3

    .line 1865
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    const-string/jumbo v1, "vowifi_5gsa_mode"

    const-string v2, "ENABLE"

    invoke-interface {v0, p1, v1, v2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1867
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1868
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    const-string/jumbo v1, "support_vowifi_deprioritize_nr5g"

    const/4 v2, 0x0

    .line 1869
    invoke-interface {v0, p1, v1, v2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getBoolean(ILjava/lang/String;Z)Z

    move-result v0

    .line 1870
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    const-string/jumbo v1, "support_disable_vowifi_5gsa"

    .line 1871
    invoke-interface {p0, p1, v1, v2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getBoolean(ILjava/lang/String;Z)Z

    move-result p0

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    return v2

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isSuspended(I)Z
    .locals 1

    .line 277
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getRegisterTaskByRegHandle(I)Lcom/sec/internal/ims/core/RegisterTask;

    move-result-object p0

    if-nez p0, :cond_0

    .line 279
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isSuspended: unknown handle "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RegiMgr"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 282
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->isSuspended()Z

    move-result p0

    return p0
.end method

.method loadImsProfile(I)Z
    .locals 7

    const-string v0, "loadImsProfile:"

    const-string v1, "RegiMgr"

    .line 786
    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 787
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mSimManagers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "loadImsProfile: no SIM loaded"

    .line 789
    invoke-static {v1, p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return v2

    .line 793
    :cond_0
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMnoName()Ljava/lang/String;

    move-result-object v3

    .line 795
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadImsProfile : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, p1, v4}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 797
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string p0, "loadImsProfile: no SIM detected."

    .line 798
    invoke-static {v1, p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return v2

    .line 802
    :cond_1
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->clearProfiles()V

    .line 804
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadImsProfile: mno: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 805
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v3, p1}, Lcom/sec/internal/ims/settings/ImsProfileLoaderInternal;->getProfileListWithMnoName(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    .line 807
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/ims/settings/ImsProfile;

    .line 808
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isISimDataValid()Z

    move-result v5

    invoke-virtual {p0, v4, p1, v5}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->loademergencyprofileinvalidimpu(Lcom/sec/ims/settings/ImsProfile;IZ)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 809
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadImsProfile: Add profile: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " - profile id["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, p1, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 810
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/sec/internal/ims/core/SlotBasedConfig;->addProfile(Lcom/sec/ims/settings/ImsProfile;)V

    goto :goto_0

    .line 814
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v3, p1}, Lcom/sec/internal/ims/util/ConfigUtil;->getRcsProfileLoaderInternalWithFeature(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 815
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadImsProfile: mRcsProfile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 816
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->refreshDualRcsReg(Landroid/content/Context;)V

    .line 818
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/util/ImsUtil;->notifyImsProfileLoaded(Landroid/content/Context;I)V

    const/4 p0, 0x1

    return p0
.end method

.method loademergencyprofileinvalidimpu(Lcom/sec/ims/settings/ImsProfile;IZ)Z
    .locals 1

    const-string p0, "RegiMgr"

    const-string v0, "loademergencyprofileinvalidimpu:"

    .line 823
    invoke-static {p0, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 824
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object p0

    .line 825
    sget-object p2, Lcom/sec/internal/constants/Mno;->BELL:Lcom/sec/internal/constants/Mno;

    const/4 v0, 0x1

    if-ne p0, p2, :cond_1

    if-nez p3, :cond_1

    .line 826
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method makeThrottleforImsNotAvailable(Lcom/sec/internal/ims/core/RegisterTask;)V
    .locals 3

    .line 1163
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->needImsNotAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/PdnController;->isEpsOnlyReg(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "ril.lte.voice.status"

    const/4 v1, -0x1

    .line 1179
    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeThrottleforImsNotAvailable: lteVoiceStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegiMgr"

    invoke-static {v2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    return-void

    .line 1186
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v0, "makeThrottleforImsNotAvailable, combined with csfb supported"

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1187
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->makeThrottle()V

    .line 1188
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->throttleforImsNotAvailable()V

    :cond_2
    :goto_0
    return-void
.end method

.method public moveNextPcscf(ILandroid/os/Message;)V
    .locals 10

    const-string v0, "moveNextPcscf"

    const-string v1, "RegiMgr"

    .line 681
    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 683
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 685
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/sec/internal/ims/core/RegisterTask;

    .line 686
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 687
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v2

    .line 688
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "moveNextPcscf: current ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->getPcscfOrdinal()I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v3, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 690
    invoke-virtual {v4, p2}, Lcom/sec/internal/ims/core/RegisterTask;->setResultMessage(Landroid/os/Message;)V

    const/4 v2, 0x1

    .line 691
    iput-boolean v2, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mMoveNextPcscf:Z

    const/16 v3, 0xb

    .line 693
    invoke-virtual {v4, v3}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 694
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v3

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->EMERGENCY:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v3, v5, :cond_1

    .line 695
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v2

    const-string v3, "moveNextPcscf: EMERGENCY state, try UA delete"

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 696
    sget-object v5, Lcom/sec/internal/constants/ims/SipErrorBase;->OK:Lcom/sec/ims/util/SipError;

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->onDeregistered(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Lcom/sec/ims/util/SipError;JZZ)V

    goto :goto_0

    .line 697
    :cond_1
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v3

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v3, v5, :cond_2

    .line 698
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v3

    const-string v5, "moveNextPcscf: REGISTERED state, local deregister"

    invoke-static {v1, v3, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 699
    invoke-virtual {p0, v4, v2, v2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    goto :goto_0

    .line 701
    :cond_2
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v3

    const-string v5, "It should not occur. ImsEmergencySession Issue!"

    invoke-static {v1, v3, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v3, 0x0

    .line 702
    iput-boolean v3, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mMoveNextPcscf:Z

    .line 703
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sec/ims/settings/ImsProfile;->setUicclessEmergency(Z)V

    .line 704
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->increasePcscfIdx()V

    .line 705
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(I)V

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method notifyGeolocationUpdate(Lcom/sec/internal/constants/ims/gls/LocationInfo;Z)V
    .locals 3

    .line 1485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyGeolocationUpdate, silentUpdate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1486
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/4 v1, 0x0

    const/16 v2, 0x33

    invoke-virtual {v0, v2, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    if-nez p2, :cond_0

    .line 1490
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 p1, 0x28

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method protected notifyImsNotAvailable(Lcom/sec/internal/ims/core/RegisterTask;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1159
    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->notifyImsNotAvailable(Lcom/sec/internal/ims/core/RegisterTask;ZZ)V

    return-void
.end method

.method protected notifyImsNotAvailable(Lcom/sec/internal/ims/core/RegisterTask;ZZ)V
    .locals 5

    .line 1101
    iget v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mCallState:I

    if-eqz v0, :cond_0

    const-string p0, "RegiMgr"

    const-string p1, "ignore notifyImsNotAvailable in call"

    .line 1102
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1105
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/Mno;->DOCOMO:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p1, Lcom/sec/internal/ims/core/RegisterTask;->mGovernor:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->needImsNotAvailable()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    const/16 v0, 0x48

    const-string v1, ""

    const/4 v2, 0x0

    if-eqz p3, :cond_3

    .line 1112
    iget-object p3, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v3, "notifyImsNotAvailable: Permanent blocked"

    invoke-virtual {p3, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1113
    new-instance p3, Lcom/sec/ims/ImsRegistrationError;

    const/16 v3, 0x51

    const/16 v4, 0x21

    invoke-direct {p3, v2, v1, v3, v4}, Lcom/sec/ims/ImsRegistrationError;-><init>(ILjava/lang/String;II)V

    goto :goto_0

    .line 1116
    :cond_3
    new-instance p3, Lcom/sec/ims/ImsRegistrationError;

    const/16 v3, 0x20

    invoke-direct {p3, v2, v1, v0, v3}, Lcom/sec/ims/ImsRegistrationError;-><init>(ILjava/lang/String;II)V

    .line 1119
    :goto_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->isNotifiedImsNotAvailable()Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz p2, :cond_c

    .line 1120
    :cond_4
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyImsNotAvailable: UserAgent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/sec/internal/ims/core/RegisterTask;->mObject:Ljava/lang/Object;

    if-nez v4, :cond_5

    const-string v4, "null"

    goto :goto_1

    :cond_5
    const-string v4, "exist"

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", force: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", task: "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1121
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", reason: "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getNotAvailableReason()I

    move-result p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1120
    invoke-virtual {v1, p2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1122
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p2

    const-string v1, "ImsNotAvailable"

    invoke-interface {p2, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->stopTimsTimer(Ljava/lang/String;)V

    .line 1123
    invoke-static {}, Lcom/sec/ims/ImsRegistration;->getBuilder()Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object p2

    const/4 v1, -0x1

    .line 1124
    invoke-virtual {p2, v1}, Lcom/sec/ims/ImsRegistration$Builder;->setHandle(I)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object p2

    new-instance v1, Lcom/sec/ims/settings/ImsProfile;

    .line 1125
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/sec/ims/settings/ImsProfile;-><init>(Lcom/sec/ims/settings/ImsProfile;)V

    invoke-virtual {p2, v1}, Lcom/sec/ims/ImsRegistration$Builder;->setImsProfile(Lcom/sec/ims/settings/ImsProfile;)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object p2

    .line 1126
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getAllServiceSetFromAllNetwork()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/sec/ims/ImsRegistration$Builder;->setServices(Ljava/util/Set;)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object p2

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    .line 1127
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/core/PdnController;->isEpdgConnected(I)Z

    move-result v1

    invoke-virtual {p2, v1}, Lcom/sec/ims/ImsRegistration$Builder;->setEpdgStatus(Z)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object p2

    .line 1128
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/sec/ims/ImsRegistration$Builder;->setPdnType(I)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object p2

    .line 1129
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v1

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/sec/internal/ims/core/RegistrationManager;->getUuid(ILcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/sec/ims/ImsRegistration$Builder;->setUuid(Ljava/lang/String;)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object p2

    .line 1130
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v1

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v3

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {p0, v1, v3, v4}, Lcom/sec/internal/ims/core/RegistrationManager;->getInstanceId(IILcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/sec/ims/ImsRegistration$Builder;->setInstanceId(Ljava/lang/String;)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object p2

    .line 1131
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getNetworkConnected()Landroid/net/Network;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/sec/ims/ImsRegistration$Builder;->setNetwork(Landroid/net/Network;)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object p2

    .line 1132
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getNetworkEvent()Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v1

    iget v1, v1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-virtual {p2, v1}, Lcom/sec/ims/ImsRegistration$Builder;->setRegiRat(I)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object p2

    .line 1133
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/sec/ims/ImsRegistration$Builder;->setPhoneId(I)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object p2

    .line 1134
    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration$Builder;->build()Lcom/sec/ims/ImsRegistration;

    move-result-object p2

    .line 1135
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getUserAgent()Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v1

    const/4 v3, 0x1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getNotAvailableReason()I

    move-result v1

    if-ne v1, v3, :cond_7

    .line 1136
    :cond_6
    invoke-virtual {p0, p2, v2, p1, p3}, Lcom/sec/internal/ims/core/RegistrationManager;->notifyImsRegistration(Lcom/sec/ims/ImsRegistration;ZLcom/sec/internal/interfaces/ims/core/IRegisterTask;Lcom/sec/ims/ImsRegistrationError;)V

    .line 1137
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->makeThrottleforImsNotAvailable(Lcom/sec/internal/ims/core/RegisterTask;)V

    .line 1139
    :cond_7
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getUserAgent()Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 1140
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v1

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v1, v4, :cond_9

    .line 1141
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 1142
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->makeThrottleforImsNotAvailable(Lcom/sec/internal/ims/core/RegisterTask;)V

    .line 1143
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getNotAvailableReason()I

    move-result p2

    if-ne p2, v3, :cond_8

    move v2, v3

    .line 1144
    :cond_8
    invoke-virtual {p0, p1, v3, v2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    goto :goto_3

    .line 1146
    :cond_9
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getNotAvailableReason()I

    move-result v0

    if-eq v0, v3, :cond_b

    .line 1147
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    if-nez v0, :cond_a

    goto :goto_2

    :cond_a
    move-object p2, v0

    .line 1148
    :goto_2
    invoke-virtual {p0, p2, v2, p1, p3}, Lcom/sec/internal/ims/core/RegistrationManager;->notifyImsRegistration(Lcom/sec/ims/ImsRegistration;ZLcom/sec/internal/interfaces/ims/core/IRegisterTask;Lcom/sec/ims/ImsRegistrationError;)V

    .line 1149
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->makeThrottleforImsNotAvailable(Lcom/sec/internal/ims/core/RegisterTask;)V

    .line 1153
    :cond_b
    :goto_3
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result p0

    invoke-static {p0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/core/SlotBasedConfig;->setNotifiedImsNotAvailable(Z)V

    .line 1154
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->clearNotAvailableReason()V

    :cond_c
    return-void
.end method

.method onActiveDataSubscriptionChanged()V
    .locals 1

    .line 1037
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->refreshDualRcsReg(Landroid/content/Context;)V

    .line 1040
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isDualIMS()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1041
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->handleAdsChangeOnDualIms()V

    :cond_0
    return-void
.end method

.method protected onDelayedDeregister(Lcom/sec/internal/ims/core/RegisterTask;)V
    .locals 1

    .line 1096
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1097
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->runDelayedDeregister()V

    return-void
.end method

.method public onDnsResponse(Ljava/util/List;II)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .line 1553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDnsResponse, ipAddr size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", port "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr"

    invoke-static {v1, p3, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 1554
    invoke-static {p3}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getRegistrationTasks()Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 1555
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->RESOLVING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v3, v4, :cond_0

    .line 1556
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isRcsOnly()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1557
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDnsResponse: profile not match!! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " port: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p3, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 1560
    :cond_1
    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->RESOLVED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-interface {v2, v3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 1561
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->checkValidPcscfIp(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 1562
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_3

    const v3, 0xffff

    if-le p2, v3, :cond_2

    goto :goto_1

    .line 1565
    :cond_2
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->updatePcscfIpList(Ljava/util/List;)V

    .line 1567
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/sec/ims/settings/ImsProfile;->setSipPort(I)V

    .line 1568
    invoke-interface {v2, v4}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setDnsQueryRetryCount(I)V

    goto :goto_2

    .line 1563
    :cond_3
    :goto_1
    iput-boolean v4, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mAresLookupRequired:Z

    .line 1571
    :goto_2
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isRcsOnly()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1574
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v3

    invoke-static {v3}, Lcom/sec/internal/ims/util/ConfigUtil;->getAcsServerType(I)Ljava/lang/String;

    move-result-object v3

    .line 1575
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(Lcom/sec/internal/constants/Mno;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsChn(Lcom/sec/internal/constants/Mno;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1576
    :cond_4
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getRegistrationRat()I

    move-result v4

    const/16 v5, 0x12

    if-eq v4, v5, :cond_6

    :cond_5
    const-string v4, "jibe"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1577
    :cond_6
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getDnsQueryRetryCount()I

    move-result v3

    .line 1578
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDnsResponse: retrycount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x5

    if-gt v3, v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    .line 1581
    invoke-interface {v2, v3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setDnsQueryRetryCount(I)V

    .line 1582
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v4

    const-wide/16 v5, 0x2710

    invoke-virtual {v3, v4, v5, v6}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(IJ)V

    .line 1589
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1590
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(I)V

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method protected onEmergencyReady(I)V
    .locals 2

    const-string v0, "RegiMgr"

    const-string v1, "onEmergencyReady:"

    .line 773
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getRegisterTask(I)Lcom/sec/internal/ims/core/RegisterTask;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 777
    sget-object p1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->EMERGENCY:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 778
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getResultMessage()Landroid/os/Message;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 779
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getResultMessage()Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    const/4 p1, 0x0

    .line 780
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegisterTask;->setResultMessage(Landroid/os/Message;)V

    :cond_0
    return-void
.end method

.method protected onFlightModeChanged(Z)V
    .locals 5

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    move v0, p1

    .line 1505
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mSimManagers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1506
    invoke-static {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getRegistrationTasks()Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 1507
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v3, v4, :cond_0

    .line 1508
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    invoke-interface {v3, v2}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->removeUserAgent(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 1509
    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-interface {v2, v3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 1511
    :cond_0
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->clearSuspended()V

    goto :goto_1

    .line 1513
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->suspendRegister(ZI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1516
    :cond_2
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mSimManagers:Ljava/util/List;

    new-instance v0, Lcom/sec/internal/ims/core/RegistrationManagerBase$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/RegistrationManagerBase$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/ims/core/RegistrationManagerBase;)V

    invoke-interface {p1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    :cond_3
    return-void
.end method

.method protected onImsProfileUpdated(I)V
    .locals 5

    const-string v0, "onImsProfileUpdated:"

    const-string v1, "RegiMgr"

    .line 832
    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 833
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mSimManagers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    if-nez v0, :cond_0

    .line 836
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 837
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    .line 838
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x64

    .line 837
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 843
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->loadImsProfile(I)Z

    .line 844
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasNoSim()Z

    move-result v0

    invoke-static {v0, p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->setVoLTESupportProperty(ZI)V

    .line 846
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 848
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/RegisterTask;

    .line 849
    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v3, v4}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "profile updated"

    .line 850
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    const/16 v3, 0x1d

    .line 851
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 853
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mJibeRcsRegistration:Lcom/sec/internal/interfaces/ims/core/IJibeRcsRegistration;

    invoke-interface {v3, p1, v2}, Lcom/sec/internal/interfaces/ims/core/IJibeRcsRegistration;->addDeRegisteringTask(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 855
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v3, p1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getCallState(I)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    .line 856
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/RegisterTask;->setHasPendingDeregister(Z)V

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 858
    invoke-virtual {p0, v2, v3, v3}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    .line 862
    :cond_2
    :goto_1
    invoke-static {v2}, Lcom/sec/internal/ims/core/RegistrationUtils;->replaceProfilesOnTask(Lcom/sec/internal/ims/core/RegisterTask;)V

    goto :goto_0

    .line 866
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mJibeRcsRegistration:Lcom/sec/internal/interfaces/ims/core/IJibeRcsRegistration;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/IJibeRcsRegistration;->needAwaitDeRegistered(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "onImsProfileUpdated: Proceed after de-regi done"

    .line 867
    invoke-static {v1, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 870
    :cond_4
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->onImsProfileUpdateDone(I)V

    return-void
.end method

.method onImsSwitchUpdated(I)V
    .locals 2

    const-string v0, "RegiMgr"

    const-string v1, "onImsSwitchUpdated:"

    .line 874
    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 876
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->onImsSwitchUpdated(I)V

    .line 877
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->configure(I)V

    .line 879
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->onConfigUpdated(Ljava/lang/String;I)V

    return-void
.end method

.method onOwnCapabilitiesChanged(ILcom/sec/ims/options/Capabilities;)V
    .locals 6

    .line 883
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onOwnCapabilitiesChanged: capabilities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 885
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getRegistrationTasks()Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/RegisterTask;

    .line 886
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v3

    if-eq v3, p1, :cond_0

    goto :goto_0

    .line 889
    :cond_0
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 892
    :cond_1
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->checkAcsPcscfListChange()V

    .line 893
    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v3, v4}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 894
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x8b

    invoke-virtual {v3, v5, v4}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 896
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->isImsSingleRegiRequired(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mConfigModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {v3, p1}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getRcsConfVersion(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_2

    const-string p0, "onOwnCapabilitiesChanged: Postpone the update registration till next ACS complete event"

    .line 897
    invoke-static {v1, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 900
    :cond_2
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 903
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "own capability changed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 905
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    .line 906
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-static {v3, v4, p1}, Lcom/sec/internal/ims/util/ImsUtil;->needForceRegiOrPublishForMmtelCallComposer(Landroid/content/Context;Lcom/sec/ims/settings/ImsProfile;I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 907
    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;->CAPABILITY_CHANGED_FORCED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;

    invoke-virtual {p0, v2, v3}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;)Z

    goto/16 :goto_0

    .line 909
    :cond_4
    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;->CAPABILITY_CHANGED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;

    invoke-virtual {p0, v2, v3}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;)Z

    goto/16 :goto_0

    .line 912
    :cond_5
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryRegister(I)V

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method protected onSimReady(ZI)Z
    .locals 12

    .line 490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSimReady: absent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr"

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 491
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mSimManagers:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    if-nez p1, :cond_0

    .line 494
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/sec/internal/ims/entitlement/nsds/NSDSSimEventManager;->startIMSDeviceConfigService(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V

    .line 496
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "volte"

    invoke-static {v2, v3, p2}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    const-string v3, "PS"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v5, :cond_2

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "rcsswitch"

    .line 497
    invoke-static {v2, v6, p2}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v5, :cond_2

    .line 498
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/internal/constants/Mno;->fromSalesCode(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object p1

    .line 499
    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isAus()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 500
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "Aus device, keep IMS Service Up for Emergency Call."

    invoke-virtual {p1, p2, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 501
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/RegistrationManager;->getEmergencyProfile(I)Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    invoke-static {p1, p2, p0, v0, v3}, Lcom/sec/internal/ims/core/EmergencyDomainUpdater;->update(Landroid/content/Context;ILcom/sec/ims/settings/ImsProfile;Lcom/sec/internal/interfaces/ims/core/ISimManager;Ljava/lang/String;)V

    return v5

    .line 504
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string p1, "IMS is disabled. Do not load profiles"

    invoke-virtual {p0, p2, p1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 505
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",IMS OFF"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const p1, 0x11010003

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    return v4

    :cond_2
    if-nez p1, :cond_5

    .line 514
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v2

    .line 515
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->loadImsProfile(I)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->isLooperExist()Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_0

    .line 521
    :cond_3
    invoke-static {p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getProfiles()Ljava/util/List;

    move-result-object v6

    invoke-interface {v2, v6, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->serviceStartDeterminer(Ljava/util/List;I)V

    .line 522
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->notifyImsSwitchUpdateToApp()V

    .line 526
    invoke-static {p2}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsChn(Lcom/sec/internal/constants/Mno;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 527
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mConfigModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {v2, p2}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getRcsConfVersion(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 528
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v6, -0x2

    if-ne v2, v6, :cond_6

    const-string v2, "onSimReady: disableRcsByAcs for ConfigDBVer == -2"

    .line 529
    invoke-static {v1, p2, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 530
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mConfigModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {v2, p2}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/config/params/ACSConfig;->disableRcsByAcs(Z)V

    goto :goto_2

    .line 518
    :cond_4
    :goto_0
    new-instance v2, Lcom/sec/internal/helper/AsyncResult;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v2, v7, v6, v7}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 519
    iget-object v6, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v7, 0x14

    invoke-virtual {v6, v7, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v7, 0x3e8

    invoke-virtual {v6, v2, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2

    .line 536
    :cond_5
    invoke-static {p2}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 538
    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/core/RegisterTask;

    .line 539
    invoke-virtual {v6}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v6

    const/4 v7, 0x4

    invoke-interface {v6, v7}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->releaseThrottle(I)V

    goto :goto_1

    .line 544
    :cond_6
    :goto_2
    invoke-static {p1, p2}, Lcom/sec/internal/ims/core/RegistrationUtils;->setVoLTESupportProperty(ZI)V

    .line 547
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/RegistrationManager;->getEmergencyProfile(I)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    const-string v8, "emergency_domain_setting"

    .line 548
    invoke-interface {v7, p2, v8, v3}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 547
    invoke-static {v2, p2, v6, v0, v3}, Lcom/sec/internal/ims/core/EmergencyDomainUpdater;->update(Landroid/content/Context;ILcom/sec/ims/settings/ImsProfile;Lcom/sec/internal/interfaces/ims/core/ISimManager;Ljava/lang/String;)V

    .line 551
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasVsim()Z

    move-result v2

    if-nez v2, :cond_7

    .line 552
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->clearTask(I)V

    .line 554
    :cond_7
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->buildTask(I)V

    .line 555
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/internal/ims/core/RegistrationUtils;->initRttMode(Landroid/content/Context;)V

    .line 557
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    invoke-static {v2, p2, v0}, Lcom/sec/internal/ims/util/ConfigUtil;->hasAcsProfile(Landroid/content/Context;ILcom/sec/internal/interfaces/ims/core/ISimManager;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 559
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v2

    invoke-interface {v2, v4, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->notifyConfigured(ZI)V

    .line 562
    :cond_8
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->updateImsIconManagerStatus(I)V

    .line 564
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 566
    iget v3, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mlegacyPhoneCount:I

    if-nez v3, :cond_9

    invoke-static {p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getIconManager()Lcom/sec/internal/ims/core/ImsIconManager;

    move-result-object v3

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mCmcAccountManager:Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->isSecondaryDevice()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 567
    invoke-static {p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    move-object v8, p0

    move-object v10, v2

    move v11, p2

    invoke-virtual/range {v6 .. v11}, Lcom/sec/internal/ims/core/SlotBasedConfig;->createIconManager(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/constants/Mno;I)V

    .line 570
    :cond_9
    sget-object v3, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    sget-object v6, Lcom/sec/internal/constants/Mno;->DISH:Lcom/sec/internal/constants/Mno;

    filled-new-array {v3, v6}, [Lcom/sec/internal/constants/Mno;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-eqz v3, :cond_a

    .line 571
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "preferred_rtt_mode"

    invoke-static {v3, v6, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 572
    iget-object v6, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {v6, v3}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->setRttMode(I)V

    .line 575
    :cond_a
    sget-object v3, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_b

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isLabSimCard()Z

    move-result v3

    if-eqz v3, :cond_b

    if-nez p1, :cond_b

    const-string v3, "Change SS domain to PS_ONLY_VOLTEREGIED"

    .line 576
    invoke-static {v1, p2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 577
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    const-string v6, "PS_ONLY_VOLTEREGIED"

    invoke-static {v3, p2, v6}, Lcom/sec/internal/ims/util/ImsUtil;->updateSsDomain(Landroid/content/Context;ILjava/lang/String;)V

    :cond_b
    const/16 v3, 0x17

    if-nez p1, :cond_c

    .line 581
    invoke-virtual {p0, p2, v0}, Lcom/sec/internal/ims/core/RegistrationManager;->notifySimMobilityStatusChanged(ILcom/sec/internal/interfaces/ims/core/ISimManager;)V

    .line 582
    invoke-static {p2}, Lcom/sec/internal/helper/os/DeviceUtil;->dimVolteMenuBySaMode(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 583
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-static {p2}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v6

    invoke-interface {v0, v6}, Lcom/sec/internal/helper/os/ITelephonyManager;->getPreferredNetworkType(I)I

    move-result v0

    if-lt v0, v3, :cond_c

    .line 585
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v4, p2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setVoiceCallType(Landroid/content/Context;II)V

    :cond_c
    if-nez p1, :cond_f

    .line 590
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isDCMOmcCode()Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lcom/sec/internal/constants/Mno;->DOCOMO:Lcom/sec/internal/constants/Mno;

    if-ne v2, v0, :cond_f

    const-string/jumbo v0, "ro.telephony.default_network"

    const/16 v6, 0x1a

    .line 591
    invoke-static {v0, v6}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lt v0, v3, :cond_f

    .line 593
    invoke-static {p2}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 595
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/core/RegisterTask;

    if-eqz v3, :cond_d

    .line 596
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v6

    const/16 v7, 0xb

    if-ne v6, v7, :cond_d

    .line 597
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v3

    iget-object v6, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    .line 598
    invoke-static {v6, v4, p2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getVoiceCallType(Landroid/content/Context;II)I

    move-result v6

    if-nez v6, :cond_e

    move v6, v5

    goto :goto_4

    :cond_e
    move v6, v4

    .line 597
    :goto_4
    invoke-interface {v3, v6}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->notifyVoLteOnOffToRil(Z)V

    goto :goto_3

    :cond_f
    if-nez p1, :cond_11

    .line 605
    sget-object p1, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    if-ne v2, p1, :cond_11

    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKOROmcCode()Z

    move-result p1

    if-eqz p1, :cond_11

    .line 606
    invoke-static {p2}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 608
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/RegisterTask;

    .line 609
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v2

    if-nez v2, :cond_10

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v2

    if-nez v2, :cond_10

    const-string p1, "onSimReady: registerAllowedNetworkTypesListener"

    .line 610
    invoke-static {v1, p2, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 611
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->registerAllowedNetworkTypesListener()V

    .line 618
    :cond_11
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    invoke-interface {p1, p2}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->configure(I)V

    .line 619
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryRegister(I)V

    return v5
.end method

.method onSimRefresh(I)V
    .locals 10

    const-string v0, "onSimRefresh:"

    const-string v1, "RegiMgr"

    .line 946
    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 948
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationManager;->logTask()V

    .line 950
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->refreshDualRcsReg(Landroid/content/Context;)V

    .line 951
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v0, p1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSimState(I)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const/4 v3, 0x6

    if-ne v0, v3, :cond_1

    .line 953
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->updateImsIconManagerStatus(I)V

    .line 957
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v3, 0x2a

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 958
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x2710

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 963
    :cond_2
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v0

    const/4 v4, 0x0

    if-eqz v0, :cond_9

    .line 965
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/core/RegisterTask;

    .line 966
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v6

    invoke-interface {v6, v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->releaseThrottle(I)V

    .line 968
    sget-object v6, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v7, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v8, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->DEREGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v6, v7, v8}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v8

    if-eqz v8, :cond_7

    const-string v0, "De-Register would be called by RIL(or timeout)."

    .line 969
    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 970
    new-instance v0, Lcom/sec/internal/helper/AsyncResult;

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v8, 0x0

    invoke-direct {v0, v8, v3, v8}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 971
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v8, 0x24

    invoke-virtual {v3, v8, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v8, 0x258

    invoke-virtual {v3, v0, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 972
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v0

    const/16 v3, 0x12

    const/16 v8, 0x19

    if-eqz v0, :cond_4

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result v0

    if-ne v0, v3, :cond_4

    filled-new-array {v6, v7}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    .line 973
    invoke-virtual {v5, v0}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 974
    invoke-virtual {v5, v8}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    const-string v0, "CHN deregister explicitly on WiFi"

    .line 975
    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 976
    invoke-virtual {p0, v5, v4, v4}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    .line 978
    :cond_4
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/core/RegistrationUtils;->isCmcProfile(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result v0

    if-ne v0, v3, :cond_5

    filled-new-array {v6, v7}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    .line 979
    invoke-virtual {v5, v0}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 980
    invoke-virtual {v5, v8}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    const-string v0, "CMC deregister explicitly on WiFi"

    .line 981
    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 982
    invoke-virtual {p0, v5, v4, v4}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    .line 984
    :cond_5
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 985
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/core/RegistrationUtils;->isCmcProfile(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 986
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    if-ne v0, v2, :cond_6

    .line 987
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v0

    if-ne v0, v7, :cond_6

    .line 988
    invoke-virtual {v5, v8}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    const-string v0, "De-Register is called right away to send SIP explicitly by sim absent event."

    .line 989
    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 990
    invoke-virtual {p0, v5, v4, v4}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    :cond_6
    return-void

    .line 993
    :cond_7
    sget-object v6, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONFIGURING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v7, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONFIGURED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v6, v7}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 995
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v6

    sget-object v7, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    if-ne v6, v7, :cond_3

    const-string/jumbo v6, "stop auto configuration using config module"

    .line 996
    invoke-static {v1, p1, v6}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 997
    sget-object v6, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    goto/16 :goto_0

    .line 999
    :cond_8
    sget-object v6, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v7, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v6, v7}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "connecting task Stop PDN by sim refresh event."

    .line 1000
    invoke-static {v1, p1, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1001
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v6

    invoke-virtual {p0, v6, v5}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 1002
    sget-object v6, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {v5, v6}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    goto/16 :goto_0

    .line 1007
    :cond_9
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v2, "onSimRefresh: Reset SIM-related configuration."

    invoke-virtual {v0, p1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1009
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->clearTask(I)V

    .line 1010
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->clear()V

    .line 1011
    invoke-static {}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->getInstance()Lcom/sec/internal/ims/util/UriGeneratorFactory;

    move-result-object v0

    .line 1012
    invoke-static {}, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->values()[Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    move-result-object v2

    array-length v5, v2

    :goto_1
    if-ge v4, v5, :cond_a

    aget-object v6, v2, v4

    .line 1013
    invoke-virtual {v0, p1, v6}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->removeByPhoneId(ILcom/sec/internal/ims/util/UriGenerator$URIServiceType;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1016
    :cond_a
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1017
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1021
    :cond_b
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getEmergencyProfile(I)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mSimManagers:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    const-string v5, "emergency_domain_setting"

    const-string v6, "PS"

    .line 1022
    invoke-interface {v4, p1, v5, v6}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1021
    invoke-static {v0, p1, v2, v3, v4}, Lcom/sec/internal/ims/core/EmergencyDomainUpdater;->update(Landroid/content/Context;ILcom/sec/ims/settings/ImsProfile;Lcom/sec/internal/interfaces/ims/core/ISimManager;Ljava/lang/String;)V

    const-string v0, "onSimRefresh: reset NetworkEvent"

    .line 1024
    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1025
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/PdnController;->resetNetworkState(I)V

    .line 1026
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/PdnController;->registerTelephonyCallback(I)V

    .line 1028
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mCmcAccountManager:Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    if-eqz p0, :cond_c

    .line 1029
    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->onSimRefresh(I)V

    :cond_c
    return-void
.end method

.method postponeUpdateRegistrationByDmaChange(I)V
    .locals 2

    .line 1843
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v0, 0x8b

    .line 1844
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x7530

    .line 1843
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public refreshAuEmergencyProfile(I)V
    .locals 0

    .line 1348
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mAuEmergencyProfile:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->delete(I)V

    return-void
.end method

.method public registerDmListener(Lcom/sec/ims/IImsDmConfigListener;)V
    .locals 0

    .line 1616
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->registerDmListener(Lcom/sec/ims/IImsDmConfigListener;)V

    return-void
.end method

.method public registerProfile(Lcom/sec/ims/settings/ImsProfile;I)I
    .locals 9

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "registerProfile: profile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr"

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mSimManagers:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 176
    :cond_0
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasVsim()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getIconManager()Lcom/sec/internal/ims/core/ImsIconManager;

    move-result-object v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "registerProfile: added iconmanager."

    .line 177
    invoke-static {v1, p2, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 178
    invoke-static {p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v7

    move-object v5, p0

    move v8, p2

    invoke-virtual/range {v3 .. v8}, Lcom/sec/internal/ims/core/SlotBasedConfig;->createIconManager(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/constants/Mno;I)V

    .line 181
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasVsim()Z

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->notifyManualRegisterRequested(Lcom/sec/ims/settings/ImsProfile;ZI)I

    move-result p0

    return p0
.end method

.method public registerProfile(Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "registerProfile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr"

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 143
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->notifyManualRegisterRequested(Ljava/util/List;I)V

    return-void
.end method

.method public sendDeregister(I)V
    .locals 2

    .line 260
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mSimManagers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 261
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->sendDeregister(II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public sendDeregister(II)V
    .locals 2

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendDeregister: reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr"

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 268
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->notifySendDeRegisterRequested(Lcom/sec/internal/constants/Mno;II)V

    return-void
.end method

.method public sendDeregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;J)V
    .locals 1

    .line 273
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v0, 0x80

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method protected sendDnsQuery(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 19
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/interfaces/ims/core/IRegisterTask;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    move-object/from16 v13, p3

    move-object/from16 v14, p5

    .line 364
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 367
    :try_start_0
    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getNetworkConnected()Landroid/net/Network;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Network;->getPrivateDnsBypassingCopy()Landroid/net/Network;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    move-object v12, v0

    const-string v0, "RegiMgr"

    if-nez v12, :cond_0

    const-string v1, "null task"

    .line 372
    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 375
    :cond_0
    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v11

    .line 376
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendDnsQuery: hostname "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " dnses "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, p4

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v11, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 378
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v0, "NAPTR"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x3

    goto :goto_1

    :sswitch_1
    const-string v0, "AAAA"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x2

    goto :goto_1

    :sswitch_2
    const-string v0, "SRV"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    move v3, v1

    goto :goto_1

    :sswitch_3
    const-string v0, "A"

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    move v3, v2

    :goto_1
    const/16 v9, 0x21

    const/16 v7, 0x23

    packed-switch v3, :pswitch_data_0

    move v8, v2

    goto :goto_2

    :pswitch_0
    move v8, v7

    goto :goto_2

    :pswitch_1
    const/16 v0, 0x1c

    move v8, v0

    goto :goto_2

    :pswitch_2
    move v8, v9

    goto :goto_2

    :pswitch_3
    move v8, v1

    .line 396
    :goto_2
    new-instance v16, Lcom/sec/internal/ims/core/RegistrationManagerBase$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move v13, v7

    move v14, v8

    move-wide/from16 v7, p8

    move-object v9, v15

    move v10, v11

    move/from16 v17, v11

    move-object/from16 v11, p3

    move-object/from16 p1, v12

    move-object/from16 v12, p5

    invoke-direct/range {v0 .. v12}, Lcom/sec/internal/ims/core/RegistrationManagerBase$1;-><init>(Lcom/sec/internal/ims/core/RegistrationManagerBase;Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;ILjava/lang/String;Ljava/lang/String;)V

    .line 417
    new-instance v12, Lcom/sec/internal/ims/core/RegistrationManagerBase$2;

    move-object v0, v12

    move-object v2, v15

    move/from16 v3, v17

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-wide/from16 v10, p8

    invoke-direct/range {v0 .. v11}, Lcom/sec/internal/ims/core/RegistrationManagerBase$2;-><init>(Lcom/sec/internal/ims/core/RegistrationManagerBase;Ljava/util/List;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 433
    new-instance v18, Lcom/sec/internal/ims/core/RegistrationManagerBase$3;

    move-object/from16 v0, v18

    move/from16 v2, v17

    move-object v3, v15

    invoke-direct/range {v0 .. v11}, Lcom/sec/internal/ims/core/RegistrationManagerBase$3;-><init>(Lcom/sec/internal/ims/core/RegistrationManagerBase;ILjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 448
    new-instance v6, Landroid/os/CancellationSignal;

    invoke-direct {v6}, Landroid/os/CancellationSignal;-><init>()V

    .line 449
    invoke-static {}, Landroid/net/DnsResolver;->getInstance()Landroid/net/DnsResolver;

    move-result-object v0

    .line 450
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    if-ne v14, v13, :cond_5

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object v2, v5

    move-object v3, v6

    move-object/from16 v4, v16

    move-object/from16 v5, p6

    .line 452
    invoke-static/range {v0 .. v5}, Lcom/sec/internal/helper/NaptrDnsResolver;->query(Landroid/net/Network;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/CancellationSignal;Landroid/net/DnsResolver$Callback;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    const/16 v1, 0x21

    if-ne v14, v1, :cond_6

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 454
    invoke-static {v1, v2, v5, v6, v12}, Lcom/sec/internal/helper/SrvDnsResolver;->query(Landroid/net/Network;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/CancellationSignal;Landroid/net/DnsResolver$Callback;)V

    goto :goto_3

    :cond_6
    move-object/from16 v1, p1

    move-object/from16 v2, p3

    const/4 v4, 0x1

    move v3, v14

    move-object/from16 v7, v18

    .line 456
    invoke-virtual/range {v0 .. v7}, Landroid/net/DnsResolver;->query(Landroid/net/Network;Ljava/lang/String;IILjava/util/concurrent/Executor;Landroid/os/CancellationSignal;Landroid/net/DnsResolver$Callback;)V

    :goto_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_3
        0x141d7 -> :sswitch_2
        0x1e8840 -> :sswitch_1
        0x469ec3b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public sendDummyDnsQuery()V
    .locals 12

    const-string/jumbo v0, "sendDummyDnsQuery"

    const-string v1, "RegiMgr"

    .line 461
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/PdnController;->getDnsServersByNetType()Ljava/util/List;

    move-result-object v6

    const-string v0, "ipv4"

    if-eqz v6, :cond_0

    const/4 v2, 0x0

    .line 465
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 466
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dns : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    invoke-static {v2}, Lcom/sec/internal/helper/NetworkUtil;->isIPv6Address(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "ipv6"

    :cond_0
    move-object v9, v0

    .line 469
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/PdnController;->getIntfNameByNetType()Ljava/lang/String;

    move-result-object v4

    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "iface : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",ipver:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_1

    if-eqz v4, :cond_1

    .line 472
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    const/16 v3, 0xa

    const-string/jumbo v5, "www.ims_rrc_refresh_dns.net"

    const-string v7, "HOST"

    const-string v8, "UDP"

    const-wide/16 v10, 0x0

    invoke-interface/range {v2 .. v11}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->sendDnsQuery(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_1
    return-void
.end method

.method protected sendNrDisableDuringEpdgCall(I)V
    .locals 2

    .line 1496
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1497
    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getEpdgCallCount(I)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-static {v0, p1}, Lcom/sec/internal/helper/os/DeviceUtil;->isSupportNrMode(Lcom/sec/internal/helper/os/ITelephonyManager;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "RegiMgr"

    const-string/jumbo v1, "sendNrDisableDuringEpdgCall, set semSetNrMode: 4"

    .line 1498
    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1499
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    const/4 v0, 0x4

    invoke-interface {p0, p1, v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->semSetNrMode(II)V

    :cond_0
    return-void
.end method

.method public sendReRegister(II)V
    .locals 2

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendReRegister : pdnType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 347
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 349
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/RegisterTask;

    .line 350
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v1

    if-ne v1, p2, :cond_0

    .line 351
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManager;->sendReRegister(Lcom/sec/internal/ims/core/RegisterTask;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setOwnCapabilities(ILcom/sec/ims/options/Capabilities;)V
    .locals 2

    .line 1402
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v0, 0x1f

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setRegiConfig(I)V
    .locals 1

    .line 1625
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v0, 0x199

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setRttMode(IZ)V
    .locals 2

    .line 336
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getRTTMode()Z

    move-result v0

    if-eq v0, p2, :cond_0

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setRttMode ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 338
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "phoneId"

    .line 339
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "mode"

    .line 340
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 341
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 p1, 0x2c1

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public setSilentLogEnabled(Z)V
    .locals 0

    .line 1549
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->setSilentLogEnabled(Z)V

    return-void
.end method

.method public setThirdPartyFeatureTags([Ljava/lang/String;)V
    .locals 3

    .line 133
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mThirdPartyFeatureTags:Ljava/util/List;

    .line 134
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x7e

    invoke-virtual {p0, v2, p1, v0, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setTtyMode(II)V
    .locals 2

    .line 325
    sget v0, Lcom/sec/ims/extensions/Extensions$TelecomManager;->TTY_MODE_OFF:I

    if-eq p2, v0, :cond_0

    sget v0, Lcom/sec/ims/extensions/Extensions$TelecomManager;->RTT_MODE:I

    if-eq p2, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 326
    :goto_0
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getTTYMode()Z

    move-result v0

    if-eq v0, p2, :cond_1

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setTtyMode ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 328
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "phoneId"

    .line 329
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "mode"

    .line 330
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 331
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 p1, 0x25

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method

.method public startEmergencyRegistration(ILandroid/os/Message;)V
    .locals 0

    .line 1257
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->startEmergencyRegistrationInternal(ILandroid/os/Message;)V

    return-void
.end method

.method public startEmergencyRegistration(ILandroid/os/Message;I)V
    .locals 1

    .line 1249
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v0, p1, p3}, Lcom/sec/internal/ims/core/PdnController;->setEmergencyQualifiedNetowrk(II)V

    .line 1250
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->startEmergencyRegistrationInternal(ILandroid/os/Message;)V

    return-void
.end method

.method public stopEmergencyPdnOnly(I)V
    .locals 2

    const-string v0, "RegiMgr"

    const-string/jumbo v1, "stopEmergencyPdnOnly:"

    .line 1389
    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1390
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1392
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/RegisterTask;

    .line 1393
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1394
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 1395
    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public stopEmergencyRegistration(I)V
    .locals 6

    const-string/jumbo v0, "stopEmergencyRegistration:"

    const-string v1, "RegiMgr"

    .line 1352
    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1355
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1357
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/RegisterTask;

    .line 1358
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1359
    iget-object v0, v2, Lcom/sec/internal/ims/core/RegisterTask;->mProfile:Lcom/sec/ims/settings/ImsProfile;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 1365
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "id"

    .line 1366
    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "explicitDeregi"

    const/4 v5, 0x1

    .line 1367
    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v4, "phoneId"

    .line 1368
    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1370
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v5, 0xa

    invoke-virtual {v4, v5, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1372
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mSimManagers:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasNoSim()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1373
    invoke-virtual {v0, v2}, Lcom/sec/ims/settings/ImsProfile;->setUicclessEmergency(Z)V

    .line 1378
    :cond_2
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getIconManager()Lcom/sec/internal/ims/core/ImsIconManager;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1379
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getIconManager()Lcom/sec/internal/ims/core/ImsIconManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/core/ImsIconManager;->setDuringEmergencyCall(Z)V

    :cond_3
    if-nez v0, :cond_4

    const-string/jumbo v0, "stopEmergencyRegistration: profile not found."

    .line 1383
    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1384
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->startSilentEmergency()V

    :cond_4
    return-void
.end method

.method public stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V
    .locals 2

    .line 669
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v0

    .line 670
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->resetPcscfList()V

    .line 671
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->resetPcoType()V

    .line 672
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->resetPdnFailureInfo()V

    .line 673
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->clearSuspended()V

    .line 674
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->clearSuspendedBySnapshot()V

    const/4 v1, 0x0

    .line 675
    invoke-interface {p2, v1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setKeepPdn(Z)V

    .line 676
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {p0, p1, v0, p2}, Lcom/sec/internal/ims/core/PdnController;->stopPdnConnectivity(IILcom/sec/internal/interfaces/ims/core/PdnEventListener;)I

    return-void
.end method

.method public suspendRegister(ZI)V
    .locals 5

    const-string/jumbo v0, "suspendRegister:"

    const-string v1, "RegiMgr"

    .line 713
    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 714
    invoke-static {p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->isSuspendedWhileIrat()Z

    move-result v0

    if-eq p1, v0, :cond_3

    .line 715
    invoke-static {p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->setSuspendWhileIrat(Z)V

    .line 716
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "suspendedByIrat : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p2, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    const/4 v0, 0x0

    const/16 v2, 0x88

    if-nez p1, :cond_0

    .line 718
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resume reRegister: mNetType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mNetEvtCtr:Lcom/sec/internal/ims/core/NetworkEventController;

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/NetworkEventController;->getNetType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mWiFi = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mNetEvtCtr:Lcom/sec/internal/ims/core/NetworkEventController;

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/NetworkEventController;->isWiFi()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 719
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 720
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mNetEvtCtr:Lcom/sec/internal/ims/core/NetworkEventController;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/NetworkEventController;->isNwChanged()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 721
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mNetEvtCtr:Lcom/sec/internal/ims/core/NetworkEventController;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/core/NetworkEventController;->setNwChanged(Z)V

    .line 722
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 723
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mNetEvtCtr:Lcom/sec/internal/ims/core/NetworkEventController;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/NetworkEventController;->getNetType()I

    move-result v1

    const-string v2, "networkType"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 724
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mNetEvtCtr:Lcom/sec/internal/ims/core/NetworkEventController;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/NetworkEventController;->isWiFi()Z

    move-result v1

    const-string v2, "isWifiConnected"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "phoneId"

    .line 725
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 726
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_0
    const-string v3, "Suspend reRegister"

    .line 729
    invoke-static {v1, p2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 730
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/4 v1, 0x0

    invoke-virtual {p0, v2, p2, v0, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/32 v1, 0x493e0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 732
    :cond_1
    :goto_0
    invoke-static {p2}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 734
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/core/RegisterTask;

    if-eqz p1, :cond_2

    .line 736
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->suspendByIrat()V

    goto :goto_1

    .line 738
    :cond_2
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->resumeByIrat()V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public bridge synthetic suspended(Lcom/sec/internal/ims/core/RegisterTask;ZI)V
    .locals 0

    .line 115
    invoke-super {p0, p1, p2, p3}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->suspended(Lcom/sec/internal/ims/core/RegisterTask;ZI)V

    return-void
.end method

.method tryRegister()V
    .locals 2

    .line 477
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isDualIMS()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mSimManagers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 479
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryRegister(I)V

    goto :goto_0

    .line 482
    :cond_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryRegister(I)V

    :cond_1
    return-void
.end method

.method public unregisterDmListener(Lcom/sec/ims/IImsDmConfigListener;)V
    .locals 0

    .line 1620
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->unregisterDmListener(Lcom/sec/ims/IImsDmConfigListener;)V

    return-void
.end method

.method public updateEpdgHandoverEnableChanged(IZ)V
    .locals 6

    .line 1817
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->isOnlyEpsFallback(I)Z

    move-result v2

    .line 1818
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->isNrPreferredMode(I)Z

    move-result v4

    .line 1819
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateEpdgHandoverEnableChanged: onlyEpsFb = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " , nrPreferredMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " , hoEnable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p2

    .line 1820
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->supportVoWiFiDisable5GSA(IZZZZ)V

    return-void
.end method

.method public updateEpsFbInImsCall(I)V
    .locals 6

    .line 1809
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->isHoEnable(I)Z

    move-result v3

    .line 1810
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v0

    iget v0, v0, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    const/16 v1, 0x14

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v2, v0

    .line 1811
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->isNrPreferredMode(I)Z

    move-result v4

    .line 1812
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateEpsFbInImsCall: onlyEpsFb = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    .line 1813
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->supportVoWiFiDisable5GSA(IZZZZ)V

    return-void
.end method

.method protected updateGeolocation(Lcom/sec/internal/constants/ims/gls/LocationInfo;Z)V
    .locals 7

    const/4 v0, 0x0

    .line 1406
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mSimManagers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const-string v2, "RegiMgr"

    if-ge v0, v1, :cond_4

    .line 1407
    invoke-static {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getRegistrationTasks()Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/core/RegisterTask;

    .line 1411
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getSupportedGeolocationPhase()I

    move-result v4

    .line 1413
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateGeolocation: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", geoLocPhase: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v0, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1414
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManager;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x2

    if-lt v4, v5, :cond_2

    .line 1420
    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    invoke-interface {v4, v3, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->updateGeolocation(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Lcom/sec/internal/constants/ims/gls/LocationInfo;)V

    .line 1423
    :cond_2
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onUpdateGeolocation(Lcom/sec/internal/constants/ims/gls/LocationInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1424
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mGeolocationCon:Lcom/sec/internal/interfaces/ims/core/IGeolocationController;

    if-eqz v3, :cond_0

    .line 1425
    invoke-interface {v3, v0}, Lcom/sec/internal/interfaces/ims/core/IGeolocationController;->stopPeriodicLocationUpdate(I)V

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1431
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateGeolocation: CountryCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/sec/internal/constants/ims/gls/LocationInfo;->mCountry:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", silentUpdate : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-eqz p1, :cond_5

    if-nez p2, :cond_5

    .line 1433
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->onUpdateGeolocation()V

    .line 1436
    :cond_5
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 1438
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getSmsServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 1440
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;->onUpdateGeolocation()V

    :cond_6
    return-void
.end method

.method protected updateImsIconManagerStatus(I)V
    .locals 2

    .line 625
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->initImsIconManagerOrCreate(I)V

    .line 629
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getOppositeSimSlot(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/internal/helper/SimUtil;->isSimActive(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 630
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getOppositeSimSlot(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->initImsIconManagerOrCreate(I)V

    .line 633
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->updateImsIconManagerOrCreate(I)V

    .line 635
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getOppositeSimSlot(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/internal/helper/SimUtil;->isSimActive(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 636
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getOppositeSimSlot(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->updateImsIconManagerOrCreate(I)V

    :cond_1
    return-void
.end method

.method public updateNrPreferredMode(IZ)V
    .locals 6

    .line 1824
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->isHoEnable(I)Z

    move-result v3

    .line 1825
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->isOnlyEpsFallback(I)Z

    move-result v2

    .line 1826
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateNrPreferredMode: onlyEpsFb = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " , nrPreferredMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " , hoEnable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v4, p2

    .line 1827
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->supportVoWiFiDisable5GSA(IZZZZ)V

    return-void
.end method

.method public updateNrSaMode(IZ)V
    .locals 6

    .line 1831
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->isHoEnable(I)Z

    move-result v3

    .line 1832
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->isOnlyEpsFallback(I)Z

    move-result v2

    .line 1833
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->isNrPreferredMode(I)Z

    move-result v4

    .line 1834
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->isNrSaMode(I)Z

    move-result v0

    if-eq v0, p2, :cond_0

    .line 1835
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->setNrSaMode(IZ)V

    .line 1836
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateNrSaMode: onlyEpsFb = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " , nrPreferredMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " , hoEnable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " , nrSaMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "RegiMgr"

    invoke-static {v0, p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    .line 1838
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->supportVoWiFiDisable5GSA(IZZZZ)V

    :cond_0
    return-void
.end method

.method protected updateRat(Lcom/sec/internal/ims/core/RegisterTask;I)V
    .locals 0

    .line 1446
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->updateRat(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;I)V

    return-void
.end method

.method public updateRegiConfig(I)V
    .locals 0

    .line 1629
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRcsPolicyManager:Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;->updateRegiConfig(I)V

    return-void
.end method

.method public updateRegistration(Lcom/sec/ims/settings/ImsProfile;I)I
    .locals 2

    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateRegistration: profile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr"

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 198
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->notifyUpdateRegisterRequested(Lcom/sec/ims/settings/ImsProfile;I)I

    move-result p0

    return p0
.end method

.method public updateRegistrationBySSAC(IZ)V
    .locals 6

    .line 1193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateRegistrationBySSAC:["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1194
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mSimManagers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    if-nez v0, :cond_0

    return-void

    .line 1198
    :cond_0
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 1200
    sget-object v2, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v0, v2, :cond_5

    const-string/jumbo v0, "ro.ril.svlte1x"

    invoke-static {v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1201
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->isSsacEnabled()Z

    move-result v0

    .line 1202
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateRegistrationBySSAC : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v2, 0x79

    if-nez p2, :cond_1

    .line 1205
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :cond_1
    if-eq v0, p2, :cond_5

    .line 1208
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    .line 1211
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getRegistrationTasks()Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/core/RegisterTask;

    .line 1212
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/ims/settings/ImsProfile;->hasVolteService(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v4, v5, :cond_2

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result v3

    invoke-static {v3}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1213
    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    const/16 v3, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "tvolte_hys_timer"

    invoke-static {p2, v4, v3, p1}, Lcom/sec/internal/helper/DmConfigHelper;->readInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    mul-int/lit16 p2, p2, 0x3e8

    goto :goto_0

    :cond_3
    move p2, v0

    .line 1217
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateRegistrationBySSAC : registration will be started after "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "ms."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1218
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v2, v1, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 1220
    :cond_4
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v2, v0, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_5
    :goto_1
    return-void
.end method

.method public updateTelephonyCallStatus(II)V
    .locals 2

    .line 1227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateTelephonyCallStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1228
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v0, 0x21

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected updateTimeInPlani(IZ)V
    .locals 2

    if-eqz p2, :cond_0

    .line 1451
    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    invoke-interface {p2, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->removePreviousLastPani(I)V

    .line 1454
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 1456
    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/RegisterTask;

    .line 1457
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->updateTimeInPlani(ILcom/sec/ims/settings/ImsProfile;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateVo5gIconStatus(II)V
    .locals 0

    .line 1848
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getIconManager()Lcom/sec/internal/ims/core/ImsIconManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1849
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getIconManager()Lcom/sec/internal/ims/core/ImsIconManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/ImsIconManager;->setVo5gIcon(I)V

    :cond_0
    return-void
.end method

.method verifyCmcCertificate([Ljava/security/cert/X509Certificate;)Z
    .locals 7

    .line 919
    sget-object v0, Lokhttp3/internal/tls/OkHostnameVerifier;->INSTANCE:Lokhttp3/internal/tls/OkHostnameVerifier;

    .line 921
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationManager;->getCmcLineSlotIndex()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mCmcAccountManager:Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->isCmcActivated()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationManager;->getCmcLineSlotIndex()I

    move-result v1

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v2

    if-eq v1, v2, :cond_5

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_5

    .line 922
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationManager;->getCmcLineSlotIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/RegistrationManager;->getPendingRegistration(I)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    return v3

    .line 926
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v1, v3

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 927
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/internal/ims/core/RegistrationUtils;->isCmcProfile(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-eq v4, v5, :cond_2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v4, v5, :cond_1

    .line 928
    :cond_2
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPcscfHostname()Ljava/lang/String;

    move-result-object v4

    .line 929
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Checking task: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "RegiMgr"

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 933
    :cond_3
    aget-object v1, p1, v3

    invoke-virtual {v0, v4, v1}, Lokhttp3/internal/tls/OkHostnameVerifier;->verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_4
    move v3, v1

    :cond_5
    return v3
.end method
