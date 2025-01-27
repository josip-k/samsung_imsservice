.class public Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;
.super Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;
.source "NetAPIWorkingStatusControllerMcs.java"


# static fields
.field protected static final EVENT_CELLULAR_CONNECTION_CHANGED:I = 0x14

.field protected static final EVENT_WIFI_CONNECTION_CHANGED:I = 0x13

.field private static final FCM_REGISTRATION_TOKEN:Ljava/lang/String; = "fcmRegistrationToken"

.field private static final FCM_REGISTRATION_TOKEN_REFRESHED:Ljava/lang/String; = "fcmRegistrationTokenRefreshed"

.field private static final INTENT_RECEIVE_FCM_PUSH_NOTIFICATION:Ljava/lang/String; = "com.sec.internal.ims.fcm.action.RECEIVE_FCM_PUSH_NOTIFICATION"

.field private static final INTENT_RECEIVE_FCM_REGISTRATION_TOKEN:Ljava/lang/String; = "com.sec.internal.ims.fcm.action.RECEIVE_FCM_REGISTRATION_TOKEN"

.field private static final INTENT_REFRESH_FCM_REGISTRATION_TOKEN:Ljava/lang/String; = "com.sec.internal.ims.fcm.action.REFRESH_FCM_REGISTRATION_TOKEN"

.field private static final INTENT_RESET_BUFFERDB_MCS:Ljava/lang/String; = "com.sec.internal.ims.cmstore.mcs.action.RESET_BUFFERDB_MCS"

.field private static final PHONE_ID:Ljava/lang/String; = "phoneId"

.field private static final SENDER_ID:Ljava/lang/String; = "senderId"


# instance fields
.field private TAG:Ljava/lang/String;

.field final mCellularStateListener:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mCentralMsgStoreServiceListener:Lcom/sec/ims/ICentralMsgStoreServiceListener;

.field final mDefaultNetworkListener:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mIsMobileConnected:Z

.field private mMcsFcmEventListenerReceiver:Lcom/sec/internal/ims/cmstore/receiver/McsFcmEventListenerReceiver;

.field private mMcsFcmInstanceIdServiceReceiver:Landroid/content/BroadcastReceiver;

.field private mMcsFcmIntentFilter:Landroid/content/IntentFilter;

.field private mMcsFcmIntentServiceReceiver:Landroid/content/BroadcastReceiver;

.field private mMcsRestartIntentFilter:Landroid/content/IntentFilter;

.field private mMcsRestartServiceReceiver:Landroid/content/BroadcastReceiver;

.field private mMcsTokenIntentFilter:Landroid/content/IntentFilter;

.field private mMcsTokenValidityTimeoutReceiver:Landroid/content/BroadcastReceiver;

.field private mMobileIp:Ljava/lang/String;

.field private mOldFcmToken:Ljava/lang/String;

.field private mPhoneId:I

.field final mWifiStateListener:Landroid/net/ConnectivityManager$NetworkCallback;


