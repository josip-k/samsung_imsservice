.class public Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;
.super Landroid/os/Handler;
.source "NetAPIWorkingStatusController.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;
.implements Lcom/sec/internal/interfaces/ims/cmstore/IDeviceDataChangeListener;
.implements Lcom/sec/internal/interfaces/ims/cmstore/ILineStatusChangeCallBack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$MobileNetowrkCallBack;,
        Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$AutoDownloadContentObserver;,
        Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$TelephonyServiceCallback;
    }
.end annotation


# static fields
.field public static final ACTION_SIM_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.SIM_STATE_CHANGED"

.field public static final AUTO_DOWNLOAD_SIM_0:Ljava/lang/String; = "auto_download_sim0"

.field public static final AUTO_DOWNLOAD_SIM_1:Ljava/lang/String; = "auto_download_sim1"

.field protected static final EVENT_AIRPLANEMODE_CHANGED:I = 0x8

.field private static final EVENT_CHANGE_MSG_APP_WORKING_STATUS:I = 0x3

.field private static final EVENT_CHANGE_OMANETAPI_WORKING_STATUS:I = 0x4

.field protected static final EVENT_CMS_DEREGISTRATION_COMPLETED:I = 0xd

.field protected static final EVENT_CMS_REGISTRATION_COMPLETED:I = 0xc

.field private static final EVENT_DELETE_ACCOUNT:I = 0x7

.field private static final EVENT_ENABLE_GBA_MODULE:I = 0xb

.field protected static final EVENT_MESSAGE_APP_CHANGED:I = 0x1

.field protected static final EVENT_NETWORK_CHANGE_DETECTED:I = 0x2

.field protected static final EVENT_RECEIVE_FCM_PUSH_NOTIFICATION:I = 0x11

.field protected static final EVENT_RECEIVE_FCM_REGISTRATION_TOKEN:I = 0xf

.field protected static final EVENT_RECEIVE_TOKEN_VALIDITY_TIMEOUT:I = 0x12

.field protected static final EVENT_REFRESH_FCM_REGISTRATION_TOKEN:I = 0x10

.field private static final EVENT_REGISTER_PHONE_LISTENER:I = 0x9

.field protected static final EVENT_REQUEST_FCM_REGISTRATION_TOKEN:I = 0xe

.field private static final EVENT_SIM_STATE_CHANGED:I = 0xa

.field private static final EVENT_STOP_ALL_TASK:I = 0x6


# instance fields
.field private final LOG_TAG_CN:Ljava/lang/String;

.field public TAG:Ljava/lang/String;

.field protected mAutoDownloadContentObserver:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$AutoDownloadContentObserver;

.field private mCallbackMsgApp:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

.field private mCloudMessageManagerHelper:Lcom/sec/internal/ims/cmstore/CloudMessageManagerHelper;

.field protected mContext:Landroid/content/Context;

.field private mDeviceConfigAdapter:Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;

.field private mGbaServiceModule:Lcom/sec/internal/ims/gba/GbaServiceModule;

.field protected mHasNotifiedBufferDBProvisionSuccess:Z

.field private mIRetryStackAdapterHelper:Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;

.field private mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

.field protected mIsAirPlaneModeOn:Z

.field private mIsAmbsServiceStop:Z

.field protected mIsCMNWorkingStarted:Z

.field protected mIsCmsProfileEnabled:Z

.field protected mIsDefaultMsgAppNative:Z

.field private mIsMsgAppForeground:Z

.field protected mIsNetworkValid:Z

.field protected mIsOMAAPIRunning:Z

.field private mIsProvisionSuccess:Z

.field private mIsServicePaused:Z

.field private mIsUserDeleteAccount:Z

.field private mIsUsingMobileHipri:Z

.field protected mIsWifiConnected:Z

.field private mLineManager:Lcom/sec/internal/ims/cmstore/LineManager;

.field private mMobileNetworkCallback:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$MobileNetowrkCallBack;

.field protected mNetAPIHandler:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

.field private final mNetworkStateListener:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mProvisionControl:Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;

.field private mPushNotiPaused:Z

.field protected mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

.field private mTelephonyCallback:Landroid/telephony/TelephonyCallback;

.field private mVvmHandler:Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;

.field final mWifiStateListener:Landroid/net/ConnectivityManager$NetworkCallback;

.field protected final mWorkingStatus:Lcom/sec/internal/helper/RegistrantList;


