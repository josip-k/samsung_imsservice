.class Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;
.super Landroid/telephony/TelephonyCallback;
.source "TelephonyCallbackForPdnController.java"

# interfaces
.implements Landroid/telephony/TelephonyCallback$DataConnectionStateListener;
.implements Landroid/telephony/TelephonyCallback$ServiceStateListener;
.implements Landroid/telephony/TelephonyCallback$CellInfoListener;
.implements Landroid/telephony/TelephonyCallback$PreciseDataConnectionStateListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

.field mInternalSimSlot:I

.field mMobileRadioConnected:Z

.field private final mPdnController:Lcom/sec/internal/ims/core/PdnController;

.field mSubId:I


# direct methods
.method public static synthetic $r8$lambda$RiHQbRJ2xAlIrCU3FRMulLtWMgw(Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;ILandroid/telephony/PreciseDataConnectionState;Landroid/telephony/data/ApnSetting;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->lambda$onPreciseDataConnectionStateChanged$0(ILandroid/telephony/PreciseDataConnectionState;Landroid/telephony/data/ApnSetting;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-class v0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/interfaces/ims/IImsFramework;II)V
    .locals 0

    .line 50
    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    .line 53
    iput-object p2, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 55
    iput p3, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mInternalSimSlot:I

    .line 56
    iput p4, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mSubId:I

    const/4 p1, 0x0

    .line 57
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mMobileRadioConnected:Z

    return-void
.end method

.method private synthetic lambda$onPreciseDataConnectionStateChanged$0(ILandroid/telephony/PreciseDataConnectionState;Landroid/telephony/data/ApnSetting;)V
    .locals 1

    .line 247
    invoke-virtual {p3}, Landroid/telephony/data/ApnSetting;->getApnTypeBitmask()I

    move-result p3

    const/16 v0, 0x40

    and-int/2addr p3, v0

    if-ne p3, v0, :cond_0

    .line 248
    iget-object p3, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget p0, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mInternalSimSlot:I

    invoke-virtual {p3, p0}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/constants/ims/os/NetworkState;->setPreciseDataConnectionState(ILandroid/telephony/PreciseDataConnectionState;)V

    :cond_0
    return-void
.end method

.method private notifySnapshotState(II)V
    .locals 5

    .line 266
    sget-object v0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifySnapshotState: snapshotState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " old="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    .line 267
    invoke-virtual {v2, p2}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v2

    .line 268
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->getSnapshotState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 266
    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getSnapshotState()I

    move-result v0

    if-eq v0, p1, :cond_5

    .line 270
    iget-object v0, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/os/NetworkState;->setSnapshotState(I)V

    .line 272
    iget-object p1, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/os/NetworkState;->getSnapshotState()I

    move-result p1

    sget v0, Lcom/sec/ims/extensions/ServiceStateExt;->SNAPSHOT_STATUS_ACTIVATED:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 274
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget-object v0, v0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    monitor-enter v0

    .line 275
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 276
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

    .line 277
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/NetworkCallback;

    .line 279
    iget v4, v2, Lcom/sec/internal/ims/core/NetworkCallback;->mPhoneId:I

    if-eq v4, p2, :cond_1

    goto :goto_1

    .line 283
    :cond_1
    iget v2, v2, Lcom/sec/internal/ims/core/NetworkCallback;->mNetworkType:I

    if-ne v2, v1, :cond_2

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    .line 288
    invoke-interface {v3, v2}, Lcom/sec/internal/interfaces/ims/core/PdnEventListener;->onSuspendedBySnapshot(I)V

    goto :goto_1

    .line 290
    :cond_3
    invoke-interface {v3, v2}, Lcom/sec/internal/interfaces/ims/core/PdnEventListener;->onResumedBySnapshot(I)V

    goto :goto_1

    .line 293
    :cond_4
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method public getInternalSimSlot()I
    .locals 0

    .line 65
    iget p0, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mInternalSimSlot:I

    return p0
.end method

.method public getSubId()I
    .locals 0

    .line 61
    iget p0, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mSubId:I

    return p0
.end method

.method public onCellInfoChanged(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 222
    iget-object v0, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget v1, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mInternalSimSlot:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v0

    .line 223
    sget-object v1, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mInternalSimSlot:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCellInfoChanged: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-nez p1, :cond_0

    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getAllCellInfo()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 230
    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/os/NetworkState;->setAllCellInfo(Ljava/util/List;)V

    .line 232
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getAllCellInfo()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/PdnController;->getEventLog()Lcom/sec/internal/helper/SimpleEventLog;

    move-result-object v0

    const-string v1, "onCellInfoChanged, strangeCellInfoDiscovered : "

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget-object v0, v0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;

    .line 237
    iget v2, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mInternalSimSlot:I

    invoke-interface {v1, p1, v2}, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;->onCellInfoChanged(Ljava/util/List;I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 4

    .line 260
    sget-object v0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mInternalSimSlot:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDataConnectionStateChanged: state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", networkType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, v1, p2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 262
    iget-object p2, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget p0, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mInternalSimSlot:I

    invoke-virtual {p2, p0, p1}, Lcom/sec/internal/ims/core/PdnController;->setDataState(II)V

    return-void
.end method

.method public onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V
    .locals 4

    .line 243
    sget-object v0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mInternalSimSlot:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreciseDataConnectionStateChanged: state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 245
    invoke-virtual {p1}, Landroid/telephony/PreciseDataConnectionState;->getTransportType()I

    move-result v0

    .line 246
    invoke-virtual {p1}, Landroid/telephony/PreciseDataConnectionState;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0, p1}, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;ILandroid/telephony/PreciseDataConnectionState;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 253
    iget-object v0, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget-object v0, v0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;

    .line 254
    iget v2, p0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mInternalSimSlot:I

    invoke-interface {v1, v2, p1}, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;->onPreciseDataConnectionStateChanged(ILandroid/telephony/PreciseDataConnectionState;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 70
    iget-object v2, v0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget v3, v0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mInternalSimSlot:I

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v2

    .line 71
    new-instance v3, Lcom/sec/internal/helper/os/ServiceStateWrapper;

    invoke-direct {v3, v1}, Lcom/sec/internal/helper/os/ServiceStateWrapper;-><init>(Landroid/telephony/ServiceState;)V

    .line 72
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 75
    invoke-virtual {v3}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 76
    invoke-virtual {v3}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/sec/internal/constants/ims/os/NetworkState;->setCellIdentity(Landroid/telephony/CellIdentity;)V

    .line 79
    :cond_0
    invoke-virtual {v3}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getDataRegState()I

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v5, v6, :cond_2

    if-ne v5, v7, :cond_1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move v6, v7

    .line 82
    :goto_1
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->isEmergencyOnly()Z

    move-result v9

    const-string v10, "=>"

    if-eq v6, v9, :cond_3

    .line 83
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "EmergencyOnlyReg:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->isEmergencyOnly()Z

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v9, v0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget v11, v0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mInternalSimSlot:I

    invoke-virtual {v9, v11}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/sec/internal/constants/ims/os/NetworkState;->setEmergencyOnly(Z)V

    .line 87
    :cond_3
    invoke-virtual {v3}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->isUsingNonTerrestrialNetwork()Z

    move-result v6

    .line 88
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->getUsingNonTerrestrialNetwork()Z

    move-result v9

    if-eq v6, v9, :cond_4

    .line 89
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "NonTerrestrialNetwork:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->getUsingNonTerrestrialNetwork()Z

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    invoke-virtual {v2, v6}, Lcom/sec/internal/constants/ims/os/NetworkState;->setUsingNonTerrestrialNetwork(Z)V

    move v6, v7

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    .line 94
    :goto_2
    invoke-virtual {v3}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getImsVoiceAvail()Z

    move-result v9

    const/4 v11, 0x3

    if-eq v5, v7, :cond_6

    if-ne v5, v11, :cond_5

    goto :goto_3

    :cond_5
    const/4 v12, 0x0

    goto :goto_4

    :cond_6
    :goto_3
    move v12, v7

    :goto_4
    invoke-static {v9, v12}, Lcom/sec/internal/constants/ims/os/VoPsIndication;->translateVops(ZZ)Lcom/sec/internal/constants/ims/os/VoPsIndication;

    move-result-object v9

    .line 98
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->getVopsIndication()Lcom/sec/internal/constants/ims/os/VoPsIndication;

    move-result-object v12

    if-eq v9, v12, :cond_7

    .line 99
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "VoPS:"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->getVopsIndication()Lcom/sec/internal/constants/ims/os/VoPsIndication;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    invoke-virtual {v2, v9}, Lcom/sec/internal/constants/ims/os/NetworkState;->setVopsIndication(Lcom/sec/internal/constants/ims/os/VoPsIndication;)V

    move v6, v7

    .line 104
    :cond_7
    invoke-virtual {v3}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getIsEbSupported()Z

    move-result v9

    invoke-static {v9}, Lcom/sec/internal/constants/ims/os/EmcBsIndication;->translateEmcbs(Z)Lcom/sec/internal/constants/ims/os/EmcBsIndication;

    move-result-object v9

    .line 105
    invoke-virtual {v3}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getMobileDataNetworkType()I

    move-result v12

    .line 106
    sget-object v13, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->LOG_TAG:Ljava/lang/String;

    iget v14, v0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mInternalSimSlot:I

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "emcbsIndication: "

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", mobileDataNetworkType: "

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v13, v14, v8}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v8, 0xd

    if-eq v12, v8, :cond_a

    const/16 v13, 0x14

    if-ne v12, v13, :cond_8

    goto :goto_5

    :cond_8
    if-nez v12, :cond_9

    .line 115
    sget-object v9, Lcom/sec/internal/constants/ims/os/EmcBsIndication;->UNKNOWN:Lcom/sec/internal/constants/ims/os/EmcBsIndication;

    goto :goto_5

    .line 119
    :cond_9
    sget-object v9, Lcom/sec/internal/constants/ims/os/EmcBsIndication;->NOT_SUPPORTED:Lcom/sec/internal/constants/ims/os/EmcBsIndication;

    .line 122
    :cond_a
    :goto_5
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->getEmcBsIndication()Lcom/sec/internal/constants/ims/os/EmcBsIndication;

    move-result-object v13

    if-eq v13, v9, :cond_b

    .line 123
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "EmcBsIndi:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->getEmcBsIndication()Lcom/sec/internal/constants/ims/os/EmcBsIndication;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    invoke-virtual {v2, v9}, Lcom/sec/internal/constants/ims/os/NetworkState;->setEmcBsIndication(Lcom/sec/internal/constants/ims/os/EmcBsIndication;)V

    .line 127
    :cond_b
    invoke-virtual {v3}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getVoiceRegState()I

    move-result v9

    .line 128
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->getVoiceRegState()I

    move-result v13

    if-eq v13, v9, :cond_c

    .line 129
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "VoiceReg:"

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->getVoiceRegState()I

    move-result v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    invoke-virtual {v2, v9}, Lcom/sec/internal/constants/ims/os/NetworkState;->setVoiceRegState(I)V

    move v6, v7

    .line 134
    :cond_c
    invoke-virtual {v3}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getVoiceNetworkType()I

    move-result v9

    .line 135
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->getVoiceNetworkType()I

    move-result v13

    if-eq v13, v9, :cond_d

    .line 136
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "VoiceNet:"

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->getVoiceNetworkType()I

    move-result v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    invoke-virtual {v2, v9}, Lcom/sec/internal/constants/ims/os/NetworkState;->setVoiceNetworkType(I)V

    move v6, v7

    .line 141
    :cond_d
    invoke-virtual {v3}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->isPsOnlyReg()Z

    move-result v9

    .line 142
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->isPsOnlyReg()Z

    move-result v13

    if-eq v9, v13, :cond_e

    .line 143
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "PsOnly:"

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->isPsOnlyReg()Z

    move-result v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    invoke-virtual {v2, v9}, Lcom/sec/internal/constants/ims/os/NetworkState;->setPsOnlyReg(Z)V

    move v6, v7

    .line 148
    :cond_e
    invoke-virtual {v3}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getVoiceRoamingType()I

    move-result v9

    if-ne v9, v11, :cond_f

    move v9, v7

    goto :goto_6

    :cond_f
    const/4 v9, 0x0

    :goto_6
    invoke-virtual {v2, v9}, Lcom/sec/internal/constants/ims/os/NetworkState;->setInternationalRoaming(Z)V

    .line 151
    invoke-virtual {v3}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getDataRoaming()Z

    move-result v9

    .line 152
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->isDataRoaming()Z

    move-result v11

    if-eq v9, v11, :cond_10

    .line 153
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DataRoaming:"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->isDataRoaming()Z

    move-result v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    invoke-virtual {v2, v9}, Lcom/sec/internal/constants/ims/os/NetworkState;->setDataRoaming(Z)V

    move v6, v7

    .line 158
    :cond_10
    invoke-virtual {v3}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getVoiceRoaming()Z

    move-result v9

    .line 159
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->isVoiceRoaming()Z

    move-result v11

    if-eq v9, v11, :cond_11

    .line 160
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "VoiceRoaming:"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->isVoiceRoaming()Z

    move-result v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    invoke-virtual {v2, v9}, Lcom/sec/internal/constants/ims/os/NetworkState;->setVoiceRoaming(Z)V

    move v6, v7

    .line 165
    :cond_11
    invoke-virtual {v3}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v9

    .line 166
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_12

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_12

    .line 168
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Operator:"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    invoke-virtual {v2, v9}, Lcom/sec/internal/constants/ims/os/NetworkState;->setOperatorNumeric(Ljava/lang/String;)V

    move v6, v7

    .line 173
    :cond_12
    iget v9, v0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mInternalSimSlot:I

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v11

    if-ne v9, v11, :cond_13

    .line 174
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/internal/helper/NetworkUtil;->isMobileDataConnected(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_13

    move v9, v7

    goto :goto_7

    :cond_13
    const/4 v9, 0x0

    .line 175
    :goto_7
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->isDataConnectedState()Z

    move-result v11

    if-eq v9, v11, :cond_14

    .line 176
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DataConnState:"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->isDataConnectedState()Z

    move-result v11

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    invoke-virtual {v2, v9}, Lcom/sec/internal/constants/ims/os/NetworkState;->setDataConnectionState(Z)V

    move v6, v7

    :cond_14
    const/16 v9, 0x13

    if-ne v12, v9, :cond_15

    move v12, v8

    .line 186
    :cond_15
    invoke-virtual {v2, v12}, Lcom/sec/internal/constants/ims/os/NetworkState;->setMobileDataNetworkType(I)V

    .line 187
    invoke-virtual {v3}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getMobileDataRegState()I

    move-result v8

    invoke-virtual {v2, v8}, Lcom/sec/internal/constants/ims/os/NetworkState;->setMobileDataRegState(I)V

    .line 189
    invoke-virtual {v3}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getMobileDataRegState()I

    move-result v2

    if-nez v2, :cond_16

    .line 190
    iget-boolean v2, v0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mMobileRadioConnected:Z

    if-nez v2, :cond_17

    .line 191
    iput-boolean v7, v0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mMobileRadioConnected:Z

    .line 192
    iget-object v2, v0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget-object v2, v2, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_17

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;

    .line 193
    iget v8, v0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mInternalSimSlot:I

    invoke-interface {v7, v8}, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;->onMobileRadioConnected(I)V

    goto :goto_8

    .line 197
    :cond_16
    iget-boolean v2, v0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mMobileRadioConnected:Z

    if-eqz v2, :cond_17

    const/4 v2, 0x0

    .line 198
    iput-boolean v2, v0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mMobileRadioConnected:Z

    .line 199
    iget-object v2, v0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget-object v2, v2, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_17

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;

    .line 200
    iget v8, v0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mInternalSimSlot:I

    invoke-interface {v7, v8}, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;->onMobileRadioDisconnected(I)V

    goto :goto_9

    .line 205
    :cond_17
    sget-object v2, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->LOG_TAG:Ljava/lang/String;

    iget v7, v0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mInternalSimSlot:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onServiceStateChanged: state="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "Changed="

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    .line 206
    invoke-static {v1, v4}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 205
    invoke-static {v2, v7, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 208
    iget-object v1, v0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iput-boolean v6, v1, Lcom/sec/internal/ims/core/PdnController;->mNeedCellLocationUpdate:Z

    .line 210
    invoke-virtual {v3}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getDataNetworkType()I

    move-result v2

    iget v4, v0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mInternalSimSlot:I

    invoke-virtual {v1, v2, v5, v6, v4}, Lcom/sec/internal/ims/core/PdnController;->notifyDataConnectionState(IIZI)V

    .line 212
    invoke-virtual {v3}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getSnapshotStatus()I

    move-result v1

    iget v2, v0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mInternalSimSlot:I

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->notifySnapshotState(II)V

    .line 214
    iget-object v1, v0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getGeolocationController()Lcom/sec/internal/interfaces/ims/core/IGeolocationController;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 216
    iget v0, v0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->mInternalSimSlot:I

    invoke-interface {v1, v0, v3}, Lcom/sec/internal/interfaces/ims/core/IGeolocationController;->notifyServiceStateChanged(ILcom/sec/internal/helper/os/ServiceStateWrapper;)V

    :cond_18
    return-void
.end method
