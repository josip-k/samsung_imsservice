.class abstract Lcom/sec/internal/ims/core/RegistrationManagerInternal;
.super Lcom/sec/internal/ims/core/RegistrationManager;
.source "RegistrationManagerInternal.java"


# direct methods
.method public static synthetic $r8$lambda$3KO0b-2VwkzWiAzBIJWgW7HvdJA(Lcom/sec/internal/ims/core/RegistrationManagerInternal;I)Lcom/sec/internal/ims/core/RegisterTask;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->lambda$triggerFullNetworkRegistration$4(I)Lcom/sec/internal/ims/core/RegisterTask;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Fkf0xmYJQXCSv_Q9_5mC_QgypSY(IILcom/sec/internal/ims/core/RegisterTask;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->lambda$triggerFullNetworkRegistration$5(IILcom/sec/internal/ims/core/RegisterTask;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ji5sxSYzoOqLsY_i_95XNFtftTE(Lcom/sec/internal/ims/core/RegisterTask;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->lambda$triggerFullNetworkRegistration$3(Lcom/sec/internal/ims/core/RegisterTask;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$appYOzXvmKYhIOYtlRLpo5rZXfo(Lcom/sec/ims/ImsRegistration;)Ljava/lang/Boolean;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->lambda$triggerFullNetworkRegistration$2(Lcom/sec/ims/ImsRegistration;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$mfu54tNo1krbDAxxtW8USeRnYZ0(Lcom/sec/internal/ims/core/RegistrationManagerInternal;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->lambda$onDeregistered$6(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$olMBm16rFSRo-Mbw_opQyyzDB30(Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/ims/core/RegisterTask;)I
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->lambda$buildTask$0(Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/ims/core/RegisterTask;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$uxShyayfPY9AiT1Xw6iKtGPkkVI(Lcom/sec/internal/ims/core/RegisterTask;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->lambda$triggerFullNetworkRegistration$1(Lcom/sec/internal/ims/core/RegisterTask;)Z

    move-result p0

    return p0
.end method

.method constructor <init>(Lcom/sec/internal/interfaces/ims/IImsFramework;Landroid/content/Context;Lcom/sec/internal/ims/core/PdnController;Ljava/util/List;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    .line 82
    invoke-direct {p0}, Lcom/sec/internal/ims/core/RegistrationManager;-><init>()V

    .line 83
    iput-object p2, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    const/4 v0, -0x1

    .line 84
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mEmmCause:I

    .line 85
    new-instance v0, Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "RegiMgr"

    const/16 v2, 0xbb8

    invoke-direct {v0, p2, v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 86
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 88
    iput-object p5, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 89
    iput-object p3, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    .line 90
    iput-object p4, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mSimManagers:Ljava/util/List;

    .line 91
    iput-object p6, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mCmcAccountManager:Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    .line 92
    iput-object p7, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRcsPolicyManager:Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;

    .line 93
    new-instance p1, Lcom/sec/internal/google/SecImsServiceConnector;

    invoke-direct {p1, p2}, Lcom/sec/internal/google/SecImsServiceConnector;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mSecImsServiceConnector:Lcom/sec/internal/google/SecImsServiceConnector;

    .line 95
    new-instance p1, Lcom/sec/internal/ims/settings/JibeRcsRegistration;

    invoke-direct {p1, p2}, Lcom/sec/internal/ims/settings/JibeRcsRegistration;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mJibeRcsRegistration:Lcom/sec/internal/interfaces/ims/core/IJibeRcsRegistration;

    .line 97
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mAuEmergencyProfile:Landroid/util/SparseArray;

    return-void
.end method

.method private compareSvcAndDoUpdateRegistration(Lcom/sec/internal/ims/core/RegisterTask;ZZILcom/sec/internal/constants/ims/os/NetworkEvent;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move/from16 v8, p4

    move-object/from16 v9, p5

    .line 989
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result v10

    .line 990
    invoke-virtual {v7, v8}, Lcom/sec/internal/ims/core/RegisterTask;->setRegistrationRat(I)V

    .line 992
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v11

    .line 993
    invoke-static {v11}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getImsRegistrations()Ljava/util/Map;

    move-result-object v1

    .line 994
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v2

    invoke-static {v2, v11}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfoId(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 993
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/sec/ims/ImsRegistration;

    const-string v13, "RegiMgr"

    const/4 v14, 0x0

    if-nez v12, :cond_0

    .line 996
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "compareSvcAndDoUpdateRegistration: reg is null for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v11, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return v14

    .line 1000
    :cond_0
    invoke-virtual {v12}, Lcom/sec/ims/ImsRegistration;->getServices()Ljava/util/Set;

    move-result-object v15

    .line 1001
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-static {v11}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(I)Z

    move-result v2

    const/4 v6, 0x1

    if-eqz v2, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v6

    goto :goto_0

    :cond_1
    move v2, v14

    :goto_0
    invoke-virtual {v0, v1, v8, v2, v11}, Lcom/sec/internal/ims/core/RegistrationManager;->getServiceForNetwork(Lcom/sec/ims/settings/ImsProfile;IZI)Ljava/util/Set;

    move-result-object v5

    .line 1002
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "compareSvcAndDoUpdateRegistration: registered service oldSvc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v11, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1004
    invoke-static {v5}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1005
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "empty service list : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v9, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    const/16 v1, 0x48

    .line 1006
    invoke-virtual {v7, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    .line 1007
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v1

    if-eq v11, v1, :cond_2

    .line 1008
    invoke-virtual {v0, v7, v6, v14}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    goto :goto_1

    .line 1010
    :cond_2
    invoke-virtual {v0, v7, v14, v14}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    :goto_1
    return v14

    .line 1015
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    const/16 v4, 0x12

    if-ne v1, v2, :cond_4

    if-eq v8, v10, :cond_4

    if-ne v10, v4, :cond_4

    iget-object v1, v0, Lcom/sec/internal/ims/core/RegistrationManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    .line 1016
    invoke-virtual {v1, v11}, Lcom/sec/internal/ims/core/PdnController;->isEpdgConnected(I)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "Force update registration due to RAT mismatch."

    .line 1017
    invoke-virtual {v7, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    move/from16 v16, v6

    goto :goto_2

    :cond_4
    move/from16 v16, p2

    :goto_2
    const-string v1, "datachannel"

    .line 1022
    invoke-interface {v15, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-interface {v5, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "compareSvcAndDoUpdateRegistration: Remove DataChannel service from newSvc"

    .line 1023
    invoke-static {v13, v11, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1024
    invoke-interface {v5, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_5
    move-object/from16 v1, p1

    move v2, v10

    move/from16 v3, p4

    move-object v4, v15

    move-object/from16 p2, v5

    move v14, v6

    move/from16 v6, v16

    .line 1027
    invoke-static/range {v1 .. v6}, Lcom/sec/internal/ims/core/RegistrationUtils;->determineUpdateRegistration(Lcom/sec/internal/ims/core/RegisterTask;IILjava/util/Set;Ljava/util/Set;Z)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1028
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1029
    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v4, p2

    .line 1030
    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 1031
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "compareSvcAndDoUpdateRegistration: Add to delete service"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v11, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1032
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_6
    move-object/from16 p2, v4

    goto :goto_3

    :cond_7
    move-object/from16 v4, p2

    .line 1035
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 1037
    iget-object v2, v0, Lcom/sec/internal/ims/core/RegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v2

    invoke-interface {v2, v1, v12}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->notifyRcsDeregistering(Ljava/util/Set;Lcom/sec/ims/ImsRegistration;)V

    .line 1039
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 1040
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/sec/ims/ImsRegistration;->setCurrentRat(I)V

    .line 1044
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v1

    invoke-direct {v0, v11, v7}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->isTryingCmcDualRegi(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isReadyToDualRegister(Z)Z

    move-result v1

    if-nez v1, :cond_c

    if-eqz v16, :cond_a

    .line 1046
    iput-boolean v14, v7, Lcom/sec/internal/ims/core/RegisterTask;->mHasForcedPendingUpdate:Z

    goto :goto_4

    .line 1048
    :cond_a
    iput-boolean v14, v7, Lcom/sec/internal/ims/core/RegisterTask;->mHasPendingUpdate:Z

    .line 1050
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->isEpdgHandoverInProgress()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1051
    invoke-virtual {v7, v14}, Lcom/sec/internal/ims/core/RegisterTask;->setHasPendingEpdgHandover(Z)V

    :cond_b
    move/from16 v1, p3

    .line 1053
    invoke-virtual {v7, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setImmediatePendingUpdate(Z)V

    .line 1054
    iget-object v0, v0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v1, 0x20

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_5
    const/4 v0, 0x0

    return v0

    .line 1058
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rat = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v9, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "), "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->getReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1059
    invoke-virtual {v0, v7, v1, v4}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->registerInternal(Lcom/sec/internal/ims/core/RegisterTask;Ljava/lang/String;Ljava/util/Set;)Z

    return v14

    .line 1062
    :cond_d
    invoke-static {v7, v10, v8}, Lcom/sec/internal/ims/core/RegistrationUtils;->skipReRegi(Lcom/sec/internal/ims/core/RegisterTask;II)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1063
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "compareSvcAndDoUpdateRegistration: handle ImplicitReRegi. previousRat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", rat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v11, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1064
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 1065
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getEpdgStatus()Z

    move-result v2

    if-nez v2, :cond_e

    const/16 v2, 0x12

    if-eq v8, v2, :cond_e

    if-eq v10, v2, :cond_e

    .line 1067
    invoke-virtual {v1, v8}, Lcom/sec/ims/ImsRegistration;->setCurrentRat(I)V

    if-eq v8, v10, :cond_e

    const-string v2, "compareSvcAndDoUpdateRegistration: handle ImplicitReRegi. notify Ims Phone"

    .line 1069
    invoke-static {v13, v11, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1070
    invoke-static {}, Lcom/sec/internal/google/SecImsNotifier;->getInstance()Lcom/sec/internal/google/SecImsNotifier;

    move-result-object v2

    new-instance v3, Lcom/sec/ims/ImsRegistrationError;

    invoke-direct {v3}, Lcom/sec/ims/ImsRegistrationError;-><init>()V

    invoke-virtual {v2, v1, v14, v3}, Lcom/sec/internal/google/SecImsNotifier;->notifyImsRegistration(Lcom/sec/ims/ImsRegistration;ZLcom/sec/ims/ImsRegistrationError;)V

    .line 1071
    iget-object v2, v0, Lcom/sec/internal/ims/core/RegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v2

    new-instance v3, Lcom/sec/ims/ImsRegistrationError;

    invoke-direct {v3}, Lcom/sec/ims/ImsRegistrationError;-><init>()V

    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistrationError;->getSipErrorCode()I

    move-result v3

    invoke-interface {v2, v1, v14, v3}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->notifyImsRegistration(Lcom/sec/ims/ImsRegistration;ZI)V

    .line 1075
    :cond_e
    invoke-virtual {v0, v11}, Lcom/sec/internal/ims/core/RegistrationManager;->getImsIconManager(I)Lcom/sec/internal/ims/core/ImsIconManager;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 1076
    iget-object v1, v0, Lcom/sec/internal/ims/core/RegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    const-string/jumbo v2, "remove_icon_nosvc"

    const/4 v3, 0x0

    invoke-interface {v1, v11, v2, v3}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getBoolean(ILjava/lang/String;Z)Z

    move-result v1

    .line 1077
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "compareSvcAndDoUpdateRegistration: updateRegistrationIcon: remove_icon_nosvc: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v11, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-eqz v1, :cond_f

    .line 1080
    invoke-virtual {v0, v11}, Lcom/sec/internal/ims/core/RegistrationManager;->getImsIconManager(I)Lcom/sec/internal/ims/core/ImsIconManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/ImsIconManager;->updateRegistrationIcon()V

    :cond_f
    const-string v0, ""

    .line 1084
    invoke-virtual {v7, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    goto/16 :goto_5
.end method

.method private isSingleReg(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;I)Z
    .locals 1

    .line 261
    invoke-static {p2}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result p2

    .line 262
    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;->SINGLE_REG:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;->DUAL_WHEN_ROAMING_REG:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 263
    invoke-interface {p0, p2}, Lcom/sec/internal/helper/os/ITelephonyManager;->isNetworkRoaming(I)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isTryingCmcDualRegi(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z
    .locals 0

    .line 1915
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mCmcAccountManager:Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getOppositeSimSlot(I)I

    move-result p1

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->getCmcRegisterTask(I)Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1916
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object p0

    sget-object p1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-eq p0, p1, :cond_0

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/internal/ims/core/RegistrationUtils;->isCmcProfile(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$buildTask$0(Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/ims/core/RegisterTask;)I
    .locals 0

    .line 257
    iget-object p1, p1, Lcom/sec/internal/ims/core/RegisterTask;->mProfile:Lcom/sec/ims/settings/ImsProfile;

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getPriority()I

    move-result p1

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegisterTask;->mProfile:Lcom/sec/ims/settings/ImsProfile;

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getPriority()I

    move-result p0

    sub-int/2addr p1, p0

    return p1
.end method

.method private synthetic lambda$onDeregistered$6(I)V
    .locals 2

    .line 1703
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "onDeregistered: All de-registered. Reset tasks after profile update"

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1704
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->clearTask(I)V

    .line 1706
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->onImsProfileUpdateDone(I)V

    return-void
.end method

.method private static synthetic lambda$triggerFullNetworkRegistration$1(Lcom/sec/internal/ims/core/RegisterTask;)Z
    .locals 1

    .line 884
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object p0

    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$triggerFullNetworkRegistration$2(Lcom/sec/ims/ImsRegistration;)Ljava/lang/Boolean;
    .locals 1

    const-string v0, "im"

    .line 886
    invoke-virtual {p0, v0}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$triggerFullNetworkRegistration$3(Lcom/sec/internal/ims/core/RegisterTask;)Z
    .locals 1

    .line 885
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/ims/core/RegistrationManagerInternal$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal$$ExternalSyntheticLambda3;-><init>()V

    .line 886
    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$triggerFullNetworkRegistration$4(I)Lcom/sec/internal/ims/core/RegisterTask;
    .locals 2

    const-string v0, "RegiMgr"

    const-string/jumbo v1, "triggerFullNetworkRegistration: Not registered for chat."

    .line 888
    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 889
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryRegister(I)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic lambda$triggerFullNetworkRegistration$5(IILcom/sec/internal/ims/core/RegisterTask;)V
    .locals 2

    .line 894
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "triggerFullNetworkRegistration: error code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr"

    invoke-static {v1, p0, p2, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    .line 895
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p0

    new-instance p2, Lcom/sec/ims/util/SipError;

    invoke-direct {p2, p1}, Lcom/sec/ims/util/SipError;-><init>(I)V

    const-string p1, "im"

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onSipError(Ljava/lang/String;Lcom/sec/ims/util/SipError;)Lcom/sec/ims/util/SipError;

    return-void
.end method

.method private needVolteOnlyRegForDualRcs(I)Z
    .locals 1

    .line 1216
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isDualIMS()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->needToCheckOmcCodeAndSimMno(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->dualRcsPolicyCase(Landroid/content/Context;I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private removeAdhocProfile(Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V
    .locals 2

    .line 1825
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result p0

    invoke-static {p0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getProfiles()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/settings/ImsProfile;

    .line 1826
    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v0

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_2

    .line 1833
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result p0

    if-nez p0, :cond_2

    .line 1834
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result p0

    invoke-static {p0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getExtendedProfiles()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 1835
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDeregisterd: Remove RegiTask for ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr"

    invoke-static {v1, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1836
    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->remove(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method private updateSuspended(Lcom/sec/internal/ims/core/RegisterTask;ZI)Z
    .locals 2

    const/4 p0, 0x1

    const/4 v0, 0x0

    if-nez p3, :cond_2

    .line 117
    iget-boolean p3, p1, Lcom/sec/internal/ims/core/RegisterTask;->mSuspended:Z

    if-ne p2, p3, :cond_0

    return v0

    .line 120
    :cond_0
    iput-boolean p2, p1, Lcom/sec/internal/ims/core/RegisterTask;->mSuspended:Z

    .line 121
    iget-boolean p2, p1, Lcom/sec/internal/ims/core/RegisterTask;->mSuspendByIrat:Z

    if-nez p2, :cond_1

    iget-boolean p1, p1, Lcom/sec/internal/ims/core/RegisterTask;->mSuspendBySnapshot:Z

    if-eqz p1, :cond_8

    :cond_1
    return v0

    :cond_2
    if-ne p3, p0, :cond_5

    .line 125
    iget-boolean p3, p1, Lcom/sec/internal/ims/core/RegisterTask;->mSuspendByIrat:Z

    if-ne p2, p3, :cond_3

    return v0

    .line 128
    :cond_3
    iput-boolean p2, p1, Lcom/sec/internal/ims/core/RegisterTask;->mSuspendByIrat:Z

    .line 129
    iget-boolean p2, p1, Lcom/sec/internal/ims/core/RegisterTask;->mSuspended:Z

    if-nez p2, :cond_4

    iget-boolean p1, p1, Lcom/sec/internal/ims/core/RegisterTask;->mSuspendBySnapshot:Z

    if-eqz p1, :cond_8

    :cond_4
    return v0

    :cond_5
    const/4 v1, 0x2

    if-ne p3, v1, :cond_8

    .line 133
    iget-boolean p3, p1, Lcom/sec/internal/ims/core/RegisterTask;->mSuspendBySnapshot:Z

    if-ne p2, p3, :cond_6

    return v0

    .line 136
    :cond_6
    iput-boolean p2, p1, Lcom/sec/internal/ims/core/RegisterTask;->mSuspendBySnapshot:Z

    .line 137
    iget-boolean p2, p1, Lcom/sec/internal/ims/core/RegisterTask;->mSuspended:Z

    if-nez p2, :cond_7

    iget-boolean p1, p1, Lcom/sec/internal/ims/core/RegisterTask;->mSuspendByIrat:Z

    if-eqz p1, :cond_8

    :cond_7
    return v0

    :cond_8
    return p0
.end method


# virtual methods
.method protected buildTask(I)V
    .locals 16

    move-object/from16 v9, p0

    move/from16 v10, p1

    const-string v0, "buildTask:"

    const-string v1, "RegiMgr"

    .line 172
    invoke-static {v1, v10, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 174
    invoke-static/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->hasLoadedProfile(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "buildTask: no profile found."

    .line 175
    invoke-static {v1, v10, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 179
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v11

    if-nez v11, :cond_1

    return-void

    .line 184
    :cond_1
    iget-object v0, v9, Lcom/sec/internal/ims/core/RegistrationManager;->mSimManagers:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    if-nez v12, :cond_2

    return-void

    .line 189
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 193
    invoke-static/range {p1 .. p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getProfiles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/settings/ImsProfile;

    .line 194
    invoke-static/range {p1 .. p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getExtendedProfiles()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/settings/ImsProfile;

    if-eqz v3, :cond_3

    .line 196
    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getExtImpuList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/ims/settings/ImsProfile;->setExtImpuList(Ljava/util/List;)V

    .line 198
    :cond_3
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 202
    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getExtendedProfiles()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 203
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/settings/ImsProfile;

    invoke-virtual {v9, v3}, Lcom/sec/internal/ims/core/RegistrationManager;->isAdhocProfile(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 204
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/settings/ImsProfile;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 209
    :cond_6
    invoke-virtual {v11}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/RegisterTask;

    .line 210
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 214
    :cond_7
    iget-object v1, v9, Lcom/sec/internal/ims/core/RegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    const-string v2, "default_rcs_volte_registration"

    const/4 v3, -0x1

    .line 215
    invoke-interface {v1, v10, v2, v3}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getInt(ILjava/lang/String;I)I

    move-result v1

    .line 214
    invoke-static {v1}, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;->valueOf(I)Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;

    move-result-object v1

    .line 216
    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;->IMS_PROFILE_BASED_REG:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;

    if-eq v1, v2, :cond_9

    .line 217
    iget-object v2, v9, Lcom/sec/internal/ims/core/RegistrationManager;->mRcsPolicyManager:Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;

    invoke-interface {v2, v10}, Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;->getRegiConfig(I)Lcom/sec/internal/helper/RegiConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/helper/RegiConfig;->getRcsVolteSingleReg()I

    move-result v2

    if-eq v2, v3, :cond_8

    goto :goto_3

    .line 218
    :cond_8
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;->getValue()I

    move-result v2

    :goto_3
    invoke-static {v2}, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;->valueOf(I)Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;

    move-result-object v1

    :cond_9
    move-object v13, v1

    .line 220
    invoke-static/range {p1 .. p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v1

    invoke-virtual {v1, v13}, Lcom/sec/internal/ims/core/SlotBasedConfig;->setRcsVolteSingleRegistration(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;)V

    .line 222
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    const/4 v0, 0x0

    move-object v15, v0

    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/sec/ims/settings/ImsProfile;

    .line 226
    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_5

    .line 230
    :cond_a
    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getEnableStatus()I

    move-result v0

    const/4 v3, 0x2

    const-string v4, "buildTask: ["

    if-eq v0, v3, :cond_b

    .line 231
    iget-object v0, v9, Lcom/sec/internal/ims/core/RegistrationManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] - Disabled profile"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    goto/16 :goto_5

    .line 236
    :cond_b
    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;->IMS_PROFILE_BASED_REG:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;

    if-eq v13, v0, :cond_c

    invoke-direct {v9, v13, v10}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->isSingleReg(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 237
    invoke-static {v2}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsOnly(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, v9, Lcom/sec/internal/ims/core/RegistrationManager;->mConfigModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {v0, v10}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->isValidConfigDb(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 239
    iget-object v0, v9, Lcom/sec/internal/ims/core/RegistrationManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] - RcsVolteSingleRegistration"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    move-object v15, v2

    goto :goto_4

    .line 243
    :cond_c
    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    iget-object v3, v9, Lcom/sec/internal/ims/core/RegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    const-string v5, "enable_gba"

    .line 244
    invoke-interface {v3, v10, v5, v1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getInt(ILjava/lang/String;I)I

    move-result v1

    invoke-interface {v12}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isGBASupported()Z

    move-result v3

    .line 243
    invoke-static {v10, v2, v0, v1, v3}, Lcom/sec/internal/ims/core/RegistrationUtils;->isSatisfiedCarrierRequirement(ILcom/sec/ims/settings/ImsProfile;Lcom/sec/internal/constants/Mno;IZ)Z

    move-result v0

    if-nez v0, :cond_d

    .line 245
    iget-object v0, v9, Lcom/sec/internal/ims/core/RegistrationManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] - Unsatisfying carrier requirement"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    goto :goto_5

    .line 249
    :cond_d
    new-instance v8, Lcom/sec/internal/ims/core/RegisterTask;

    iget-object v3, v9, Lcom/sec/internal/ims/core/RegistrationManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    iget-object v4, v9, Lcom/sec/internal/ims/core/RegistrationManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget-object v5, v9, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    iget-object v6, v9, Lcom/sec/internal/ims/core/RegistrationManager;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    iget-object v7, v9, Lcom/sec/internal/ims/core/RegistrationManager;->mConfigModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    move-object v0, v8

    move-object v1, v2

    move-object/from16 v2, p0

    move-object v9, v8

    move/from16 v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/sec/internal/ims/core/RegisterTask;-><init>(Lcom/sec/ims/settings/ImsProfile;Lcom/sec/internal/ims/core/RegistrationManagerInternal;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/ims/core/PdnController;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;Lcom/sec/internal/interfaces/ims/config/IConfigModule;I)V

    .line 250
    invoke-virtual {v11, v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    move-object/from16 v9, p0

    goto/16 :goto_4

    :cond_e
    if-eqz v15, :cond_f

    .line 254
    invoke-virtual {v11, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0, v15}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->enableRcsOverIms(Lcom/sec/ims/settings/ImsProfile;)V

    .line 257
    :cond_f
    new-instance v0, Lcom/sec/internal/ims/core/RegistrationManagerInternal$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v11, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method protected checkForTryRegister(Lcom/sec/internal/ims/core/RegisterTask;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    .line 394
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v11

    .line 395
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v12

    .line 396
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkForTryRegister id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v8, "RegiMgr"

    invoke-static {v8, v12, v10, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    .line 398
    iget-object v1, v0, Lcom/sec/internal/ims/core/RegistrationManager;->mUserEvtCtr:Lcom/sec/internal/ims/core/UserEventController;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/UserEventController;->isShuttingDown()Z

    move-result v1

    const/4 v13, 0x0

    if-eqz v1, :cond_0

    const-string v0, "Device is getting shutdown"

    .line 399
    invoke-static {v8, v12, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v13

    .line 403
    :cond_0
    invoke-static {v12}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 404
    invoke-virtual {v1, v10}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_4

    .line 410
    :cond_1
    iget-object v1, v0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    iget-object v2, v0, Lcom/sec/internal/ims/core/RegistrationManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget-object v3, v0, Lcom/sec/internal/ims/core/RegistrationManager;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-static {v1, v10, v2, v3}, Lcom/sec/internal/ims/core/RegistrationRatDecider;->getDecidedRat(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;)I

    move-result v14

    .line 412
    invoke-virtual {v10, v14}, Lcom/sec/internal/ims/core/RegisterTask;->setRegistrationRat(I)V

    .line 414
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v1

    invoke-direct {v0, v12, v10}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->isTryingCmcDualRegi(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isReadyToDualRegister(Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 415
    iget-object v0, v0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const-wide/16 v1, 0x9c4

    invoke-virtual {v0, v12, v1, v2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(IJ)V

    return v13

    .line 419
    :cond_2
    iget-object v1, v0, Lcom/sec/internal/ims/core/RegistrationManager;->mSimManagers:Ljava/util/List;

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    if-nez v9, :cond_3

    .line 421
    sget-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->SIMMANAGER_NULL:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v0

    invoke-virtual {v10, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    return v13

    .line 425
    :cond_3
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->AIRPLANE_MODE:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    iget-object v2, v0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v13}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result v1

    sget v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->AIRPLANE_MODE_ON:I

    const/4 v15, 0x1

    if-ne v1, v2, :cond_4

    move v3, v15

    goto :goto_0

    :cond_4
    move v3, v13

    .line 426
    :goto_0
    iget-object v1, v0, Lcom/sec/internal/ims/core/RegistrationManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->isNetworkRoaming()Z

    move-result v4

    .line 427
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkInitialRegistrationIsReady: APM ON ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "], Roamimg ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v12, v10, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    .line 428
    invoke-virtual {v0, v12}, Lcom/sec/internal/ims/core/RegistrationManager;->getPendingRegistration(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v9}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasNoSim()Z

    move-result v5

    iget-object v6, v0, Lcom/sec/internal/ims/core/RegistrationManager;->mRcsPolicyManager:Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;

    iget-object v7, v0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v7}, Lcom/sec/internal/ims/core/RegistrationUtils;->checkInitialRegistrationIsReady(Lcom/sec/internal/ims/core/RegisterTask;Ljava/util/List;ZZZLcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;Lcom/sec/internal/ims/core/RegistrationManagerHandler;)Z

    move-result v1

    if-nez v1, :cond_5

    return v13

    .line 433
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v1

    invoke-interface {v1, v14}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isReadyToRegister(I)Z

    move-result v1

    const/16 v2, 0xb

    if-nez v1, :cond_8

    const-string v1, "checkForTryRegister: isReadyToRegister = false"

    .line 434
    invoke-static {v8, v12, v10, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    .line 435
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->isKeepPdn()Z

    move-result v1

    if-nez v1, :cond_6

    .line 436
    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v1, v3}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 437
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v1

    if-ne v1, v2, :cond_6

    const-string/jumbo v1, "stopPdnConnectivity. IMS PDN should not be established in this case."

    .line 438
    invoke-static {v8, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v1

    invoke-interface {v0, v1, v10}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 440
    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {v10, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 445
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->getRegiFailReason()I

    move-result v0

    sget-object v1, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->UNKNOWN:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v1

    if-ne v0, v1, :cond_7

    .line 446
    sget-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->GVN_NOT_READY:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v0

    invoke-virtual {v10, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    :cond_7
    return v13

    .line 452
    :cond_8
    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->RESOLVED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONFIGURED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v1, v3, v4, v5}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v3

    invoke-virtual {v10, v3}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 454
    iget-object v1, v0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v12, v9}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsAvailable(Landroid/content/Context;ILcom/sec/internal/interfaces/ims/core/ISimManager;)Z

    move-result v3

    iget-object v2, v0, Lcom/sec/internal/ims/core/RegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 455
    invoke-static {v2, v12}, Lcom/sec/internal/ims/core/RegistrationUtils;->isCdmConfigured(Lcom/sec/internal/interfaces/ims/IImsFramework;I)Z

    move-result v4

    .line 456
    invoke-virtual {v0, v12}, Lcom/sec/internal/ims/core/RegistrationManager;->getOmadmState(I)Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    move-result-object v2

    sget-object v5, Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;->FINISHED:Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    if-eq v2, v5, :cond_9

    move v5, v15

    goto :goto_1

    :cond_9
    move v5, v13

    :goto_1
    iget-object v2, v0, Lcom/sec/internal/ims/core/RegistrationManager;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-eqz v2, :cond_a

    .line 457
    invoke-interface {v2, v12}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->hasEmergencyCall(I)Z

    move-result v2

    if-eqz v2, :cond_a

    move v6, v15

    goto :goto_2

    :cond_a
    move v6, v13

    :goto_2
    iget-object v7, v0, Lcom/sec/internal/ims/core/RegistrationManager;->mRcsPolicyManager:Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;

    iget-object v8, v0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object v9, v0, Lcom/sec/internal/ims/core/RegistrationManager;->mNetEvtCtr:Lcom/sec/internal/ims/core/NetworkEventController;

    move-object/from16 v2, p1

    .line 454
    invoke-static/range {v1 .. v9}, Lcom/sec/internal/ims/core/RegistrationUtils;->checkConfigForInitialRegistration(Landroid/content/Context;Lcom/sec/internal/ims/core/RegisterTask;ZZZZLcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;Lcom/sec/internal/ims/core/RegistrationManagerHandler;Lcom/sec/internal/ims/core/NetworkEventController;)Z

    move-result v1

    if-nez v1, :cond_b

    return v13

    .line 462
    :cond_b
    invoke-static {v11, v14}, Lcom/sec/internal/ims/core/RegistrationUtils;->selectPdnType(Lcom/sec/ims/settings/ImsProfile;I)I

    move-result v1

    .line 463
    invoke-virtual {v10, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setPdnType(I)V

    .line 465
    invoke-static {v12}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEur(I)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_3

    :cond_c
    move v15, v13

    :goto_3
    invoke-virtual {v0, v11, v14, v15, v12}, Lcom/sec/internal/ims/core/RegistrationManager;->getServiceForNetwork(Lcom/sec/ims/settings/ImsProfile;IZI)Ljava/util/Set;

    move-result-object v2

    .line 466
    invoke-virtual {v0, v10, v2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->checkServicesForInitialRegistration(Lcom/sec/internal/ims/core/RegisterTask;Ljava/util/Set;)Z

    move-result v3

    if-nez v3, :cond_d

    return v13

    .line 470
    :cond_d
    invoke-virtual {v0, v10, v14, v1, v2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryInitialRegistration(Lcom/sec/internal/ims/core/RegisterTask;IILjava/util/Set;)Z

    move-result v0

    return v0

    .line 471
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v3, v4, :cond_f

    const-string/jumbo v0, "tryRegister: already registering."

    .line 472
    invoke-static {v8, v12, v10, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    .line 473
    sget-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->ALREADY_REGISTERING:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v0

    invoke-virtual {v10, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    return v13

    .line 475
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v3, v4, :cond_10

    .line 476
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/Mno;->TELEFONICA_UK:Lcom/sec/internal/constants/Mno;

    if-ne v3, v4, :cond_10

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->isKeepPdn()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 477
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v3

    if-ne v3, v2, :cond_10

    .line 478
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result v2

    if-nez v2, :cond_10

    const-string/jumbo v2, "stopPdnConnectivity, Network Changing to 3G/2G during Task:CONNECTING"

    .line 479
    invoke-static {v8, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v2

    invoke-interface {v0, v2, v10}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 481
    invoke-virtual {v10, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    return v13

    :cond_10
    return v15

    :cond_11
    :goto_4
    const-string v0, "checkForTryRegister UNKNOWN task. (it should be removed task)"

    .line 405
    invoke-static {v8, v12, v10, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    return v13
.end method

.method checkServicesForInitialRegistration(Lcom/sec/internal/ims/core/RegisterTask;Ljava/util/Set;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/core/RegisterTask;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 706
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v0

    .line 708
    invoke-static {p2}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result p2

    const/4 v1, 0x1

    const-string v2, "RegiMgr"

    const/4 v3, 0x0

    if-eqz p2, :cond_5

    .line 709
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": no ims service for current rat"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, v0, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 711
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManager;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object p2

    .line 712
    sget-object v4, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->AIRPLANE_MODE:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5, v3}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result v4

    sget v5, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->AIRPLANE_MODE_ON:I

    if-ne v4, v5, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-nez v1, :cond_2

    if-eqz p2, :cond_1

    .line 714
    iget-boolean v4, p2, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    if-nez v4, :cond_1

    .line 715
    invoke-virtual {p0, p1, v3}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->notifyImsNotAvailable(Lcom/sec/internal/ims/core/RegisterTask;Z)V

    .line 718
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/Mno;->CTC:Lcom/sec/internal/constants/Mno;

    sget-object v6, Lcom/sec/internal/constants/Mno;->CTCMO:Lcom/sec/internal/constants/Mno;

    filled-new-array {v5, v6}, [Lcom/sec/internal/constants/Mno;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManager;->getImsIconManager(I)Lcom/sec/internal/ims/core/ImsIconManager;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 719
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v4

    const/16 v5, 0xb

    if-ne v4, v5, :cond_2

    const-string v4, "no ims service. fresh icon once."

    .line 720
    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManager;->getImsIconManager(I)Lcom/sec/internal/ims/core/ImsIconManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/ImsIconManager;->updateRegistrationIcon()V

    :cond_2
    if-eqz p2, :cond_4

    .line 724
    iget-boolean v2, p2, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    if-nez v2, :cond_4

    .line 725
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    sget-object v4, Lcom/sec/internal/constants/Mno;->OPTUS:Lcom/sec/internal/constants/Mno;

    filled-new-array {v4}, [Lcom/sec/internal/constants/Mno;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget p2, p2, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    const/16 v2, 0x14

    if-ne p2, v2, :cond_3

    if-eqz v1, :cond_3

    return v3

    .line 728
    :cond_3
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result p2

    invoke-interface {p0, p2, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 729
    sget-object p0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 733
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",FILTERED ALL:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const p1, 0x1101000b

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    return v3

    .line 736
    :cond_5
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getRegistrationRat()I

    move-result p2

    if-nez p2, :cond_6

    const-string/jumbo p0, "tryRegister: crap. No service?"

    .line 739
    invoke-static {v2, v0, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 740
    sget-object p0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->NETWORK_UNKNOWN:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    return v3

    .line 745
    :cond_6
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v4

    invoke-interface {v4, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isLocationInfoLoaded(I)Z

    move-result p2

    if-nez p2, :cond_7

    const-string p0, "location is not loaded"

    .line 746
    invoke-static {v2, v0, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 747
    sget-object p0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->LOCATION_NOT_LOADED:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    return v3

    .line 752
    :cond_7
    invoke-static {v3, p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPriorityRegiedTask(ZLcom/sec/internal/interfaces/ims/core/IRegisterTask;)Ljava/util/List;

    move-result-object p1

    .line 753
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_9

    .line 754
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deregi found lowerPriority task "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, v0, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 755
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/core/RegisterTask;

    const/16 v0, 0x2e

    .line 756
    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    const-string v0, "deregi found lowerPriority task"

    .line 757
    invoke-interface {p0, p2, v3, v3, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->deregister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZLjava/lang/String;)V

    goto :goto_1

    :cond_8
    return v3

    :cond_9
    return v1
.end method

.method protected clearTask(I)V
    .locals 7

    const-string v0, "clearTask:"

    const-string v1, "RegiMgr"

    .line 267
    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 268
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isSoftphoneEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo p0, "skip clearTask for softphone"

    .line 269
    invoke-static {v1, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 273
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 278
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 279
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/core/RegisterTask;

    .line 280
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/internal/ims/core/RegistrationUtils;->isCmcProfile(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v6, 0x2a

    invoke-virtual {v5, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_0

    .line 283
    :cond_3
    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v6, 0x16

    invoke-virtual {v5, v6, v4}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 284
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v5

    const-string v6, "SimRefresh"

    invoke-interface {v5, v6}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->stopTimsTimer(Ljava/lang/String;)V

    .line 285
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v5

    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->clear()V

    .line 286
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v5

    invoke-interface {p0, v5, v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 287
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Remove task: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, p1, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 288
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    invoke-interface {v5, v4}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->removeUserAgent(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 291
    iget-object v5, v4, Lcom/sec/internal/ims/core/RegisterTask;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v6, Lcom/sec/internal/constants/Mno;->TMOBILE:Lcom/sec/internal/constants/Mno;

    if-ne v5, v6, :cond_2

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v5

    const/16 v6, 0xb

    if-ne v5, v6, :cond_2

    .line 292
    invoke-virtual {v4}, Lcom/sec/internal/ims/core/RegisterTask;->stopDailyReRegisterTimer()V

    goto :goto_0

    .line 295
    :cond_4
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->removeAll(Ljava/util/Collection;)Z

    .line 297
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mJibeRcsRegistration:Lcom/sec/internal/interfaces/ims/core/IJibeRcsRegistration;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/IJibeRcsRegistration;->clearTasks(I)V

    return-void
.end method

.method protected deregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Z)V
    .locals 4

    .line 1319
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v0

    .line 1320
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deregisterInternal: local="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getReason()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, p1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    .line 1321
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v2, 0x91

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1322
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1324
    :cond_0
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getUserAgent()Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v1

    if-nez v1, :cond_4

    const-string p2, "deregister: ua is null"

    const-string v1, "RegiMgr"

    .line 1325
    invoke-static {v1, v0, p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    .line 1326
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object p2

    sget-object v2, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-eq p2, v2, :cond_1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p0, "deregister: this task will be deleted. do nothing"

    .line 1327
    invoke-static {v1, v0, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    return-void

    .line 1330
    :cond_1
    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPdnType()I

    move-result v1

    invoke-virtual {p2, v1, p1}, Lcom/sec/internal/ims/core/PdnController;->isConnected(ILcom/sec/internal/interfaces/ims/core/PdnEventListener;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1331
    sget-object p2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-interface {p1, p2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    goto :goto_0

    .line 1333
    :cond_2
    sget-object p2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-interface {p1, p2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 1335
    :goto_0
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object p1

    sget-object p2, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-ne p1, p2, :cond_3

    .line 1336
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const-wide/16 p1, 0xc8

    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(IJ)V

    goto :goto_1

    .line 1338
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const-wide/16 p1, 0x1f4

    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(IJ)V

    :goto_1
    return-void

    .line 1343
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    invoke-interface {v0, p1, p2}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->deregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Z)V

    const-string p2, ""

    .line 1344
    invoke-interface {p1, p2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setReason(Ljava/lang/String;)V

    .line 1346
    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->setDeregisterTimeout(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 1348
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object p2

    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-eq p2, v0, :cond_5

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object p2

    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-eq p2, v0, :cond_5

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object p2

    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->EMERGENCY:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne p2, v0, :cond_6

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->needKeepEmergencyTask()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 1349
    :cond_5
    sget-object p2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->DEREGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-interface {p1, p2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 1352
    :cond_6
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 p2, 0x64

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    return-void
.end method

.method getOwnCapabilities(Lcom/sec/ims/settings/ImsProfile;I)Lcom/sec/ims/options/Capabilities;
    .locals 6

    const-string v0, "getOwnCapabilities:"

    const-string v1, "RegiMgr"

    .line 1223
    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1225
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getCapabilityDiscoveryModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    move-result-object v0

    .line 1226
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mConfigModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {v2, p2}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getRcsConfVersion(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1228
    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getNeedAutoconfig()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    .line 1229
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/base/IServiceModule;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    .line 1230
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    .line 1231
    invoke-static {v2, p2}, Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils;->isRcsEnabledinSettings(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1232
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isDualRcsReg()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, p2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->needVolteOnlyRegForDualRcs(I)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v2

    if-ne p2, v2, :cond_2

    .line 1233
    :cond_0
    invoke-interface {v0, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->getOwnCapabilitiesBase(I)Lcom/sec/ims/options/Capabilities;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p0, "getOwnCapabilities: ownCap is null, create empty Capabilities"

    .line 1235
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    new-instance v0, Lcom/sec/ims/options/Capabilities;

    invoke-direct {v0}, Lcom/sec/ims/options/Capabilities;-><init>()V

    goto :goto_0

    .line 1237
    :cond_1
    invoke-virtual {v0}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide v2

    sget v4, Lcom/sec/ims/options/Capabilities;->FEATURE_OFFLINE_RCS_USER:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    const-string v2, "getOwnCapabilities: no feature present, check for VoLTE only features"

    .line 1238
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->setVolteFeatures(Lcom/sec/ims/options/Capabilities;Lcom/sec/ims/settings/ImsProfile;I)Lcom/sec/ims/options/Capabilities;

    move-result-object v0

    goto :goto_0

    .line 1243
    :cond_2
    new-instance v0, Lcom/sec/ims/options/Capabilities;

    invoke-direct {v0}, Lcom/sec/ims/options/Capabilities;-><init>()V

    .line 1244
    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->setVolteFeatures(Lcom/sec/ims/options/Capabilities;Lcom/sec/ims/settings/ImsProfile;I)Lcom/sec/ims/options/Capabilities;

    move-result-object v0

    :cond_3
    :goto_0
    return-object v0
.end method

.method handleSolicitedDeregistration(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Lcom/sec/ims/util/SipError;)V
    .locals 3

    .line 1741
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isKeepPdn()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1745
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/Mno;->GCF:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getPdn()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ims"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1746
    invoke-interface {p1, p2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getDeregiCause(Lcom/sec/ims/util/SipError;)I

    move-result p2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    .line 1747
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getDeregiReason()I

    move-result p2

    const/16 v0, 0x49

    if-ne p2, v0, :cond_1

    .line 1748
    :cond_0
    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v0, 0x85

    invoke-virtual {p2, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1750
    :cond_1
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPdnType()I

    move-result p2

    invoke-interface {p0, p2, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 1751
    sget-object p2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-interface {p1, p2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 1752
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isRcsOnly()Z

    move-result p2

    if-nez p2, :cond_3

    .line 1753
    :cond_2
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result p2

    sget-object v0, Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;->IDLE:Lcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;

    invoke-virtual {p0, p2, v0}, Lcom/sec/internal/ims/core/RegistrationManager;->setOmadmState(ILcom/sec/internal/ims/core/RegistrationManager$OmadmConfigState;)V

    .line 1762
    :cond_3
    :goto_0
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getDeregiReason()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryNextRegistration(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;I)V

    return-void
.end method

.method handleUnSolicitedDeregistration(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Lcom/sec/ims/util/SipError;J)V
    .locals 4

    .line 1766
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDeregistered: registration error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    .line 1767
    invoke-static {p2}, Lcom/sec/internal/constants/ims/SipErrorBase;->isRegiTerminatedError(Lcom/sec/ims/util/SipError;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1769
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0, p2, p3, p4, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onRegistrationTerminated(Lcom/sec/ims/util/SipError;JZ)V

    goto :goto_0

    .line 1772
    :cond_0
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0, p2, p3, p4, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onRegistrationError(Lcom/sec/ims/util/SipError;JZ)V

    .line 1774
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPdnType()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Lcom/sec/internal/ims/core/PdnController;->isConnected(ILcom/sec/internal/interfaces/ims/core/PdnEventListener;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 1775
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->resetPcscfList()V

    goto :goto_1

    .line 1778
    :cond_1
    invoke-interface {p1, v1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setKeepPdn(Z)V

    :goto_1
    return-void
.end method

.method public initSequentially()V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mNetEvtCtr:Lcom/sec/internal/ims/core/NetworkEventController;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/NetworkEventController;->setRegistrationHandler(Lcom/sec/internal/ims/core/RegistrationManagerHandler;)V

    .line 108
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->init()V

    .line 111
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 112
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mlegacyPhoneCount:I

    return-void
.end method

.method makeThrottle(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V
    .locals 1

    .line 1606
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result p0

    const/16 v0, 0x8

    if-ne p0, v0, :cond_0

    const-string p0, "RegiMgr"

    const-string v0, "onRegisterError: don\'t retry register"

    .line 1608
    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 1609
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->makeThrottle()V

    :cond_0
    return-void
.end method

.method protected abstract notifyImsNotAvailable(Lcom/sec/internal/ims/core/RegisterTask;Z)V
.end method

.method protected abstract notifyImsNotAvailable(Lcom/sec/internal/ims/core/RegisterTask;ZZ)V
.end method

.method protected abstract onDelayedDeregister(Lcom/sec/internal/ims/core/RegisterTask;)V
.end method

.method protected onDeregistered(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Lcom/sec/ims/util/SipError;JZZ)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move/from16 v6, p5

    move/from16 v1, p6

    .line 1614
    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v2

    .line 1615
    iget-object v3, v0, Lcom/sec/internal/ims/core/RegistrationManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDeregistered: rat="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getRegistrationRat()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", error="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", retryAfterMs="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v8, p3

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ", isRequestedDeregi="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", pcscfGone="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", reason="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1617
    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getDeregiReason()I

    move-result v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", keepPdn="

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isKeepPdn()Z

    move-result v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1615
    invoke-virtual {v3, v2, v7, v4}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    .line 1619
    invoke-static {}, Lcom/sec/internal/helper/os/ImsGateConfig;->isGateEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "GATE"

    const-string v4, "<GATE-M>IMS_DISABLED</GATE-M>"

    .line 1621
    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 1624
    :cond_0
    invoke-static {v2}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v3

    if-nez v3, :cond_1

    return-void

    .line 1628
    :cond_1
    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v4

    const/4 v10, 0x1

    if-eqz v4, :cond_2

    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v4

    sget-object v11, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v4, v11, :cond_2

    .line 1632
    invoke-interface {v7, v10}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setIsRefreshReg(Z)V

    .line 1636
    :cond_2
    sget-object v4, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->OFFSET_DEREGI_REASON:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v4

    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getDeregiReason()I

    move-result v11

    add-int/2addr v4, v11

    invoke-interface {v7, v4}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setRegiFailReason(I)V

    .line 1637
    invoke-virtual/range {p0 .. p1}, Lcom/sec/internal/ims/core/RegistrationManager;->reportRegistrationStatus(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 1638
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DE-REGISTERED : Reason - "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getDeregiReason()I

    move-result v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/sec/internal/log/IMSLog;->lazer(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    .line 1640
    invoke-static {v2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getImsRegistrations()Ljava/util/Map;

    move-result-object v4

    .line 1641
    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v11

    invoke-static {v11, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfoId(II)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v4, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/ims/ImsRegistration;

    .line 1643
    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->clearUpdateRegisteringFlag()V

    .line 1644
    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v11

    const/4 v12, 0x0

    if-eqz v11, :cond_3

    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isRefreshReg()Z

    move-result v11

    if-eqz v11, :cond_3

    if-eqz v6, :cond_4

    .line 1645
    :cond_3
    invoke-interface {v7, v12}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setIsRefreshReg(Z)V

    .line 1648
    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->updateImsIcon(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    const-string v11, "RegiMgr"

    if-eqz v4, :cond_5

    .line 1651
    invoke-interface/range {p1 .. p2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getDeregiCause(Lcom/sec/ims/util/SipError;)I

    move-result v14

    .line 1652
    new-instance v15, Lcom/sec/ims/ImsRegistrationError;

    .line 1653
    invoke-virtual/range {p2 .. p2}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Lcom/sec/ims/util/SipError;->getReason()Ljava/lang/String;

    move-result-object v13

    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getDeregiReason()I

    move-result v5

    invoke-direct {v15, v10, v13, v5, v14}, Lcom/sec/ims/ImsRegistrationError;-><init>(ILjava/lang/String;II)V

    .line 1652
    invoke-virtual {v0, v4, v12, v7, v15}, Lcom/sec/internal/ims/core/RegistrationManager;->notifyImsRegistration(Lcom/sec/ims/ImsRegistration;ZLcom/sec/internal/interfaces/ims/core/IRegisterTask;Lcom/sec/ims/ImsRegistrationError;)V

    const/16 v4, 0x20

    if-ne v14, v4, :cond_5

    .line 1655
    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v4

    const-string v5, "ImsNotAvailable"

    invoke-interface {v4, v5}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->stopTimsTimer(Ljava/lang/String;)V

    const-string v4, "ImsNotAvailable has sent by onDeregistered."

    .line 1656
    invoke-static {v11, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1657
    invoke-static {v2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/core/SlotBasedConfig;->setNotifiedImsNotAvailable(Z)V

    .line 1662
    :cond_5
    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/constants/Mno;->isEur()Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_6
    iget-boolean v4, v0, Lcom/sec/internal/ims/core/RegistrationManager;->mIsNonADSDeRegRequired:Z

    if-eqz v4, :cond_7

    const/16 v4, 0xc

    .line 1663
    invoke-static {v2}, Lcom/sec/internal/helper/SimUtil;->getOppositeSimSlot(I)I

    move-result v5

    invoke-interface {v0, v4, v5}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->sendDeregister(II)V

    .line 1664
    iput-boolean v12, v0, Lcom/sec/internal/ims/core/RegistrationManager;->mIsNonADSDeRegRequired:Z

    .line 1671
    :cond_7
    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1672
    iget-boolean v4, v0, Lcom/sec/internal/ims/core/RegistrationManager;->mMoveNextPcscf:Z

    if-eqz v4, :cond_8

    .line 1673
    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sec/ims/settings/ImsProfile;->setUicclessEmergency(Z)V

    .line 1674
    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->increasePcscfIdx()V

    .line 1675
    iput-boolean v12, v0, Lcom/sec/internal/ims/core/RegistrationManager;->mMoveNextPcscf:Z

    goto :goto_0

    :cond_8
    const-string v1, "onDeregistered: leave it to EMERGENCY state."

    .line 1677
    invoke-static {v11, v2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1678
    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->EMERGENCY:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-interface {v7, v1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 1679
    invoke-interface {v7, v12}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setIsRefreshReg(Z)V

    .line 1680
    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_9

    .line 1681
    iget-object v1, v0, Lcom/sec/internal/ims/core/RegistrationManager;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move/from16 v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->onDeregistered(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Lcom/sec/ims/util/SipError;JZ)V

    .line 1682
    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isKeepPdn()Z

    move-result v1

    if-nez v1, :cond_9

    .line 1683
    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPdnType()I

    move-result v1

    invoke-interface {v0, v1, v7}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 1684
    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-interface {v7, v0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    :cond_9
    return-void

    .line 1691
    :cond_a
    :goto_0
    iget-object v4, v0, Lcom/sec/internal/ims/core/RegistrationManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPdnType()I

    move-result v5

    invoke-virtual {v4, v5, v7}, Lcom/sec/internal/ims/core/PdnController;->isConnected(ILcom/sec/internal/interfaces/ims/core/PdnEventListener;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1692
    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-interface {v7, v4}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    goto :goto_1

    .line 1694
    :cond_b
    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isKeepPdn()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1695
    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-interface {v7, v4}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    goto :goto_1

    .line 1697
    :cond_c
    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-interface {v7, v4}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 1701
    :goto_1
    iget-object v4, v0, Lcom/sec/internal/ims/core/RegistrationManager;->mJibeRcsRegistration:Lcom/sec/internal/interfaces/ims/core/IJibeRcsRegistration;

    invoke-interface {v4, v2}, Lcom/sec/internal/interfaces/ims/core/IJibeRcsRegistration;->needClearTasks(I)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1702
    iget-object v4, v0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    new-instance v5, Lcom/sec/internal/ims/core/RegistrationManagerInternal$$ExternalSyntheticLambda0;

    invoke-direct {v5, v0, v2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/ims/core/RegistrationManagerInternal;I)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_d
    const/4 v4, 0x0

    .line 1710
    invoke-interface {v7, v4}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setImsRegistration(Lcom/sec/ims/ImsRegistration;)V

    .line 1712
    invoke-direct {v0, v3, v7}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->removeAdhocProfile(Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 1714
    invoke-static {}, Lcom/sec/internal/google/SecImsNotifier;->getInstance()Lcom/sec/internal/google/SecImsNotifier;

    move-result-object v3

    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v3, v2, v4, v12}, Lcom/sec/internal/google/SecImsNotifier;->updateAdhocProfile(ILcom/sec/ims/settings/ImsProfile;Z)V

    if-eqz v6, :cond_e

    .line 1718
    invoke-virtual/range {p0 .. p2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->handleSolicitedDeregistration(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Lcom/sec/ims/util/SipError;)V

    goto :goto_2

    :cond_e
    if-eqz v1, :cond_f

    .line 1721
    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->resetPcscfList()V

    .line 1722
    iget-object v1, v0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1723
    iget-object v1, v0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v1, v4, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 1725
    :cond_f
    invoke-virtual/range {p0 .. p4}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->handleUnSolicitedDeregistration(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Lcom/sec/ims/util/SipError;J)V

    .line 1729
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",DEREG:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1730
    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getPdn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x11010001

    .line 1729
    invoke-static {v2, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    const-string v1, ""

    .line 1732
    invoke-interface {v7, v1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setReason(Ljava/lang/String;)V

    .line 1733
    invoke-interface/range {p1 .. p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v1

    invoke-interface {v1, v6}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onDeregistrationDone(Z)V

    const/16 v1, 0x29

    .line 1734
    invoke-interface {v7, v1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setDeregiReason(I)V

    .line 1735
    invoke-interface {v7, v12}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setIsRefreshReg(Z)V

    .line 1737
    iget-object v0, v0, Lcom/sec/internal/ims/core/RegistrationManager;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move/from16 v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->onDeregistered(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Lcom/sec/ims/util/SipError;JZ)V

    return-void
.end method

.method protected onForcedUpdateRegistrationRequested(Lcom/sec/internal/ims/core/RegisterTask;)V
    .locals 1

    const-string v0, "forced update registration"

    .line 1876
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 1877
    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;->FORCED_UPDATE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;)Z

    return-void
.end method

.method protected onImsProfileUpdateDone(I)V
    .locals 2

    .line 302
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->buildTask(I)V

    .line 303
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->notifyImsReady(ZI)V

    .line 304
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mSimManagers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/core/RegistrationManager;->notifySimMobilityStatusChanged(ILcom/sec/internal/interfaces/ims/core/ISimManager;)V

    .line 305
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/4 v0, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method protected onManualDeregister(IZI)V
    .locals 5

    .line 850
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onManualDeregister: profile id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", explicitDeregi:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr"

    invoke-static {v1, p3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 851
    invoke-virtual {p0, p1, p3}, Lcom/sec/internal/ims/core/RegistrationManager;->getRegisterTaskByProfileId(II)Lcom/sec/internal/ims/core/RegisterTask;

    move-result-object p1

    .line 852
    invoke-static {p3}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v0

    if-eqz p1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    .line 858
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    .line 860
    invoke-static {v2, p3}, Lcom/sec/internal/ims/core/RegistrationUtils;->needToNotifyImsReady(Lcom/sec/ims/settings/ImsProfile;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 861
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v4, "onManualDeregister: notify IMS ready [false]"

    invoke-virtual {v3, p3, v4}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 862
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    const/4 v4, 0x0

    invoke-interface {v3, v4, p3}, Lcom/sec/internal/interfaces/ims/IImsFramework;->notifyImsReady(ZI)V

    .line 865
    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onManualDeregister: deregistering profile "

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p3

    const-string v1, "ManualDeregi"

    invoke-interface {p3, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->stopTimsTimer(Ljava/lang/String;)V

    .line 868
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p3

    invoke-interface {p3, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onManualDeregister(Z)Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    .line 869
    new-instance p3, Lcom/sec/internal/ims/core/RegistrationManagerInternal$$ExternalSyntheticLambda8;

    invoke-direct {p3, v0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal$$ExternalSyntheticLambda8;-><init>(Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;)V

    invoke-virtual {p2, p3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 870
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result p1

    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object p1

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->removeExtendedProfile(I)V

    .line 871
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->startSilentEmergency()V

    return-void

    :cond_2
    :goto_0
    const-string p1, "onManualDeregister: profile not found."

    .line 854
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->startSilentEmergency()V

    return-void
.end method

.method protected onManualRegister(Lcom/sec/ims/settings/ImsProfile;I)V
    .locals 17

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    .line 767
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onManualRegister: profile "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegiMgr"

    invoke-static {v1, v11, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 768
    iget-object v0, v9, Lcom/sec/internal/ims/core/RegistrationManager;->mSimManagers:Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 769
    invoke-static/range {p2 .. p2}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v13

    if-eqz v12, :cond_9

    if-nez v13, :cond_0

    goto/16 :goto_2

    .line 774
    :cond_0
    iget-object v0, v9, Lcom/sec/internal/ims/core/RegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2, v11}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->serviceStartDeterminer(Ljava/util/List;I)V

    .line 777
    invoke-virtual {v13}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    move v14, v2

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v15, 0x1

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/RegisterTask;

    .line 778
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    .line 779
    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v4

    if-eq v4, v15, :cond_5

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    goto :goto_1

    .line 784
    :cond_2
    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v4

    if-le v4, v5, :cond_1

    .line 785
    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "Task with profile name already exists, update imsprofile"

    .line 786
    invoke-static {v1, v4}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    invoke-virtual {v2, v10}, Lcom/sec/internal/ims/core/RegisterTask;->setProfile(Lcom/sec/ims/settings/ImsProfile;)V

    .line 790
    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v4

    const/4 v5, 0x4

    const/16 v6, 0x8

    if-eq v4, v5, :cond_3

    .line 791
    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v3

    if-ne v3, v6, :cond_4

    :cond_3
    const-string v3, "onManualRegister: releaseThrottle, resetRetry"

    .line 792
    invoke-static {v1, v3}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    iget-object v3, v2, Lcom/sec/internal/ims/core/RegisterTask;->mGovernor:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    invoke-interface {v3, v6}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->releaseThrottle(I)V

    .line 796
    iget-object v3, v2, Lcom/sec/internal/ims/core/RegisterTask;->mGovernor:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->resetRetry()V

    .line 799
    iget-object v2, v2, Lcom/sec/internal/ims/core/RegisterTask;->mGovernor:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/settings/ImsProfile;->getPcscfList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->updatePcscfIpList(Ljava/util/List;)V

    :cond_4
    move v14, v15

    goto :goto_0

    .line 780
    :cond_5
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v2

    invoke-virtual {v3}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v3

    if-ne v2, v3, :cond_1

    const-string v0, "onManualRegister: cmc register task already manual registered"

    .line 781
    invoke-static {v1, v11, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 805
    :cond_6
    invoke-static/range {p2 .. p2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v1

    invoke-virtual {v0, v1, v10}, Lcom/sec/internal/ims/core/SlotBasedConfig;->addExtendedProfile(ILcom/sec/ims/settings/ImsProfile;)V

    .line 808
    new-instance v8, Lcom/sec/internal/ims/core/RegisterTask;

    iget-object v3, v9, Lcom/sec/internal/ims/core/RegistrationManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    iget-object v4, v9, Lcom/sec/internal/ims/core/RegistrationManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget-object v5, v9, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    iget-object v6, v9, Lcom/sec/internal/ims/core/RegistrationManager;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    iget-object v7, v9, Lcom/sec/internal/ims/core/RegistrationManager;->mConfigModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    move-object v0, v8

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    move-object/from16 v16, v8

    move/from16 v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/sec/internal/ims/core/RegisterTask;-><init>(Lcom/sec/ims/settings/ImsProfile;Lcom/sec/internal/ims/core/RegistrationManagerInternal;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/ims/core/PdnController;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;Lcom/sec/internal/interfaces/ims/config/IConfigModule;I)V

    .line 810
    invoke-static {}, Lcom/sec/internal/google/SecImsNotifier;->getInstance()Lcom/sec/internal/google/SecImsNotifier;

    move-result-object v0

    invoke-virtual {v0, v11, v10, v15}, Lcom/sec/internal/google/SecImsNotifier;->updateAdhocProfile(ILcom/sec/ims/settings/ImsProfile;Z)V

    .line 812
    invoke-interface {v12}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimLoaded()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/settings/ImsProfile;->isSoftphoneEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/settings/ImsProfile;->isSamsungMdmnEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 813
    :cond_7
    iget-object v0, v9, Lcom/sec/internal/ims/core/RegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0, v15, v11}, Lcom/sec/internal/interfaces/ims/IImsFramework;->notifyImsReady(ZI)V

    if-nez v14, :cond_8

    move-object/from16 v0, v16

    .line 815
    invoke-virtual {v13, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 817
    :cond_8
    invoke-virtual {v9, v11}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryRegister(I)V

    :cond_9
    :goto_2
    return-void
.end method

.method onPendingUpdateRegistration()V
    .locals 8

    .line 1783
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    move v1, v0

    .line 1785
    :goto_0
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mSimManagers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    .line 1786
    invoke-static {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getRegistrationTasks()Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/core/RegisterTask;

    .line 1787
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    const-string v6, "RegiMgr"

    const/4 v7, 0x1

    if-ne v4, v5, :cond_3

    iget-boolean v4, v3, Lcom/sec/internal/ims/core/RegisterTask;->mHasForcedPendingUpdate:Z

    if-eqz v4, :cond_3

    .line 1788
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPendingUpdateRegistration: forced "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1789
    iput-boolean v0, v3, Lcom/sec/internal/ims/core/RegisterTask;->mHasForcedPendingUpdate:Z

    .line 1790
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->hasPendingEpdgHandover()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1791
    invoke-virtual {v3, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setHasPendingEpdgHandover(Z)V

    .line 1792
    invoke-virtual {v3, v7}, Lcom/sec/internal/ims/core/RegisterTask;->setEpdgHandoverInProgress(Z)V

    .line 1794
    :cond_1
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->isImmediatePendingUpdate()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1795
    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;->FORCED_PENDING_UPDATE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;

    invoke-virtual {p0, v3, v4, v7}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;Z)Z

    goto :goto_1

    .line 1797
    :cond_2
    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;->FORCED_PENDING_UPDATE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;

    invoke-virtual {p0, v3, v4}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;)Z

    goto :goto_1

    .line 1799
    :cond_3
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v4

    if-ne v4, v5, :cond_6

    iget-boolean v4, v3, Lcom/sec/internal/ims/core/RegisterTask;->mHasPendingUpdate:Z

    if-eqz v4, :cond_6

    .line 1800
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPendingUpdateRegistration: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1801
    iput-boolean v0, v3, Lcom/sec/internal/ims/core/RegisterTask;->mHasPendingUpdate:Z

    .line 1802
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->hasPendingEpdgHandover()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1803
    invoke-virtual {v3, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setHasPendingEpdgHandover(Z)V

    .line 1804
    invoke-virtual {v3, v7}, Lcom/sec/internal/ims/core/RegisterTask;->setEpdgHandoverInProgress(Z)V

    .line 1806
    :cond_4
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->isImmediatePendingUpdate()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1807
    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;->PENDING_UPDATE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;

    invoke-virtual {p0, v3, v4, v7}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;Z)Z

    goto/16 :goto_1

    .line 1809
    :cond_5
    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;->PENDING_UPDATE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;

    invoke-virtual {p0, v3, v4}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;)Z

    goto/16 :goto_1

    .line 1811
    :cond_6
    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v4

    if-ne v4, v5, :cond_0

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->hasPendingDeregister()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1812
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPendingDeRegistration: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1813
    invoke-virtual {v3, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setHasPendingDeregister(Z)V

    .line 1814
    invoke-virtual {p0, v3, v0, v7}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    goto/16 :goto_1

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method protected onRefreshRegistration(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;I)V
    .locals 4

    .line 1881
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRefreshRegistration: profile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " handle : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegiMgr"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1883
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isMultiSimSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1884
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result p0

    const-string p1, "This model is not for Dual IMS."

    invoke-static {v2, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 1888
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 1889
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mSimManagers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1890
    invoke-static {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getRegistrationTasks()Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/core/RegisterTask;

    .line 1891
    iget-object v3, v3, Lcom/sec/internal/ims/core/RegisterTask;->mReg:Lcom/sec/ims/ImsRegistration;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v3

    if-eq v3, p2, :cond_1

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    .line 1892
    invoke-interface {v3, v0}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getSessionCount(I)I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {v3, v0}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->hasEmergencyCall(I)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {v3, v0}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->hasActiveCall(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string p2, "Active VoLTE call exists on this slot. Try to de-regi."

    .line 1893
    invoke-static {v2, v0, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p2, 0x1

    .line 1894
    invoke-virtual {p0, p1, p2, p2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V

    return-void

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1901
    :cond_3
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result p0

    const-string p1, "onRefreshRegistration: No de-registration has triggered"

    invoke-static {v2, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method protected onRegisterError(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ILcom/sec/ims/util/SipError;J)V
    .locals 14

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    .line 1471
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v0

    .line 1472
    iget-object v3, v1, Lcom/sec/internal/ims/core/RegistrationManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onRegisterError: error "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " retryAfterMs "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v0, p1, v7}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    .line 1473
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",REG ERR:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/ims/settings/ImsProfile;->getPdn()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const v7, 0x11010009

    invoke-static {v7, v3}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    const/4 v3, 0x0

    .line 1476
    invoke-interface {p1, v3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setEpdgHandoverInProgress(Z)V

    .line 1477
    sget-object v7, Lcom/sec/internal/constants/ims/SipErrorBase;->UNAUTHORIZED:Lcom/sec/ims/util/SipError;

    invoke-virtual {v7, v4}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isRcsOnly()Z

    move-result v7

    if-nez v7, :cond_0

    return-void

    .line 1486
    :cond_0
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v7

    sget-object v8, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    const-string v9, "RegiMgr"

    if-eq v7, v8, :cond_1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_1
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v7

    sget-object v8, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-eq v7, v8, :cond_4

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isRefreshReg()Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_0

    .line 1491
    :cond_2
    iget-object v7, v1, Lcom/sec/internal/ims/core/RegistrationManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPdnType()I

    move-result v8

    invoke-virtual {v7, v8, p1}, Lcom/sec/internal/ims/core/PdnController;->isConnected(ILcom/sec/internal/interfaces/ims/core/PdnEventListener;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1492
    sget-object v7, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-interface {p1, v7}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    goto :goto_1

    .line 1494
    :cond_3
    sget-object v7, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-interface {p1, v7}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v7, 0x1

    .line 1487
    invoke-interface {p1, v7}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setIsRefreshReg(Z)V

    .line 1489
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onRegisterError: mIsRefreshReg "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isRefreshReg()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v0, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1498
    :goto_1
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->removeAdhocProfile(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 1501
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->makeThrottle(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 1504
    :try_start_0
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1505
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v7

    sget-object v8, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v7, v8, :cond_6

    .line 1506
    sget-object v7, Lcom/sec/internal/constants/ims/SipErrorBase;->SIP_TIMEOUT:Lcom/sec/ims/util/SipError;

    invoke-virtual {v7, v4}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1507
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v7

    invoke-interface {v7, v4, v5, v6, v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onRegistrationError(Lcom/sec/ims/util/SipError;JZ)V

    .line 1508
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->getFailureCount()I

    move-result v3

    const/4 v7, 0x2

    if-ge v3, v7, :cond_8

    const-string v3, "onRegisterError: Emergency Registration timed out. Retry."

    .line 1510
    invoke-static {v9, v0, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1574
    :cond_5
    :goto_2
    iget-object v1, v1, Lcom/sec/internal/ims/core/RegistrationManager;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    move-object v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    invoke-interface/range {v1 .. v6}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->onRegisterError(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ILcom/sec/ims/util/SipError;J)V

    return-void

    .line 1514
    :cond_6
    :try_start_1
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v7

    sget-object v8, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-ne v7, v8, :cond_7

    .line 1519
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v7

    invoke-interface {v7, v4, v5, v6, v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onRegistrationError(Lcom/sec/ims/util/SipError;JZ)V

    .line 1520
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isAnonymousEmergencyCallRequired()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1521
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->sendEmergencyRegistrationFailed(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    const-string v3, "onRegisterError: notify Emergency Registration failure for Anonymous Call"

    .line 1522
    invoke-static {v9, v0, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_2

    .line 1525
    :cond_7
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/ims/settings/ImsProfile;->getE911RegiTime()I

    move-result v7

    if-lez v7, :cond_8

    sget-object v7, Lcom/sec/internal/constants/ims/SipErrorBase;->SIP_TIMEOUT:Lcom/sec/ims/util/SipError;

    invoke-virtual {v7, v4}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1526
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v7

    invoke-interface {v7, v4, v5, v6, v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onRegistrationError(Lcom/sec/ims/util/SipError;JZ)V

    .line 1527
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->getFailureCount()I

    move-result v3

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v7

    invoke-interface {v7}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->getNumOfEmerPcscfIp()I

    move-result v7

    if-ge v3, v7, :cond_8

    const-string v3, "onRegisterError: Emergency Registration Error Retry to next PCSCF"

    .line 1528
    invoke-static {v9, v0, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_2

    .line 1532
    :cond_8
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->sendEmergencyRegistrationFailed(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    goto :goto_2

    .line 1536
    :cond_9
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v7

    invoke-interface {v7, v4, v5, v6, v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onRegistrationError(Lcom/sec/ims/util/SipError;JZ)V

    .line 1539
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v7

    invoke-interface {v7}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->getFailureType()I

    move-result v7

    .line 1540
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v8

    invoke-interface {v8, v7}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->getDetailedDeRegiReason(I)I

    move-result v8

    .line 1541
    invoke-interface {p1, v4}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getDeregiCause(Lcom/sec/ims/util/SipError;)I

    move-result v9

    const/16 v10, 0x20

    if-ne v9, v10, :cond_a

    move v7, v10

    :cond_a
    const/16 v9, 0x10

    if-eq v7, v9, :cond_b

    .line 1545
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v9

    const-string v10, "ImsNotAvailable"

    invoke-interface {v9, v10}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->stopTimsTimer(Ljava/lang/String;)V

    .line 1548
    :cond_b
    iget-object v9, v1, Lcom/sec/internal/ims/core/RegistrationManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v9, v0}, Lcom/sec/internal/ims/core/PdnController;->isEpdgConnected(I)Z

    move-result v9

    .line 1549
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v10

    if-eqz v10, :cond_c

    .line 1550
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/ims/ImsRegistration;->getEpdgStatus()Z

    move-result v9

    .line 1553
    :cond_c
    invoke-static {}, Lcom/sec/ims/ImsRegistration;->getBuilder()Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move/from16 v11, p2

    .line 1554
    :try_start_2
    invoke-virtual {v10, v11}, Lcom/sec/ims/ImsRegistration$Builder;->setHandle(I)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v10

    new-instance v12, Lcom/sec/ims/settings/ImsProfile;

    .line 1555
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/sec/ims/settings/ImsProfile;-><init>(Lcom/sec/ims/settings/ImsProfile;)V

    invoke-virtual {v10, v12}, Lcom/sec/ims/ImsRegistration$Builder;->setImsProfile(Lcom/sec/ims/settings/ImsProfile;)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v10

    .line 1556
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v12

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getRegistrationRat()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/sec/ims/settings/ImsProfile;->getServiceSet(Ljava/lang/Integer;)Ljava/util/Set;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/sec/ims/ImsRegistration$Builder;->setServices(Ljava/util/Set;)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v10

    .line 1557
    invoke-virtual {v10, v9}, Lcom/sec/ims/ImsRegistration$Builder;->setEpdgStatus(Z)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v9

    .line 1558
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPdnType()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/sec/ims/ImsRegistration$Builder;->setPdnType(I)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v9

    .line 1559
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v10

    invoke-virtual {p0, v0, v10}, Lcom/sec/internal/ims/core/RegistrationManager;->getUuid(ILcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sec/ims/ImsRegistration$Builder;->setUuid(Ljava/lang/String;)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v9

    .line 1560
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPdnType()I

    move-result v10

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v12

    invoke-virtual {p0, v0, v10, v12}, Lcom/sec/internal/ims/core/RegistrationManager;->getInstanceId(IILcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sec/ims/ImsRegistration$Builder;->setInstanceId(Ljava/lang/String;)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v9

    .line 1561
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getNetworkConnected()Landroid/net/Network;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sec/ims/ImsRegistration$Builder;->setNetwork(Landroid/net/Network;)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v9

    .line 1562
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getRegistrationRat()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/sec/ims/ImsRegistration$Builder;->setRegiRat(I)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v9

    .line 1563
    invoke-virtual {v9, v0}, Lcom/sec/ims/ImsRegistration$Builder;->setPhoneId(I)Lcom/sec/ims/ImsRegistration$Builder;

    move-result-object v0

    .line 1564
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration$Builder;->build()Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    .line 1566
    new-instance v9, Lcom/sec/ims/ImsRegistrationError;

    invoke-virtual/range {p3 .. p3}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v10

    invoke-virtual/range {p3 .. p3}, Lcom/sec/ims/util/SipError;->getReason()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v9, v10, v12, v8, v7}, Lcom/sec/ims/ImsRegistrationError;-><init>(ILjava/lang/String;II)V

    invoke-virtual {p0, v0, v3, p1, v9}, Lcom/sec/internal/ims/core/RegistrationManager;->notifyImsRegistration(Lcom/sec/ims/ImsRegistration;ZLcom/sec/internal/interfaces/ims/core/IRegisterTask;Lcom/sec/ims/ImsRegistrationError;)V

    .line 1569
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->reportRegistrationStatus(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 1570
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->reportRegistrationCount(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 1571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REGISTRATION FAILED : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->lazer(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1574
    iget-object v1, v1, Lcom/sec/internal/ims/core/RegistrationManager;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    move-object v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    invoke-interface/range {v1 .. v6}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->onRegisterError(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ILcom/sec/ims/util/SipError;J)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move/from16 v11, p2

    :goto_3
    iget-object v1, v1, Lcom/sec/internal/ims/core/RegistrationManager;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    move-object v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    invoke-interface/range {v1 .. v6}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->onRegisterError(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ILcom/sec/ims/util/SipError;J)V

    .line 1575
    throw v0
.end method

.method protected onRegistered(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V
    .locals 12

    .line 1356
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v0

    .line 1357
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1358
    invoke-static {v0}, Lcom/sec/internal/log/IMSLogTimer;->setVolteRegisterEndTime(I)V

    .line 1359
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#IMSREGI - KPI["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getRegistrationRat()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " LATCH "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1360
    invoke-static {v0}, Lcom/sec/internal/log/IMSLogTimer;->getLatchEndTime(I)J

    move-result-wide v4

    invoke-static {v0}, Lcom/sec/internal/log/IMSLogTimer;->getLatchStartTime(I)J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-double v4, v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "s"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "RegiMgr"

    .line 1359
    invoke-static {v5, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1361
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "]: PDN Setup "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1362
    invoke-static {v0}, Lcom/sec/internal/log/IMSLogTimer;->getPdnEndTime(I)J

    move-result-wide v8

    invoke-static {v0}, Lcom/sec/internal/log/IMSLogTimer;->getPdnStartTime(I)J

    move-result-wide v10

    sub-long/2addr v8, v10

    long-to-double v8, v8

    div-double/2addr v8, v6

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "s [Request by IMS : "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1363
    invoke-static {v0}, Lcom/sec/internal/log/IMSLogTimer;->getIsImsPdnRequest(I)Z

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, "]"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1361
    invoke-static {v5, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1364
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "]: SIP Registration "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1365
    invoke-static {v0}, Lcom/sec/internal/log/IMSLogTimer;->getVolteRegisterEndTime(I)J

    move-result-wide v8

    invoke-static {v0}, Lcom/sec/internal/log/IMSLogTimer;->getVolteRegisterStartTime(I)J

    move-result-wide v10

    sub-long/2addr v8, v10

    long-to-double v8, v8

    div-double/2addr v8, v6

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1364
    invoke-static {v5, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1366
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1367
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]: Total Time "

    .line 1368
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1369
    invoke-static {v0}, Lcom/sec/internal/log/IMSLogTimer;->getVolteRegisterEndTime(I)J

    move-result-wide v2

    invoke-static {v0}, Lcom/sec/internal/log/IMSLogTimer;->getLatchStartTime(I)J

    move-result-wide v8

    sub-long/2addr v2, v8

    long-to-double v2, v2

    div-double/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "s, <Gap IMS PDN from Request to Connected : "

    .line 1370
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1371
    invoke-static {v0}, Lcom/sec/internal/log/IMSLogTimer;->getVolteRegisterStartTime(I)J

    move-result-wide v2

    invoke-static {v0}, Lcom/sec/internal/log/IMSLogTimer;->getPdnEndTime(I)J

    move-result-wide v8

    sub-long/2addr v2, v8

    long-to-double v2, v2

    div-double/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "s>, <Gap Latch from Data Attch to PDN Request : "

    .line 1372
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1373
    invoke-static {v0}, Lcom/sec/internal/log/IMSLogTimer;->getPdnStartTime(I)J

    move-result-wide v2

    invoke-static {v0}, Lcom/sec/internal/log/IMSLogTimer;->getLatchEndTime(I)J

    move-result-wide v8

    sub-long/2addr v2, v8

    long-to-double v2, v2

    div-double/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 1374
    invoke-static {v0}, Lcom/sec/internal/log/IMSLogTimer;->getIsImsPdnRequest(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "s>"

    .line 1375
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "s (Request by RIL)>"

    .line 1377
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1379
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1382
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getUserAgent()Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1384
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "onRegistered: Failed to process. UA has already removed"

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    return-void

    .line 1386
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    invoke-interface {v1, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->isUserAgentInRegistered(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1388
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "onRegistered: Failed to process. UA is not registered!"

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    return-void

    .line 1392
    :cond_2
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    .line 1393
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getRegistrationRat()I

    move-result v2

    .line 1394
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPdnType()I

    move-result v3

    const/16 v4, 0xb

    if-ne v3, v4, :cond_4

    .line 1395
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/core/PdnController;->isEpdgConnected(I)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x12

    goto :goto_1

    .line 1396
    :cond_3
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->getMobileDataNetworkType()I

    move-result v2

    .line 1398
    :cond_4
    :goto_1
    invoke-virtual {v1, v2}, Lcom/sec/ims/ImsRegistration;->setRegiRat(I)V

    .line 1399
    invoke-virtual {v1, v2}, Lcom/sec/ims/ImsRegistration;->setCurrentRat(I)V

    .line 1401
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    .line 1402
    invoke-static {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v4

    invoke-static {v4, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfoId(II)I

    move-result v4

    invoke-virtual {v3, v4, v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->addImsRegistration(ILcom/sec/ims/ImsRegistration;)V

    .line 1404
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onRegistered: RAT = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getRegistrationRat()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", profile="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1405
    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", service="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getServices()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1404
    invoke-virtual {v3, v0, p1, v4}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    .line 1406
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",REG OK:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getRegistrationRat()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1407
    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getPdn()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getServices()Ljava/util/Set;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/internal/constants/ims/DiagnosisConstants;->convertServiceSetToHex(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0x11010000

    .line 1406
    invoke-static {v4, v3}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1409
    invoke-static {}, Lcom/sec/internal/helper/os/ImsGateConfig;->isGateEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1411
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<GATE-M>IMS_ENABLED_PS_IND_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ril.ims.ltevoicesupport"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "</GATE-M>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GATE"

    invoke-static {v4, v3}, Lcom/sec/internal/log/IMSLog;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 1415
    :cond_5
    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-interface {p1, v3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 1416
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->clearUpdateRegisteringFlag()V

    const/4 v3, 0x0

    .line 1417
    invoke-interface {p1, v3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setIsRefreshReg(Z)V

    .line 1420
    invoke-static {}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->getInstance()Lcom/sec/internal/ims/util/UriGeneratorFactory;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRcsPolicyManager:Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;

    .line 1421
    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getRemoteUriType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getNeedAutoconfig()Z

    move-result v2

    invoke-interface {v5, v0, v6, v2}, Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;->getRcsNetworkUriType(ILjava/lang/String;Z)Lcom/sec/ims/util/ImsUri$UriType;

    move-result-object v2

    .line 1420
    invoke-virtual {v4, v1, v2}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->updateUriGenerator(Lcom/sec/ims/ImsRegistration;Lcom/sec/ims/util/ImsUri$UriType;)V

    .line 1422
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->updateImsIcon(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 1424
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isDualIMS()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1425
    sget v2, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_1:I

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryRegister(I)V

    .line 1426
    sget v2, Lcom/sec/internal/constants/ims/ImsConstants$Phone;->SLOT_2:I

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryRegister(I)V

    goto :goto_2

    .line 1428
    :cond_6
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryRegister(I)V

    .line 1431
    :goto_2
    new-instance v2, Lcom/sec/ims/ImsRegistrationError;

    invoke-direct {v2}, Lcom/sec/ims/ImsRegistrationError;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {p0, v1, v4, p1, v2}, Lcom/sec/internal/ims/core/RegistrationManager;->notifyImsRegistration(Lcom/sec/ims/ImsRegistration;ZLcom/sec/internal/interfaces/ims/core/IRegisterTask;Lcom/sec/ims/ImsRegistrationError;)V

    .line 1434
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1435
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getResultMessage()Landroid/os/Message;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 1436
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getResultMessage()Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    const/4 v2, 0x0

    .line 1437
    invoke-interface {p1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setResultMessage(Landroid/os/Message;)V

    .line 1443
    :cond_7
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isSoftphoneEnabled()Z

    move-result v2

    if-nez v2, :cond_8

    .line 1444
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManager;->getSimManager(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v4

    invoke-static {v2, v1, v4}, Lcom/sec/internal/ims/core/RegistrationUtils;->saveRegisteredImpu(Landroid/content/Context;Lcom/sec/ims/ImsRegistration;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V

    goto :goto_3

    .line 1446
    :cond_8
    iput-boolean v4, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mAresLookupRequired:Z

    .line 1449
    :goto_3
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onRegistrationDone()V

    .line 1451
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1455
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->reportRegistrationStatus(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 1456
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getRegiRequestType()Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;->REFRESH:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;

    if-eq v1, v2, :cond_9

    .line 1457
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->reportRegistrationCount(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 1459
    :cond_9
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManager;->reportDualImsStatus(I)V

    const-string p0, "REGISTERED"

    .line 1460
    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->lazer(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    const-string p0, ""

    .line 1462
    invoke-interface {p1, p0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setReason(Ljava/lang/String;)V

    .line 1463
    invoke-interface {p1, v3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setEpdgHandoverInProgress(Z)V

    .line 1466
    invoke-interface {p1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setRegiRequestType(Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;)V

    const/16 p0, 0x29

    .line 1467
    invoke-interface {p1, p0}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setDeregiReason(I)V

    return-void
.end method

.method protected onSubscribeError(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Lcom/sec/ims/util/SipError;)V
    .locals 3

    .line 1871
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSubscribeError: error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    .line 1872
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onSubscribeError(ILcom/sec/ims/util/SipError;)V

    return-void
.end method

.method protected onUpdateSipDelegateRegistration(I)V
    .locals 4

    .line 900
    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;->SIPDELEGATE_UPDATE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->updateRegistration(ILcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;)Z

    move-result v0

    .line 901
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onUpdateSipDelegateRegistration: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    const-string v3, "Success"

    goto :goto_0

    :cond_0
    const-string v3, "Fail"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    if-eqz v0, :cond_1

    .line 903
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v0, 0x3b

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method protected registerInternal(Lcom/sec/internal/ims/core/RegisterTask;Ljava/lang/String;Ljava/util/Set;)Z
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/core/RegisterTask;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    .line 1090
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v14

    .line 1091
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->getUserAgent()Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v1

    const-string v13, "RegiMgr"

    const/4 v12, 0x1

    if-eqz v1, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-eq v1, v2, :cond_1

    .line 1092
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->DEREGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v1, v2, :cond_0

    const-string/jumbo v0, "registerInternal: skip re-register during deregistration"

    .line 1093
    invoke-static {v13, v14, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return v12

    .line 1097
    :cond_0
    iget-object v0, v0, Lcom/sec/internal/ims/core/RegistrationManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo v1, "registerInternal: re-register is not allowed if not registered. Delete UA first."

    invoke-virtual {v0, v14, v15, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    return v12

    .line 1101
    :cond_1
    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->AIRPLANE_MODE:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    iget-object v2, v0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    const/4 v11, 0x0

    invoke-virtual {v1, v2, v11}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result v1

    sget v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->AIRPLANE_MODE_ON:I

    if-ne v1, v2, :cond_2

    move v1, v12

    goto :goto_0

    :cond_2
    move v1, v11

    .line 1103
    :goto_0
    invoke-virtual {v0, v14}, Lcom/sec/internal/ims/core/RegistrationManager;->getPendingRegistration(I)Ljava/util/List;

    move-result-object v2

    .line 1104
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v1, :cond_4

    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    iget-object v1, v0, Lcom/sec/internal/ims/core/RegistrationManager;->mRcsPolicyManager:Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;

    .line 1105
    invoke-interface {v1, v15, v2}, Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;->doRcsConfig(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v0, "RCS auto-configuration triggered. Stop."

    .line 1106
    invoke-static {v13, v14, v15, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    return v12

    .line 1110
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->getRcsRegistrationBuilder()Lcom/sec/internal/ims/core/RcsRegistration$Builder;

    move-result-object v7

    .line 1112
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v10

    .line 1114
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v1

    invoke-virtual {v0, v14, v1, v10}, Lcom/sec/internal/ims/core/RegistrationManager;->getInstanceId(IILcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;

    move-result-object v1

    .line 1115
    invoke-virtual {v10}, Lcom/sec/ims/settings/ImsProfile;->isSamsungMdmnEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1116
    invoke-virtual {v10}, Lcom/sec/ims/settings/ImsProfile;->getDuid()Ljava/lang/String;

    move-result-object v2

    .line 1117
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    move-object v9, v2

    goto :goto_1

    :cond_6
    move-object v9, v1

    .line 1122
    :goto_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1123
    invoke-virtual {v10}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v2

    if-eqz v2, :cond_7

    .line 1124
    iget-object v1, v0, Lcom/sec/internal/ims/core/RegistrationManager;->mCmcAccountManager:Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->getCmcRegiConfigForUserAgent()Landroid/os/Bundle;

    move-result-object v1

    :cond_7
    move-object/from16 v16, v1

    .line 1127
    iget-object v1, v0, Lcom/sec/internal/ims/core/RegistrationManager;->mSimManagers:Ljava/util/List;

    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    if-nez v1, :cond_8

    return v12

    .line 1133
    :cond_8
    invoke-virtual/range {p0 .. p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getPrivateUserIdentity(Lcom/sec/internal/ims/core/RegisterTask;)Ljava/lang/String;

    move-result-object v8

    .line 1134
    invoke-virtual {v0, v15, v1, v8}, Lcom/sec/internal/ims/core/RegistrationManager;->validateImpi(Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/interfaces/ims/core/ISimManager;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 1135
    iget v1, v0, Lcom/sec/internal/ims/core/RegistrationManager;->mRegiRetryLimit:I

    const/4 v2, 0x4

    if-lt v1, v2, :cond_9

    .line 1136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerInternal: REGI_RETRY_LIMIT is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/sec/internal/ims/core/RegistrationManager;->mRegiRetryLimit:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v14, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_2

    :cond_9
    add-int/2addr v1, v12

    .line 1138
    iput v1, v0, Lcom/sec/internal/ims/core/RegistrationManager;->mRegiRetryLimit:I

    .line 1139
    iget-object v0, v0, Lcom/sec/internal/ims/core/RegistrationManager;->mConfigModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {v0, v14}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->startAcs(I)V

    :goto_2
    return v12

    .line 1143
    :cond_a
    iput v11, v0, Lcom/sec/internal/ims/core/RegistrationManager;->mRegiRetryLimit:I

    .line 1146
    invoke-virtual {v0, v15, v1}, Lcom/sec/internal/ims/core/RegistrationManager;->getPublicUserIdentity(Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/interfaces/ims/core/ISimManager;)Ljava/lang/String;

    move-result-object v6

    .line 1147
    invoke-virtual {v0, v15, v6}, Lcom/sec/internal/ims/core/RegistrationManager;->validateImpu(Lcom/sec/internal/ims/core/RegisterTask;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    return v12

    :cond_b
    move-object/from16 v5, p2

    .line 1152
    invoke-virtual {v0, v15, v5, v14}, Lcom/sec/internal/ims/core/RegistrationManager;->getInterfaceName(Lcom/sec/internal/ims/core/RegisterTask;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    .line 1155
    invoke-virtual {v10}, Lcom/sec/ims/settings/ImsProfile;->getSipUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v10, v2, v14}, Lcom/sec/internal/ims/core/RegistrationManager;->buildUserAgentString(Lcom/sec/ims/settings/ImsProfile;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/sec/ims/settings/ImsProfile;->setSipUserAgent(Ljava/lang/String;)V

    .line 1158
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v4

    .line 1160
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->getReason()Ljava/lang/String;

    move-result-object v2

    .line 1161
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->startTimsTimer(Ljava/lang/String;)V

    const-string v3, ""

    .line 1162
    invoke-virtual {v15, v3}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 1163
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v3

    sget-object v11, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v3, v11, :cond_c

    .line 1164
    invoke-virtual {v15, v12}, Lcom/sec/internal/ims/core/RegisterTask;->setUpdateRegistering(Z)V

    :cond_c
    const/4 v11, 0x0

    .line 1166
    invoke-virtual {v15, v11}, Lcom/sec/internal/ims/core/RegisterTask;->setPendingUpdate(Z)V

    .line 1167
    invoke-virtual {v15, v11}, Lcom/sec/internal/ims/core/RegisterTask;->setHasForcedPendingUpdate(Z)V

    .line 1168
    invoke-virtual {v15, v11}, Lcom/sec/internal/ims/core/RegisterTask;->setHasPendingEpdgHandover(Z)V

    .line 1169
    invoke-virtual {v15, v11}, Lcom/sec/internal/ims/core/RegisterTask;->setImmediatePendingUpdate(Z)V

    .line 1171
    iget-object v3, v0, Lcom/sec/internal/ims/core/RegistrationManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "registerInternal : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v14, v15, v11}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    .line 1172
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->getFilteredReason()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1173
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v19, v3

    const-string v3, ",RMSVC,"

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/high16 v11, 0x11000000

    invoke-static {v11, v3}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    move-object/from16 v3, v19

    goto :goto_3

    .line 1175
    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ",REGI:"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ":"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v3, 0x11020001

    invoke-static {v3, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1177
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1178
    invoke-virtual {v10}, Lcom/sec/ims/settings/ImsProfile;->getAllServiceSetFromAllNetwork()Ljava/util/Set;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->isAutoConfigNeeded(Ljava/util/Set;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1179
    iget-object v2, v0, Lcom/sec/internal/ims/core/RegistrationManager;->mRcsPolicyManager:Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v3

    .line 1180
    iget-object v1, v0, Lcom/sec/internal/ims/core/RegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    move-result-object v1

    if-eqz v1, :cond_e

    iget-object v1, v0, Lcom/sec/internal/ims/core/RegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    move-result-object v1

    invoke-interface {v1, v14}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v1

    goto :goto_4

    :cond_e
    const/4 v1, 0x0

    :goto_4
    move-object v11, v1

    move-object v1, v2

    move-object v2, v10

    move v12, v4

    move v5, v14

    move-object/from16 v19, v6

    move-object v6, v11

    .line 1179
    invoke-interface/range {v1 .. v7}, Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;->getRcsConfigForUserAgent(Lcom/sec/ims/settings/ImsProfile;Lcom/sec/internal/constants/Mno;IILcom/sec/internal/ims/servicemodules/im/ImConfig;Lcom/sec/internal/ims/core/RcsRegistration$Builder;)Landroid/os/Bundle;

    move-result-object v1

    move-object/from16 v20, v1

    goto :goto_5

    :cond_f
    move v12, v4

    move-object/from16 v19, v6

    move-object/from16 v20, v2

    .line 1185
    :goto_5
    iget-object v1, v0, Lcom/sec/internal/ims/core/RegistrationManager;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    invoke-virtual {v0, v10, v14}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->getOwnCapabilities(Lcom/sec/ims/settings/ImsProfile;I)Lcom/sec/ims/options/Capabilities;

    move-result-object v6

    .line 1186
    invoke-virtual {v0, v10, v14}, Lcom/sec/internal/ims/core/RegistrationManager;->getHomeNetworkDomain(Lcom/sec/ims/settings/ImsProfile;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v14, v10}, Lcom/sec/internal/ims/core/RegistrationManager;->getUuid(ILcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;

    move-result-object v11

    iget-object v5, v0, Lcom/sec/internal/ims/core/RegistrationManager;->mThirdPartyFeatureTags:Ljava/util/List;

    .line 1187
    invoke-virtual {v0, v14}, Lcom/sec/internal/ims/core/RegistrationManager;->isVoWiFiSupported(I)Z

    move-result v21

    move-object/from16 v2, p1

    move-object/from16 v3, v17

    move-object/from16 v4, p2

    move-object/from16 v17, v5

    move-object/from16 v5, p3

    move-object/from16 p2, v8

    move-object/from16 v8, v19

    move-object/from16 p3, v9

    move-object/from16 v9, p2

    move-object/from16 v19, v10

    move-object/from16 v10, p3

    move/from16 v22, v12

    const/16 v18, 0x1

    move-object/from16 v12, v17

    move-object/from16 v23, v13

    move-object/from16 v13, v20

    move/from16 v24, v14

    move-object/from16 v14, v16

    move/from16 v15, v21

    .line 1185
    invoke-interface/range {v1 .. v15}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->registerInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lcom/sec/ims/options/Capabilities;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Landroid/os/Bundle;Z)Z

    move-result v1

    if-nez v1, :cond_11

    .line 1188
    iget-object v1, v0, Lcom/sec/internal/ims/core/RegistrationManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo v2, "registerInternal: failed to create UserAgent."

    move-object/from16 v3, p1

    move/from16 v4, v24

    invoke-virtual {v1, v4, v3, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    .line 1189
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->clearUserAgent()V

    .line 1190
    iget-object v1, v0, Lcom/sec/internal/ims/core/RegistrationManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    move/from16 v2, v22

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/core/PdnController;->isConnected(ILcom/sec/internal/interfaces/ims/core/PdnEventListener;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1191
    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {v3, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    goto :goto_6

    .line 1193
    :cond_10
    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {v3, v1}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    :goto_6
    const/4 v12, 0x0

    goto :goto_7

    :cond_11
    move-object/from16 v3, p1

    move/from16 v12, v18

    .line 1199
    :goto_7
    invoke-static/range {v19 .. v19}, Lcom/sec/internal/ims/core/RegistrationUtils;->isCmcProfile(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v1

    if-eqz v1, :cond_13

    const-string/jumbo v1, "start p2p in registerInternal"

    move-object/from16 v2, v23

    .line 1200
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    iget-object v1, v0, Lcom/sec/internal/ims/core/RegistrationManager;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-eqz v1, :cond_13

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/core/RegisterTask;->getUserAgent()Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v1

    if-eqz v1, :cond_13

    const-string v1, "@"

    move-object/from16 v3, p2

    .line 1203
    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1204
    invoke-virtual {v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    goto :goto_8

    :cond_12
    move-object v8, v3

    .line 1206
    :goto_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lineId : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deviceId : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    iget-object v0, v0, Lcom/sec/internal/ims/core/RegistrationManager;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getCmcServiceHelper()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/ICmcServiceHelper;

    move-result-object v0

    invoke-interface {v0, v3, v8}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/ICmcServiceHelper;->startP2p(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    return v12
.end method

.method removeAdhocProfile(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V
    .locals 5

    .line 1580
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mSimManagers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 1581
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v1

    if-eqz v0, :cond_4

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 1586
    :cond_0
    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isAus()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getDevMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    invoke-static {v2, p1, v0}, Lcom/sec/internal/ims/core/RegistrationUtils;->checkAusEmergencyCall(Lcom/sec/internal/constants/Mno;ILcom/sec/internal/interfaces/ims/core/ISimManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1588
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mAuEmergencyProfile:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/ims/settings/ImsProfile;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/ims/core/RegistrationManagerInternal$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v0

    if-ne p0, v0, :cond_3

    goto :goto_1

    .line 1592
    :cond_1
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getProfiles()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/settings/ImsProfile;

    .line 1593
    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v0

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v2

    if-ne v0, v2, :cond_2

    move v4, v3

    goto :goto_0

    :cond_3
    move v3, v4

    :goto_1
    if-nez v3, :cond_4

    .line 1599
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getExtendedProfiles()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    .line 1600
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onDeregisterd: remove RegisterTask: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "RegiMgr"

    invoke-static {v0, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1601
    invoke-virtual {v1, p2}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->remove(Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    return-void
.end method

.method protected setDelayedDeregisterTimerRunning(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Z)V
    .locals 2

    .line 1905
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    const-string v1, "mmtel"

    invoke-virtual {v0, v1}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    const-string v1, "mmtel-video"

    invoke-virtual {v0, v1}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1906
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v1

    invoke-interface {v0, v1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->setDelayedDeregisterTimerRunning(IZ)V

    .line 1908
    :cond_1
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    const-string/jumbo v1, "smsip"

    invoke-virtual {v0, v1}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1909
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getSmsServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;

    move-result-object p0

    .line 1910
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result p1

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;->setDelayedDeregisterTimerRunning(IZ)V

    :cond_2
    return-void
.end method

.method setVolteFeatures(Lcom/sec/ims/options/Capabilities;Lcom/sec/ims/settings/ImsProfile;I)Lcom/sec/ims/options/Capabilities;
    .locals 2

    .line 1254
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-eqz p0, :cond_0

    .line 1255
    invoke-interface {p0, p3}, Lcom/sec/internal/interfaces/ims/servicemodules/base/IServiceModule;->getSupportFeature(I)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/sec/ims/options/Capabilities;->setFeatures(J)V

    .line 1258
    :cond_0
    invoke-static {p2}, Lcom/sec/internal/ims/core/RegistrationUtils;->isCmcProfile(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 1259
    sget-object p0, Lcom/sec/ims/options/Capabilities;->FEATURE_TAG_MMTEL:Ljava/lang/String;

    invoke-static {p0}, Lcom/sec/ims/options/Capabilities;->getTagFeature(Ljava/lang/String;)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/sec/ims/options/Capabilities;->addFeature(J)V

    const-string p0, "RegiMgr"

    const-string p2, "getOwnCapabilities : add mmtel to Capabilities for CMC-REGI"

    .line 1260
    invoke-static {p0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object p1
.end method

.method protected startSilentEmergency()V
    .locals 2

    .line 875
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHasSilentE911:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 876
    iget v1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mPhoneIdForSilentE911:I

    invoke-interface {p0, v1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->startEmergencyRegistration(ILandroid/os/Message;)V

    const/4 v0, 0x0

    .line 877
    iput-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHasSilentE911:Landroid/os/Message;

    const/4 v0, -0x1

    .line 878
    iput v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mPhoneIdForSilentE911:I

    :cond_0
    return-void
.end method

.method public suspended(Lcom/sec/internal/ims/core/RegisterTask;ZI)V
    .locals 1

    .line 146
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->updateSuspended(Lcom/sec/internal/ims/core/RegisterTask;ZI)Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    .line 149
    :cond_0
    iget-object p3, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    invoke-interface {p3, p1, p2}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->suspended(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Z)Z

    move-result p3

    if-eqz p3, :cond_2

    if-nez p2, :cond_2

    .line 151
    iget-object p3, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v0, 0x20

    invoke-virtual {p3, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p3

    if-nez p3, :cond_1

    .line 152
    iget-object p3, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {p3, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 154
    :cond_1
    iget-object p3, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(I)V

    :cond_2
    if-nez p2, :cond_4

    .line 159
    sget-object p2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object p3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {p2, p3}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 160
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(I)V

    goto :goto_0

    .line 161
    :cond_3
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object p2

    sget-object p3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne p2, p3, :cond_4

    .line 162
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->updateCapabilities(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method protected triggerFullNetworkRegistration(II)V
    .locals 2

    .line 883
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getRegistrationTasks()Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/core/RegistrationManagerInternal$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal$$ExternalSyntheticLambda4;-><init>()V

    .line 884
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/core/RegistrationManagerInternal$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal$$ExternalSyntheticLambda5;-><init>()V

    .line 885
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 887
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/core/RegistrationManagerInternal$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal$$ExternalSyntheticLambda6;-><init>(Lcom/sec/internal/ims/core/RegistrationManagerInternal;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/core/RegisterTask;

    .line 893
    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/ims/core/RegistrationManagerInternal$$ExternalSyntheticLambda7;

    invoke-direct {v0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal$$ExternalSyntheticLambda7;-><init>(II)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method protected tryDeregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZZ)V
    .locals 3

    .line 1294
    invoke-interface {p1, p3}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->setKeepPdn(Z)V

    .line 1295
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getUserAgent()Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object p3

    .line 1297
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v0

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfoId(II)I

    move-result v0

    .line 1298
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getImsRegistrations()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/ImsRegistration;

    if-eqz v0, :cond_0

    .line 1300
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getDeregiReason()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/ims/ImsRegistration;->setDeregiReason(I)V

    .line 1301
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->notifyDeregistering(Lcom/sec/ims/ImsRegistration;)V

    .line 1303
    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mSecImsServiceConnector:Lcom/sec/internal/google/SecImsServiceConnector;

    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/google/SecImsServiceConnector;->getSipTransportImpl(I)Lcom/sec/internal/imsphone/SipTransportImpl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/internal/imsphone/SipTransportImpl;->notifyDeRegistering(Lcom/sec/ims/ImsRegistration;)V

    .line 1307
    :cond_0
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isNeedDelayedDeregister()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1308
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    if-eqz p3, :cond_2

    .line 1309
    invoke-interface {p3}, Lcom/sec/internal/interfaces/ims/core/IUserAgent;->getSuspendState()Z

    move-result p3

    if-eqz p3, :cond_2

    :cond_1
    if-nez p2, :cond_2

    goto :goto_0

    .line 1315
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->deregisterInternal(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Z)V

    return-void

    .line 1310
    :cond_3
    :goto_0
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p3

    const/4 v0, 0x0

    invoke-interface {p3, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->setNeedDelayedDeregister(Z)V

    .line 1311
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->requestDelayedDeRegister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ZJ)V

    return-void
.end method

.method protected tryEmergencyRegister(ILcom/sec/ims/settings/ImsProfile;Landroid/os/Message;Z)V
    .locals 10

    .line 1268
    invoke-virtual {p2}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    .line 1269
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationManager;->getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 1270
    invoke-virtual {v4}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v4

    if-ne v4, v1, :cond_0

    const-string v0, "RegiMgr"

    const-string/jumbo v1, "startEmergencyRegistration: Emergency is supported via IMS PDN"

    .line 1271
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1279
    :cond_1
    new-instance v9, Lcom/sec/internal/ims/core/RegisterTask;

    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    iget-object v7, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mConfigModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    move-object v0, v9

    move-object v1, p2

    move-object v2, p0

    move v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/sec/internal/ims/core/RegisterTask;-><init>(Lcom/sec/ims/settings/ImsProfile;Lcom/sec/internal/ims/core/RegistrationManagerInternal;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/ims/core/PdnController;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;Lcom/sec/internal/interfaces/ims/config/IConfigModule;I)V

    .line 1280
    invoke-virtual {v9, p3}, Lcom/sec/internal/ims/core/RegisterTask;->setResultMessage(Landroid/os/Message;)V

    .line 1281
    invoke-virtual {v9, p2}, Lcom/sec/internal/ims/core/RegisterTask;->setProfile(Lcom/sec/ims/settings/ImsProfile;)V

    .line 1283
    invoke-virtual {v9}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    .line 1284
    iput-boolean v0, v9, Lcom/sec/internal/ims/core/RegisterTask;->mKeepPdn:Z

    :cond_2
    if-eqz p4, :cond_4

    .line 1287
    invoke-virtual {v9}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/Mno;->TELSTRA:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_3

    invoke-virtual {v9}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isCanada()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1288
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->configure(I)V

    .line 1290
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {v0, v9}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->requestTryEmergencyRegister(Lcom/sec/internal/ims/core/RegisterTask;)V

    return-void
.end method

.method protected tryEmergencyRegister(Lcom/sec/internal/ims/core/RegisterTask;)V
    .locals 7

    .line 822
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v0

    const-string/jumbo v1, "tryEmergencyRegister:"

    const-string v2, "RegiMgr"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 824
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v1, 0x76

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 825
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v1, 0x9b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 827
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    .line 828
    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getE911RegiTime()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v3

    invoke-virtual {v2, v3, p1}, Lcom/sec/internal/ims/core/PdnController;->isConnected(ILcom/sec/internal/interfaces/ims/core/PdnEventListener;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 829
    iget-object v2, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {v2, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getE911RegiTime()I

    move-result v0

    int-to-long v3, v0

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 832
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 837
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/RegisterTask;

    .line 838
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/sec/ims/settings/ImsProfile;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_4

    .line 844
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 846
    :cond_4
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryRegister(I)V

    return-void
.end method

.method tryInitialP2pRegistration(Lcom/sec/internal/ims/core/RegisterTask;IILjava/util/Set;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/core/RegisterTask;",
            "II",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 628
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result p3

    .line 629
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    .line 630
    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x7

    if-eq v1, v2, :cond_0

    if-eq v1, v4, :cond_0

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    :cond_0
    const-string/jumbo v2, "tryInitialRegistration, skip pdn connect"

    const-string v5, "RegiMgr"

    .line 634
    invoke-static {v5, p3, p1, v2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    .line 635
    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {p1, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    const/4 v2, 0x1

    .line 636
    invoke-virtual {p1, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setKeepPdn(Z)V

    if-ne v1, v4, :cond_1

    .line 640
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "tryRegister, setPcscfHostname for [WIFI-DIRECT] server: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getDomain()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, p3, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    .line 641
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p3

    invoke-virtual {p3}, Lcom/sec/ims/settings/ImsProfile;->getDomain()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/sec/internal/ims/core/RegisterTask;->setPcscfHostname(Ljava/lang/String;)V

    .line 644
    :cond_1
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 645
    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getPcscfList()Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 646
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 651
    :cond_2
    iget-object v0, p1, Lcom/sec/internal/ims/core/RegisterTask;->mGovernor:Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    invoke-interface {v0, p3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->updatePcscfIpList(Ljava/util/List;)V

    .line 653
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 654
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "tryRegister: wifi-direct or mobile-hotspot registration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InitialRegi : rat = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    .line 656
    invoke-virtual {p0, p1, p3, p4}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->registerInternal(Lcom/sec/internal/ims/core/RegisterTask;Ljava/lang/String;Ljava/util/Set;)Z

    return v2

    :cond_3
    return v3

    :cond_4
    :goto_0
    const-string/jumbo p0, "tryRegister: pcscf is invalid"

    .line 647
    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method protected tryInitialRegistration(Lcom/sec/internal/ims/core/RegisterTask;IILjava/util/Set;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/core/RegisterTask;",
            "II",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    move-object v6, p0

    move-object v7, p1

    move/from16 v8, p2

    move/from16 v0, p3

    .line 489
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v9

    .line 490
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    .line 493
    iget-object v2, v6, Lcom/sec/internal/ims/core/RegistrationManager;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getCmcConnectivityController()Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;->isEnabledWifiDirectFeature()Z

    move-result v2

    const/4 v10, 0x1

    if-eqz v2, :cond_0

    .line 496
    invoke-virtual/range {p0 .. p4}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryInitialP2pRegistration(Lcom/sec/internal/ims/core/RegisterTask;IILjava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v10

    .line 501
    :cond_0
    iget-object v2, v6, Lcom/sec/internal/ims/core/RegistrationManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v2, v0, p1}, Lcom/sec/internal/ims/core/PdnController;->isConnected(ILcom/sec/internal/interfaces/ims/core/PdnEventListener;)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getNetworkConnected()Landroid/net/Network;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 502
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->isSuspended()Z

    move-result v2

    const/4 v11, 0x0

    const-string v12, "RegiMgr"

    if-eqz v2, :cond_2

    .line 503
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tryRegister: network is suspended "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ". try Register once network is resumed."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v9, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    .line 504
    sget-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->NETWORK_SUSPENDED:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    return v11

    .line 508
    :cond_2
    sget-object v2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {p1, v2}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 509
    invoke-virtual {p1, v10}, Lcom/sec/internal/ims/core/RegisterTask;->setKeepPdn(Z)V

    .line 512
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isMobilePreferredForRcs()Z

    move-result v2

    if-eqz v2, :cond_4

    if-nez v0, :cond_4

    .line 513
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "tryRegister: startTimsTimer connected pdn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 515
    iget-object v2, v6, Lcom/sec/internal/ims/core/RegistrationManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/PdnController;->getDefaultNetworkBearer()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/PdnController;->translateNetworkBearer(I)I

    move-result v2

    const-string v3, "InternetPdnRequest"

    if-ne v2, v10, :cond_3

    .line 516
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->stopTimsTimer(Ljava/lang/String;)V

    .line 518
    :cond_3
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->startTimsTimer(Ljava/lang/String;)V

    .line 526
    :cond_4
    iget-object v2, v6, Lcom/sec/internal/ims/core/RegistrationManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPhoneIdForStartConnectivity(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)I

    move-result v3

    invoke-virtual {v2, v0, p1, v3}, Lcom/sec/internal/ims/core/PdnController;->startPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/PdnEventListener;I)I

    .line 527
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isReadyToGetReattach()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v0, "keep pdn and block trying registration. return"

    .line 528
    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v11

    .line 532
    :cond_5
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsEurNonRjil(Lcom/sec/internal/constants/Mno;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, v6, Lcom/sec/internal/ims/core/RegistrationManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 533
    invoke-static {v9}, Lcom/sec/internal/helper/SimUtil;->getOppositeSimSlot(I)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/sec/internal/helper/os/ITelephonyManager;->getCallState(I)I

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, v6, Lcom/sec/internal/ims/core/RegistrationManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    .line 534
    invoke-virtual {v2, v9}, Lcom/sec/internal/ims/core/PdnController;->getDataState(I)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_6

    const-string/jumbo v0, "tryRegister: block trying registration because other slot is on calling. return"

    .line 535
    invoke-static {v12, v9, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v11

    .line 539
    :cond_6
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsChn(Lcom/sec/internal/constants/Mno;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, v6, Lcom/sec/internal/ims/core/RegistrationManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 540
    invoke-interface {v2, v9}, Lcom/sec/internal/helper/os/ITelephonyManager;->getCallState(I)I

    move-result v2

    if-eqz v2, :cond_7

    .line 541
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/helper/SimUtil;->getSlotId(I)I

    move-result v2

    if-eq v9, v2, :cond_7

    const-string/jumbo v0, "tryRegister: block trying registration while on calling because default mobile data use the other slot. return"

    .line 542
    invoke-static {v12, v9, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v11

    .line 546
    :cond_7
    iget-object v2, v6, Lcom/sec/internal/ims/core/RegistrationManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/core/PdnController;->getInterfaceName(Lcom/sec/internal/interfaces/ims/core/PdnEventListener;)Ljava/lang/String;

    move-result-object v2

    .line 547
    iget-object v3, v6, Lcom/sec/internal/ims/core/RegistrationManager;->mNetEvtCtr:Lcom/sec/internal/ims/core/NetworkEventController;

    invoke-virtual {v3, p1, v2}, Lcom/sec/internal/ims/core/NetworkEventController;->getPcscfIpAddress(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 548
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_10

    const-string/jumbo v0, "tryRegister: pcscf is null. return.."

    .line 549
    invoke-static {v12, v9, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    .line 550
    sget-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->EMPTY_PCSCF:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    .line 551
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v2, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v2, :cond_8

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getPcscfPreference()I

    move-result v0

    if-eqz v0, :cond_8

    const-string/jumbo v0, "tryRegister: pcscf is null. return here for dns query retry"

    .line 553
    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v11

    .line 557
    :cond_8
    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 558
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_9

    .line 561
    iget-object v0, v6, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 563
    :cond_9
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->sendEmergencyRegistrationFailed(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 566
    :cond_a
    :goto_0
    iget-object v0, v6, Lcom/sec/internal/ims/core/RegistrationManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo v1, "regi failed due to empty p-cscf"

    invoke-virtual {v0, v9, p1, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    .line 568
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_f

    .line 582
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v13

    .line 583
    invoke-virtual {v13}, Lcom/sec/internal/constants/Mno;->isUSA()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {v13}, Lcom/sec/internal/constants/Mno;->isCanada()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {v13}, Lcom/sec/internal/constants/Mno;->isLatin()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 584
    :cond_b
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result v0

    invoke-interface {p0, v0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 585
    sget-object v0, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->IDLE:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    const/16 v0, 0x2a

    .line 586
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setDeregiReason(I)V

    const/4 v2, -0x1

    .line 587
    sget-object v3, Lcom/sec/internal/constants/ims/SipErrorBase;->EMPTY_PCSCF:Lcom/sec/ims/util/SipError;

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->onRegisterError(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;ILcom/sec/ims/util/SipError;J)V

    .line 591
    :cond_c
    sget-object v0, Lcom/sec/internal/constants/Mno;->CTC:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->CTCMO:Lcom/sec/internal/constants/Mno;

    filled-new-array {v0, v1}, [Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string/jumbo v0, "tryRegister: pcscf is null. Notify registration state to CP."

    .line 592
    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    invoke-virtual {p0, p1, v11}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->notifyImsNotAvailable(Lcom/sec/internal/ims/core/RegisterTask;Z)V

    .line 594
    invoke-virtual {p0, v9}, Lcom/sec/internal/ims/core/RegistrationManager;->getImsIconManager(I)Lcom/sec/internal/ims/core/ImsIconManager;

    move-result-object v0

    if-eqz v0, :cond_d

    const-string/jumbo v0, "tryRegister: pcscf is null. fresh icon once."

    .line 595
    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    invoke-virtual {p0, v9}, Lcom/sec/internal/ims/core/RegistrationManager;->getImsIconManager(I)Lcom/sec/internal/ims/core/ImsIconManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/ImsIconManager;->updateRegistrationIcon()V

    .line 601
    :cond_d
    sget-object v0, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->CU:Lcom/sec/internal/constants/Mno;

    filled-new-array {v0, v1}, [Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v13, v0}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/16 v0, 0x14

    if-ne v8, v0, :cond_e

    const-string/jumbo v0, "tryRegister: pcscf is null. Notify registration state to CP in NR rat."

    .line 602
    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    invoke-virtual {p0, p1, v10}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->notifyImsNotAvailable(Lcom/sec/internal/ims/core/RegisterTask;Z)V

    .line 606
    :cond_e
    invoke-virtual {v13}, Lcom/sec/internal/constants/Mno;->isEmeasewaoce()Z

    move-result v0

    if-eqz v0, :cond_f

    const-string/jumbo v0, "tryRegister: pcscf is null. Notify registration state to CP"

    .line 607
    invoke-static {v12, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    invoke-virtual {p0, p1, v10}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->notifyImsNotAvailable(Lcom/sec/internal/ims/core/RegisterTask;Z)V

    :cond_f
    return v11

    .line 614
    :cond_10
    iget-object v1, v6, Lcom/sec/internal/ims/core/RegistrationManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "tryInitialRegistration on pdn: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ". Register now."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v9, p1, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    .line 615
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InitialRegi : rat = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    const/16 v0, 0x12

    if-ne v8, v0, :cond_11

    .line 616
    iget-object v0, v6, Lcom/sec/internal/ims/core/RegistrationManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/PdnController;->getEpdgPhysicalInterface(I)I

    move-result v0

    if-ne v0, v4, :cond_11

    .line 617
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InitialRegi (Cross SIM Calling) : rat = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/RegisterTask;->setReason(Ljava/lang/String;)V

    :cond_11
    move-object/from16 v0, p4

    .line 620
    invoke-virtual {p0, p1, v2, v0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->registerInternal(Lcom/sec/internal/ims/core/RegisterTask;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v0

    return v0

    .line 623
    :cond_12
    invoke-virtual {p0, p1, v1, v8, v0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryStartPdnConnectivity(Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/ims/settings/ImsProfile;II)Z

    move-result v0

    return v0
.end method

.method tryNextRegistration(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;I)V
    .locals 6

    .line 1841
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPdnType()I

    move-result v0

    const/16 v1, 0xb

    const/16 v2, 0x20

    const/4 v3, 0x2

    if-ne v0, v1, :cond_5

    const-wide/16 v0, 0xbb8

    if-ne p2, v3, :cond_0

    .line 1845
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p2

    const/4 v4, 0x1

    invoke-interface {p2, v0, v1, v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->addDelay(JI)V

    goto :goto_0

    :cond_0
    const/16 v4, 0x18

    if-ne p2, v4, :cond_1

    .line 1848
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p2

    invoke-interface {p2, v0, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->addDelay(J)V

    goto :goto_0

    :cond_1
    const/16 v4, 0x1b

    if-ne p2, v4, :cond_2

    .line 1851
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p2

    const-wide/16 v0, 0x3e8

    invoke-interface {p2, v0, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->addDelay(J)V

    goto :goto_0

    :cond_2
    const/16 v4, 0x15

    if-ne p2, v4, :cond_3

    .line 1852
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->isKeepPdn()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1854
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p2

    invoke-interface {p2, v0, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->addDelay(J)V

    goto :goto_0

    :cond_3
    const-wide/16 v0, 0x0

    .line 1857
    :goto_0
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object p2

    sget-object v4, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-ne p2, v4, :cond_4

    .line 1858
    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {p2, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1859
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 1861
    :cond_4
    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const-wide/16 v4, 0x12c

    add-long/2addr v0, v4

    invoke-virtual {p2, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1862
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 1865
    :cond_5
    iget-object p2, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-virtual {p2, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1866
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getPhoneId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_1
    return-void
.end method

.method protected tryRegister(I)V
    .locals 14

    const-string/jumbo v0, "tryRegister:"

    const-string v1, "RegiMgr"

    .line 309
    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 310
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getSimManager(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 314
    :cond_0
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/sec/internal/ims/core/RegistrationUtils;->pendingHasEmergencyTask(ILcom/sec/internal/constants/Mno;)Z

    move-result v2

    .line 315
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/4 v4, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 317
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mUserEvtCtr:Lcom/sec/internal/ims/core/UserEventController;

    invoke-virtual {v3}, Lcom/sec/internal/ims/core/UserEventController;->isShuttingDown()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string p0, "Device is getting shutdown"

    .line 318
    invoke-static {v1, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 322
    :cond_1
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v4, 0x24

    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v0, "Sim refresh is ongoing. retry after 2s"

    .line 323
    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 324
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(IJ)V

    return-void

    .line 328
    :cond_2
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationManager;->logTask()V

    .line 330
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 332
    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/core/RegisterTask;

    .line 333
    iget-object v6, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRcsPolicyManager:Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;

    .line 334
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getPendingRegistration(I)Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v5, v7, p1}, Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;->pendingRcsRegister(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/util/List;I)Z

    move-result v7

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasNoSim()Z

    move-result v8

    iget-object v6, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const/16 v9, 0x6b

    .line 335
    invoke-virtual {v6, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v9

    iget-object v10, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    iget-object v11, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget-object v6, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    const/4 v13, 0x0

    if-eqz v6, :cond_4

    .line 336
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getOppositeSimSlot(I)I

    move-result v12

    invoke-interface {v6, v12}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->hasEmergencyCall(I)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x1

    move v12, v6

    goto :goto_1

    :cond_4
    move v12, v13

    :goto_1
    move-object v6, v5

    .line 333
    invoke-static/range {v6 .. v12}, Lcom/sec/internal/ims/core/RegistrationUtils;->needToSkipTryRegister(Lcom/sec/internal/ims/core/RegisterTask;ZZZLcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/ims/core/PdnController;Z)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_0

    .line 340
    :cond_5
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getRcsVolteSingleRegistration()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;

    move-result-object v6

    .line 341
    sget-object v7, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;->IMS_PROFILE_BASED_REG:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;

    if-eq v6, v7, :cond_7

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v7

    sget-object v8, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONFIGURED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne v7, v8, :cond_7

    .line 342
    iget-object v7, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRcsPolicyManager:Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;

    invoke-interface {v7, p1}, Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;->getRegiConfig(I)Lcom/sec/internal/helper/RegiConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/internal/helper/RegiConfig;->getRcsVolteSingleReg()I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_6

    goto :goto_2

    .line 344
    :cond_6
    invoke-virtual {v6}, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;->getValue()I

    move-result v7

    .line 343
    :goto_2
    invoke-static {v7}, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;->valueOf(I)Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;

    move-result-object v6

    .line 345
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/sec/internal/ims/core/SlotBasedConfig;->setRcsVolteSingleRegistration(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;)V

    .line 347
    invoke-direct {p0, v6, p1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->isSingleReg(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegistrationType;I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 348
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    .line 349
    invoke-virtual {v3, v5}, Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;->remove(Ljava/lang/Object;)Z

    .line 350
    invoke-virtual {v3, v13}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v5

    invoke-interface {v5, v6}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->enableRcsOverIms(Lcom/sec/ims/settings/ImsProfile;)V

    goto/16 :goto_0

    .line 355
    :cond_7
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v6

    if-nez v6, :cond_8

    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v6

    invoke-interface {v6, v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->hasEmergencyTaskInPriority(Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 356
    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mHandler:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v5, p1, v6, v7}, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->sendTryRegister(IJ)V

    goto/16 :goto_0

    .line 361
    :cond_8
    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryRegister(Lcom/sec/internal/ims/core/RegisterTask;)Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz v2, :cond_3

    .line 362
    invoke-virtual {v5}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/core/RegistrationManager;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v5

    iget-boolean v5, v5, Lcom/sec/internal/constants/ims/os/NetworkEvent;->outOfService:Z

    if-nez v5, :cond_3

    const-string/jumbo p0, "tryRegister: pending EM regi for the sequential regi of Lab TC."

    .line 363
    invoke-static {v1, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :cond_9
    return-void
.end method

.method protected tryRegister(Lcom/sec/internal/ims/core/RegisterTask;)Z
    .locals 6

    .line 372
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->checkForTryRegister(Lcom/sec/internal/ims/core/RegisterTask;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 373
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getRegiFailReason()I

    move-result v0

    .line 374
    sget-object v1, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->UNKNOWN:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result v1

    if-le v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getLastRegiFailReason()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 376
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->reportRegistrationStatus(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 377
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getPdn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",REG FAIL:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->valueOf(I)Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const v1, 0x11010002

    .line 377
    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 381
    :cond_0
    invoke-static {v0}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->valueOf(I)Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    move-result-object p0

    .line 382
    sget-object v0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->VOPS_OFF:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    sget-object v1, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->USER_SETTINGS_OFF:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    sget-object v2, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->MAIN_SWITCHES_OFF:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    sget-object v3, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->ROAMING_NOT_SUPPORTED:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    sget-object v4, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->DATA_RAT_IS_NOT_PS_VOICE:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    sget-object v5, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->ONGOING_OTA:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    filled-new-array/range {v0 .. v5}, [Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->isOneOf([Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NOT_TRIGGERED : reason - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->lazer(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method tryStartPdnConnectivity(Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/ims/settings/ImsProfile;II)Z
    .locals 6

    .line 664
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v0

    .line 665
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/RegistrationUtils;->hasRcsService(ILcom/sec/ims/settings/ImsProfile;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x12

    if-eq p3, v1, :cond_0

    .line 667
    invoke-static {v0, p2}, Lcom/sec/internal/ims/core/RegistrationUtils;->hasVolteService(ILcom/sec/ims/settings/ImsProfile;)Z

    move-result p3

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 668
    invoke-static {p3, v1, v0}, Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils;->getRcsUserConsent(Landroid/content/Context;Lcom/sec/internal/helper/os/ITelephonyManager;I)Z

    move-result p3

    if-nez p3, :cond_0

    .line 669
    sget-object p0, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->RCS_ONLY_NEEDED:Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_FRSN;->getCode()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/RegisterTask;->setRegiFailReason(I)V

    const/4 p0, 0x0

    return p0

    .line 674
    :cond_0
    iget-object p3, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tryRegister: connecting to network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, p1, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    .line 675
    sget-object p3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->CONNECTING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    invoke-virtual {p1, p3}, Lcom/sec/internal/ims/core/RegisterTask;->setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V

    .line 677
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p3

    invoke-interface {p3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isMobilePreferredForRcs()Z

    move-result p3

    const/4 v1, 0x1

    if-eqz p3, :cond_2

    if-nez p4, :cond_2

    .line 679
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result p3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tryRegister: startTimsTimer rcs pdn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RegiMgr"

    invoke-static {v3, p3, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 680
    iget-object p3, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {p3}, Lcom/sec/internal/ims/core/PdnController;->getDefaultNetworkBearer()I

    move-result v2

    invoke-virtual {p3, v2}, Lcom/sec/internal/ims/core/PdnController;->translateNetworkBearer(I)I

    move-result p3

    const-string v2, "InternetPdnRequest"

    if-ne p3, v1, :cond_1

    .line 682
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p3

    invoke-interface {p3, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->stopTimsTimer(Ljava/lang/String;)V

    .line 683
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result p3

    invoke-interface {p0, p3, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    .line 685
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p3

    invoke-interface {p3, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->startTimsTimer(Ljava/lang/String;)V

    .line 688
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPhoneIdForStartConnectivity(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)I

    move-result p3

    invoke-virtual {p0, p4, p1, p3}, Lcom/sec/internal/ims/core/PdnController;->startPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/PdnEventListener;I)I

    .line 689
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object p0

    .line 690
    sget-object p3, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->CTCMO:Lcom/sec/internal/constants/Mno;

    sget-object v4, Lcom/sec/internal/constants/Mno;->CTC:Lcom/sec/internal/constants/Mno;

    sget-object v5, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    filled-new-array {p3, v2, v3, v4, v5}, [Lcom/sec/internal/constants/Mno;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result p3

    if-nez p3, :cond_3

    invoke-virtual {p0}, Lcom/sec/internal/constants/Mno;->isEmeasewaoce()Z

    move-result p0

    if-nez p0, :cond_3

    iget-object p0, p1, Lcom/sec/internal/ims/core/RegisterTask;->mMno:Lcom/sec/internal/constants/Mno;

    .line 691
    invoke-virtual {p0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->isRcsOnly()Z

    move-result p0

    if-nez p0, :cond_4

    invoke-static {p2}, Lcom/sec/internal/ims/core/RegistrationUtils;->isCmcProfile(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result p0

    if-nez p0, :cond_4

    .line 692
    :cond_3
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p0

    const-string p3, "ImsPdnRequst"

    invoke-interface {p0, p3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->startTimsTimer(Ljava/lang/String;)V

    .line 695
    :cond_4
    invoke-virtual {p2}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result p0

    const/16 p2, 0xb

    const-string p3, "PDN REQUEST : type - "

    if-ne p0, p2, :cond_5

    .line 696
    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLogTimer;->setPdnStartTime(IZ)V

    .line 697
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " <+"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 698
    invoke-static {v0}, Lcom/sec/internal/log/IMSLogTimer;->getPdnStartTime(I)J

    move-result-wide p2

    invoke-static {v0}, Lcom/sec/internal/log/IMSLogTimer;->getLatchEndTime(I)J

    move-result-wide v2

    sub-long/2addr p2, v2

    long-to-double p2, p2

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr p2, v2

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "s>"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 697
    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->lazer(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    goto :goto_0

    .line 700
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->lazer(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    :goto_0
    return v1
.end method

.method protected updateRegistration(ILcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;)Z
    .locals 5

    .line 909
    invoke-static {p1}, Lcom/sec/internal/ims/core/RegistrationUtils;->getPendingRegistrationInternal(I)Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 911
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/RegisterTask;

    .line 912
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v3

    if-eq v3, p1, :cond_0

    goto :goto_0

    .line 915
    :cond_0
    sget-object v3, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    sget-object v4, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    filled-new-array {v3, v4}, [Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/RegisterTask;->isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 916
    invoke-virtual {p0, v2, p2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;)Z

    move-result v2

    or-int/2addr v1, v2

    goto :goto_0

    .line 918
    :cond_1
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->tryRegister(Lcom/sec/internal/ims/core/RegisterTask;)Z

    goto :goto_0

    :cond_2
    return v1
.end method

.method protected updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;)Z
    .locals 1

    const/4 v0, 0x0

    .line 926
    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;Z)Z

    move-result p2

    .line 928
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRegStackIf:Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;->updatePani(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)V

    return p2
.end method

.method protected updateRegistration(Lcom/sec/internal/ims/core/RegisterTask;Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;Z)Z
    .locals 7

    .line 937
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/core/RegistrationConstants$UpdateRegiReason;->isForceUpdateReason()Z

    move-result v2

    .line 938
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result v0

    .line 939
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    .line 941
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget-object v5, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mVsm:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-static {v3, p1, v4, v5}, Lcom/sec/internal/ims/core/RegistrationRatDecider;->getDecidedRat(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;)I

    move-result v4

    .line 942
    iget-object v3, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateRegistration: reason="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "|"

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getReason()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", rat="

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", isForceReRegi="

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", immediately="

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, v0, p1, p2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    .line 945
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManager;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object v5

    const-string p2, "RegiMgr"

    const/4 v3, 0x0

    if-nez v5, :cond_0

    .line 947
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "updateRegistration: profile="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", NetworkEvent is null"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, v0, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return v3

    .line 951
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v1

    invoke-interface {v1, v4, v5, v2, p3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->getUpdateRegiPendingReason(ILcom/sec/internal/constants/ims/os/NetworkEvent;ZZ)Ljava/lang/String;

    move-result-object v1

    .line 952
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 953
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateRegistration: Pending by ["

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    const/4 p0, 0x1

    if-eqz v2, :cond_1

    .line 955
    iput-boolean p0, p1, Lcom/sec/internal/ims/core/RegisterTask;->mHasForcedPendingUpdate:Z

    goto :goto_0

    .line 957
    :cond_1
    iput-boolean p0, p1, Lcom/sec/internal/ims/core/RegisterTask;->mHasPendingUpdate:Z

    .line 960
    :goto_0
    invoke-virtual {p1, p3}, Lcom/sec/internal/ims/core/RegisterTask;->setImmediatePendingUpdate(Z)V

    .line 962
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->isEpdgHandoverInProgress()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 963
    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/RegisterTask;->setHasPendingEpdgHandover(Z)V

    :cond_2
    return v3

    .line 968
    :cond_3
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v1

    iget v6, v5, Lcom/sec/internal/constants/ims/os/NetworkEvent;->network:I

    invoke-interface {v1, v4, v6}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->determineDeRegistration(II)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object v1

    sget-object v6, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-eq v1, v6, :cond_4

    goto :goto_1

    .line 973
    :cond_4
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v1

    invoke-interface {v1, v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isLocationInfoLoaded(I)Z

    move-result v1

    if-nez v1, :cond_5

    const-string p0, "location info is not loaded"

    .line 974
    invoke-static {p2, v0, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v3

    .line 978
    :cond_5
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getMno()Lcom/sec/internal/constants/Mno;

    move-result-object v1

    sget-object v6, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    if-ne v1, v6, :cond_6

    .line 979
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManager;->getPendingRegistration(I)Ljava/util/List;

    move-result-object v1

    .line 980
    iget-object v6, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mRcsPolicyManager:Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;

    invoke-interface {v6, p1, v1}, Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;->doRcsConfig(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string p0, "RCS auto-configuration triggered.."

    .line 981
    invoke-static {p2, v0, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    return v3

    :cond_6
    move-object v0, p0

    move-object v1, p1

    move v3, p3

    .line 985
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/core/RegistrationManagerInternal;->compareSvcAndDoUpdateRegistration(Lcom/sec/internal/ims/core/RegisterTask;ZZILcom/sec/internal/constants/ims/os/NetworkEvent;)Z

    move-result p0

    return p0

    .line 969
    :cond_7
    :goto_1
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManager;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string p2, "Stop updateRegistration"

    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    return v3
.end method