# direct methods
.method static bridge synthetic -$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOldFcmToken(Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->mOldFcmToken:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->mPhoneId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmOldFcmToken(Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->mOldFcmToken:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$msendNetworkChangeMsg(Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;ZI)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->sendNetworkChangeMsg(ZI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetMobileIp(Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;Landroid/net/Network;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->setMobileIp(Landroid/net/Network;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;)V
    .locals 1

    .line 80
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;-><init>(Landroid/os/Looper;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;)V

    .line 53
    const-class p1, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->TAG:Ljava/lang/String;

    const/4 p1, 0x0

    .line 76
    iput-boolean p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->mIsMobileConnected:Z

    const-string p1, ""

    .line 77
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->mOldFcmToken:Ljava/lang/String;

    .line 359
    new-instance p1, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs$5;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs$5;-><init>(Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;)V

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->mDefaultNetworkListener:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 400
    new-instance p3, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs$6;

    invoke-direct {p3, p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs$6;-><init>(Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;)V

    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->mWifiStateListener:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 421
    new-instance p3, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs$7;

    invoke-direct {p3, p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs$7;-><init>(Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;)V

    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->mCellularStateListener:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 81
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->TAG:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->TAG:Ljava/lang/String;

    .line 82
    invoke-interface {p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result p3

    iput p3, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->mPhoneId:I

    .line 83
    invoke-interface {p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    .line 84
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->mMcsFcmIntentFilter:Landroid/content/IntentFilter;

    const-string p3, "com.sec.internal.ims.fcm.action.RECEIVE_FCM_REGISTRATION_TOKEN"

    .line 85
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 86
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->mMcsFcmIntentFilter:Landroid/content/IntentFilter;

    const-string p3, "com.sec.internal.ims.fcm.action.RECEIVE_FCM_PUSH_NOTIFICATION"

    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->mMcsFcmIntentFilter:Landroid/content/IntentFilter;

    const-string p3, "com.sec.internal.ims.fcm.action.REFRESH_FCM_REGISTRATION_TOKEN"

    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 88
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->mMcsTokenIntentFilter:Landroid/content/IntentFilter;

    const-string p3, "com.sec.imsservice.cmstore.mcs.action.ACCESS_TOKEN_VALIDITY_TIMEOUT"

    .line 89
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 90
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->mMcsTokenIntentFilter:Landroid/content/IntentFilter;

    const-string p3, "com.sec.imsservice.cmstore.mcs.action.REFRESH_TOKEN_VALIDITY_TIMEOUT"

    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->mMcsRestartIntentFilter:Landroid/content/IntentFilter;

    const-string p3, "com.sec.internal.ims.cmstore.mcs.action.RESET_BUFFERDB_MCS"

    .line 92
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->registerMcsRestartServiceReceiver()V

    .line 94
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->registerDefaultSmsPackageChangeReceiver(Landroid/content/Context;)V

    .line 95
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    const-string p3, "connectivity"

    .line 96
    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/ConnectivityManager;

    .line 97
    invoke-virtual {p2, p1}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 98
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->registerAirplaneMode(Landroid/content/Context;)V

    return-void
.end method

.method private getCentralMsgStoreServiceListener()Lcom/sec/ims/ICentralMsgStoreServiceListener;
    .locals 1

    .line 221
    new-instance v0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs$2;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs$2;-><init>(Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;)V

    return-object v0
.end method

.method private getMcsFcmInstanceIdServiceReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    .line 345
    new-instance v0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs$4;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs$4;-><init>(Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;)V

    return-object v0
.end method

.method private getMcsFcmIntentServiceReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    .line 276
    new-instance v0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs$3;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs$3;-><init>(Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;)V

    return-object v0
.end method

.method private getMcsRestartServiceReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    .line 115
    new-instance v0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs$1;-><init>(Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;)V

    return-object v0
.end method

.method private getMcsTokenValidityTimeoutReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    .line 506
    new-instance v0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs$8;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs$8;-><init>(Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;)V

    return-object v0
.end method

.method private registerCellularStateListener()V
    .locals 3

    .line 445
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v1, 0x0

    .line 446
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v1, 0xc

    .line 447
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 448
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 449
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 450
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->mCellularStateListener:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v0, p0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method private registerMcsRestartServiceReceiver()V
    .locals 2

    .line 102
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->unregisterMcsRestartServiceReceiver()V

    .line 103
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->getMcsRestartServiceReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->mMcsRestartServiceReceiver:Landroid/content/BroadcastReceiver;

    .line 104
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->mMcsRestartIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerWifiStateListener()V
    .locals 3

    .line 436
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v1, 0x1

    .line 437
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v1, 0xc

    .line 438
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 439
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 440
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 441
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->mWifiStateListener:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v0, p0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method private resumeCMNWorkingForTokenRefresh()V
    .locals 2

    .line 741
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "resumeCMNWorkingForTokenRefresh"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 742
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsOMAAPIRunning:Z

    .line 743
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mNetAPIHandler:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->resumeforMcs(Z)V

    return-void
.end method

.method private sendNetworkChangeMsg(ZI)V
    .locals 1

    .line 415
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 416
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 417
    iput p2, v0, Landroid/os/Message;->what:I

    .line 418
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private setMobileIp(Landroid/net/Network;)V
    .locals 3

    .line 373
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 374
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 376
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object p1

    .line 377
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkAddress;

    .line 378
    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 379
    invoke-virtual {v1}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v2

    if-nez v2, :cond_0

    instance-of v2, v1, Ljava/net/Inet6Address;

    if-eqz v2, :cond_0

    .line 380
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->decompressIpv6Address(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "::/64"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->mMobileIp:Ljava/lang/String;

    .line 385
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "setMobileIp: IPv6 decompressed address"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 389
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkAddress;

    .line 390
    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 391
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v1

    if-nez v1, :cond_2

    instance-of v1, v0, Ljava/net/Inet4Address;

    if-eqz v1, :cond_2

    .line 392
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->mMobileIp:Ljava/lang/String;

    .line 393
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "setMobileIp: IPv4 address"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method


# virtual methods
.method public clearData()V
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->TAG:Ljava/lang/String;

    const-string v1, "clearData"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->clearAll()V

    .line 158
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;->getCookieJar()Lcom/sec/internal/ims/cmstore/PersistentHttp3CookieJar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/PersistentHttp3CookieJar;->removeAll()V

    .line 159
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->onCleanBufferDbRequired()V

    const/4 v0, 0x0

    .line 160
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mHasNotifiedBufferDBProvisionSuccess:Z

    return-void
.end method

.method public clearData(Ljava/lang/String;)V
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->TAG:Ljava/lang/String;

    const-string v1, "clearData"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->clearAll()V

    .line 166
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;->getCookieJar()Lcom/sec/internal/ims/cmstore/PersistentHttp3CookieJar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/PersistentHttp3CookieJar;->removeAll()V

    .line 167
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageBufferSchedulingHandler()Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferSchedulingHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/cmstore/cloudmessagebuffer/CloudMessageBufferDBHelper;->cleanAllBufferDB(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 168
    iput-boolean p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mHasNotifiedBufferDBProvisionSuccess:Z

    return-void
.end method

.method public decompressIpv6Address(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 457
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 458
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ":"

    .line 459
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 460
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    aget-object v4, p0, v3

    const-string v5, ""

    .line 461
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v4, v2

    .line 462
    :goto_1
    array-length v5, p0

    rsub-int/lit8 v5, v5, 0x8

    if-gt v4, v5, :cond_3

    const-string v5, "0000:"

    .line 463
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 466
    :cond_1
    :goto_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_2

    .line 467
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 469
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 472
    :cond_4
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    const/16 v0, 0x13

    if-le p0, v0, :cond_5

    invoke-virtual {p1, v2, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_5
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_3
    return-object p0
.end method

.method public getMobileIp()Ljava/lang/String;
    .locals 0

    .line 476
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->mMobileIp:Ljava/lang/String;

    return-object p0
.end method

.method protected handleEventMessageAppChanged()V
    .locals 4

    .line 798
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/CmsUtil;->isDefaultMessageAppInUse(Landroid/content/Context;)Z

    move-result v0

    .line 799
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleEventMessageAppChanged: mIsCmsProfileEnabled:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsCmsProfileEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mIsDefaultMsgAppNative:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsDefaultMsgAppNative:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isDefaultMessageApp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    iget-boolean v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsCmsProfileEnabled:Z

    if-nez v1, :cond_0

    return-void

    .line 803
    :cond_0
    iget-boolean v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsDefaultMsgAppNative:Z

    if-ne v1, v0, :cond_1

    return-void

    .line 806
    :cond_1
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsDefaultMsgAppNative:Z

    .line 807
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Default Message App changed. isNative: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsDefaultMsgAppNative:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->add(Ljava/lang/String;ILjava/lang/String;)V

    .line 808
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsDefaultMsgAppNative:Z

    if-nez v0, :cond_2

    .line 809
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveNativeMsgAppIsDefault(Z)V

    .line 810
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mNetAPIHandler:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->deleteNotificationForDMAChange()V

    .line 811
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->pauseCMNWorking()V

    goto :goto_0

    .line 813
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveNativeMsgAppIsDefault(Z)V

    .line 814
    new-instance v0, Lcom/sec/internal/helper/AsyncResult;

    sget-object v2, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener$WorkingStatus;->DEFAULT_MSGAPP_CHGTO_NATIVE:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener$WorkingStatus;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2, v3}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 817
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mWorkingStatus:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v2, v0}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    .line 818
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleEventMessageAppChanged validNetwork:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsNetworkValid:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " provisionStatus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v3}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getProvisionStatus()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " profileActive:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 819
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->isCmsProfileActive()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 818
    invoke-static {v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsNetworkValid:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getProvisionStatus()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->isCmsProfileActive()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 821
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->resumeCMNWorking()V

    .line 823
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->setForceInitFullSync(Z)V

    :goto_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 603
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_d

    const-string v2, "airplane_mode_on"

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v0, v3, :cond_8

    const/16 v5, 0x8

    if-eq v0, v5, :cond_6

    const-string v2, "fcmRegistrationTokenRefreshed"

    const-string v5, ""

    const/16 v6, 0xe

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    .line 733
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->TAG:Ljava/lang/String;

    const-string v1, "handleMessage: unknown msg"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    invoke-super {p0, p1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_5

    .line 715
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->mIsMobileConnected:Z

    .line 716
    invoke-virtual {p0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_5

    .line 709
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsWifiConnected:Z

    .line 710
    invoke-virtual {p0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_5

    .line 680
    :pswitch_2
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->TAG:Ljava/lang/String;

    iget v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->mPhoneId:I

    const-string v1, "Token validity timed out"

    invoke-static {p1, v0, v1}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->add(Ljava/lang/String;ILjava/lang/String;)V

    .line 681
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->unregisterMcsFcmIntentServiceReceiver()V

    .line 682
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->unregisterMcsFcmInstanceIdServiceReceiver()V

    .line 683
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->unregisterMcsFcmEventListenerReceiver()V

    .line 684
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->unregisterTokenValidityTimeoutReceiver()V

    .line 685
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->stopCMNWorking()V

    goto/16 :goto_5

    .line 674
    :pswitch_3
    invoke-virtual {p0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 675
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v6, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_5

    .line 650
    :pswitch_4
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->unregisterMcsFcmIntentServiceReceiver()V

    .line 651
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    check-cast v0, Landroid/os/Bundle;

    const-string v3, "fcmRegistrationToken"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 652
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getFcmRegistrationToken()Ljava/lang/String;

    move-result-object v0

    .line 653
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_1

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v4

    .line 655
    :goto_0
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage: EVENT_RECEIVE_FCM_REGISTRATION_TOKEN: token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " isFcmRegistrationTokenRefreshed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsNetworkValid:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 657
    invoke-interface {v3}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getProvisionStatus()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->isCmsProfileActive()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 655
    invoke-static {p1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    invoke-static {v5, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 659
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "token remained same after refresh, do nothing"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 661
    :cond_2
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveFcmRegistrationToken(Ljava/lang/String;)V

    .line 662
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsNetworkValid:Z

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getProvisionStatus()Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->isCmsProfileActive()Z

    move-result p1

    if-eqz p1, :cond_e

    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsDefaultMsgAppNative:Z

    if-eqz p1, :cond_e

    if-nez v1, :cond_3

    .line 663
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsCMNWorkingStarted:Z

    if-nez p1, :cond_3

    .line 664
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->startCMNWorking()V

    goto/16 :goto_5

    .line 666
    :cond_3
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->resumeCMNWorkingForTokenRefresh()V

    goto/16 :goto_5

    .line 624
    :pswitch_5
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->mPhoneId:I

    const-string v6, "Request FCM registration token"

    invoke-static {v0, v3, v6}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->add(Ljava/lang/String;ILjava/lang/String;)V

    .line 625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->mPhoneId:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",NC:REG_TK_REQ"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v3, -0x6ffe0000

    invoke-static {v3, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 626
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->registerMcsFcmEventListenerReceiver()V

    .line 627
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_4

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    move v1, v4

    .line 628
    :goto_1
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getFcmSenderId()Ljava/lang/String;

    move-result-object p1

    .line 629
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage: EVENT_REQUEST_FCM_REGISTRATION_TOKEN: senderId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " isFcmRegistrationTokenRefreshed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_5

    .line 632
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getFcmRegistrationToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->mOldFcmToken:Ljava/lang/String;

    .line 633
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveFcmRegistrationToken(Ljava/lang/String;)V

    .line 635
    :cond_5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 636
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->registerMcsFcmIntentServiceReceiver()V

    .line 637
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->registerMcsFcmInstanceIdServiceReceiver()V

    .line 638
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    const-class v4, Lcom/sec/internal/ims/fcm/receiver/McsFcmIntentService;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v3, "phoneId"

    .line 639
    iget v4, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->mPhoneId:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v3, "senderId"

    .line 640
    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 641
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 p1, 0x1000000

    .line 642
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 643
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->TAG:Ljava/lang/String;

    const-string v1, "handleMessage: EVENT_REQUEST_FCM_REGISTRATION_TOKEN: sendBroadcast McsFcmIntentService"

    invoke-static {p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_5

    .line 615
    :pswitch_6
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->unregisterMcsFcmIntentServiceReceiver()V

    .line 616
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->unregisterMcsFcmInstanceIdServiceReceiver()V

    .line 617
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->unregisterMcsFcmEventListenerReceiver()V

    .line 618
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->unregisterTokenValidityTimeoutReceiver()V

    .line 619
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->pauseCMNWorkingForDeregi()V

    goto/16 :goto_5

    .line 606
    :pswitch_7
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->registerTokenValidityTimeoutReceiver()V

    .line 607
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveFcmRetryCount(I)V

    .line 608
    invoke-virtual {p0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 609
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v6, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 610
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->startInitSync()V

    goto/16 :goto_5

    .line 720
    :cond_6
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_2

    :cond_7
    move v1, v4

    :goto_2
    iput-boolean v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsAirPlaneModeOn:Z

    .line 722
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "airplane mode change :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsAirPlaneModeOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " oldMobile:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->mIsMobileConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " oldWifi:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsWifiConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->TAG:Ljava/lang/String;

    iget v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AirplaneMode changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsAirPlaneModeOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->add(Ljava/lang/String;ILjava/lang/String;)V

    .line 725
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsAirPlaneModeOn:Z

    if-eqz p1, :cond_e

    .line 726
    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->setNetworkStatus(Z)V

    .line 727
    iput-boolean v4, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsWifiConnected:Z

    .line 728
    iput-boolean v4, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->mIsMobileConnected:Z

    goto :goto_5

    .line 695
    :cond_8
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_9

    move p1, v1

    goto :goto_3

    :cond_9
    move p1, v4

    :goto_3
    iput-boolean p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsAirPlaneModeOn:Z

    .line 697
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->mIsMobileConnected:Z

    if-nez p1, :cond_b

    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsWifiConnected:Z

    if-eqz p1, :cond_a

    goto :goto_4

    :cond_a
    move v1, v4

    .line 698
    :cond_b
    :goto_4
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Network available: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mobile:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->mIsMobileConnected:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " wifi:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsWifiConnected:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsNetworkValid:Z

    if-eqz p1, :cond_c

    if-nez v1, :cond_c

    .line 701
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->TAG:Ljava/lang/String;

    const-string v0, "no available network, reset channel state."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mNetAPIHandler:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->resetChannelState()V

    .line 704
    :cond_c
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->setNetworkStatus(Z)V

    goto :goto_5

    .line 690
    :cond_d
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->handleEventMessageAppChanged()V

    :cond_e
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x12
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public init()V
    .locals 1

    .line 148
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->initDeviceID()V

    .line 149
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->createStrategy()V

    .line 150
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->registerWifiStateListener()V

    .line 151
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->registerCellularStateListener()V

    return-void
.end method

.method public onChannelLifetimeUpdateComplete()V
    .locals 2

    .line 829
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->TAG:Ljava/lang/String;

    const-string v1, "onChannelLifetimeUpdateComplete"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xe

    .line 830
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 831
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onForceInitSyncStart()V
    .locals 3

    .line 836
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onForceInitSyncStart validNetwork: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsNetworkValid:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " provision: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getProvisionStatus()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsNetworkValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getProvisionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 838
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->startCMNWorkingResetBox()V

    :cond_0
    return-void
.end method

.method public onOmaProvisionFailed(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;J)V
    .locals 4

    .line 212
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    .line 213
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getLastFailedApi()Ljava/lang/Class;

    move-result-object v0

    .line 215
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onOmaProvisionFailed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " lastFailedApi "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getMcsRetryMapAdapter()Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->clearRetryHistory()V

    .line 217
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    const/4 p1, 0x4

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->updateDelay(IJ)Z

    return-void
.end method

.method public onRestartService()V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->TAG:Ljava/lang/String;

    const-string v1, "Entry restartService Internal Restart case:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getMcsRetryMapAdapter()Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->clearRetryHistory()V

    .line 141
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;->getCookieJar()Lcom/sec/internal/ims/cmstore/PersistentHttp3CookieJar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/PersistentHttp3CookieJar;->removeAll()V

    .line 142
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->onCleanBufferDbRequired()V

    .line 143
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    const-string v0, "Buffer DB delete request Triggered"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onStartFcmRetry()V
    .locals 2

    const/16 v0, 0xe

    .line 327
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 328
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected pauseCMNWorking()V
    .locals 2

    .line 585
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "pauseCMNWorking"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 586
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsOMAAPIRunning:Z

    .line 587
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mNetAPIHandler:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->pauseforMcs()V

    return-void
.end method

.method protected pauseCMNWorkingForDeregi()V
    .locals 2

    .line 578
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "pauseCMNWorkingForDeregi"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mNetAPIHandler:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->pauseMcsForDeregi()V

    .line 580
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->pauseCMNWorking()V

    return-void
.end method

.method protected registerAirplaneMode(Landroid/content/Context;)V
    .locals 3

    .line 777
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v2, v1

    :cond_0
    iput-boolean v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsAirPlaneModeOn:Z

    xor-int/lit8 v0, v2, 0x1

    .line 779
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsNetworkValid:Z

    .line 780
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    .line 781
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 783
    new-instance v1, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs$10;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs$10;-><init>(Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;)V

    .line 793
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public registerCentralMsgStoreServiceListener()V
    .locals 2

    .line 263
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->unregisterCentralMsgStoreServiceListener()V

    .line 264
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->getCentralMsgStoreServiceListener()Lcom/sec/ims/ICentralMsgStoreServiceListener;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->mCentralMsgStoreServiceListener:Lcom/sec/ims/ICentralMsgStoreServiceListener;

    .line 265
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->registerCmsProvisioningListener(Lcom/sec/ims/ICentralMsgStoreServiceListener;Z)V

    return-void
.end method

.method protected registerDefaultSmsPackageChangeReceiver(Landroid/content/Context;)V
    .locals 2

    .line 752
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.provider.action.DEFAULT_SMS_PACKAGE_CHANGED_INTERNAL"

    .line 753
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 754
    new-instance v1, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs$9;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs$9;-><init>(Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;)V

    .line 772
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public registerForUpdateFromCloud(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0

    .line 748
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mNetAPIHandler:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->registerForUpdateFromCloud(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerMcsFcmEventListenerReceiver()V
    .locals 4

    .line 493
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->unregisterMcsFcmEventListenerReceiver()V

    .line 494
    new-instance v0, Lcom/sec/internal/ims/cmstore/receiver/McsFcmEventListenerReceiver;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->mPhoneId:I

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/internal/ims/cmstore/receiver/McsFcmEventListenerReceiver;-><init>(Landroid/content/Context;ILcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->mMcsFcmEventListenerReceiver:Lcom/sec/internal/ims/cmstore/receiver/McsFcmEventListenerReceiver;

    .line 495
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->mMcsFcmIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public registerMcsFcmInstanceIdServiceReceiver()V
    .locals 2

    .line 480
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->unregisterMcsFcmInstanceIdServiceReceiver()V

    .line 481
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->getMcsFcmInstanceIdServiceReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->mMcsFcmInstanceIdServiceReceiver:Landroid/content/BroadcastReceiver;

    .line 482
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->mMcsFcmIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public registerMcsFcmIntentServiceReceiver()V
    .locals 2

    .line 332
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->unregisterMcsFcmIntentServiceReceiver()V

    .line 333
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->getMcsFcmIntentServiceReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->mMcsFcmIntentServiceReceiver:Landroid/content/BroadcastReceiver;

    .line 334
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->mMcsFcmIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public registerTokenValidityTimeoutReceiver()V
    .locals 2

    .line 520
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->unregisterTokenValidityTimeoutReceiver()V

    .line 521
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->getMcsTokenValidityTimeoutReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->mMcsTokenValidityTimeoutReceiver:Landroid/content/BroadcastReceiver;

    .line 522
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->mMcsTokenIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public resetDataReceiver()V
    .locals 0

    .line 0
    return-void
.end method

.method public resetMcsRestartReceiver()V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "resetMcsRestartReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->unregisterMcsRestartServiceReceiver()V

    .line 132
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->isDebugEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->registerMcsRestartServiceReceiver()V

    :cond_0
    return-void
.end method

.method protected resumeCMNWorking()V
    .locals 2

    .line 592
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "resumeCMNWorking"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsCMNWorkingStarted:Z

    if-nez v0, :cond_0

    .line 594
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "resume called before starting. This should not be processed"

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 597
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsOMAAPIRunning:Z

    .line 598
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mNetAPIHandler:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->resumeforMcs(Z)V

    return-void
.end method

.method public sendFcmRegistrationSuccess(Ljava/lang/String;Z)V
    .locals 2

    .line 317
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveFcmRetryCount(I)V

    .line 318
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "fcmRegistrationToken"

    .line 319
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "fcmRegistrationTokenRefreshed"

    .line 320
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 321
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->TAG:Ljava/lang/String;

    const-string p2, "getMcsFcmIntentServiceReceiver: send EVENT_RECEIVE_FCM_REGISTRATION_TOKEN"

    invoke-static {p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0xf

    .line 322
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 323
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setCmsProfileEnabled(Z)V
    .locals 3

    .line 173
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCmsProfileEnabled: mIsCmsProfileEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsCmsProfileEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsCmsProfileEnabled:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    return-void

    .line 177
    :cond_0
    iput-boolean p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsCmsProfileEnabled:Z

    if-eqz p1, :cond_1

    .line 180
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->init()V

    .line 181
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->onNetworkChangeDetected()V

    .line 182
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/utils/CmsUtil;->isDefaultMessageAppInUse(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsDefaultMsgAppNative:Z

    .line 183
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    iget-boolean p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsDefaultMsgAppNative:Z

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveNativeMsgAppIsDefault(Z)V

    goto :goto_0

    .line 185
    :cond_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->unregisterNetworkChangeListener()V

    .line 186
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->stopCMNWorking()V

    :goto_0
    return-void
.end method

.method protected setNetworkStatus(Z)V
    .locals 4

    .line 534
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setNetworkStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsNetworkValid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsNetworkValid:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsCMNWorkingStarted:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsCMNWorkingStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " provisionStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 536
    invoke-interface {v2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getProvisionStatus()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " ProfileActive:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->isCmsProfileActive()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsCmsProfileEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsCmsProfileEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isMobileConnected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->mIsMobileConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isWifiConnected:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsWifiConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 534
    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsCmsProfileEnabled:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    return-void

    .line 543
    :cond_0
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsNetworkValid:Z

    const-string v1, "Network changed: "

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 544
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->add(Ljava/lang/String;ILjava/lang/String;)V

    .line 545
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->pauseCMNWorkingForDeregi()V

    .line 546
    iput-boolean p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsNetworkValid:Z

    goto :goto_0

    :cond_1
    if-ne v0, p1, :cond_2

    .line 548
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "same network state, nothing to be done"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 550
    :cond_2
    iput-boolean p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsNetworkValid:Z

    .line 551
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getProvisionStatus()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->isCmsProfileActive()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsDefaultMsgAppNative:Z

    if-eqz v0, :cond_4

    .line 552
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", mIsCMNWorkingStarted: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsCMNWorkingStarted:Z

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v2, p1}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->add(Ljava/lang/String;ILjava/lang/String;)V

    .line 553
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsCMNWorkingStarted:Z

    if-nez p1, :cond_3

    const/4 p1, 0x1

    .line 554
    iput-boolean p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsCMNWorkingStarted:Z

    .line 555
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->startCMNWorking()V

    goto :goto_0

    .line 557
    :cond_3
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->resumeCMNWorking()V

    :cond_4
    :goto_0
    return-void
.end method

.method protected startCMNWorking()V
    .locals 2

    .line 565
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startCMNWorking"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 566
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsCMNWorkingStarted:Z

    .line 567
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mNetAPIHandler:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->startforMcs()V

    return-void
.end method

.method public stopCMNWorking()V
    .locals 2

    .line 572
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopCMNWorking"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 573
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsCMNWorkingStarted:Z

    .line 574
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mNetAPIHandler:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->stopforMcs()V

    return-void
.end method

.method public unregisterCentralMsgStoreServiceListener()V
    .locals 2

    .line 269
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->mCentralMsgStoreServiceListener:Lcom/sec/ims/ICentralMsgStoreServiceListener;

    if-eqz v0, :cond_0

    .line 270
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1, v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->unregisterCmsProvisioningListener(Lcom/sec/ims/ICentralMsgStoreServiceListener;)V

    const/4 v0, 0x0

    .line 271
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->mCentralMsgStoreServiceListener:Lcom/sec/ims/ICentralMsgStoreServiceListener;

    :cond_0
    return-void
.end method

.method public unregisterMcsFcmEventListenerReceiver()V
    .locals 2

    .line 499
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->mMcsFcmEventListenerReceiver:Lcom/sec/internal/ims/cmstore/receiver/McsFcmEventListenerReceiver;

    if-eqz v0, :cond_0

    .line 500
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 501
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->mMcsFcmEventListenerReceiver:Lcom/sec/internal/ims/cmstore/receiver/McsFcmEventListenerReceiver;

    :cond_0
    return-void
.end method

.method public unregisterMcsFcmInstanceIdServiceReceiver()V
    .locals 2

    .line 486
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->mMcsFcmInstanceIdServiceReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 487
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 488
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->mMcsFcmInstanceIdServiceReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    return-void
.end method

.method public unregisterMcsFcmIntentServiceReceiver()V
    .locals 2

    .line 338
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->mMcsFcmIntentServiceReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 339
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 340
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->mMcsFcmIntentServiceReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    return-void
.end method

.method public unregisterMcsRestartServiceReceiver()V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->mMcsRestartServiceReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 109
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 110
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->mMcsRestartServiceReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    return-void
.end method

.method protected unregisterNetworkChangeListener()V
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterNetworkChangeListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    .line 194
    iput-boolean v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsWifiConnected:Z

    .line 195
    iput-boolean v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsNetworkValid:Z

    .line 196
    iput-boolean v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->mIsMobileConnected:Z

    .line 198
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->mWifiStateListener:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 199
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->mCellularStateListener:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 201
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public unregisterTokenValidityTimeoutReceiver()V
    .locals 2

    .line 526
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->mMcsTokenValidityTimeoutReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 527
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 528
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->mMcsTokenValidityTimeoutReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    return-void
.end method
