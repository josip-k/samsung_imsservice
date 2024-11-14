.class Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISecVideoEngineService.java"

# interfaces
.implements Lcom/sec/sve/ISecVideoEngineService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/sve/ISecVideoEngineService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 2245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2246
    iput-object p1, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 2250
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public bindToNetwork(Landroid/net/Network;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2399
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2400
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 2402
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 2403
    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2404
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0xa

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2405
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2408
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2409
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 2408
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2409
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2410
    throw p0
.end method

.method public cpveStartInjection(Ljava/lang/String;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4439
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4440
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 4443
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4444
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4445
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4446
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x6b

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4447
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4448
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4451
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4452
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 4451
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4452
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4453
    throw p0
.end method

.method public cpveStopInjection()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4458
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4459
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 4462
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4463
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x6c

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4464
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4465
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4468
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4469
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 4468
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4469
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4470
    throw p0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "com.sec.sve.ISecVideoEngineService"

    return-object p0
.end method

.method public isSupportingCameraMotor()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4232
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4233
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 4236
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4237
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x61

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4238
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4239
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4242
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4243
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 4242
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4243
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4244
    throw p0
.end method

.method public notifyImsServiceReady(Landroid/os/IBinder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4537
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4538
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 4540
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4541
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4542
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x71

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4543
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4546
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4547
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 4546
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4547
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4548
    throw p0
.end method

.method public onDestroy()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2258
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2259
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 2261
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2262
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2263
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2266
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2267
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 2266
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2267
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2268
    throw p0
.end method

.method public registerForCmcEventListener(Lcom/sec/sve/ICmcMediaEventListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4507
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4508
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 4510
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4511
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 4512
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x6f

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4513
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4516
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4517
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 4516
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4517
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4518
    throw p0
.end method

.method public registerForMediaEventListener(Lcom/sec/sve/IImsMediaEventListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4476
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4477
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 4479
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4480
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 4481
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x6d

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4482
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4485
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4486
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 4485
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4486
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4487
    throw p0
.end method

.method public saeCreateChannel(IILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;ZZ)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2509
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2510
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 2513
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2514
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2515
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2516
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2517
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2518
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2519
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2520
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 2521
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 2522
    invoke-virtual {v0, p9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2523
    invoke-virtual {v0, p10}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2524
    invoke-virtual {v0, p11}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2525
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0xf

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2526
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2527
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2530
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2531
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 2530
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2531
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2532
    throw p0
.end method

.method public saeDeleteChannel(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2619
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2620
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 2623
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2624
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2625
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x14

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2626
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2627
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2630
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2631
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 2630
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2631
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2632
    throw p0
.end method

.method public saeEnableSRTP(III[BI)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2680
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2681
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 2684
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2685
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2686
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2687
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2688
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2689
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2690
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x17

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2691
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2692
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2695
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2696
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 2695
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2696
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2697
    throw p0
.end method

.method public saeGetAudioRxTrackId(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2858
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2859
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 2862
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2863
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2864
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x20

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2865
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2866
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2869
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2870
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 2869
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2870
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2871
    throw p0
.end method

.method public saeGetLastPlayedVoiceTime(I)Lcom/sec/sve/TimeInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2783
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2784
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 2787
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2788
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2789
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x1c

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2790
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2791
    sget-object p0, Lcom/sec/sve/TimeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/sve/TimeInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2794
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2795
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 2794
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2795
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2796
    throw p0
.end method

.method public saeGetVersion([BI)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2839
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2840
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 2843
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2844
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2845
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2846
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x1f

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2847
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2848
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2851
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2852
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 2851
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2852
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2853
    throw p0
.end method

.method public saeHandleDtmf(IIII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2637
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2638
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 2641
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2642
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2643
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2644
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2645
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2646
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x15

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2647
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2648
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2651
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2652
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 2651
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2652
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2653
    throw p0
.end method

.method public saeInitialize(III)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2431
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2432
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 2434
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2435
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2436
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2437
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2438
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0xc

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2439
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2442
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2443
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 2442
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2443
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2444
    throw p0
.end method

.method public saeModifyChannel(II)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2600
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2601
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 2604
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2605
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2606
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2607
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x13

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2608
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2609
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2612
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2613
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 2612
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2613
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2614
    throw p0
.end method

.method public saeSetAudioPath(II)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2876
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2877
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 2880
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2881
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2882
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2883
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x21

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2884
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2885
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2888
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2889
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 2888
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2889
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2890
    throw p0
.end method

.method public saeSetCodecInfo(ILjava/lang/String;IIIIIIZIIIIICCCCCCIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2462
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v1

    .line 2463
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string v0, "com.sec.sve.ISecVideoEngineService"

    .line 2466
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move v0, p1

    .line 2467
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    move-object v0, p2

    .line 2468
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, p3

    .line 2469
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p4

    .line 2470
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p5

    .line 2471
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p6

    .line 2472
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p7

    .line 2473
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p8

    .line 2474
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p9

    .line 2475
    invoke-virtual {v1, p9}, Landroid/os/Parcel;->writeBoolean(Z)V

    move v0, p10

    .line 2476
    invoke-virtual {v1, p10}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p11

    .line 2477
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p12

    .line 2478
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p13

    .line 2479
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p14

    .line 2480
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p15

    .line 2481
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p16

    .line 2482
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p17

    .line 2483
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p18

    .line 2484
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p19

    .line 2485
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p20

    .line 2486
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p21

    .line 2487
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p22

    .line 2488
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p23

    .line 2489
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, p24

    .line 2490
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, p25

    .line 2491
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, p26

    .line 2492
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, p27

    .line 2493
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, p28

    .line 2494
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, p29

    .line 2495
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, p30

    .line 2496
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object v0, p0

    .line 2497
    iget-object v0, v0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2498
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2499
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2502
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2503
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v0

    :catchall_0
    move-exception v0

    .line 2502
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2503
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2504
    throw v0
.end method

.method public saeSetDtmfCodecInfo(IIIII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2658
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2659
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 2662
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2663
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2664
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2665
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2666
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2667
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2668
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x16

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2669
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2670
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2673
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2674
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 2673
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2674
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2675
    throw p0
.end method

.method public saeSetRtcpOnCall(III)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2702
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2703
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 2706
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2707
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2708
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2709
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2710
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x18

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2711
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2712
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2715
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2716
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 2715
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2716
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2717
    throw p0
.end method

.method public saeSetRtcpTimeout(IJ)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2741
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2742
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 2745
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2746
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2747
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 2748
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x1a

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2749
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2750
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2753
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2754
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 2753
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2754
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2755
    throw p0
.end method

.method public saeSetRtcpXr(IIIII[I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2760
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2761
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 2764
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2765
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2766
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2767
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2768
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2769
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2770
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 2771
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x1b

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2772
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2773
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2776
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2777
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 2776
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2777
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2778
    throw p0
.end method

.method public saeSetRtpTimeout(IJ)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2722
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2723
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 2726
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2727
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2728
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 2729
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x19

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2730
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2731
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2734
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2735
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 2734
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2735
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2736
    throw p0
.end method

.method public saeSetTOS(II)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2820
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2821
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 2824
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2825
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2826
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2827
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x1e

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2828
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2829
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2832
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2833
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 2832
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2833
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2834
    throw p0
.end method

.method public saeSetVoicePlayDelay(II)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2801
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2802
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 2805
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2806
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2807
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2808
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x1d

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2809
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2810
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2813
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2814
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 2813
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2814
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2815
    throw p0
.end method

.method public saeStartChannel(IIZ)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2537
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2538
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 2541
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2542
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2543
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2544
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2545
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x10

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2546
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2547
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2550
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2551
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 2550
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2551
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2552
    throw p0
.end method

.method public saeStartRecording(IIIZ)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4361
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4362
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 4365
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4366
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4367
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4368
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4369
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4370
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x67

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4371
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4372
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4375
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4376
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 4375
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4376
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4377
    throw p0
.end method

.method public saeStopChannel(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2582
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2583
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 2586
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2587
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2588
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x12

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2589
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2590
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2593
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2594
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 2593
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2594
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2595
    throw p0
.end method

.method public saeStopRecording(IZ)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4382
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4383
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 4386
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4387
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4388
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4389
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x68

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4390
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4391
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4394
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4395
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 4394
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4395
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4396
    throw p0
.end method

.method public saeTerminate()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2448
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2449
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 2451
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2452
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xd

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2453
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2456
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2457
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 2456
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2457
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2458
    throw p0
.end method

.method public saeUpdateChannel(IILjava/lang/String;ILjava/lang/String;III)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2557
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2558
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 2561
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2562
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2563
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2564
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2565
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2566
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2567
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2568
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 2569
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 2570
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x11

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2571
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2572
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2575
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2576
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 2575
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2576
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2577
    throw p0
.end method

.method public sendGeneralBundleEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2414
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2415
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 2417
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2418
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 2419
    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2420
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p2, 0xb

    invoke-interface {p0, p2, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2421
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2424
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2425
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 2424
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2425
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2426
    throw p0
.end method

.method public sendStillImage(IZLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2350
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2351
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 2353
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2354
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2355
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2356
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2357
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2358
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x7

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2359
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2362
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2363
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 2362
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2363
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2364
    throw p0
.end method

.method public setCameraEffect(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2368
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2369
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 2371
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2372
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2373
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x8

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2374
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2377
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2378
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 2377
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2378
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2379
    throw p0
.end method

.method public setDisplaySurface(ILandroid/view/Surface;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2289
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2290
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 2292
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2293
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x0

    .line 2294
    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2295
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2296
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x3

    invoke-interface {p0, p2, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2297
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2300
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2301
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 2300
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2301
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2302
    throw p0
.end method

.method public setOrientation(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2306
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2307
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 2309
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2310
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2311
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x4

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2312
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2315
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2316
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 2315
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2316
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2317
    throw p0
.end method

.method public setPreviewResolution(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2383
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2384
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 2386
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2387
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2388
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2389
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x9

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2390
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2393
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2394
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 2393
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2394
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2395
    throw p0
.end method

.method public setPreviewSurface(ILandroid/view/Surface;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2272
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2273
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 2275
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2276
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x0

    .line 2277
    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2278
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2279
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x2

    invoke-interface {p0, p2, v0, v1, p1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2280
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2283
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2284
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 2283
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2284
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2285
    throw p0
.end method

.method public setZoom(F)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2321
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2322
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 2324
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2325
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2326
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x5

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2327
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2330
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2331
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 2330
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2331
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2332
    throw p0
.end method

.method public sreCreateRelayChannel(II)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3863
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3864
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 3867
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3868
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3869
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3870
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x50

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3871
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3872
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3875
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3876
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 3875
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3876
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3877
    throw p0
.end method

.method public sreCreateStream(IIILjava/lang/String;ILjava/lang/String;IZZIILjava/lang/String;ZZ)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3776
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v1

    .line 3777
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string v0, "com.sec.sve.ISecVideoEngineService"

    .line 3780
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move v0, p1

    .line 3781
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p2

    .line 3782
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p3

    .line 3783
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    move-object v0, p4

    .line 3784
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, p5

    .line 3785
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    move-object v0, p6

    .line 3786
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, p7

    .line 3787
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p8

    .line 3788
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeBoolean(Z)V

    move v0, p9

    .line 3789
    invoke-virtual {v1, p9}, Landroid/os/Parcel;->writeBoolean(Z)V

    move v0, p10

    .line 3790
    invoke-virtual {v1, p10}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p11

    .line 3791
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p12

    .line 3792
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move/from16 v0, p13

    .line 3793
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    move/from16 v0, p14

    .line 3794
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    move-object v0, p0

    .line 3795
    iget-object v0, v0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4c

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3796
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3797
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3800
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3801
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v0

    :catchall_0
    move-exception v0

    .line 3800
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3801
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3802
    throw v0
.end method

.method public sreDeleteRelayChannel(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3882
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3883
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 3886
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3887
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3888
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x51

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3889
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3890
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3893
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3894
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 3893
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3894
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3895
    throw p0
.end method

.method public sreDeleteStream(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3827
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3828
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 3831
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3832
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3833
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x4e

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3834
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3835
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3838
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3839
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 3838
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3839
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3840
    throw p0
.end method

.method public sreEnableSRTP(III[BI)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4017
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4018
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 4021
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4022
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4023
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4024
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4025
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 4026
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 4027
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x58

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4028
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4029
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4032
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4033
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 4032
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4033
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4034
    throw p0
.end method

.method public sreGetMdmn(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3739
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3740
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 3743
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3744
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3745
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x4a

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3746
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3747
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3750
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3751
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 3750
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3751
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3752
    throw p0
.end method

.method public sreGetVersion()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3703
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3704
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 3707
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3708
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x48

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3709
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3710
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3713
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3714
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 3713
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3714
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3715
    throw p0
.end method

.method public sreHoldRelayChannel(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3937
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3938
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 3941
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3942
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3943
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x54

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3944
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3945
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3948
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3949
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 3948
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3949
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3950
    throw p0
.end method

.method public sreInitialize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3689
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3690
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 3692
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3693
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x47

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3694
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3697
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3698
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 3697
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3698
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3699
    throw p0
.end method

.method public sreResumeRelayChannel(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3955
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3956
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 3959
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3960
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3961
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x55

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3962
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3963
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3966
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3967
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 3966
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3967
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3968
    throw p0
.end method

.method public sreSetCodecInfo(ILjava/lang/String;IIIIIIZIIIIICCCCCCIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4122
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v1

    .line 4123
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string v0, "com.sec.sve.ISecVideoEngineService"

    .line 4126
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move v0, p1

    .line 4127
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    move-object v0, p2

    .line 4128
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, p3

    .line 4129
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p4

    .line 4130
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p5

    .line 4131
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p6

    .line 4132
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p7

    .line 4133
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p8

    .line 4134
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p9

    .line 4135
    invoke-virtual {v1, p9}, Landroid/os/Parcel;->writeBoolean(Z)V

    move v0, p10

    .line 4136
    invoke-virtual {v1, p10}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p11

    .line 4137
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p12

    .line 4138
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p13

    .line 4139
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p14

    .line 4140
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p15

    .line 4141
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p16

    .line 4142
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p17

    .line 4143
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p18

    .line 4144
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p19

    .line 4145
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p20

    .line 4146
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p21

    .line 4147
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p22

    .line 4148
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p23

    .line 4149
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, p24

    .line 4150
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, p25

    .line 4151
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, p26

    .line 4152
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, p27

    .line 4153
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, p28

    .line 4154
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, p29

    .line 4155
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, p30

    .line 4156
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move/from16 v0, p31

    .line 4157
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move-object v0, p0

    .line 4158
    iget-object v0, v0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5d

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4159
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 4160
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4163
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4164
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v0

    :catchall_0
    move-exception v0

    .line 4163
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4164
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4165
    throw v0
.end method

.method public sreSetConnection(ILjava/lang/String;ILjava/lang/String;IIII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3992
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3993
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 3996
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3997
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3998
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3999
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4000
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4001
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 4002
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 4003
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 4004
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 4005
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x57

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4006
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4007
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4010
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4011
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 4010
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4011
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4012
    throw p0
.end method

.method public sreSetDtmfCodecInfo(IIIIII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4170
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4171
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 4174
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4175
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4176
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4177
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4178
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4179
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 4180
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 4181
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x5e

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4182
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4183
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4186
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4187
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 4186
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4187
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4188
    throw p0
.end method

.method public sreSetMdmn(IZ)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3720
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3721
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 3724
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3725
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3726
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3727
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x49

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3728
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3729
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3732
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3733
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 3732
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3733
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3734
    throw p0
.end method

.method public sreSetNetId(IJ)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3757
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3758
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 3761
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3762
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3763
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 3764
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x4b

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3765
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3766
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3769
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3770
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 3769
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3770
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3771
    throw p0
.end method

.method public sreSetRtcpOnCall(IIIII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4039
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4040
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 4043
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4044
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4045
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4046
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4047
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4048
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 4049
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x59

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4050
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4051
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4054
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4055
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 4054
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4055
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4056
    throw p0
.end method

.method public sreSetRtcpTimeout(II)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4080
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4081
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 4084
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4085
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4086
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4087
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x5b

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4088
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4089
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4092
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4093
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 4092
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4093
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4094
    throw p0
.end method

.method public sreSetRtcpXr(IIIII[I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4099
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4100
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 4103
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4104
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4105
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4106
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4107
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4108
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 4109
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 4110
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x5c

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4111
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4112
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4115
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4116
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 4115
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4116
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4117
    throw p0
.end method

.method public sreSetRtpTimeout(II)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4061
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4062
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 4065
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4066
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4067
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4068
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x5a

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4069
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4070
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4073
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4074
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 4073
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4074
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4075
    throw p0
.end method

.method public sreStartRecording(III)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4193
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4194
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 4197
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4198
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4199
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4200
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4201
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x5f

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4202
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4203
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4206
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4207
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 4206
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4207
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4208
    throw p0
.end method

.method public sreStartRelayChannel(II)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3900
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3901
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 3904
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3905
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3906
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3907
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x52

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3908
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3909
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3912
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3913
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 3912
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3913
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3914
    throw p0
.end method

.method public sreStartStream(III)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3807
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3808
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 3811
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3812
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3813
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3814
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3815
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x4d

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3816
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3817
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3820
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3821
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 3820
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3821
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3822
    throw p0
.end method

.method public sreStopRecording(II)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4213
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4214
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 4217
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4218
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4219
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4220
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x60

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4221
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4222
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4225
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4226
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 4225
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4226
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4227
    throw p0
.end method

.method public sreStopRelayChannel(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3919
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3920
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 3923
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3924
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3925
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x53

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3926
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3927
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3930
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3931
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 3930
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3931
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3932
    throw p0
.end method

.method public sreUpdateRelayChannel(II)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3973
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3974
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 3977
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3978
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3979
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3980
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x56

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3981
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3982
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3985
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3986
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 3985
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3986
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3987
    throw p0
.end method

.method public sreUpdateStream(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3845
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3846
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 3849
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3850
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3851
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x4f

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3852
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3853
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3856
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3857
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 3856
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3857
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3858
    throw p0
.end method

.method public steCreateChannel(ILjava/lang/String;ILjava/lang/String;IIILjava/lang/String;ZZ)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3381
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3382
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 3385
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3386
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3387
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3388
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3389
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3390
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 3391
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3392
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 3393
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3394
    invoke-virtual {v0, p9}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3395
    invoke-virtual {v0, p10}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3396
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x38

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3397
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3398
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3401
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3402
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 3401
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3402
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3403
    throw p0
.end method

.method public steDeleteChannel(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3490
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3491
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 3494
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3495
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3496
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x3d

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3497
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3498
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3501
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3502
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 3501
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3502
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3503
    throw p0
.end method

.method public steEnableSRTP(III[BI)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3528
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3529
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 3532
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3533
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3534
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3535
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3536
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 3537
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 3538
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x3f

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3539
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3540
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3543
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3544
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 3543
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3544
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3545
    throw p0
.end method

.method public steInitialize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3320
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3321
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 3323
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3324
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x36

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3325
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3328
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3329
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 3328
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3329
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3330
    throw p0
.end method

.method public steModifyChannel(II)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3471
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3472
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 3475
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3476
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3477
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3478
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x3c

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3479
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3480
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3483
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3484
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 3483
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3484
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3485
    throw p0
.end method

.method public steSendText(ILjava/lang/String;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3508
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3509
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 3512
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3513
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3514
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3515
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3516
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x3e

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3517
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3518
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3521
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3522
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 3521
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3522
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3523
    throw p0
.end method

.method public steSetCallOptions(IZ)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3631
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3632
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 3635
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3636
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3637
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3638
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x44

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3639
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3640
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3643
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3644
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 3643
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3644
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3645
    throw p0
.end method

.method public steSetCodecInfo(ILjava/lang/String;IIIIIIZIIIIICCCCCCIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3334
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v1

    .line 3335
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string v0, "com.sec.sve.ISecVideoEngineService"

    .line 3338
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move v0, p1

    .line 3339
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    move-object v0, p2

    .line 3340
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, p3

    .line 3341
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p4

    .line 3342
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p5

    .line 3343
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p6

    .line 3344
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p7

    .line 3345
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p8

    .line 3346
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p9

    .line 3347
    invoke-virtual {v1, p9}, Landroid/os/Parcel;->writeBoolean(Z)V

    move v0, p10

    .line 3348
    invoke-virtual {v1, p10}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p11

    .line 3349
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p12

    .line 3350
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p13

    .line 3351
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p14

    .line 3352
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p15

    .line 3353
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p16

    .line 3354
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p17

    .line 3355
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p18

    .line 3356
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p19

    .line 3357
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p20

    .line 3358
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p21

    .line 3359
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p22

    .line 3360
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p23

    .line 3361
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, p24

    .line 3362
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, p25

    .line 3363
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, p26

    .line 3364
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, p27

    .line 3365
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, p28

    .line 3366
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, p29

    .line 3367
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object/from16 v0, p30

    .line 3368
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object v0, p0

    .line 3369
    iget-object v0, v0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x37

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3370
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3371
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3374
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3375
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v0

    :catchall_0
    move-exception v0

    .line 3374
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3375
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3376
    throw v0
.end method

.method public steSetNetId(II)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3650
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3651
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 3654
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3655
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3656
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3657
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x45

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3658
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3659
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3662
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3663
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 3662
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3663
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3664
    throw p0
.end method

.method public steSetRtcpOnCall(III)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3550
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3551
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 3554
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3555
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3556
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3557
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3558
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x40

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3559
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3560
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3563
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3564
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 3563
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3564
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3565
    throw p0
.end method

.method public steSetRtcpTimeout(IJ)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3589
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3590
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 3593
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3594
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3595
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 3596
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x42

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3597
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3598
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3601
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3602
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 3601
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3602
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3603
    throw p0
.end method

.method public steSetRtcpXr(IIIII[I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3608
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3609
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 3612
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3613
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3614
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3615
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3616
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3617
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 3618
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3619
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x43

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3620
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3621
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3624
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3625
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 3624
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3625
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3626
    throw p0
.end method

.method public steSetRtpTimeout(IJ)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3570
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3571
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 3574
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3575
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3576
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 3577
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x41

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3578
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3579
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3582
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3583
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 3582
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3583
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3584
    throw p0
.end method

.method public steSetSessionId(II)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3669
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3670
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 3673
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3674
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3675
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3676
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x46

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3677
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3678
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3681
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3682
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 3681
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3682
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3683
    throw p0
.end method

.method public steStartChannel(IIZ)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3408
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3409
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 3412
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3413
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3414
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3415
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3416
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x39

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3417
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3418
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3421
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3422
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 3421
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3422
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3423
    throw p0
.end method

.method public steStopChannel(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3453
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3454
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 3457
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3458
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3459
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x3b

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3460
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3461
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3464
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3465
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 3464
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3465
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3466
    throw p0
.end method

.method public steUpdateChannel(IILjava/lang/String;ILjava/lang/String;III)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3428
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3429
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 3432
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3433
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3434
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3435
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3436
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3437
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3438
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3439
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 3440
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 3441
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x3a

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3442
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3443
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3446
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3447
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 3446
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3447
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3448
    throw p0
.end method

.method public sveCmcRecorderCreate(IIILjava/lang/String;IIJILjava/lang/String;IIIIIJLjava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4273
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v1

    .line 4274
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string v0, "com.sec.sve.ISecVideoEngineService"

    .line 4277
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move v0, p1

    .line 4278
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p2

    .line 4279
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p3

    .line 4280
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    move-object v0, p4

    .line 4281
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, p5

    .line 4282
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p6

    .line 4283
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeInt(I)V

    move-wide v3, p7

    .line 4284
    invoke-virtual {v1, p7, p8}, Landroid/os/Parcel;->writeLong(J)V

    move v0, p9

    .line 4285
    invoke-virtual {v1, p9}, Landroid/os/Parcel;->writeInt(I)V

    move-object v0, p10

    .line 4286
    invoke-virtual {v1, p10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move/from16 v0, p11

    .line 4287
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p12

    .line 4288
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p13

    .line 4289
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p14

    .line 4290
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p15

    .line 4291
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move-wide/from16 v3, p16

    .line 4292
    invoke-virtual {v1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    move-object/from16 v0, p18

    .line 4293
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object v0, p0

    .line 4294
    iget-object v0, v0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x63

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4295
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 4296
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4299
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4300
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v0

    :catchall_0
    move-exception v0

    .line 4299
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4300
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4301
    throw v0
.end method

.method public sveCreateChannel()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2896
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2897
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 2900
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2901
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x22

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2902
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2903
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2906
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2907
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 2906
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2907
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2908
    throw p0
.end method

.method public sveGetCodecCapacity(I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3301
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3302
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 3305
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3306
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3307
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x35

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3308
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3309
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3312
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3313
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 3312
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3313
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3314
    throw p0
.end method

.method public sveGetLastPlayedVideoTime(I)Lcom/sec/sve/TimeInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3204
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3205
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 3208
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3209
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3210
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x30

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3211
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3212
    sget-object p0, Lcom/sec/sve/TimeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/sve/TimeInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3215
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3216
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 3215
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3216
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3217
    throw p0
.end method

.method public sveGetRtcpTimeInfo(I)Lcom/sec/sve/TimeInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3283
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3284
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 3287
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3288
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3289
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x34

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3290
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3291
    sget-object p0, Lcom/sec/sve/TimeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/sve/TimeInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3294
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3295
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 3294
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3295
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3296
    throw p0
.end method

.method public sveRecorderCreate(ILjava/lang/String;IILjava/lang/String;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4250
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4251
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 4254
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4255
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4256
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4257
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4258
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4259
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4260
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 4261
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x62

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4262
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4263
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4266
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4267
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 4266
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4267
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4268
    throw p0
.end method

.method public sveRecorderDelete(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4306
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4307
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 4310
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4311
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4312
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x64

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4313
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4314
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4317
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4318
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 4317
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4318
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4319
    throw p0
.end method

.method public sveRecorderStart(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4324
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4325
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 4328
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4329
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4330
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x65

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4331
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4332
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4335
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4336
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 4335
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4336
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4337
    throw p0
.end method

.method public sveRecorderStop(IZ)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4342
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4343
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 4346
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4347
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4348
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4349
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x66

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4350
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4351
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4354
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4355
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 4354
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4355
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4356
    throw p0
.end method

.method public sveRestartEmoji(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3169
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3170
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 3172
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3173
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3174
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x2e

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3175
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3178
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3179
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 3178
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3179
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3180
    throw p0
.end method

.method public sveSendGeneralEvent(IIILjava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3262
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3263
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 3266
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3267
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3268
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3269
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3270
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3271
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x33

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3272
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3273
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3276
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3277
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 3276
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3277
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3278
    throw p0
.end method

.method public sveSetCodecInfo(IIIIIILjava/lang/String;IIIIIZIZIIIII[B[B[BIII)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2977
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v1

    .line 2978
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string v0, "com.sec.sve.ISecVideoEngineService"

    .line 2981
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move v0, p1

    .line 2982
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p2

    .line 2983
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p3

    .line 2984
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p4

    .line 2985
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p5

    .line 2986
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p6

    .line 2987
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeInt(I)V

    move-object v0, p7

    .line 2988
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, p8

    .line 2989
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p9

    .line 2990
    invoke-virtual {v1, p9}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p10

    .line 2991
    invoke-virtual {v1, p10}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p11

    .line 2992
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p12

    .line 2993
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p13

    .line 2994
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    move/from16 v0, p14

    .line 2995
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p15

    .line 2996
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    move/from16 v0, p16

    .line 2997
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p17

    .line 2998
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p18

    .line 2999
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p19

    .line 3000
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p20

    .line 3001
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move-object/from16 v0, p21

    .line 3002
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    move-object/from16 v0, p22

    .line 3003
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    move-object/from16 v0, p23

    .line 3004
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    move/from16 v0, p24

    .line 3005
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p25

    .line 3006
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p26

    .line 3007
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move-object v0, p0

    .line 3008
    iget-object v0, v0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x26

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3009
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3010
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3013
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3014
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v0

    :catchall_0
    move-exception v0

    .line 3013
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3014
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3015
    throw v0
.end method

.method public sveSetConnection(ILjava/lang/String;ILjava/lang/String;IIIIJ)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2951
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2952
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 2955
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2956
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2957
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2958
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2959
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2960
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2961
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2962
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 2963
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 2964
    invoke-virtual {v0, p9, p10}, Landroid/os/Parcel;->writeLong(J)V

    .line 2965
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x25

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2966
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2967
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2970
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2971
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 2970
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2971
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2972
    throw p0
.end method

.method public sveSetGcmSrtpParams(IIIICI[BI[BI)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3050
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3051
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 3054
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3055
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3056
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3057
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3058
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3059
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 3060
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3061
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 3062
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 3063
    invoke-virtual {v0, p9}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 3064
    invoke-virtual {v0, p10}, Landroid/os/Parcel;->writeInt(I)V

    .line 3065
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x28

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3066
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3067
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3070
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3071
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 3070
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3071
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3072
    throw p0
.end method

.method public sveSetHeldInfo(IZZ)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3184
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3185
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 3188
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3189
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3190
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3191
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3192
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x2f

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3193
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3194
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3197
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3198
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 3197
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3198
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3199
    throw p0
.end method

.method public sveSetMediaConfig(IZIZIIII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3077
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3078
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 3081
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3082
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3083
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3084
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3085
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3086
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 3087
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3088
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 3089
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 3090
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x29

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3091
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3092
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3095
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3096
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 3095
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3096
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3097
    throw p0
.end method

.method public sveSetNetworkQoS(IIII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3241
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3242
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 3245
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3246
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3247
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3248
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3249
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3250
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x32

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3251
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3252
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3255
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3256
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 3255
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3256
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3257
    throw p0
.end method

.method public sveSetSRTPParams(ILjava/lang/String;[BIIIILjava/lang/String;[BIIII)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3020
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v1

    .line 3021
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_0
    const-string v0, "com.sec.sve.ISecVideoEngineService"

    .line 3024
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move v0, p1

    .line 3025
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    move-object v0, p2

    .line 3026
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object v0, p3

    .line 3027
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    move v0, p4

    .line 3028
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p5

    .line 3029
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p6

    .line 3030
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, p7

    .line 3031
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeInt(I)V

    move-object v0, p8

    .line 3032
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move-object v0, p9

    .line 3033
    invoke-virtual {v1, p9}, Landroid/os/Parcel;->writeByteArray([B)V

    move v0, p10

    .line 3034
    invoke-virtual {v1, p10}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p11

    .line 3035
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p12

    .line 3036
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move/from16 v0, p13

    .line 3037
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    move-object v0, p0

    .line 3038
    iget-object v0, v0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x27

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3039
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3040
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3043
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3044
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v0

    :catchall_0
    move-exception v0

    .line 3043
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3044
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3045
    throw v0
.end method

.method public sveSetVideoPlayDelay(II)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3222
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3223
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 3226
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3227
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3228
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3229
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x31

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3230
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3231
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3234
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3235
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 3234
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3235
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3236
    throw p0
.end method

.method public sveStartCamera(II)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3102
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3103
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 3106
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3107
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3108
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3109
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x2a

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3110
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3111
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3114
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3115
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 3114
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3115
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3116
    throw p0
.end method

.method public sveStartChannel(III)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2913
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2914
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 2917
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2918
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2919
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2920
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2921
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x23

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2922
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2923
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2926
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2927
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 2926
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2927
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2928
    throw p0
.end method

.method public sveStartEmoji(ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3138
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3139
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 3141
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3142
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3143
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3144
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x2c

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3145
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3148
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3149
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 3148
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3149
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3150
    throw p0
.end method

.method public sveStartRecording(II)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4401
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4402
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 4405
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4406
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4407
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4408
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x69

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4409
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4410
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4413
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4414
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 4413
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4414
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4415
    throw p0
.end method

.method public sveStopCamera()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3121
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3122
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 3125
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3126
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x2b

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3127
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3128
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3131
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3132
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 3131
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3132
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3133
    throw p0
.end method

.method public sveStopChannel(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2933
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2934
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 2937
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2938
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2939
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x24

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2940
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2941
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2944
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2945
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 2944
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2945
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2946
    throw p0
.end method

.method public sveStopEmoji(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3154
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 3155
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 3157
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3158
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3159
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x2d

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3160
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3163
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3164
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 3163
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3164
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3165
    throw p0
.end method

.method public sveStopRecording(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4420
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4421
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 4424
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4425
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4426
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x6a

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4427
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4428
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4431
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4432
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 4431
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4432
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4433
    throw p0
.end method

.method public switchCamera()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2336
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 2337
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 2339
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2340
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2341
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2344
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2345
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 2344
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2345
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2346
    throw p0
.end method

.method public unregisterForCmcEventListener(Lcom/sec/sve/ICmcMediaEventListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4522
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4523
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 4525
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4526
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 4527
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x70

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4528
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4531
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4532
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 4531
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4532
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4533
    throw p0
.end method

.method public unregisterForMediaEventListener(Lcom/sec/sve/IImsMediaEventListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4491
    invoke-virtual {p0}, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0

    .line 4492
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.sec.sve.ISecVideoEngineService"

    .line 4494
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4495
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 4496
    iget-object p0, p0, Lcom/sec/sve/ISecVideoEngineService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x6e

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4497
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4500
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4501
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 4500
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4501
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4502
    throw p0
.end method
