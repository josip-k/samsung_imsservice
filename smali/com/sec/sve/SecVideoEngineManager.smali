.class public Lcom/sec/sve/SecVideoEngineManager;
.super Ljava/lang/Object;
.source "SecVideoEngineManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/sve/SecVideoEngineManager$ConnectionListener;
    }
.end annotation


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private final mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private final mListener:Lcom/sec/sve/SecVideoEngineManager$ConnectionListener;

.field private mService:Lcom/sec/sve/ISecVideoEngineService;


# direct methods
.method static bridge synthetic -$$Nest$fgetLOG_TAG(Lcom/sec/sve/SecVideoEngineManager;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->LOG_TAG:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmListener(Lcom/sec/sve/SecVideoEngineManager;)Lcom/sec/sve/SecVideoEngineManager$ConnectionListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mListener:Lcom/sec/sve/SecVideoEngineManager$ConnectionListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmService(Lcom/sec/sve/SecVideoEngineManager;Lcom/sec/sve/ISecVideoEngineService;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/sve/SecVideoEngineManager$ConnectionListener;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-class v0, Lcom/sec/sve/SecVideoEngineManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->LOG_TAG:Ljava/lang/String;

    .line 32
    new-instance v0, Lcom/sec/sve/SecVideoEngineManager$1;

    invoke-direct {v0, p0}, Lcom/sec/sve/SecVideoEngineManager$1;-><init>(Lcom/sec/sve/SecVideoEngineManager;)V

    iput-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mConnection:Landroid/content/ServiceConnection;

    .line 58
    iput-object p1, p0, Lcom/sec/sve/SecVideoEngineManager;->mContext:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/sec/sve/SecVideoEngineManager;->mListener:Lcom/sec/sve/SecVideoEngineManager$ConnectionListener;

    return-void
.end method


# virtual methods
.method public bindToNetwork(Landroid/net/Network;)V
    .locals 3

    .line 101
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    if-nez v0, :cond_0

    .line 102
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->LOG_TAG:Ljava/lang/String;

    const-string p1, "SVE service is not ready!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindToNetwork "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :try_start_0
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    invoke-interface {p0, p1}, Lcom/sec/sve/ISecVideoEngineService;->bindToNetwork(Landroid/net/Network;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 111
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public connectService()V
    .locals 4

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.sve"

    const-string v2, "com.sec.sve.service.SecVideoEngineService"

    .line 82
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    iget-object v1, p0, Lcom/sec/sve/SecVideoEngineManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mConnection:Landroid/content/ServiceConnection;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, p0, v3, v2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public cpveStartInjection(Ljava/lang/String;I)I
    .locals 2

    .line 1674
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 1675
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->LOG_TAG:Ljava/lang/String;

    const-string p1, "SVE service is not ready!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1680
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->cpveStartInjection(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1682
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v1
.end method

.method public cpveStopInjection()I
    .locals 2

    .line 1689
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 1690
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->LOG_TAG:Ljava/lang/String;

    const-string v0, "SVE service is not ready!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1695
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/sec/sve/ISecVideoEngineService;->cpveStopInjection()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1697
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v1
.end method

.method public disconnectService()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 95
    iget-object v1, p0, Lcom/sec/sve/SecVideoEngineManager;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 96
    iput-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    :cond_0
    return-void
.end method

.method public isSupportingCameraMotor()Z
    .locals 1

    .line 1493
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1498
    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/sec/sve/ISecVideoEngineService;->isSupportingCameraMotor()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1500
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public notifyImsServiceReady(Landroid/os/IBinder;)V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    if-nez v0, :cond_0

    .line 64
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->LOG_TAG:Ljava/lang/String;

    const-string p1, "SVE service is not ready!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "notifyImsServiceReady"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :try_start_0
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    invoke-interface {p0, p1}, Lcom/sec/sve/ISecVideoEngineService;->notifyImsServiceReady(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 73
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public registerForCmcEventListener(Lcom/sec/sve/ICmcMediaEventListener;)V
    .locals 2

    .line 839
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerForCmcEventListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    if-nez p0, :cond_0

    return-void

    .line 845
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/sec/sve/ISecVideoEngineService;->registerForCmcEventListener(Lcom/sec/sve/ICmcMediaEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 847
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public registerForMediaEventListener(Lcom/sec/sve/IImsMediaEventListener;)V
    .locals 2

    .line 813
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerForMediaEventListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    if-nez p0, :cond_0

    return-void

    .line 819
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/sec/sve/ISecVideoEngineService;->registerForMediaEventListener(Lcom/sec/sve/IImsMediaEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 821
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public restartEmoji(I)V
    .locals 0

    .line 1662
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    if-nez p0, :cond_0

    return-void

    .line 1667
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/sec/sve/ISecVideoEngineService;->sveRestartEmoji(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1669
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public saeCreateChannel(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;ZZ)I
    .locals 13

    move-object v0, p0

    .line 262
    iget-object v0, v0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v12, -0x1

    if-nez v0, :cond_0

    return v12

    :cond_0
    move v1, p1

    move v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    .line 267
    :try_start_0
    invoke-interface/range {v0 .. v11}, Lcom/sec/sve/ISecVideoEngineService;->saeCreateChannel(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;ZZ)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 271
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    return v12
.end method

.method public saeDeleteChannel(I)I
    .locals 1

    .line 336
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 341
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/sec/sve/ISecVideoEngineService;->saeDeleteChannel(I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 343
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public saeEnableSRTP(III[BI)I
    .locals 6

    .line 378
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 p0, -0x1

    if-nez v0, :cond_0

    return p0

    :cond_0
    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    .line 383
    :try_start_0
    invoke-interface/range {v0 .. v5}, Lcom/sec/sve/ISecVideoEngineService;->saeEnableSRTP(III[BI)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    .line 385
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return p0
.end method

.method public saeGetAudioRxTrackId(I)I
    .locals 1

    .line 504
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 509
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/sec/sve/ISecVideoEngineService;->saeGetAudioRxTrackId(I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 511
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public saeGetLastPlayedVoiceTime(I)Lcom/sec/sve/TimeInfo;
    .locals 1

    .line 448
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 453
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/sec/sve/ISecVideoEngineService;->saeGetLastPlayedVoiceTime(I)Lcom/sec/sve/TimeInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 455
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-object v0
.end method

.method public saeGetVersion([BI)I
    .locals 1

    .line 490
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 495
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->saeGetVersion([BI)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 497
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public saeHandleDtmf(IIII)I
    .locals 1

    .line 350
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 355
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/sec/sve/ISecVideoEngineService;->saeHandleDtmf(IIII)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 357
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public saeInitialize(III)V
    .locals 0

    .line 212
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    if-nez p0, :cond_0

    return-void

    .line 217
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lcom/sec/sve/ISecVideoEngineService;->saeInitialize(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 219
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public saeModifyChannel(II)I
    .locals 1

    .line 322
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 327
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->saeModifyChannel(II)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 329
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public saeSetAudioPath(II)I
    .locals 1

    .line 518
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 523
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->saeSetAudioPath(II)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 525
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public saeSetCodecInfo(ILjava/lang/String;IIIIIIZIIIIICCCCCCIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 32

    move-object/from16 v0, p0

    .line 241
    iget-object v0, v0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/16 v31, -0x1

    if-nez v0, :cond_0

    return v31

    :cond_0
    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    move/from16 v18, p18

    move/from16 v19, p19

    move/from16 v20, p20

    move/from16 v21, p21

    move/from16 v22, p22

    move-object/from16 v23, p23

    move-object/from16 v24, p24

    move-object/from16 v25, p25

    move-object/from16 v26, p26

    move-object/from16 v27, p27

    move-object/from16 v28, p28

    move-object/from16 v29, p29

    move-object/from16 v30, p30

    .line 246
    :try_start_0
    invoke-interface/range {v0 .. v30}, Lcom/sec/sve/ISecVideoEngineService;->saeSetCodecInfo(ILjava/lang/String;IIIIIIZIIIIICCCCCCIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 253
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    return v31
.end method

.method public saeSetDtmfCodecInfo(IIIII)I
    .locals 6

    .line 364
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 p0, -0x1

    if-nez v0, :cond_0

    return p0

    :cond_0
    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 369
    :try_start_0
    invoke-interface/range {v0 .. v5}, Lcom/sec/sve/ISecVideoEngineService;->saeSetDtmfCodecInfo(IIIII)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    .line 371
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return p0
.end method

.method public saeSetRtcpOnCall(III)I
    .locals 1

    .line 392
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 397
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lcom/sec/sve/ISecVideoEngineService;->saeSetRtcpOnCall(III)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 399
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public saeSetRtcpTimeout(IJ)I
    .locals 1

    .line 420
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 425
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lcom/sec/sve/ISecVideoEngineService;->saeSetRtcpTimeout(IJ)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 427
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public saeSetRtcpXr(IIIII[I)I
    .locals 7

    .line 434
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 p0, -0x1

    if-nez v0, :cond_0

    return p0

    :cond_0
    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    .line 439
    :try_start_0
    invoke-interface/range {v0 .. v6}, Lcom/sec/sve/ISecVideoEngineService;->saeSetRtcpXr(IIIII[I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    .line 441
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return p0
.end method

.method public saeSetRtpTimeout(IJ)I
    .locals 1

    .line 406
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 411
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lcom/sec/sve/ISecVideoEngineService;->saeSetRtpTimeout(IJ)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 413
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public saeSetTOS(II)I
    .locals 1

    .line 476
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 481
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->saeSetTOS(II)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 483
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public saeSetVoicePlayDelay(II)I
    .locals 1

    .line 462
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 467
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->saeSetVoicePlayDelay(II)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 469
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public saeStartChannel(IIZ)I
    .locals 1

    .line 278
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 283
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lcom/sec/sve/ISecVideoEngineService;->saeStartChannel(IIZ)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 285
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public saeStartRecording(IIIZ)I
    .locals 1

    .line 1582
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 1587
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/sec/sve/ISecVideoEngineService;->saeStartRecording(IIIZ)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1589
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public saeStopChannel(I)I
    .locals 1

    .line 308
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 313
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/sec/sve/ISecVideoEngineService;->saeStopChannel(I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 315
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public saeStopRecording(IZ)I
    .locals 1

    .line 1596
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 1601
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->saeStopRecording(IZ)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1603
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public saeTerminate()V
    .locals 0

    .line 224
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    if-nez p0, :cond_0

    return-void

    .line 229
    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/sec/sve/ISecVideoEngineService;->saeTerminate()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 231
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public saeUpdateChannel(IILjava/lang/String;ILjava/lang/String;III)I
    .locals 10

    move-object v0, p0

    .line 293
    iget-object v0, v0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v9, -0x1

    if-nez v0, :cond_0

    return v9

    :cond_0
    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    .line 298
    :try_start_0
    invoke-interface/range {v0 .. v8}, Lcom/sec/sve/ISecVideoEngineService;->saeUpdateChannel(IILjava/lang/String;ILjava/lang/String;III)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 301
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    return v9
.end method

.method public sendGeneralBundleEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 787
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    if-nez p0, :cond_0

    return-void

    .line 792
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->sendGeneralBundleEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 794
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public sendStillImage(IZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 188
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    if-nez p0, :cond_0

    return-void

    .line 193
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/sec/sve/ISecVideoEngineService;->sendStillImage(IZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 195
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setCameraEffect(I)V
    .locals 0

    .line 200
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    if-nez p0, :cond_0

    return-void

    .line 205
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/sec/sve/ISecVideoEngineService;->setCameraEffect(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 207
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setDisplaySurface(ILandroid/view/Surface;I)V
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    if-nez p0, :cond_0

    return-void

    .line 133
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lcom/sec/sve/ISecVideoEngineService;->setDisplaySurface(ILandroid/view/Surface;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 135
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    .line 140
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    if-nez p0, :cond_0

    return-void

    .line 145
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/sec/sve/ISecVideoEngineService;->setOrientation(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 147
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setPreviewResolution(II)V
    .locals 0

    .line 176
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    if-nez p0, :cond_0

    return-void

    .line 181
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->setPreviewResolution(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 183
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setPreviewSurface(ILandroid/view/Surface;I)V
    .locals 0

    .line 116
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    if-nez p0, :cond_0

    return-void

    .line 121
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lcom/sec/sve/ISecVideoEngineService;->setPreviewSurface(ILandroid/view/Surface;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 123
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setZoom(F)V
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    if-nez p0, :cond_0

    return-void

    .line 157
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/sec/sve/ISecVideoEngineService;->setZoom(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 159
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public sreCreateRelayChannel(II)I
    .locals 1

    .line 1242
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 1247
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->sreCreateRelayChannel(II)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1249
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public sreCreateStream(IIILjava/lang/String;ILjava/lang/String;IZZIILjava/lang/String;ZZ)I
    .locals 16

    move-object/from16 v0, p0

    .line 1185
    iget-object v0, v0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v15, -0x1

    if-nez v0, :cond_0

    return v15

    :cond_0
    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move-object/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    .line 1190
    :try_start_0
    invoke-interface/range {v0 .. v14}, Lcom/sec/sve/ISecVideoEngineService;->sreCreateStream(IIILjava/lang/String;ILjava/lang/String;IZZIILjava/lang/String;ZZ)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 1193
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    return v15
.end method

.method public sreDeleteRelayChannel(I)I
    .locals 1

    .line 1256
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 1261
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/sec/sve/ISecVideoEngineService;->sreDeleteRelayChannel(I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1263
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public sreDeleteStream(I)I
    .locals 1

    .line 1214
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 1219
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/sec/sve/ISecVideoEngineService;->sreDeleteStream(I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1221
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public sreEnableSRTP(III[BI)I
    .locals 6

    .line 1356
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 p0, -0x1

    if-nez v0, :cond_0

    return p0

    :cond_0
    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    .line 1361
    :try_start_0
    invoke-interface/range {v0 .. v5}, Lcom/sec/sve/ISecVideoEngineService;->sreEnableSRTP(III[BI)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    .line 1363
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return p0
.end method

.method public sreGetMdmn(I)Z
    .locals 1

    .line 1155
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1160
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/sec/sve/ISecVideoEngineService;->sreGetMdmn(I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1162
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public sreGetVersion()Ljava/lang/String;
    .locals 1

    .line 1127
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    .line 1132
    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/sec/sve/ISecVideoEngineService;->sreGetVersion()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1134
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-object v0
.end method

.method public sreHoldRelayChannel(I)I
    .locals 1

    .line 1298
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 1303
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/sec/sve/ISecVideoEngineService;->sreHoldRelayChannel(I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1305
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public sreInitialize()V
    .locals 0

    .line 1115
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    if-nez p0, :cond_0

    return-void

    .line 1120
    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/sec/sve/ISecVideoEngineService;->sreInitialize()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1122
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public sreResumeRelayChannel(I)I
    .locals 1

    .line 1312
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 1317
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/sec/sve/ISecVideoEngineService;->sreResumeRelayChannel(I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1319
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public sreSetCodecInfo(ILjava/lang/String;IIIIIIZIIIIICCCCCCIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 33

    move-object/from16 v0, p0

    .line 1432
    iget-object v0, v0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/16 v32, -0x1

    if-nez v0, :cond_0

    return v32

    :cond_0
    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    move/from16 v18, p18

    move/from16 v19, p19

    move/from16 v20, p20

    move/from16 v21, p21

    move/from16 v22, p22

    move-object/from16 v23, p23

    move-object/from16 v24, p24

    move-object/from16 v25, p25

    move-object/from16 v26, p26

    move-object/from16 v27, p27

    move-object/from16 v28, p28

    move-object/from16 v29, p29

    move-object/from16 v30, p30

    move/from16 v31, p31

    .line 1437
    :try_start_0
    invoke-interface/range {v0 .. v31}, Lcom/sec/sve/ISecVideoEngineService;->sreSetCodecInfo(ILjava/lang/String;IIIIIIZIIIIICCCCCCIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 1444
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    return v32
.end method

.method public sreSetConnection(ILjava/lang/String;ILjava/lang/String;IIII)I
    .locals 10

    move-object v0, p0

    .line 1341
    iget-object v0, v0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v9, -0x1

    if-nez v0, :cond_0

    return v9

    :cond_0
    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    .line 1346
    :try_start_0
    invoke-interface/range {v0 .. v8}, Lcom/sec/sve/ISecVideoEngineService;->sreSetConnection(ILjava/lang/String;ILjava/lang/String;IIII)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 1349
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    return v9
.end method

.method public sreSetDtmfCodecInfo(IIIIII)I
    .locals 7

    .line 1451
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 p0, -0x1

    if-nez v0, :cond_0

    return p0

    :cond_0
    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 1456
    :try_start_0
    invoke-interface/range {v0 .. v6}, Lcom/sec/sve/ISecVideoEngineService;->sreSetDtmfCodecInfo(IIIIII)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    .line 1458
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return p0
.end method

.method public sreSetMdmn(IZ)I
    .locals 1

    .line 1141
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 1146
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->sreSetMdmn(IZ)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1148
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public sreSetNetId(IJ)I
    .locals 1

    .line 1169
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 1174
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lcom/sec/sve/ISecVideoEngineService;->sreSetNetId(IJ)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1176
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public sreSetRtcpOnCall(IIIII)I
    .locals 6

    .line 1370
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 p0, -0x1

    if-nez v0, :cond_0

    return p0

    :cond_0
    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 1375
    :try_start_0
    invoke-interface/range {v0 .. v5}, Lcom/sec/sve/ISecVideoEngineService;->sreSetRtcpOnCall(IIIII)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    .line 1377
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return p0
.end method

.method public sreSetRtcpTimeout(II)I
    .locals 1

    .line 1398
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 1403
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->sreSetRtcpTimeout(II)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1405
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public sreSetRtcpXr(IIIII[I)I
    .locals 7

    .line 1412
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 p0, -0x1

    if-nez v0, :cond_0

    return p0

    :cond_0
    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    .line 1417
    :try_start_0
    invoke-interface/range {v0 .. v6}, Lcom/sec/sve/ISecVideoEngineService;->sreSetRtcpXr(IIIII[I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    .line 1419
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return p0
.end method

.method public sreSetRtpTimeout(II)I
    .locals 1

    .line 1384
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 1389
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->sreSetRtpTimeout(II)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1391
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public sreStartRecording(III)I
    .locals 1

    .line 1465
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 1470
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lcom/sec/sve/ISecVideoEngineService;->sreStartRecording(III)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1472
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public sreStartRelayChannel(II)I
    .locals 1

    .line 1270
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 1275
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->sreStartRelayChannel(II)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1277
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public sreStartStream(III)I
    .locals 1

    .line 1200
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 1205
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lcom/sec/sve/ISecVideoEngineService;->sreStartStream(III)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1207
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public sreStopRecording(II)I
    .locals 1

    .line 1479
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 1484
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->sreStopRecording(II)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1486
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public sreStopRelayChannel(I)I
    .locals 1

    .line 1284
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 1289
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/sec/sve/ISecVideoEngineService;->sreStopRelayChannel(I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1291
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public sreUpdateRelayChannel(II)I
    .locals 1

    .line 1326
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 1331
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->sreUpdateRelayChannel(II)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1333
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public sreUpdateStream(I)I
    .locals 1

    .line 1228
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 1233
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/sec/sve/ISecVideoEngineService;->sreUpdateStream(I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1235
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public startEmoji(ILjava/lang/String;)V
    .locals 0

    .line 1638
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    if-nez p0, :cond_0

    return-void

    .line 1643
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->sveStartEmoji(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1645
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public steCreateChannel(ILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;ZZ)I
    .locals 12

    move-object v0, p0

    .line 903
    iget-object v0, v0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v11, -0x1

    if-nez v0, :cond_0

    return v11

    :cond_0
    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    .line 908
    :try_start_0
    invoke-interface/range {v0 .. v10}, Lcom/sec/sve/ISecVideoEngineService;->steCreateChannel(ILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;ZZ)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 912
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    return v11
.end method

.method public steDeleteChannel(I)I
    .locals 1

    .line 1033
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 1038
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/sec/sve/ISecVideoEngineService;->steDeleteChannel(I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1040
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public steEnableSRTP(III[BI)I
    .locals 6

    .line 1059
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 p0, -0x1

    if-nez v0, :cond_0

    return p0

    :cond_0
    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    .line 1064
    :try_start_0
    invoke-interface/range {v0 .. v5}, Lcom/sec/sve/ISecVideoEngineService;->steEnableSRTP(III[BI)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    .line 1066
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return p0
.end method

.method public steInitialize()V
    .locals 0

    .line 865
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    if-nez p0, :cond_0

    return-void

    .line 870
    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/sec/sve/ISecVideoEngineService;->steInitialize()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 872
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public steModifyChannel(II)I
    .locals 1

    .line 963
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 968
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->steModifyChannel(II)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 970
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public steSendText(ILjava/lang/String;I)I
    .locals 1

    .line 1047
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 1051
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lcom/sec/sve/ISecVideoEngineService;->steSendText(ILjava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1053
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public steSetCallOptions(IZ)I
    .locals 1

    .line 1005
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 1010
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->steSetCallOptions(IZ)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1012
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public steSetCodecInfo(ILjava/lang/String;IIIIIIZIIIIICCCCCCIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 32

    move-object/from16 v0, p0

    .line 882
    iget-object v0, v0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/16 v31, -0x1

    if-nez v0, :cond_0

    return v31

    :cond_0
    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    move/from16 v18, p18

    move/from16 v19, p19

    move/from16 v20, p20

    move/from16 v21, p21

    move/from16 v22, p22

    move-object/from16 v23, p23

    move-object/from16 v24, p24

    move-object/from16 v25, p25

    move-object/from16 v26, p26

    move-object/from16 v27, p27

    move-object/from16 v28, p28

    move-object/from16 v29, p29

    move-object/from16 v30, p30

    .line 887
    :try_start_0
    invoke-interface/range {v0 .. v30}, Lcom/sec/sve/ISecVideoEngineService;->steSetCodecInfo(ILjava/lang/String;IIIIIIZIIIIICCCCCCIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 894
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    return v31
.end method

.method public steSetNetId(II)I
    .locals 1

    .line 1019
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 1024
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->steSetNetId(II)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1026
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public steSetRtcpOnCall(III)I
    .locals 1

    .line 1073
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 1078
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lcom/sec/sve/ISecVideoEngineService;->steSetRtcpOnCall(III)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1080
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public steSetRtcpTimeout(IJ)I
    .locals 1

    .line 1087
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 1092
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lcom/sec/sve/ISecVideoEngineService;->steSetRtcpTimeout(IJ)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1094
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public steSetRtcpXr(IIIII[I)I
    .locals 7

    .line 977
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 p0, -0x1

    if-nez v0, :cond_0

    return p0

    :cond_0
    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    .line 982
    :try_start_0
    invoke-interface/range {v0 .. v6}, Lcom/sec/sve/ISecVideoEngineService;->steSetRtcpXr(IIIII[I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    .line 984
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return p0
.end method

.method public steSetRtpTimeout(IJ)I
    .locals 1

    .line 991
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 996
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lcom/sec/sve/ISecVideoEngineService;->steSetRtpTimeout(IJ)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 998
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public steSetSessionId(II)I
    .locals 1

    .line 1101
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 1106
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->steSetSessionId(II)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1108
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public steStartChannel(IIZ)I
    .locals 1

    .line 919
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 924
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lcom/sec/sve/ISecVideoEngineService;->steStartChannel(IIZ)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 926
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public steStopChannel(I)I
    .locals 1

    .line 949
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 954
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/sec/sve/ISecVideoEngineService;->steStopChannel(I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 956
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public steUpdateChannel(IILjava/lang/String;ILjava/lang/String;III)I
    .locals 10

    move-object v0, p0

    .line 934
    iget-object v0, v0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v9, -0x1

    if-nez v0, :cond_0

    return v9

    :cond_0
    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    .line 939
    :try_start_0
    invoke-interface/range {v0 .. v8}, Lcom/sec/sve/ISecVideoEngineService;->steUpdateChannel(IILjava/lang/String;ILjava/lang/String;III)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 942
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    return v9
.end method

.method public stopEmoji(I)V
    .locals 0

    .line 1650
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    if-nez p0, :cond_0

    return-void

    .line 1655
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/sec/sve/ISecVideoEngineService;->sveStopEmoji(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1657
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public sveCmcRecorderCreate(IIILjava/lang/String;IIJILjava/lang/String;IIIIIJLjava/lang/String;)I
    .locals 20

    move-object/from16 v0, p0

    .line 1523
    iget-object v0, v0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/16 v19, -0x1

    if-nez v0, :cond_0

    return v19

    :cond_0
    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-wide/from16 v7, p7

    move/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move-wide/from16 v16, p16

    move-object/from16 v18, p18

    .line 1528
    :try_start_0
    invoke-interface/range {v0 .. v18}, Lcom/sec/sve/ISecVideoEngineService;->sveCmcRecorderCreate(IIILjava/lang/String;IIJILjava/lang/String;IIIIIJLjava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 1533
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    return v19
.end method

.method public sveCreateChannel()I
    .locals 1

    .line 532
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 537
    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/sec/sve/ISecVideoEngineService;->sveCreateChannel()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 539
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public sveGetCodecCapacity(I)Ljava/lang/String;
    .locals 1

    .line 731
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 736
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/sec/sve/ISecVideoEngineService;->sveGetCodecCapacity(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 738
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-object v0
.end method

.method public sveGetLastPlayedVideoTime(I)Lcom/sec/sve/TimeInfo;
    .locals 1

    .line 717
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 722
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/sec/sve/ISecVideoEngineService;->sveGetLastPlayedVideoTime(I)Lcom/sec/sve/TimeInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 724
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-object v0
.end method

.method public sveGetRtcpTimeInfo(I)Lcom/sec/sve/TimeInfo;
    .locals 1

    .line 799
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 804
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/sec/sve/ISecVideoEngineService;->sveGetRtcpTimeInfo(I)Lcom/sec/sve/TimeInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 806
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-object v0
.end method

.method public sveRecorderCreate(ILjava/lang/String;IILjava/lang/String;I)I
    .locals 7

    .line 1507
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 p0, -0x1

    if-nez v0, :cond_0

    return p0

    :cond_0
    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    .line 1512
    :try_start_0
    invoke-interface/range {v0 .. v6}, Lcom/sec/sve/ISecVideoEngineService;->sveRecorderCreate(ILjava/lang/String;IILjava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    .line 1514
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return p0
.end method

.method public sveRecorderDelete(I)I
    .locals 1

    .line 1540
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 1545
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/sec/sve/ISecVideoEngineService;->sveRecorderDelete(I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1547
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public sveRecorderStart(I)I
    .locals 1

    .line 1554
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 1559
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/sec/sve/ISecVideoEngineService;->sveRecorderStart(I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1561
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public sveRecorderStop(IZ)I
    .locals 1

    .line 1568
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 1573
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->sveRecorderStop(IZ)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1575
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public sveSendGeneralEvent(IIILjava/lang/String;)I
    .locals 1

    .line 773
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 778
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/sec/sve/ISecVideoEngineService;->sveSendGeneralEvent(IIILjava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 780
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public sveSetCodecInfo(IIIIIILjava/lang/String;IIIIIZIZIIIII[B[B[BIII)I
    .locals 28

    move-object/from16 v0, p0

    .line 594
    iget-object v0, v0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/16 v27, -0x1

    if-nez v0, :cond_0

    return v27

    :cond_0
    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    move/from16 v18, p18

    move/from16 v19, p19

    move/from16 v20, p20

    move-object/from16 v21, p21

    move-object/from16 v22, p22

    move-object/from16 v23, p23

    move/from16 v24, p24

    move/from16 v25, p25

    move/from16 v26, p26

    .line 599
    :try_start_0
    invoke-interface/range {v0 .. v26}, Lcom/sec/sve/ISecVideoEngineService;->sveSetCodecInfo(IIIIIILjava/lang/String;IIIIIZIZIIIII[B[B[BIII)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 605
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    return v27
.end method

.method public sveSetConnection(ILjava/lang/String;ILjava/lang/String;IIIIJ)I
    .locals 12

    move-object v0, p0

    .line 575
    iget-object v0, v0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v11, -0x1

    if-nez v0, :cond_0

    return v11

    :cond_0
    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-wide/from16 v9, p9

    .line 580
    :try_start_0
    invoke-interface/range {v0 .. v10}, Lcom/sec/sve/ISecVideoEngineService;->sveSetConnection(ILjava/lang/String;ILjava/lang/String;IIIIJ)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 582
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    return v11
.end method

.method public sveSetHeldInfo(IZZ)I
    .locals 1

    .line 703
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 708
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lcom/sec/sve/ISecVideoEngineService;->sveSetHeldInfo(IZZ)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 710
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public sveSetMediaConfig(IZIZIII)I
    .locals 9

    const/16 v8, 0x7d0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    .line 652
    invoke-virtual/range {v0 .. v8}, Lcom/sec/sve/SecVideoEngineManager;->sveSetMediaConfig(IZIZIIII)I

    move-result v0

    return v0
.end method

.method public sveSetMediaConfig(IZIZIIII)I
    .locals 14

    move-object v0, p0

    .line 658
    iget-object v1, v0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v2, -0x1

    if-nez v1, :cond_0

    return v2

    .line 662
    :cond_0
    iget-object v1, v0, Lcom/sec/sve/SecVideoEngineManager;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sveSetMediaConfig keepAliveInterval "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    :try_start_0
    iget-object v5, v0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    move v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    invoke-interface/range {v5 .. v13}, Lcom/sec/sve/ISecVideoEngineService;->sveSetMediaConfig(IZIZIIII)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 667
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    return v2
.end method

.method public sveSetNetworkQoS(IIII)I
    .locals 1

    .line 759
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 764
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/sec/sve/ISecVideoEngineService;->sveSetNetworkQoS(IIII)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 766
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public sveSetSRTPParams(IIIICI[BI[BI)I
    .locals 12

    move-object v0, p0

    .line 635
    iget-object v1, v0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v11, -0x1

    if-nez v1, :cond_0

    .line 636
    iget-object v0, v0, Lcom/sec/sve/SecVideoEngineManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "SVE service is not ready!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v11

    :cond_0
    move-object v0, v1

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    .line 641
    :try_start_0
    invoke-interface/range {v0 .. v10}, Lcom/sec/sve/ISecVideoEngineService;->sveSetGcmSrtpParams(IIIICI[BI[BI)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 644
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    return v11
.end method

.method public sveSetSRTPParams(ILjava/lang/String;[BIIIILjava/lang/String;[BIIII)I
    .locals 15

    move-object v0, p0

    .line 616
    iget-object v0, v0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v14, -0x1

    if-nez v0, :cond_0

    return v14

    :cond_0
    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    .line 621
    :try_start_0
    invoke-interface/range {v0 .. v13}, Lcom/sec/sve/ISecVideoEngineService;->sveSetSRTPParams(ILjava/lang/String;[BIIIILjava/lang/String;[BIIII)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 626
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    return v14
.end method

.method public sveSetVideoPlayDelay(II)I
    .locals 1

    .line 745
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 750
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->sveSetVideoPlayDelay(II)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 752
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public sveStartCamera(II)I
    .locals 2

    .line 674
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 675
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->LOG_TAG:Ljava/lang/String;

    const-string p1, "SVE service is not ready!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 680
    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->sveStartCamera(II)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 682
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v1
.end method

.method public sveStartChannel(III)I
    .locals 1

    .line 546
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 551
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lcom/sec/sve/ISecVideoEngineService;->sveStartChannel(III)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 553
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public sveStartRecording(II)I
    .locals 1

    .line 1610
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 1615
    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/sec/sve/ISecVideoEngineService;->sveStartRecording(II)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1617
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public sveStopCamera()I
    .locals 1

    .line 689
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 694
    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/sec/sve/ISecVideoEngineService;->sveStopCamera()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 696
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public sveStopChannel(I)I
    .locals 1

    .line 560
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 565
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/sec/sve/ISecVideoEngineService;->sveStopChannel(I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 567
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public sveStopRecording(I)I
    .locals 1

    .line 1624
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 1629
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/sec/sve/ISecVideoEngineService;->sveStopRecording(I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 1631
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public switchCamera()V
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    if-nez p0, :cond_0

    return-void

    .line 169
    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/sec/sve/ISecVideoEngineService;->switchCamera()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 171
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public unregisterForCmcEventListener(Lcom/sec/sve/ICmcMediaEventListener;)V
    .locals 2

    .line 852
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterForCmcEventListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    if-nez p0, :cond_0

    return-void

    .line 858
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/sec/sve/ISecVideoEngineService;->unregisterForCmcEventListener(Lcom/sec/sve/ICmcMediaEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 860
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public unregisterForMediaEventListener(Lcom/sec/sve/IImsMediaEventListener;)V
    .locals 2

    .line 826
    iget-object v0, p0, Lcom/sec/sve/SecVideoEngineManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterForMediaEventListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    iget-object p0, p0, Lcom/sec/sve/SecVideoEngineManager;->mService:Lcom/sec/sve/ISecVideoEngineService;

    if-nez p0, :cond_0

    return-void

    .line 832
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/sec/sve/ISecVideoEngineService;->unregisterForMediaEventListener(Lcom/sec/sve/IImsMediaEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 834
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method