# direct methods
.method static bridge synthetic -$$Nest$fputmIsUsingMobileHipri(Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsUsingMobileHipri:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mbindToNetwork(Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;Landroid/net/Network;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->bindToNetwork(Landroid/net/Network;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mchangeAndSaveAutoDownloadSettings(Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->changeAndSaveAutoDownloadSettings()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;)V
    .locals 7

    .line 171
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 74
    const-class v0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    .line 75
    const-class v0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->LOG_TAG_CN:Ljava/lang/String;

    .line 77
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mWorkingStatus:Lcom/sec/internal/helper/RegistrantList;

    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsUsingMobileHipri:Z

    .line 89
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsOMAAPIRunning:Z

    .line 90
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsMsgAppForeground:Z

    .line 91
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mPushNotiPaused:Z

    const/4 v1, 0x1

    .line 92
    iput-boolean v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsDefaultMsgAppNative:Z

    .line 93
    iput-boolean v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsNetworkValid:Z

    .line 94
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsCmsProfileEnabled:Z

    .line 95
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsUserDeleteAccount:Z

    .line 96
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsAirPlaneModeOn:Z

    .line 97
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsCMNWorkingStarted:Z

    .line 98
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsProvisionSuccess:Z

    .line 99
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mHasNotifiedBufferDBProvisionSuccess:Z

    .line 100
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsServicePaused:Z

    .line 101
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsAmbsServiceStop:Z

    const/4 v1, 0x0

    .line 122
    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mMobileNetworkCallback:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$MobileNetowrkCallBack;

    .line 123
    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mTelephonyCallback:Landroid/telephony/TelephonyCallback;

    .line 125
    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mGbaServiceModule:Lcom/sec/internal/ims/gba/GbaServiceModule;

    .line 126
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsWifiConnected:Z

    .line 127
    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mAutoDownloadContentObserver:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$AutoDownloadContentObserver;

    .line 1232
    new-instance v0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$3;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$3;-><init>(Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;)V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mNetworkStateListener:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 1355
    new-instance v0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$4;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$4;-><init>(Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;)V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mWifiStateListener:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 172
    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 173
    invoke-interface {p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    .line 174
    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mCallbackMsgApp:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    .line 175
    new-instance p3, Lcom/sec/internal/ims/cmstore/LineManager;

    invoke-direct {p3, p0}, Lcom/sec/internal/ims/cmstore/LineManager;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/ILineStatusChangeCallBack;)V

    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mLineManager:Lcom/sec/internal/ims/cmstore/LineManager;

    .line 176
    new-instance v6, Lcom/sec/internal/ims/cmstore/CloudMessageManagerHelper;

    invoke-direct {v6}, Lcom/sec/internal/ims/cmstore/CloudMessageManagerHelper;-><init>()V

    iput-object v6, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mCloudMessageManagerHelper:Lcom/sec/internal/ims/cmstore/CloudMessageManagerHelper;

    .line 177
    new-instance p3, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mCallbackMsgApp:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mLineManager:Lcom/sec/internal/ims/cmstore/LineManager;

    move-object v0, p3

    move-object v1, p1

    move-object v3, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;-><init>(Landroid/os/Looper;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;Lcom/sec/internal/ims/cmstore/LineManager;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mNetAPIHandler:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    .line 178
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "["

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;Lcom/sec/internal/interfaces/ims/IImsFramework;Lcom/sec/internal/ims/gba/GbaServiceModule;)V
    .locals 10

    move-object v7, p0

    move-object v8, p2

    .line 143
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 74
    const-class v0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    .line 75
    const-class v0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->LOG_TAG_CN:Ljava/lang/String;

    .line 77
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mWorkingStatus:Lcom/sec/internal/helper/RegistrantList;

    const/4 v0, 0x0

    .line 88
    iput-boolean v0, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsUsingMobileHipri:Z

    .line 89
    iput-boolean v0, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsOMAAPIRunning:Z

    .line 90
    iput-boolean v0, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsMsgAppForeground:Z

    .line 91
    iput-boolean v0, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mPushNotiPaused:Z

    const/4 v1, 0x1

    .line 92
    iput-boolean v1, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsDefaultMsgAppNative:Z

    .line 93
    iput-boolean v1, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsNetworkValid:Z

    .line 94
    iput-boolean v0, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsCmsProfileEnabled:Z

    .line 95
    iput-boolean v0, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsUserDeleteAccount:Z

    .line 96
    iput-boolean v0, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsAirPlaneModeOn:Z

    .line 97
    iput-boolean v0, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsCMNWorkingStarted:Z

    .line 98
    iput-boolean v0, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsProvisionSuccess:Z

    .line 99
    iput-boolean v0, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mHasNotifiedBufferDBProvisionSuccess:Z

    .line 100
    iput-boolean v0, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsServicePaused:Z

    .line 101
    iput-boolean v0, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsAmbsServiceStop:Z

    const/4 v1, 0x0

    .line 122
    iput-object v1, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mMobileNetworkCallback:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$MobileNetowrkCallBack;

    .line 123
    iput-object v1, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mTelephonyCallback:Landroid/telephony/TelephonyCallback;

    .line 125
    iput-object v1, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mGbaServiceModule:Lcom/sec/internal/ims/gba/GbaServiceModule;

    .line 126
    iput-boolean v0, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsWifiConnected:Z

    .line 127
    iput-object v1, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mAutoDownloadContentObserver:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$AutoDownloadContentObserver;

    .line 1232
    new-instance v0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$3;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$3;-><init>(Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;)V

    iput-object v0, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mNetworkStateListener:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 1355
    new-instance v0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$4;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$4;-><init>(Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;)V

    iput-object v0, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mWifiStateListener:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 144
    iput-object v8, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 145
    invoke-interface {p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    move-object v0, p5

    .line 147
    iput-object v0, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    move-object v0, p3

    .line 148
    iput-object v0, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mCallbackMsgApp:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    move-object v0, p4

    .line 149
    iput-object v0, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIRetryStackAdapterHelper:Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;

    .line 150
    new-instance v6, Lcom/sec/internal/ims/cmstore/CloudMessageManagerHelper;

    invoke-direct {v6}, Lcom/sec/internal/ims/cmstore/CloudMessageManagerHelper;-><init>()V

    iput-object v6, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mCloudMessageManagerHelper:Lcom/sec/internal/ims/cmstore/CloudMessageManagerHelper;

    move-object/from16 v0, p6

    .line 151
    iput-object v0, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mGbaServiceModule:Lcom/sec/internal/ims/gba/GbaServiceModule;

    .line 153
    new-instance v9, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;

    iget-object v4, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mCallbackMsgApp:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    iget-object v5, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIRetryStackAdapterHelper:Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;Landroid/os/Looper;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    iput-object v9, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mProvisionControl:Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;

    .line 155
    new-instance v5, Lcom/sec/internal/ims/cmstore/LineManager;

    invoke-direct {v5, p0}, Lcom/sec/internal/ims/cmstore/LineManager;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/ILineStatusChangeCallBack;)V

    iput-object v5, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mLineManager:Lcom/sec/internal/ims/cmstore/LineManager;

    .line 156
    new-instance v9, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    iget-object v2, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    iget-object v4, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mCallbackMsgApp:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    iget-object v6, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mCloudMessageManagerHelper:Lcom/sec/internal/ims/cmstore/CloudMessageManagerHelper;

    move-object v0, v9

    move-object v1, p1

    move-object v3, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;-><init>(Landroid/os/Looper;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener;Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;Lcom/sec/internal/ims/cmstore/LineManager;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    iput-object v9, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mNetAPIHandler:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    .line 157
    new-instance v0, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;

    iget-object v1, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    iget-object v2, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mCloudMessageManagerHelper:Lcom/sec/internal/ims/cmstore/CloudMessageManagerHelper;

    move-object v3, p1

    invoke-direct {v0, p1, v1, v9, v2}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;-><init>(Landroid/os/Looper;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/INetAPIEventListener;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    iput-object v0, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mVvmHandler:Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;

    .line 158
    new-instance v0, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;

    iget-object v1, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mCloudMessageManagerHelper:Lcom/sec/internal/ims/cmstore/CloudMessageManagerHelper;

    invoke-direct {v0, p2, v1}, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;-><init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)V

    iput-object v0, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mDeviceConfigAdapter:Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;

    .line 159
    iget-object v0, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->hasUserDeleteAccount()Z

    move-result v0

    iput-boolean v0, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsUserDeleteAccount:Z

    .line 160
    iget-object v0, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getAMBSStopService()Z

    move-result v0

    iput-boolean v0, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsAmbsServiceStop:Z

    .line 161
    iget-object v0, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getAMBSPauseService()Z

    move-result v0

    iput-boolean v0, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsServicePaused:Z

    .line 166
    iget-object v0, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->registerDefaultSmsPackageChangeReceiver(Landroid/content/Context;)V

    .line 167
    iget-object v0, v7, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->registerAirplaneMode(Landroid/content/Context;)V

    return-void
.end method

.method private bindToNetwork(Landroid/net/Network;)Z
    .locals 2

    if-nez p1, :cond_0

    .line 1114
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string v1, "bind current process to default network type"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1118
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->bindProcessToNetwork(Landroid/net/Network;)Z

    move-result p1

    .line 1119
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1121
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/net/Network;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return p1
.end method

.method private changeAndSaveAutoDownloadSettings()V
    .locals 1

    .line 1388
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->getAutoDownloadSettings()Z

    move-result v0

    .line 1389
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->setVVMAutoDownloadSetting(Z)V

    return-void
.end method

.method private checkingWifiGoodOrNot(Landroid/net/Network;)Z
    .locals 0

    if-nez p1, :cond_0

    .line 1128
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string p1, "Wifi network instance is null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 1132
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/utils/CheckCaptivePortal;->isGoodWifi(Landroid/net/Network;)Z

    move-result p0

    return p0
.end method

.method private enableGbaModule()V
    .locals 1

    .line 1308
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mGbaServiceModule:Lcom/sec/internal/ims/gba/GbaServiceModule;

    invoke-static {v0, p0}, Lcom/sec/internal/ims/cmstore/ambs/CmsServiceModuleManager;->getInstance(Lcom/sec/internal/interfaces/ims/IImsFramework;Lcom/sec/internal/ims/gba/GbaServiceModule;)Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    return-void
.end method

.method private getAutoDownloadSettings()Z
    .locals 5

    const/4 v0, 0x1

    .line 1377
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1378
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v2

    if-ne v2, v0, :cond_0

    const-string v2, "auto_download_sim1"

    goto :goto_0

    :cond_0
    const-string v2, "auto_download_sim0"

    .line 1377
    :goto_0
    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    .line 1379
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAutoDownloadSettings autoDownload: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0

    :catch_0
    move-exception v1

    .line 1382
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAutoDownloadSettings SettingNotFoundException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private initSimInfo()V
    .locals 6

    .line 245
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/CmsUtil;->isSimChanged(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->clearAll()V

    .line 247
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->resetServiceState()V

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/AmbsUtils;->convertPhoneNumberToUserAct(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 250
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object v1

    .line 252
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 254
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getNativeLine()Ljava/lang/String;

    move-result-object v0

    const-string v2, "from DB == "

    goto :goto_0

    :cond_1
    const-string v2, "== "

    .line 256
    :goto_0
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Phone number "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Provision not required"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveSimImsi(Ljava/lang/String;)V

    .line 258
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveUserCtn(Ljava/lang/String;Z)V

    return-void
.end method

.method private isTerrestrialNetwork()Z
    .locals 5

    const/4 v0, 0x1

    .line 372
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 373
    invoke-interface {v2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v2

    .line 372
    invoke-static {v1, v2}, Lcom/sec/internal/ims/cmstore/utils/Util;->getTelephonyManager(Landroid/content/Context;I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 373
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    if-nez v1, :cond_0

    .line 377
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string v2, "isTerrestrialNetwork serviceState null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 380
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isTerrestrialNetwork value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->isUsingNonTerrestrialNetwork()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->isUsingNonTerrestrialNetwork()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    return p0

    :catch_0
    move-exception v1

    .line 385
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isTerrestrialNetwork SecurityException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0
.end method

.method private logCurrentWorkingStatus()V
    .locals 3

    .line 1065
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "logCurrentWorkingStatus:  mIsUsingMobileHipri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsUsingMobileHipri:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsAmbsRunning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsOMAAPIRunning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsMsgAppForeground: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsMsgAppForeground:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsNetworkValid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsNetworkValid:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsCmsProfileEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsCmsProfileEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsDefaultMsgAppNative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsDefaultMsgAppNative:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsUserDeleteAccount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsUserDeleteAccount:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsAirPlaneModeOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsAirPlaneModeOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsCMNWorkingStarted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsCMNWorkingStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsProvisionSuccess: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsProvisionSuccess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mHasNotifiedBufferDBProvisionSuccess: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mHasNotifiedBufferDBProvisionSuccess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsAmbsServiceStop: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsAmbsServiceStop:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsServicePaused: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsServicePaused:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private pauseProvsioningApi()V
    .locals 2

    .line 602
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "pauseProvisioningApi"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mProvisionControl:Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->pause()V

    return-void
.end method

.method private registerAutoDownloadSettingsObserver()V
    .locals 3

    .line 1405
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mAutoDownloadContentObserver:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$AutoDownloadContentObserver;

    if-nez v0, :cond_0

    .line 1406
    new-instance v0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$AutoDownloadContentObserver;

    invoke-direct {v0, p0, p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$AutoDownloadContentObserver;-><init>(Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mAutoDownloadContentObserver:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$AutoDownloadContentObserver;

    .line 1408
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 1409
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "auto_download_sim0"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mAutoDownloadContentObserver:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$AutoDownloadContentObserver;

    invoke-virtual {v0, v2, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    .line 1411
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "auto_download_sim1"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mAutoDownloadContentObserver:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$AutoDownloadContentObserver;

    invoke-virtual {v0, v2, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :goto_0
    return-void
.end method

.method private registerNetworkCallBack(ILandroid/net/ConnectivityManager$NetworkCallback;)V
    .locals 2

    .line 1165
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v1, 0xc

    .line 1167
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    .line 1168
    invoke-virtual {v0, p1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 1170
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p1

    .line 1171
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 1173
    invoke-virtual {p0, p1, p2}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method private registerPhoneStateListener(Landroid/content/Context;)V
    .locals 2

    .line 311
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerPhoneStateListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    new-instance v0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$TelephonyServiceCallback;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$TelephonyServiceCallback;-><init>(Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;)V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mTelephonyCallback:Landroid/telephony/TelephonyCallback;

    .line 313
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v0

    invoke-static {p1, v0}, Lcom/sec/internal/ims/cmstore/utils/Util;->getTelephonyManager(Landroid/content/Context;I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mTelephonyCallback:Landroid/telephony/TelephonyCallback;

    invoke-virtual {v0, p1, p0}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    return-void
.end method

.method private registerWifiStateListener()V
    .locals 3

    .line 1347
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v1, 0x1

    .line 1348
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v1, 0xc

    .line 1349
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 1350
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 1351
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 1352
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mWifiStateListener:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v0, p0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method private resumeProvsioningApi()V
    .locals 2

    .line 607
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "resumeProvisioningApi"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->isCmsProfileActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isProvisionRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 609
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mProvisionControl:Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->resume()V

    :cond_0
    return-void
.end method

.method private setConfigParam()V
    .locals 4

    .line 228
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isGbaSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 229
    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getRetryMapAdapter()Lcom/sec/internal/ims/cmstore/adapters/RetryMapAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getRetryMapAdapter()Lcom/sec/internal/ims/cmstore/adapters/RetryMapAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/adapters/RetryMapAdapter;->clearRetryHistory()V

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isDeviceConfigUsed()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 234
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mDeviceConfigAdapter:Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->getDeviceConfig()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 236
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mDeviceConfigAdapter:Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->parseDeviceConfig()V

    .line 238
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mDeviceConfigAdapter:Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/cmstore/adapters/DeviceConfigAdapter;->registerDeviceConfigUpdatedReceiver(Landroid/content/Context;)V

    .line 239
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "device config exists: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mVvmHandler:Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->resetDateFormat()V

    :cond_3
    return-void
.end method

.method private setNetworkCapabilities()V
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    .line 214
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 215
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v1

    .line 216
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v1, 0xc

    .line 217
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x10

    .line 218
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 219
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p0

    const-string v0, "https"

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->setProtocol(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 221
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 222
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p0

    const-string v0, "http"

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->setProtocol(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setNotiPauseState(Z)V
    .locals 3

    .line 551
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setNotiPauseState, currenty Paused:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mPushNotiPaused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " newState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    iput-boolean p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mPushNotiPaused:Z

    return-void
.end method

.method private startMobileHipri()V
    .locals 2

    .line 1154
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startMobileHipri"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsUsingMobileHipri:Z

    if-eqz v0, :cond_0

    .line 1156
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string v0, "mobile network is in using"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1157
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mMobileNetworkCallback:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$MobileNetowrkCallBack;

    if-nez v0, :cond_1

    .line 1158
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "register mobile network callback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    new-instance v0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$MobileNetowrkCallBack;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$MobileNetowrkCallBack;-><init>(Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;)V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mMobileNetworkCallback:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$MobileNetowrkCallBack;

    const/4 v1, 0x0

    .line 1160
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->registerNetworkCallBack(ILandroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private startProvsioningApi()V
    .locals 0

    .line 598
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mProvisionControl:Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->start()V

    return-void
.end method

.method private stopMobileHipri()V
    .locals 3

    .line 1136
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsUsingMobileHipri:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mMobileNetworkCallback:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$MobileNetowrkCallBack;

    if-eqz v0, :cond_0

    .line 1137
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1139
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mMobileNetworkCallback:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$MobileNetowrkCallBack;

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 1140
    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mMobileNetworkCallback:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$MobileNetowrkCallBack;

    .line 1141
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string v2, "Mobile network callback unregistered"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    :cond_0
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->bindToNetwork(Landroid/net/Network;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 1148
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsUsingMobileHipri:Z

    const-string/jumbo v0, "successfully"

    goto :goto_0

    :cond_1
    const-string v0, "failed"

    .line 1150
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopMobileHipri, bind to default network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private unregisterAutoDownloadSettingsObserver()V
    .locals 2

    .line 1416
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mAutoDownloadContentObserver:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$AutoDownloadContentObserver;

    if-eqz v0, :cond_0

    .line 1417
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mAutoDownloadContentObserver:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$AutoDownloadContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 1418
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mAutoDownloadContentObserver:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$AutoDownloadContentObserver;

    :cond_0
    return-void
.end method


# virtual methods
.method protected clearData()V
    .locals 1

    .line 969
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->clearAll()V

    .line 970
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->resetServiceState()V

    .line 971
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;->getCookieJar()Lcom/sec/internal/ims/cmstore/PersistentHttp3CookieJar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/PersistentHttp3CookieJar;->removeAll()V

    .line 972
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getRetryStackAdapter()Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 973
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getRetryStackAdapter()Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->clearRetryHistory()V

    .line 975
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getRetryMapAdapter()Lcom/sec/internal/ims/cmstore/adapters/RetryMapAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 976
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getRetryMapAdapter()Lcom/sec/internal/ims/cmstore/adapters/RetryMapAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/adapters/RetryMapAdapter;->clearRetryHistory()V

    .line 978
    :cond_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->onCleanBufferDbRequired()V

    .line 979
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->clearOmaRetryData()V

    const/4 v0, 0x0

    .line 980
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mHasNotifiedBufferDBProvisionSuccess:Z

    return-void
.end method

.method public getCmsIsAccountServicePause()Z
    .locals 0

    .line 1055
    iget-boolean p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsServicePaused:Z

    return p0
.end method

.method public getCmsIsAccountServiceStop()Z
    .locals 0

    .line 1051
    iget-boolean p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsAmbsServiceStop:Z

    return p0
.end method

.method public getCmsProfileEnabled()Z
    .locals 3

    .line 1041
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCmsProfileEnabled mIsCmsProfileEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsCmsProfileEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    iget-boolean p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsCmsProfileEnabled:Z

    return p0
.end method

.method protected handleEventMessageAppChanged()V
    .locals 4

    .line 333
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->logCurrentWorkingStatus()V

    .line 334
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsCmsProfileEnabled:Z

    if-nez v0, :cond_0

    .line 335
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string v0, "handleEventMessageAppChanged: not enabled"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/CmsUtil;->isDefaultMessageAppInUse(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsDefaultMsgAppNative:Z

    .line 339
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isGoForwardSyncSupported()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 342
    :cond_1
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsDefaultMsgAppNative:Z

    if-nez v0, :cond_2

    .line 343
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string v1, "handleEventMessageAppChanged: native message app not default"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveNativeMsgAppIsDefault(Z)V

    .line 345
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->setOMANetAPIWorkingStatus(Z)V

    .line 346
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mNetAPIHandler:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->deleteNotificationSubscriptionResource()V

    .line 347
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->pauseProvsioningApi()V

    goto :goto_0

    .line 349
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string v1, "handleEventMessageAppChanged native message app default"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveNativeMsgAppIsDefault(Z)V

    .line 351
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->resumeProvsioningApi()V

    .line 352
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string v2, "notify buffer DB"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    new-instance v0, Lcom/sec/internal/helper/AsyncResult;

    sget-object v2, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener$WorkingStatus;->DEFAULT_MSGAPP_CHGTO_NATIVE:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener$WorkingStatus;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2, v3}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 356
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mWorkingStatus:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v2, v0}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    .line 357
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->shouldEnableOMANetAPIWorking()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 358
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string v2, "handleEventMessageAppChanged: default msg app, resume cms api working"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->setOMANetAPIWorkingStatus(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public handleLargeDataPolling()V
    .locals 0

    .line 1274
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mNetAPIHandler:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->handleLargeDataPolling()V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    .line 392
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 393
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 395
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_8

    .line 543
    :pswitch_1
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->enableGbaModule()V

    goto/16 :goto_8

    .line 531
    :pswitch_2
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v0

    invoke-static {p1, v0}, Lcom/sec/internal/ims/cmstore/utils/Util;->getTelephonyManager(Landroid/content/Context;I)Landroid/telephony/TelephonyManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result p1

    .line 532
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sim state changed, state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/cmstore/utils/Util;->getTelephonyManager(Landroid/content/Context;I)Landroid/telephony/TelephonyManager;

    const/4 v0, 0x5

    if-ne v0, p1, :cond_12

    .line 534
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/utils/CmsUtil;->isSimChanged(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)Z

    move-result p1

    .line 535
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    iget-boolean v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsCmsProfileEnabled:Z

    invoke-static {v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CmsUtil;->isCtnChangedByNetwork(Lcom/sec/internal/ims/cmstore/MessageStoreClient;Z)Z

    move-result v0

    if-nez p1, :cond_12

    if-eqz v0, :cond_12

    .line 537
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string v0, "ctn changed, restart service"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->onRestartService()V

    goto/16 :goto_8

    .line 528
    :pswitch_3
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->registerPhoneStateListener(Landroid/content/Context;)V

    goto/16 :goto_8

    .line 514
    :pswitch_4
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isAirplaneModeChangeHandled()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 515
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsAirPlaneModeOn:Z

    if-eqz v2, :cond_1

    .line 518
    iput-boolean v3, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsWifiConnected:Z

    .line 519
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->setNetworkStatus(Z)V

    .line 520
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->setOMANetAPIWorkingStatus(Z)V

    goto/16 :goto_8

    .line 522
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mNetAPIHandler:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->resetChannelState()V

    const/4 p1, 0x2

    .line 523
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_8

    .line 503
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsUserDeleteAccount:Z

    .line 504
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->logCurrentWorkingStatus()V

    .line 505
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsUserDeleteAccount:Z

    if-eqz p1, :cond_2

    .line 506
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->stopCMNWorking()V

    goto/16 :goto_8

    .line 508
    :cond_2
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->shouldEnableOMANetAPIWorking()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 509
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->setOMANetAPIWorkingStatus(Z)V

    goto/16 :goto_8

    .line 500
    :pswitch_6
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->stopCMNWorking()V

    goto/16 :goto_8

    .line 485
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 486
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->isCmsProfileActive()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    .line 487
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string p1, "isCmsProfileActive: false"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    if-eqz p1, :cond_4

    .line 491
    iput-boolean v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsOMAAPIRunning:Z

    .line 492
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->resumeCMNWorking()V

    goto/16 :goto_8

    .line 495
    :cond_4
    iput-boolean v3, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsOMAAPIRunning:Z

    .line 496
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->pauseCMNWorking()V

    goto/16 :goto_8

    .line 402
    :pswitch_8
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->logCurrentWorkingStatus()V

    .line 403
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsMsgAppForeground:Z

    if-nez p1, :cond_5

    .line 405
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->setOMANetAPIWorkingStatus(Z)V

    goto :goto_1

    .line 409
    :cond_5
    invoke-direct {p0, v3}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->setNotiPauseState(Z)V

    .line 411
    :goto_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->shouldEnableOMANetAPIWorking()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 412
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->setOMANetAPIWorkingStatus(Z)V

    goto/16 :goto_8

    .line 418
    :pswitch_9
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 421
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    if-nez v0, :cond_6

    .line 423
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string p1, "network is null"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 427
    :cond_6
    invoke-virtual {p1, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p1

    .line 428
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NetworkCapabilities: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_8

    const/16 v4, 0xc

    .line 430
    invoke-virtual {p1, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v4

    if-eqz v4, :cond_8

    const/16 v4, 0x10

    .line 431
    invoke-virtual {p1, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 432
    invoke-virtual {p1, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v4

    if-eqz v4, :cond_7

    move v4, v2

    move p1, v3

    goto :goto_2

    .line 434
    :cond_7
    invoke-virtual {p1, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p1

    if-eqz p1, :cond_8

    move p1, v2

    move v4, v3

    goto :goto_2

    :cond_8
    move p1, v3

    move v4, p1

    .line 439
    :goto_2
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_9

    move v1, v2

    goto :goto_3

    :cond_9
    move v1, v3

    :goto_3
    iput-boolean v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsAirPlaneModeOn:Z

    const-string v5, "is using MOBILE_HIPRI, will change to default network"

    if-eqz p1, :cond_c

    .line 442
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v1

    const-string v6, "https"

    invoke-interface {v1, v6}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->setProtocol(Ljava/lang/String;)V

    .line 443
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 444
    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v1

    .line 445
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isCaptivePortalCheckSupported()Z

    move-result v1

    .line 446
    iget-object v6, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WiFi connected, needToCheckCaptive value: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_d

    .line 449
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->checkingWifiGoodOrNot(Landroid/net/Network;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 450
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsUsingMobileHipri:Z

    if-eqz v0, :cond_a

    .line 451
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->stopMobileHipri()V

    :cond_a
    const-string v0, "Good Wifi"

    goto :goto_4

    .line 456
    :cond_b
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->startMobileHipri()V

    const-string v0, "Bad Wifi"

    .line 458
    :goto_4
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_c
    if-eqz v4, :cond_d

    if-nez v1, :cond_d

    .line 461
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    const-string v1, "http"

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->setProtocol(Ljava/lang/String;)V

    .line 462
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string v1, "WiFi not connected, but Mobile is connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsUsingMobileHipri:Z

    if-eqz v0, :cond_d

    .line 464
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->stopMobileHipri()V

    :cond_d
    :goto_5
    if-nez v4, :cond_f

    if-eqz p1, :cond_e

    goto :goto_6

    :cond_e
    move p1, v3

    goto :goto_7

    :cond_f
    :goto_6
    move p1, v2

    .line 469
    :goto_7
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Network available: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsNetworkValid:Z

    if-eqz v0, :cond_10

    if-nez p1, :cond_10

    .line 471
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string v1, "no available network, reset channel state."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mNetAPIHandler:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->resetChannelState()V

    .line 474
    :cond_10
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->setNetworkStatus(Z)V

    if-eqz p1, :cond_11

    .line 476
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->shouldEnableOMANetAPIWorking()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 477
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "shouldEnableOMANetAPIWorking: true"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->setOMANetAPIWorkingStatus(Z)V

    goto :goto_8

    .line 481
    :cond_11
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->setOMANetAPIWorkingStatus(Z)V

    goto :goto_8

    .line 399
    :pswitch_a
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->handleEventMessageAppChanged()V

    :cond_12
    :goto_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public hideIndicator()V
    .locals 2

    .line 1254
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string v1, "hideIndicator()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mCallbackMsgApp:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->showInitsyncIndicator(Z)V

    return-void
.end method

.method public init()V
    .locals 1

    .line 188
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->initDeviceID()V

    .line 189
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->createStrategy()V

    .line 190
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isGbaSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    .line 191
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 192
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->registerWifiStateListener()V

    .line 193
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->unregisterAutoDownloadSettingsObserver()V

    .line 194
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->registerAutoDownloadSettingsObserver()V

    .line 195
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->changeAndSaveAutoDownloadSettings()V

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isSupportExpiredRule()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x9

    .line 198
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isProvisionRequired()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 201
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->startProvsioningApi()V

    goto :goto_0

    .line 203
    :cond_2
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->initSimInfo()V

    const/4 v0, 0x0

    .line 204
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->setVVMSyncState(Z)V

    .line 207
    :goto_0
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->setConfigParam()V

    .line 208
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->registerNetworkStateListener()V

    .line 209
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->setNetworkCapabilities()V

    return-void
.end method

.method protected initDeviceID()V
    .locals 1

    .line 1293
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/utils/Util;->getImei(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveDeviceId(Ljava/lang/String;)V

    return-void
.end method

.method public isCmsProfileActive()Z
    .locals 1

    .line 1046
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsCmsProfileEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsAmbsServiceStop:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsServicePaused:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 1047
    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getMcsUser()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNativeMsgAppDefault()Z
    .locals 0

    .line 367
    iget-boolean p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsDefaultMsgAppNative:Z

    return p0
.end method

.method public isNormalVVMSyncing()Z
    .locals 0

    .line 1317
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mVvmHandler:Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->getSyncState()Z

    move-result p0

    return p0
.end method

.method public isPushNotiProcessPaused()Z
    .locals 0

    .line 1278
    iget-boolean p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mPushNotiPaused:Z

    return p0
.end method

.method public notifyLoadLineStatus()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1082
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isMultiLineSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1085
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1086
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserCtn()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 1090
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1091
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserCtn()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public notifyWorkingStatus(Lcom/sec/internal/helper/AsyncResult;)V
    .locals 0

    .line 1328
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mWorkingStatus:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    return-void
.end method

.method public onChannelLifetimeUpdateComplete()V
    .locals 0

    .line 0
    return-void
.end method

.method public onChannelStateReset()V
    .locals 2

    .line 964
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string v1, "onChannelStateReset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mNetAPIHandler:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->resetChannelState()V

    return-void
.end method

.method public onCleanBufferDbRequired()V
    .locals 3

    .line 684
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string v1, "onCleanBufferDbRequired"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    new-instance v0, Lcom/sec/internal/helper/AsyncResult;

    const/4 v1, 0x0

    sget-object v2, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener$WorkingStatus;->BUFFERDB_CLEAN:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener$WorkingStatus;

    invoke-direct {v0, v1, v2, v1}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 687
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mWorkingStatus:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    return-void
.end method

.method public onCloudSyncWorkingStopped()V
    .locals 0

    .line 869
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->clearData()V

    .line 870
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->stopCMNWorking()V

    return-void
.end method

.method public onCmsRegistrationCompletedEvent()V
    .locals 3

    .line 692
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string v1, "onCmsRegistrationCompleted"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    new-instance v0, Lcom/sec/internal/helper/AsyncResult;

    const/4 v1, 0x0

    sget-object v2, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener$WorkingStatus;->UPDATE_CMS_CONFIG:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener$WorkingStatus;

    invoke-direct {v0, v1, v2, v1}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 695
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mWorkingStatus:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    return-void
.end method

.method public onDeviceFlagUpdateSchedulerStarted()V
    .locals 0

    .line 0
    return-void
.end method

.method public onDeviceSITRefreshed(Ljava/lang/String;)V
    .locals 2

    .line 1097
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mNetAPIHandler:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result p0

    invoke-static {v1, p0}, Lcom/sec/internal/ims/cmstore/utils/Util;->getSimCountryCode(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/internal/ims/cmstore/utils/Util;->getTelUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->onLineSITRefreshed(Ljava/lang/String;)V

    return-void
.end method

.method public onEsimHotswap()V
    .locals 4

    .line 921
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/cmstore/utils/Util;->getTelephonyManager(Landroid/content/Context;I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 922
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onEsimHotswap sim state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v2

    invoke-static {v1, v2}, Lcom/sec/internal/ims/cmstore/utils/Util;->getTelephonyManager(Landroid/content/Context;I)Landroid/telephony/TelephonyManager;

    const/4 v1, 0x5

    if-eq v1, v0, :cond_0

    .line 924
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string v0, "SIM not yet loaded, skip esim hotswap processing "

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 927
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->clearData()V

    .line 928
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->stopCMNWorking()V

    .line 930
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->initDeviceID()V

    .line 931
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->createStrategy()V

    const/16 v0, 0xb

    .line 933
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 935
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->changeAndSaveAutoDownloadSettings()V

    .line 937
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->initSimInfo()V

    const/4 v0, 0x0

    .line 938
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->setVVMSyncState(Z)V

    .line 939
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->setConfigParam()V

    .line 941
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->setNetworkCapabilities()V

    return-void
.end method

.method public onForceInitSyncStart()V
    .locals 0

    .line 0
    return-void
.end method

.method public onInitialDBCopyDone()V
    .locals 2

    .line 709
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string v1, "onInitialDBCopyDone"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isMultiLineSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 711
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mLineManager:Lcom/sec/internal/ims/cmstore/LineManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/LineManager;->initLineStatus()V

    goto :goto_0

    .line 713
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mLineManager:Lcom/sec/internal/ims/cmstore/LineManager;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserTelCtn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/LineManager;->addLine(Ljava/lang/String;)V

    .line 715
    :goto_0
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->logCurrentWorkingStatus()V

    .line 716
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsNetworkValid:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsCMNWorkingStarted:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsProvisionSuccess:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 717
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsCMNWorkingStarted:Z

    .line 718
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->startCMNWorking()V

    :cond_1
    return-void
.end method

.method public onInitialDBSyncCompleted()V
    .locals 1

    .line 703
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mProvisionControl:Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_CREATE_ACCOUNT:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->update(I)Z

    return-void
.end method

.method public onMailBoxMigrationReset()V
    .locals 3

    .line 1282
    new-instance v0, Lcom/sec/internal/helper/AsyncResult;

    const/4 v1, 0x0

    sget-object v2, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener$WorkingStatus;->MAILBOX_MIGRATION_RESET:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener$WorkingStatus;

    invoke-direct {v0, v1, v2, v1}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1284
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mWorkingStatus:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    return-void
.end method

.method public onMailBoxResetBufferDbDone()V
    .locals 2

    .line 724
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string v1, "onMailBoxResetBufferDbDone"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isMultiLineSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 726
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mLineManager:Lcom/sec/internal/ims/cmstore/LineManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/LineManager;->initLineStatus()V

    goto :goto_0

    .line 728
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mLineManager:Lcom/sec/internal/ims/cmstore/LineManager;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserTelCtn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/LineManager;->addLine(Ljava/lang/String;)V

    .line 730
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mNetAPIHandler:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->deleteNotificationSubscriptionResource()V

    .line 731
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->logCurrentWorkingStatus()V

    .line 732
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsNetworkValid:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsProvisionSuccess:Z

    if-eqz v0, :cond_1

    .line 733
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->startCMNWorkingResetBox()V

    .line 735
    :cond_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->shouldEnableOMANetAPIWorking()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 736
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->setOMANetAPIWorkingStatus(Z)V

    :cond_2
    return-void
.end method

.method public onNetworkChangeDetected()V
    .locals 4

    .line 985
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string v1, "onNetworkChangeDetected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isCaptivePortalCheckSupported()Z

    move-result v0

    .line 988
    iget-boolean v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsCmsProfileEnabled:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 989
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 991
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNetworkChangeDetected: CmsProfileEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsCmsProfileEnabled:Z

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " or captive portal:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onOmaFailExceedMaxCount()V
    .locals 2

    .line 1102
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string v1, "onOmaFailExceedMaxCount"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isTokenRequestedFromProvision()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1105
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsProvisionSuccess:Z

    .line 1106
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->setOMANetAPIWorkingStatus(Z)V

    .line 1107
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mProvisionControl:Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->onOmaFailExceedMaxCount()V

    :cond_0
    return-void
.end method

.method public onOmaProvisionFailed(Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;J)V
    .locals 5

    .line 824
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOmaProvisionFailed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isTokenRequestedFromProvision()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 827
    iput-boolean p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsProvisionSuccess:Z

    .line 828
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->setOMANetAPIWorkingStatus(Z)V

    .line 829
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REQ_SESSION_GEN will be triggered in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v3, 0x3e8

    div-long v3, p2, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " seconds"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mCallbackMsgApp:Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->Settings_PrmptMsg10:Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/cmstore/ATTConstants$AttAmbsUIScreenNames;->getId()I

    move-result v2

    const-string v3, "non_pop_up"

    invoke-interface {v0, v2, v3, p1}, Lcom/sec/internal/interfaces/ims/cmstore/IUIEventCallback;->notifyAppUIScreen(ILjava/lang/String;I)V

    .line 833
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mProvisionControl:Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->REQ_SESSION_GEN:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v0

    invoke-virtual {p1, v0, p2, p3}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->updateDelay(IJ)Z

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 837
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/params/ParamOMAresponseforBufDB;->getLine()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p3}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result p3

    invoke-static {p2, p3}, Lcom/sec/internal/ims/cmstore/utils/Util;->getSimCountryCode(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sec/internal/ims/cmstore/utils/Util;->getMsisdn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 838
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    return-void

    .line 841
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-le p2, v1, :cond_3

    .line 842
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 847
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "line: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p1}, Lcom/sec/internal/constants/ims/entitilement/NSDSContractExt$Lines;->buildRefreshSitUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    new-instance p3, Landroid/content/ContentValues;

    invoke-direct {p3}, Landroid/content/ContentValues;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p2, p1, p3, v0, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 852
    :goto_0
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p1

    .line 853
    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getLastFailedApi()Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 854
    const-class p2, Lcom/sec/internal/ims/cmstore/omanetapi/nc/CloudMessageCreateLargeDataPolling;

    .line 855
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsMsgAppForeground:Z

    if-nez p1, :cond_3

    .line 857
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string p2, "LargeDataPolling failed while app was in background. Stop all futher pushed notification"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->setNotiPauseState(Z)V

    :cond_3
    return-void
.end method

.method public onProvisionSuccess()V
    .locals 2

    const/4 v0, 0x1

    .line 666
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsProvisionSuccess:Z

    .line 667
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->logCurrentWorkingStatus()V

    .line 668
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->shouldEnableOMANetAPIWorking()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 669
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->setOMANetAPIWorkingStatus(Z)V

    .line 672
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isProvisionRequired()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 673
    iget-boolean v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsNetworkValid:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsCMNWorkingStarted:Z

    if-nez v1, :cond_1

    .line 674
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsCMNWorkingStarted:Z

    .line 675
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->startCMNWorking()V

    .line 678
    :cond_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->startInitSync()V

    :cond_2
    return-void
.end method

.method public onRestartService()V
    .locals 1

    const/4 v0, 0x1

    .line 881
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->onRestartService(Z)V

    return-void
.end method

.method public onRestartService(Z)V
    .locals 3

    .line 886
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsAmbsServiceStop:Z

    if-eqz v0, :cond_0

    .line 887
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string p1, "AMBS service is suspended, do not process Restart Service"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 891
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Entry restartService: userOptin "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 892
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->setOMANetAPIWorkingStatus(Z)V

    .line 893
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->clearData()V

    .line 894
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->stopCMNWorking()V

    .line 896
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isGbaSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 897
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->initSimInfo()V

    .line 898
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->setConfigParam()V

    :cond_1
    if-nez p1, :cond_3

    .line 901
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string v1, "Internal Restart case"

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsServicePaused:Z

    if-eqz p1, :cond_2

    .line 903
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsServicePaused:Z

    .line 904
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveAMBSPauseService(Z)V

    :cond_2
    const/4 p1, 0x1

    .line 906
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->setCmsProfileEnabled(Z)V

    .line 907
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mProvisionControl:Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->INTERNAL_RESTART:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->update(I)Z

    goto :goto_0

    .line 909
    :cond_3
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string v0, "Restart case optin"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mProvisionControl:Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;

    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->RESTART_SERVICE:Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/cmstore/enumprovision/EnumProvision$ProvisionEventType;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->update(I)Z

    .line 913
    :goto_0
    new-instance p1, Lcom/sec/internal/helper/AsyncResult;

    sget-object v0, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener$WorkingStatus;->RESTART_SERVICE:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener$WorkingStatus;

    const/4 v1, 0x0

    invoke-direct {p1, v1, v0, v1}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 915
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mWorkingStatus:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants(Lcom/sec/internal/helper/AsyncResult;)V

    .line 916
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->initDeviceID()V

    return-void
.end method

.method public onStartFcmRetry()V
    .locals 0

    .line 0
    return-void
.end method

.method public onUIButtonProceed(ILjava/lang/String;)Z
    .locals 2

    .line 742
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isUIButtonUsed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 743
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string v1, "UI button is enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mProvisionControl:Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->onUIButtonProceed(ILjava/lang/String;)Z

    move-result p0

    return p0

    .line 746
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string p1, "UI button call is disabled"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public onUserDeleteAccount(Z)V
    .locals 3

    .line 875
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUserDeleteAccount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x7

    .line 876
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onVVMNormalSyncComplete(Z)V
    .locals 0

    .line 1289
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mVvmHandler:Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->setSyncState(Z)V

    return-void
.end method

.method public onWipeOutResetSyncHandler()V
    .locals 2

    .line 784
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onWipeOutResetSyncHandler"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 785
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsCMNWorkingStarted:Z

    .line 786
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mNetAPIHandler:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->onWipeOutResetSyncHandler()V

    return-void
.end method

.method protected pauseCMNWorking()V
    .locals 10

    .line 563
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "pause cloud message NetAPI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mNetAPIHandler:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    new-instance v9, Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsMsgAppForeground:Z

    iget-boolean v3, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsNetworkValid:Z

    iget-boolean v4, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsOMAAPIRunning:Z

    iget-boolean v5, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsDefaultMsgAppNative:Z

    iget-boolean v6, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsUserDeleteAccount:Z

    iget-boolean v7, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsProvisionSuccess:Z

    iget-boolean v8, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsServicePaused:Z

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;-><init>(ZZZZZZZ)V

    .line 565
    invoke-virtual {v0, v9}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->pausewithStatusParam(Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;)V

    return-void
.end method

.method public pauseService()V
    .locals 2

    .line 946
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string v1, "Entry pauseService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 947
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsServicePaused:Z

    const/4 v1, 0x0

    .line 948
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->setOMANetAPIWorkingStatus(Z)V

    .line 949
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveAMBSPauseService(Z)V

    .line 950
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mProvisionControl:Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->pauseService()V

    return-void
.end method

.method protected registerAirplaneMode(Landroid/content/Context;)V
    .locals 3

    .line 283
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsAirPlaneModeOn:Z

    if-eqz v0, :cond_1

    .line 286
    iput-boolean v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsNetworkValid:Z

    goto :goto_1

    .line 288
    :cond_1
    iput-boolean v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsNetworkValid:Z

    .line 290
    :goto_1
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->logCurrentWorkingStatus()V

    .line 291
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    .line 292
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    .line 293
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 295
    new-instance v1, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$2;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$2;-><init>(Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;)V

    .line 307
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected registerDefaultSmsPackageChangeReceiver(Landroid/content/Context;)V
    .locals 2

    .line 262
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.provider.action.DEFAULT_SMS_PACKAGE_CHANGED_INTERNAL"

    .line 263
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 264
    new-instance v1, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$1;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController$1;-><init>(Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;)V

    .line 279
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public registerForUpdateFromCloud(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mNetAPIHandler:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->registerForUpdateFromCloud(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 132
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mVvmHandler:Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->registerForUpdateFromCloud(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForUpdateOfWorkingStatus(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 137
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mWorkingStatus:Lcom/sec/internal/helper/RegistrantList;

    new-instance v0, Lcom/sec/internal/helper/Registrant;

    invoke-direct {v0, p1, p2, p3}, Lcom/sec/internal/helper/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/RegistrantList;->add(Lcom/sec/internal/helper/Registrant;)V

    return-void
.end method

.method protected registerNetworkStateListener()V
    .locals 3

    .line 1205
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerNetworkStateListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v1, 0xc

    .line 1208
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    const/4 v1, 0x0

    .line 1209
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    .line 1211
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 1212
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 1215
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mNetworkStateListener:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v0, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1217
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public removeUpdateSubscriptionChannelEvent()V
    .locals 2

    .line 1269
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "removeUpdateSubscriptionChannelEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mNetAPIHandler:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->removeUpdateSubscriptionChannelEvent()V

    return-void
.end method

.method public resetAdapter(Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;)V
    .locals 1

    .line 182
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIRetryStackAdapterHelper:Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;

    .line 183
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mProvisionControl:Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;

    iput-object p1, v0, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->mIRetryStackAdapterHelper:Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;

    .line 184
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mNetAPIHandler:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->resetChannelScheduler()V

    return-void
.end method

.method public resetDataReceiver()V
    .locals 0

    .line 1321
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mProvisionControl:Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->resetDataReceiver()V

    return-void
.end method

.method public resetMcsRestartReceiver()V
    .locals 0

    .line 0
    return-void
.end method

.method public resetServiceState()V
    .locals 1

    .line 1060
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getAMBSStopService()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsAmbsServiceStop:Z

    .line 1061
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getAMBSPauseService()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsServicePaused:Z

    return-void
.end method

.method protected resumeCMNWorking()V
    .locals 10

    .line 590
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "resume cloud message NetAPI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mNetAPIHandler:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    new-instance v9, Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsMsgAppForeground:Z

    iget-boolean v3, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsNetworkValid:Z

    iget-boolean v4, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsOMAAPIRunning:Z

    iget-boolean v5, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsDefaultMsgAppNative:Z

    iget-boolean v6, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsUserDeleteAccount:Z

    iget-boolean v7, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsProvisionSuccess:Z

    iget-boolean v8, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsServicePaused:Z

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;-><init>(ZZZZZZZ)V

    invoke-virtual {v0, v9}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->resumewithStatusParam(Lcom/sec/internal/ims/cmstore/params/ParamNetAPIStatusControl;)V

    return-void
.end method

.method public sendAppSync(Lcom/sec/internal/ims/cmstore/helper/SyncParam;Z)V
    .locals 3

    if-eqz p2, :cond_0

    .line 754
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->setVVMPendingRequestCounts(Z)V

    .line 756
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendAppSync: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " isFullSync: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isValidOMARequestUrl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 758
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mNetAPIHandler:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->sendAppSync(Lcom/sec/internal/ims/cmstore/helper/SyncParam;Z)V

    :cond_1
    return-void
.end method

.method public sendDeviceInitialSyncDownload(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 3

    .line 770
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendDeviceInitialSyncDownload: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isValidOMARequestUrl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 772
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mNetAPIHandler:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->sendInitialSyncDownload(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    :cond_0
    return-void
.end method

.method public sendDeviceNormalSyncDownload(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 6

    .line 791
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendDeviceNormalDownload: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    new-instance v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;-><init>()V

    .line 793
    new-instance v1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    invoke-direct {v1}, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;-><init>()V

    if-eqz p1, :cond_1

    .line 794
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isValidOMARequestUrl()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 795
    iget-object v2, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    .line 796
    iget v4, v3, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    const/16 v5, 0x14

    if-ne v4, v5, :cond_0

    .line 797
    iget-object v4, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 799
    :cond_0
    iget-object v4, v1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 804
    :cond_1
    iget-object v1, v1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 805
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mNetAPIHandler:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->sendNormalSyncDownload(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    .line 808
    :cond_2
    iget-object p1, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 809
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mVvmHandler:Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->sendVvmUpdate(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    :cond_3
    return-void
.end method

.method public sendDeviceUpdate(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 5

    .line 641
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendDeviceUpdate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_5

    .line 642
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 643
    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isValidOMARequestUrl()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 644
    iget-object v0, p1, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;->mChangelst:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    .line 645
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendDeviceUpdate: mIsAdhocV2t: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mIsAdhocV2t:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    iget v1, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    const/16 v2, 0x13

    const/16 v3, 0x11

    const/16 v4, 0x12

    if-eq v1, v2, :cond_1

    if-eq v1, v4, :cond_1

    const/16 v2, 0x14

    if-eq v1, v2, :cond_1

    if-ne v1, v3, :cond_0

    goto :goto_0

    .line 659
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mNetAPIHandler:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->sendUpdate(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    goto :goto_1

    :cond_1
    :goto_0
    if-ne v1, v4, :cond_2

    .line 650
    sget-object v1, Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;->Delete:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    iget-object v2, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mAction:Lcom/sec/internal/constants/ims/cmstore/CloudMessageBufferDBConstants$ActionStatusFlag;

    .line 651
    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    iget v1, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mDBIndex:I

    if-ne v1, v3, :cond_4

    iget-boolean v0, v0, Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;->mIsAdhocV2t:Z

    if-nez v0, :cond_4

    .line 654
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mNetAPIHandler:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->sendUpdate(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    goto :goto_1

    .line 656
    :cond_4
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mVvmHandler:Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->sendVvmUpdate(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public sendDeviceUpload(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 3

    .line 815
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendDeviceUpload: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 816
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->isValidOMARequestUrl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 817
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mNetAPIHandler:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->sendUpload(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    :cond_0
    return-void
.end method

.method public sendGetVVMQuotaInfo(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V
    .locals 3

    .line 778
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendGetVVMQuotaInfo : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mVvmHandler:Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->getVvmQuota(Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;)V

    return-void
.end method

.method public setCmsProfileEnabled(Z)V
    .locals 4

    .line 997
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->LOG_TAG_CN:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setCmsProfileEnabled: mIsCmsProfileEnabled "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsCmsProfileEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " Value :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->infoLogAndAdd(Ljava/lang/String;ILjava/lang/String;)V

    .line 1001
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsCmsProfileEnabled:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    return-void

    .line 1005
    :cond_0
    iput-boolean p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsCmsProfileEnabled:Z

    if-eqz p1, :cond_1

    .line 1008
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->onNetworkChangeDetected()V

    .line 1009
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->init()V

    .line 1010
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/utils/CmsUtil;->isDefaultMessageAppInUse(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsDefaultMsgAppNative:Z

    .line 1011
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsDefaultMsgAppNative:Z

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveNativeMsgAppIsDefault(Z)V

    .line 1012
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsDefaultMsgAppNative:Z

    if-nez p1, :cond_2

    .line 1013
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "setCmsProfileEnabled: non-default app: pause provisioning"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->pauseProvsioningApi()V

    goto :goto_0

    .line 1017
    :cond_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->unregisterNetworkStateListener()V

    .line 1018
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->stopCMNWorking()V

    .line 1019
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->pauseProvsioningApi()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setImpuFromImsRegistration(Ljava/lang/String;)V
    .locals 3

    .line 1024
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setImpuFromImsRegistration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", shouldPersistImsRegNum value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 1025
    invoke-interface {v2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->shouldPersistImsRegNum()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1024
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->shouldPersistImsRegNum()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_3

    .line 1031
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0xc

    if-le v0, v2, :cond_1

    goto :goto_0

    .line 1034
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0xb

    if-lt v0, v2, :cond_2

    .line 1035
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1037
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveUserCtn(Ljava/lang/String;Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setMsgAppForegroundStatus(Z)V
    .locals 1

    const/4 v0, 0x3

    .line 614
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected setNetworkStatus(Z)V
    .locals 1

    .line 622
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsCmsProfileEnabled:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 623
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string p1, "mIsCmsProfileEnabled: false"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 626
    :cond_0
    iput-boolean p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsNetworkValid:Z

    if-eqz p1, :cond_1

    .line 627
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsDefaultMsgAppNative:Z

    if-eqz p1, :cond_1

    .line 628
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->resumeProvsioningApi()V

    goto :goto_0

    .line 630
    :cond_1
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->pauseProvsioningApi()V

    .line 632
    :goto_0
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsNetworkValid:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsCMNWorkingStarted:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsProvisionSuccess:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->isCmsProfileActive()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 633
    iput-boolean p1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsCMNWorkingStarted:Z

    .line 634
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->startCMNWorking()V

    :cond_2
    return-void
.end method

.method public setOMANetAPIWorkingStatus(Z)V
    .locals 1

    const/4 v0, 0x4

    .line 618
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setVVMSyncState(Z)V
    .locals 0

    .line 1312
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mVvmHandler:Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->setSyncState(Z)V

    return-void
.end method

.method protected shouldEnableOMANetAPIWorking()Z
    .locals 7

    .line 556
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsNetworkValid:Z

    iget-boolean v3, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsDefaultMsgAppNative:Z

    iget-boolean v4, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsUserDeleteAccount:Z

    iget-boolean v5, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsProvisionSuccess:Z

    iget-boolean v6, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsServicePaused:Z

    .line 557
    invoke-interface/range {v1 .. v6}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->shouldEnableNetAPIWorking(ZZZZZ)Z

    move-result p0

    return p0
.end method

.method protected startCMNWorking()V
    .locals 2

    .line 579
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "start cloud message NetAPI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mNetAPIHandler:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->start()V

    return-void
.end method

.method protected startCMNWorkingResetBox()V
    .locals 2

    .line 584
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "start cloud message NetAPI: resetBox"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 585
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsCMNWorkingStarted:Z

    .line 586
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mNetAPIHandler:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->start_resetBox()V

    return-void
.end method

.method public startInitSync()V
    .locals 3

    .line 1337
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startInitSync already notified:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mHasNotifiedBufferDBProvisionSuccess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1338
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mHasNotifiedBufferDBProvisionSuccess:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1339
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mHasNotifiedBufferDBProvisionSuccess:Z

    .line 1340
    new-instance v0, Lcom/sec/internal/helper/AsyncResult;

    sget-object v1, Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener$WorkingStatus;->PROVISION_SUCCESS:Lcom/sec/internal/interfaces/ims/cmstore/IWorkingStatusProvisionListener$WorkingStatus;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Lcom/sec/internal/helper/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1342
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->notifyWorkingStatus(Lcom/sec/internal/helper/AsyncResult;)V

    :cond_0
    return-void
.end method

.method public stopAppSync(Lcom/sec/internal/ims/cmstore/helper/SyncParam;)V
    .locals 3

    .line 764
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendAppSync: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mNetAPIHandler:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->stopAppSync(Lcom/sec/internal/ims/cmstore/helper/SyncParam;)V

    return-void
.end method

.method protected stopCMNWorking()V
    .locals 2

    .line 572
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stop cloud message NetAPI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 573
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsCMNWorkingStarted:Z

    .line 574
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsProvisionSuccess:Z

    .line 575
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mNetAPIHandler:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->stop()V

    return-void
.end method

.method public stopService()V
    .locals 2

    .line 955
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mProvisionControl:Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/ambs/provision/ProvisionController;->stop()V

    const/4 v0, 0x1

    .line 956
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsServicePaused:Z

    .line 957
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->stopCMNWorking()V

    .line 958
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveAMBSStopService(Z)V

    .line 959
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsAmbsServiceStop:Z

    return-void
.end method

.method protected unregisterNetworkStateListener()V
    .locals 2

    .line 1222
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterNetworkStateListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1226
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mNetworkStateListener:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1228
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public updateDelayedSubscriptionChannel()V
    .locals 2

    .line 1264
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateDelayedSubscriptionChannel()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mNetAPIHandler:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->updateDelayedSubscriptionChannel()V

    return-void
.end method

.method public updateSubscriptionChannel()V
    .locals 2

    .line 1259
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateSubscriptionChannel()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mNetAPIHandler:Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/OMANetAPIHandler;->updateSubscriptionChannel()V

    return-void
.end method

.method public vvmNormalSyncRequest()V
    .locals 5

    .line 1297
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->isTerrestrialNetwork()Z

    move-result v0

    .line 1298
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getVVMAutoDownloadSetting()Z

    move-result v1

    .line 1299
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "vvmNormalSyncRequest() autoDownload: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mIsWifiConnected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsWifiConnected:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isTerrestrialNetwork: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    .line 1302
    iget-boolean v0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mIsWifiConnected:Z

    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    .line 1303
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusController;->mVvmHandler:Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/omanetapi/devicedataupdateHandler/VvmHandler;->normalSyncRequest()V

    :cond_1
    return-void
.end method
