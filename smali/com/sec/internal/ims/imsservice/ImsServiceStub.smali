.class public Lcom/sec/internal/ims/imsservice/ImsServiceStub;
.super Lcom/sec/ims/IImsService$Stub;
.source "ImsServiceStub.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/IImsFramework;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;,
        Lcom/sec/internal/ims/imsservice/ImsServiceStub$BootCompleteReceiver;
    }
.end annotation


# static fields
.field private static final LISTENER_DEFAULT_INDEX:I = 0x64

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final PERMISSION:Ljava/lang/String; = "com.sec.imsservice.PERMISSION"

.field private static final SOFT_RESET_PERMISSION:Ljava/lang/String; = "com.sec.android.settings.permission.SOFT_RESET"

.field private static final TC_POPUP_USER_ACCEPT:Ljava/lang/String; = "info/tc_popup_user_accept"

.field private static mIsExplicitGcCalled:Z

.field private static mIsImsAvailable:Z

.field private static final mListenerIndex:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static mUserUnlocked:Z

.field private static sInstance:Lcom/sec/internal/ims/imsservice/ImsServiceStub;


# instance fields
.field private mAECModule:Lcom/sec/internal/interfaces/ims/aec/IAECModule;

.field private mCallStateTracker:Lcom/sec/internal/ims/imsservice/CallStateTracker;

.field private mCmcAccountManager:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

.field private mCmcConnectivityController:Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;

.field private mConfigModule:Lcom/sec/internal/ims/config/ConfigModule;

.field private mContext:Landroid/content/Context;

.field private mCoreHandler:Landroid/os/Handler;

.field private final mCoreThread:Landroid/os/HandlerThread;

.field private mDefaultSmsPackageChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mDmConfigModule:Lcom/sec/internal/ims/settings/DmConfigModule;

.field private mDumpExecutor:Ljava/util/concurrent/ExecutorService;

.field private mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field private mFcmHandler:Lcom/sec/internal/ims/fcm/FcmHandler;

.field private mGeolocationController:Lcom/sec/internal/ims/core/GeolocationController;

.field private mHandlerFactory:Lcom/sec/internal/ims/core/handler/HandlerFactory;

.field private mIilManagers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/iil/IIilManager;",
            ">;"
        }
    .end annotation
.end field

.field private mImsDiagMonitor:Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;

.field private mJibeRcsEnabler:Lcom/sec/internal/ims/settings/JibeRcsEnabler;

.field private final mListenerTokenMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack<",
            "+",
            "Landroid/os/IInterface;",
            ">;>;"
        }
    .end annotation
.end field

.field private mNtpTimeController:Lcom/sec/internal/ims/core/NtpTimeController;

.field private mPdnController:Lcom/sec/internal/ims/core/PdnController;

.field private mRawSipManager:Lcom/sec/internal/ims/core/RawSipManager;

.field private mRcsPolicyManager:Lcom/sec/internal/ims/rcs/RcsPolicyManager;

.field private mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

.field private mSequentialInitializer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/ISequentialInitializable;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceExtensionManager:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;

.field private mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

.field private mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

.field private mSimManagers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/ISimManager;",
            ">;"
        }
    .end annotation
.end field

.field private mUserUnlockReceiver:Landroid/content/BroadcastReceiver;

.field private mWfcEpdgManager:Lcom/sec/internal/ims/core/WfcEpdgManager;


# direct methods
.method public static synthetic $r8$lambda$D-5O4tDhj2iIylai2x9CbqAECC8(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->lambda$dump$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$Ekoy0dKvwfCN4mDE2imQZD6BE2c(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Ljava/lang/Runnable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->lambda$dump$2(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YR7pKnRBSHsd4gbZAuILz6_NyOg(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Lcom/sec/ims/IImsRegistrationListener;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->lambda$unregisterImsRegistrationListenerForSlot$9(Lcom/sec/ims/IImsRegistrationListener;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_NrgSF51EuG733WSQKh8HUAzVyc(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Lcom/sec/ims/ISimMobilityStatusListener;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->lambda$registerSimMobilityStatusListener$1(Lcom/sec/ims/ISimMobilityStatusListener;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_Y1DdCa81r4SDtCUcDnOxMUDAHQ(Ljava/lang/String;ILcom/sec/ims/settings/ImsProfile;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->lambda$isServiceAvailable$11(Ljava/lang/String;ILcom/sec/ims/settings/ImsProfile;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$fi0R2lvRXa8zwo9FvFSsdUiZZ0M(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Lcom/sec/ims/IImsRegistrationListener;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->lambda$registerImsRegistrationListener$7(Lcom/sec/ims/IImsRegistrationListener;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pGe0UMdKDWH8BTCEz6F-2b73drE(Lcom/sec/internal/ims/imsservice/ImsServiceStub;ILjava/lang/String;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->lambda$hasCrossSimImsService$10(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$rDHGnDgKavbwrpz6F2Wiwfd0_ns(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Lcom/sec/ims/IImsRegistrationListener;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->lambda$unregisterImsRegistrationListener$8(Lcom/sec/ims/IImsRegistrationListener;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$saO_nr6aX-1nw5Ow_BCKfeVtGdc(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->lambda$linkToPhoneDeath$13()V

    return-void
.end method

.method public static synthetic $r8$lambda$tDIhmj8nHsTHjYHC_iIaXMl-qqg(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Lcom/sec/ims/IImsRegistrationListener;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->lambda$registerImsRegistrationListener$12(Lcom/sec/ims/IImsRegistrationListener;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uKsI7zLZ5zwOSO4E9jhySeZufV8(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Lcom/sec/ims/ISimMobilityStatusListener;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->lambda$unregisterSimMobilityStatusListenerByPhoneId$5(Lcom/sec/ims/ISimMobilityStatusListener;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V

    return-void
.end method

.method public static synthetic $r8$lambda$u_f4NwtG8K7RsXIUIVFSrgewGYA(Ljava/util/concurrent/Future;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->lambda$dump$4(Ljava/util/concurrent/Future;)V

    return-void
.end method

.method public static synthetic $r8$lambda$v6lEmYYe5hnvXp6CzohUYTNNfWo(Lcom/sec/internal/ims/imsservice/ImsServiceStub;ILcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->lambda$getRcsProfileType$6(ILcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$x2gzH3TCNb6Cv0Wpg4MRCyxUXg4()V
    .locals 0

    .line 0
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->lambda$explicitGC$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmConfigModule(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)Lcom/sec/internal/ims/config/ConfigModule;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mConfigModule:Lcom/sec/internal/ims/config/ConfigModule;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmListenerTokenMap(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mListenerTokenMap:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRegistrationManager(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)Lcom/sec/internal/ims/core/RegistrationManagerBase;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmServiceModuleManager(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWfcEpdgManager(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)Lcom/sec/internal/ims/core/WfcEpdgManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mWfcEpdgManager:Lcom/sec/internal/ims/core/WfcEpdgManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mfactoryReset(Lcom/sec/internal/ims/imsservice/ImsServiceStub;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->factoryReset(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetSmkVersion(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getSmkVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misPreloadedSmk(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPreloadedSmk(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mstartDeviceConfigService(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->startDeviceConfigService()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mwriteSmkVerData(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->writeSmkVerData(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetmIsImsAvailable()Z
    .locals 1

    .line 0
    sget-boolean v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mIsImsAvailable:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfputmUserUnlocked(Z)V
    .locals 0

    .line 0
    sput-boolean p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mUserUnlocked:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$smexplicitGC()V
    .locals 0

    .line 0
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->explicitGC()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 184
    const-class v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    .line 189
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mListenerIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    .line 190
    sput-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->sInstance:Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    .line 191
    sput-boolean v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mIsExplicitGcCalled:Z

    .line 192
    sput-boolean v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mUserUnlocked:Z

    .line 193
    sput-boolean v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mIsImsAvailable:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 284
    invoke-direct {p0}, Lcom/sec/ims/IImsService$Stub;-><init>()V

    .line 196
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mListenerTokenMap:Ljava/util/Map;

    const/4 v0, 0x0

    .line 199
    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mWfcEpdgManager:Lcom/sec/internal/ims/core/WfcEpdgManager;

    .line 200
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSequentialInitializer:Ljava/util/List;

    .line 201
    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    .line 202
    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    .line 203
    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 204
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSimManagers:Ljava/util/List;

    .line 205
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mIilManagers:Ljava/util/List;

    .line 206
    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    .line 207
    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mGeolocationController:Lcom/sec/internal/ims/core/GeolocationController;

    .line 208
    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mNtpTimeController:Lcom/sec/internal/ims/core/NtpTimeController;

    .line 209
    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mHandlerFactory:Lcom/sec/internal/ims/core/handler/HandlerFactory;

    .line 210
    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceExtensionManager:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;

    .line 212
    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mConfigModule:Lcom/sec/internal/ims/config/ConfigModule;

    .line 213
    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mDmConfigModule:Lcom/sec/internal/ims/settings/DmConfigModule;

    .line 214
    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mCallStateTracker:Lcom/sec/internal/ims/imsservice/CallStateTracker;

    .line 215
    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mAECModule:Lcom/sec/internal/interfaces/ims/aec/IAECModule;

    .line 216
    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mFcmHandler:Lcom/sec/internal/ims/fcm/FcmHandler;

    .line 217
    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mImsDiagMonitor:Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;

    .line 218
    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mCmcAccountManager:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    .line 219
    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRcsPolicyManager:Lcom/sec/internal/ims/rcs/RcsPolicyManager;

    .line 225
    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mCmcConnectivityController:Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;

    .line 226
    new-instance v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$1;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)V

    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mDefaultSmsPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 265
    new-instance v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$2;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$2;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)V

    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mUserUnlockReceiver:Landroid/content/BroadcastReceiver;

    .line 285
    iput-object p1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    .line 286
    new-instance v0, Landroid/os/HandlerThread;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mCoreThread:Landroid/os/HandlerThread;

    .line 287
    new-instance v0, Lcom/sec/internal/helper/SimpleEventLog;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const/16 v2, 0x12c

    invoke-direct {v0, p1, v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 288
    new-instance v0, Lcom/sec/internal/ims/ImsFramework;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/ImsFramework;-><init>(Lcom/sec/internal/interfaces/ims/IImsFramework;)V

    .line 291
    invoke-static {p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->checkUt(Landroid/content/Context;)V

    return-void
.end method

.method private changeOpModeByRcsSwtich(ZZI)V
    .locals 1

    if-eq p1, p2, :cond_1

    .line 762
    iget-object p1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v0, "info/tc_popup_user_accept"

    .line 763
    invoke-static {v0, p3}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 762
    invoke-static {p1, v0}, Lcom/sec/internal/helper/RcsConfigurationHelper;->readStringParamWithPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 767
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 769
    :catch_0
    sget-object p1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Error while parsing integer in getIntValue() - NumberFormatException"

    invoke-static {p1, p3, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    const/4 p1, -0x1

    .line 773
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mConfigModule:Lcom/sec/internal/ims/config/ConfigModule;

    invoke-virtual {p0, p2, p3, p1}, Lcom/sec/internal/ims/config/ConfigModule;->changeOpMode(ZII)V

    :cond_1
    return-void
.end method

.method private static checkUt(Landroid/content/Context;)V
    .locals 2

    const-string v0, "com.salab.issuetracker"

    .line 357
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    .line 358
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result p0

    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_0

    .line 359
    sget-object p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v0, "issueTracker found should be UT device"

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 360
    invoke-static {p0}, Lcom/sec/internal/log/IMSLog;->setIsUt(Z)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 363
    :catch_0
    sget-object p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v0, "issueTracker not found"

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private createModules()V
    .locals 12

    .line 515
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "createModules started"

    .line 517
    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mCoreThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 519
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mCoreThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 520
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mCoreHandler:Landroid/os/Handler;

    const-string v2, "Creating SimManagers."

    .line 522
    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->createInstance(Landroid/os/Looper;Landroid/content/Context;)V

    .line 524
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 525
    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSimManagers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 526
    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSimManagers:Ljava/util/List;

    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getAllSimManagers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 527
    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSequentialInitializer:Ljava/util/List;

    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSimManagers:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 529
    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->isTablet()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/sec/internal/helper/os/DeviceUtil;->isWifiOnlyModel()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    .line 530
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/helper/os/ITelephonyManager;->getPhoneCount()I

    move-result v2

    .line 531
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Creating IIilManager: count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    if-ge v3, v2, :cond_1

    .line 533
    new-instance v1, Lcom/sec/internal/ims/core/iil/IilManager;

    iget-object v4, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4, v3, p0}, Lcom/sec/internal/ims/core/iil/IilManager;-><init>(Landroid/content/Context;ILcom/sec/internal/interfaces/ims/IImsFramework;)V

    .line 534
    iget-object v4, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mIilManagers:Ljava/util/List;

    invoke-interface {v4, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 537
    :cond_1
    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Creating SipTestManager."

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/internal/ims/core/SipTestManagerFactory;->createSipTestManager(Landroid/content/Context;)V

    const-string v2, "Creating WfcEpdgManager."

    .line 540
    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    new-instance v2, Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v0, p0}, Lcom/sec/internal/ims/core/WfcEpdgManager;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/IImsFramework;)V

    iput-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mWfcEpdgManager:Lcom/sec/internal/ims/core/WfcEpdgManager;

    .line 542
    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSequentialInitializer:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "Creating PdnController."

    .line 544
    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    new-instance v2, Lcom/sec/internal/ims/core/PdnController;

    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v0, p0}, Lcom/sec/internal/ims/core/PdnController;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/IImsFramework;)V

    iput-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    .line 546
    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSequentialInitializer:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "Creating DmConfigModule."

    .line 548
    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    new-instance v2, Lcom/sec/internal/ims/settings/DmConfigModule;

    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v0, p0}, Lcom/sec/internal/ims/settings/DmConfigModule;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/IImsFramework;)V

    iput-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mDmConfigModule:Lcom/sec/internal/ims/settings/DmConfigModule;

    .line 550
    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSequentialInitializer:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "Creating CmcAccountManager."

    .line 552
    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    new-instance v2, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mCmcAccountManager:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    .line 554
    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSequentialInitializer:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "Creating RcsPolicyManager."

    .line 556
    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    new-instance v2, Lcom/sec/internal/ims/rcs/RcsPolicyManager;

    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSimManagers:Ljava/util/List;

    invoke-direct {v2, v0, v3, v4}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;-><init>(Landroid/os/Looper;Landroid/content/Context;Ljava/util/List;)V

    iput-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRcsPolicyManager:Lcom/sec/internal/ims/rcs/RcsPolicyManager;

    .line 558
    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSequentialInitializer:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "Creating JibeRcsEnabler"

    .line 560
    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    new-instance v2, Lcom/sec/internal/ims/settings/JibeRcsEnabler;

    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/sec/internal/ims/settings/JibeRcsEnabler;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mJibeRcsEnabler:Lcom/sec/internal/ims/settings/JibeRcsEnabler;

    .line 562
    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSequentialInitializer:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "Creating RegistrationManager."

    .line 564
    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    new-instance v11, Lcom/sec/internal/ims/core/RegistrationManagerBase;

    iget-object v5, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget-object v7, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSimManagers:Ljava/util/List;

    .line 566
    invoke-static {v5}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mCmcAccountManager:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    iget-object v10, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRcsPolicyManager:Lcom/sec/internal/ims/rcs/RcsPolicyManager;

    move-object v2, v11

    move-object v3, v0

    move-object v4, p0

    invoke-direct/range {v2 .. v10}, Lcom/sec/internal/ims/core/RegistrationManagerBase;-><init>(Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/IImsFramework;Landroid/content/Context;Lcom/sec/internal/ims/core/PdnController;Ljava/util/List;Lcom/sec/internal/helper/os/ITelephonyManager;Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;)V

    iput-object v11, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    .line 567
    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSequentialInitializer:Ljava/util/List;

    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "Creating ConfigModule."

    .line 569
    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    new-instance v2, Lcom/sec/internal/ims/config/ConfigModule;

    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-direct {v2, v0, v3, v4}, Lcom/sec/internal/ims/config/ConfigModule;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;)V

    iput-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mConfigModule:Lcom/sec/internal/ims/config/ConfigModule;

    .line 571
    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSequentialInitializer:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "Creating HandlerFactory."

    .line 573
    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-static {v0, v2, p0}, Lcom/sec/internal/ims/core/handler/HandlerFactory;->createStackHandler(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/IImsFramework;)Lcom/sec/internal/ims/core/handler/HandlerFactory;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mHandlerFactory:Lcom/sec/internal/ims/core/handler/HandlerFactory;

    .line 575
    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSequentialInitializer:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "Creating ServiceModuleManager."

    .line 577
    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    new-instance v9, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    iget-object v4, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSimManagers:Ljava/util/List;

    iget-object v7, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    iget-object v8, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mHandlerFactory:Lcom/sec/internal/ims/core/handler/HandlerFactory;

    move-object v2, v9

    move-object v3, v0

    move-object v5, p0

    invoke-direct/range {v2 .. v8}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/IImsFramework;Ljava/util/List;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;)V

    iput-object v9, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    .line 580
    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSequentialInitializer:Ljava/util/List;

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "Creating AECModule."

    .line 582
    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    new-instance v2, Lcom/sec/internal/ims/aec/AECModule;

    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-direct {v2, v0, v3}, Lcom/sec/internal/ims/aec/AECModule;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mAECModule:Lcom/sec/internal/interfaces/ims/aec/IAECModule;

    .line 584
    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSequentialInitializer:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "Creating GeolocationController."

    .line 586
    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    new-instance v2, Lcom/sec/internal/ims/core/GeolocationController;

    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-direct {v2, v3, v0, v4}, Lcom/sec/internal/ims/core/GeolocationController;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/sec/internal/ims/core/RegistrationManagerBase;)V

    iput-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mGeolocationController:Lcom/sec/internal/ims/core/GeolocationController;

    .line 588
    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSequentialInitializer:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 590
    new-instance v2, Lcom/sec/internal/ims/imsservice/CallStateTracker;

    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mCoreHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/internal/ims/imsservice/CallStateTracker;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;)V

    iput-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mCallStateTracker:Lcom/sec/internal/ims/imsservice/CallStateTracker;

    .line 591
    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSequentialInitializer:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "Creating ImsDiagnosticMonitorNotificationManager."

    .line 593
    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    new-instance v2, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;

    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v0}, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mImsDiagMonitor:Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;

    .line 595
    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSequentialInitializer:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "Creating NtpTimeController."

    .line 597
    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    new-instance v1, Lcom/sec/internal/ims/core/NtpTimeController;

    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/sec/internal/ims/core/NtpTimeController;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mNtpTimeController:Lcom/sec/internal/ims/core/NtpTimeController;

    .line 599
    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSequentialInitializer:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 601
    new-instance v1, Lcom/sec/internal/ims/core/RawSipManager;

    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sec/internal/ims/core/RawSipManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRawSipManager:Lcom/sec/internal/ims/core/RawSipManager;

    .line 604
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mConfigModule:Lcom/sec/internal/ims/config/ConfigModule;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/RegistrationManager;->setConfigModule(Lcom/sec/internal/interfaces/ims/config/IConfigModule;)V

    .line 605
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mGeolocationController:Lcom/sec/internal/ims/core/GeolocationController;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/RegistrationManager;->setGeolocationController(Lcom/sec/internal/ims/core/GeolocationController;)V

    .line 606
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mHandlerFactory:Lcom/sec/internal/ims/core/handler/HandlerFactory;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getRegistrationStackAdaptor()Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/core/RegistrationManager;->setStackInterface(Lcom/sec/internal/interfaces/ims/core/handler/IRegistrationInterface;)V

    .line 607
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRcsPolicyManager:Lcom/sec/internal/ims/rcs/RcsPolicyManager;

    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->setRegistrationManager(Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;)V

    .line 608
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mDmConfigModule:Lcom/sec/internal/ims/settings/DmConfigModule;

    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/settings/DmConfigModule;->setRegistrationManager(Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;)V

    .line 610
    new-instance v1, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;

    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;-><init>(Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;)V

    iput-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mCmcConnectivityController:Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;

    return-void
.end method

.method private dump(Ljava/io/PrintWriter;)V
    .locals 17

    move-object/from16 v0, p0

    .line 801
    invoke-static {}, Lcom/sec/internal/log/CriticalLogger;->getInstance()Lcom/sec/internal/log/CriticalLogger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/log/CriticalLogger;->flush()V

    .line 803
    iget-object v1, v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission Denial: can\'t dump ims from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 805
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.permission.DUMP"

    .line 803
    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    iget-object v1, v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    move-object/from16 v2, p1

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->prepareDump(Landroid/content/Context;Ljava/io/PrintWriter;)V

    .line 809
    iget-object v1, v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mDumpExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_0

    .line 810
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mDumpExecutor:Ljava/util/concurrent/ExecutorService;

    .line 813
    :cond_0
    iget-object v1, v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SimMobility Feature "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isSimMobilityFeatureEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "Enabled"

    goto :goto_0

    :cond_1
    const-string v4, "Disabled"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/internal/helper/SimpleEventLog;->add(Ljava/lang/String;)V

    .line 815
    iget-object v1, v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda10;

    invoke-direct {v3, v1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda10;-><init>(Lcom/sec/internal/helper/SimpleEventLog;)V

    new-instance v4, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda17;

    invoke-direct {v4}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda17;-><init>()V

    iget-object v1, v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda18;

    invoke-direct {v5, v1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda18;-><init>(Lcom/sec/internal/ims/core/RegistrationManagerBase;)V

    iget-object v1, v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda19;

    invoke-direct {v6, v1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda19;-><init>(Lcom/sec/internal/ims/core/PdnController;)V

    iget-object v1, v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mConfigModule:Lcom/sec/internal/ims/config/ConfigModule;

    .line 816
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda20;

    invoke-direct {v7, v1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda20;-><init>(Lcom/sec/internal/ims/config/ConfigModule;)V

    iget-object v1, v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mDmConfigModule:Lcom/sec/internal/ims/settings/DmConfigModule;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda21;

    invoke-direct {v8, v1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda21;-><init>(Lcom/sec/internal/ims/settings/DmConfigModule;)V

    iget-object v1, v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mAECModule:Lcom/sec/internal/interfaces/ims/aec/IAECModule;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v9, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda22;

    invoke-direct {v9, v1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda22;-><init>(Lcom/sec/internal/interfaces/ims/aec/IAECModule;)V

    iget-object v1, v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mCmcAccountManager:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v10, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda23;

    invoke-direct {v10, v1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda23;-><init>(Lcom/sec/internal/ims/core/cmc/CmcAccountManager;)V

    iget-object v1, v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mWfcEpdgManager:Lcom/sec/internal/ims/core/WfcEpdgManager;

    .line 817
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v11, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda24;

    invoke-direct {v11, v1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda24;-><init>(Lcom/sec/internal/ims/core/WfcEpdgManager;)V

    iget-object v1, v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mGeolocationController:Lcom/sec/internal/ims/core/GeolocationController;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v12, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda25;

    invoke-direct {v12, v1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda25;-><init>(Lcom/sec/internal/ims/core/GeolocationController;)V

    iget-object v1, v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    .line 818
    invoke-static {v1}, Lcom/sec/internal/helper/PreciseAlarmManager;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/PreciseAlarmManager;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v13, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda11;

    invoke-direct {v13, v1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda11;-><init>(Lcom/sec/internal/helper/PreciseAlarmManager;)V

    iget-object v1, v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const/4 v14, 0x0

    .line 819
    invoke-static {v1, v14}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/settings/ImsAutoUpdate;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v14, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda12;

    invoke-direct {v14, v1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda12;-><init>(Lcom/sec/internal/ims/settings/ImsAutoUpdate;)V

    iget-object v1, v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const/4 v15, 0x1

    .line 820
    invoke-static {v1, v15}, Lcom/sec/internal/ims/settings/ImsAutoUpdate;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/settings/ImsAutoUpdate;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v15, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda12;

    invoke-direct {v15, v1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda12;-><init>(Lcom/sec/internal/ims/settings/ImsAutoUpdate;)V

    iget-object v1, v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    .line 821
    invoke-static {v1}, Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;->getInstance(Landroid/content/Context;)Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda13;

    invoke-direct {v2, v1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda13;-><init>(Lcom/sec/internal/ims/settings/ImsSimMobilityUpdate;)V

    move-object/from16 v16, v2

    filled-new-array/range {v3 .. v16}, [Ljava/lang/Runnable;

    move-result-object v1

    .line 815
    invoke-static {v1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda14;

    invoke-direct {v2, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda14;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)V

    .line 822
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 824
    iget-object v1, v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda15;

    invoke-direct {v2, v1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda15;-><init>(Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;)V

    const-wide/16 v3, 0x7d0

    invoke-direct {v0, v2, v3, v4}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->dump(Ljava/lang/Runnable;J)V

    .line 826
    new-instance v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda16;

    invoke-direct {v1, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda16;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)V

    invoke-direct {v0, v1, v3, v4}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->dump(Ljava/lang/Runnable;J)V

    .line 828
    invoke-static/range {p1 .. p1}, Lcom/sec/internal/log/IMSLog;->postDump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method private dump(Ljava/lang/Runnable;J)V
    .locals 1

    const/4 v0, 0x0

    .line 834
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mDumpExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 835
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p2, p3, p0}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 837
    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda27;

    invoke-direct {p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda27;-><init>()V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 838
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "dump: Exception occurs! "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 839
    sget-object p2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    invoke-static {p2, p1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private enableRcsMainSwitchByPhoneId(ZI)V
    .locals 5

    .line 779
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "rcs"

    invoke-static {v0, v1, p2}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 781
    :goto_0
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableRcsMainSwitchByPhoneId: oldValue: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", newValue: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, p2, v3}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 782
    invoke-direct {p0, v2, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->changeOpModeByRcsSwtich(ZZI)V

    .line 787
    invoke-static {p2}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 788
    sget-object v3, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_1

    if-nez p1, :cond_1

    const-string p0, "enableRcs: Ignore RCS disable for SKT until server responds"

    .line 789
    invoke-static {v0, p2, p0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 792
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 794
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-static {p0, v1, p1, p2}, Lcom/sec/internal/helper/DmConfigHelper;->setImsSwitch(Landroid/content/Context;Ljava/lang/String;ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 796
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 797
    throw p0
.end method

.method private static explicitGC()V
    .locals 2

    .line 338
    sget-boolean v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mIsExplicitGcCalled:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/internal/helper/os/Debug;->isProductShip()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mUserUnlocked:Z

    if-eqz v0, :cond_1

    .line 339
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda6;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 342
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x1

    .line 344
    sput-boolean v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mIsExplicitGcCalled:Z

    :cond_1
    return-void
.end method

.method private factoryReset(I)V
    .locals 6

    if-ltz p1, :cond_3

    .line 857
    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getPhoneCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_1

    .line 863
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 864
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasNoSim()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 868
    :cond_1
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "factoryReset"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const-string/jumbo v1, "volte_domestic_default_enabled"

    const/4 v2, 0x1

    .line 871
    invoke-virtual {p0, p1, v1, v2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getBoolean(ILjava/lang/String;Z)Z

    move-result v1

    const-string/jumbo v3, "vt_default_enabled"

    .line 872
    invoke-virtual {p0, p1, v3, v2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getBoolean(ILjava/lang/String;Z)Z

    move-result v3

    .line 873
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "reset to default] Volte : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", Video : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, p1, v4}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 876
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    xor-int/2addr v1, v2

    invoke-static {v0, v1, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setVoiceCallType(Landroid/content/Context;II)V

    .line 877
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    xor-int/lit8 v0, v3, 0x1

    invoke-static {p0, v0, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setVideoCallType(Landroid/content/Context;II)V

    return-void

    .line 865
    :cond_2
    :goto_0
    sget-object p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v0, "factoryReset : skip reset due to no SIM"

    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 858
    :cond_3
    :goto_1
    sget-object p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v0, "factoryReset : invalid phoneId"

    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;
    .locals 2

    .line 295
    :goto_0
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstanceInternal()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object v0

    if-nez v0, :cond_0

    .line 296
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "instance is null..."

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x3e8

    .line 300
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 302
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 305
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstanceInternal()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized getInstanceInternal()Lcom/sec/internal/ims/imsservice/ImsServiceStub;
    .locals 2

    const-class v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    monitor-enter v0

    .line 316
    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->sInstance:Lcom/sec/internal/ims/imsservice/ImsServiceStub;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getSmkVersion()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 487
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.samsung.ims.smk"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 488
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 489
    sget-object p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get SMK version Success : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 491
    :catch_0
    sget-object p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "fail to get versionName"

    invoke-static {p0, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method protected static getTokenOfListener(Landroid/os/IInterface;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/IInterface;",
            ">(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 309
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mListenerIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    const v1, 0x7fffffff

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 312
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p0, :cond_0

    const-string p0, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "$"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private hasVoImsFeature(Ljava/lang/String;II)Z
    .locals 8

    .line 677
    invoke-static {p3}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    .line 681
    sget-object p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string p1, "hasVolteFeature - no simMgr"

    invoke-static {p0, p3, p1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return v0

    :cond_0
    const-string v1, "mmtel"

    .line 693
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move p1, v0

    move v1, v2

    move v3, v1

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "smsip"

    .line 695
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v0

    move p1, v2

    move v3, p1

    goto :goto_0

    :cond_2
    const-string v1, "mmtel-video"

    .line 697
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    move v3, v0

    move p1, v2

    move v1, p1

    :goto_0
    const/16 v4, 0x12

    if-ne p2, v4, :cond_3

    move p2, v0

    move p1, v2

    goto :goto_1

    :cond_3
    move p2, v2

    .line 712
    :goto_1
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getMnoInfo()Landroid/content/ContentValues;

    move-result-object p0

    .line 713
    invoke-virtual {p0}, Landroid/content/ContentValues;->size()I

    move-result v4

    if-nez v4, :cond_4

    .line 714
    sget-object p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string p1, "hasVoImsFeature - mnoInfo\'s size is 0"

    invoke-static {p0, p3, p1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return v2

    :cond_4
    const-string v4, "imsSwitchType"

    const/4 v5, -0x1

    .line 718
    invoke-static {p0, v4, v5}, Lcom/sec/internal/helper/CollectionUtils;->getIntValue(Landroid/content/ContentValues;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_5

    .line 720
    sget-object p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string p1, "hasVoImsFeature - imsswitchType not exist"

    invoke-static {p0, p3, p1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return v2

    :cond_5
    if-eqz v4, :cond_c

    const/4 v5, 0x2

    if-ne v4, v5, :cond_6

    goto/16 :goto_4

    :cond_6
    const-string v4, "enableIms"

    .line 735
    invoke-static {p0, v4, v2}, Lcom/sec/internal/helper/CollectionUtils;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v5

    const-string v6, " false"

    const-string v7, "hasVoImsFeature - "

    if-nez v5, :cond_7

    .line 737
    sget-object p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p3, p1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return v2

    :cond_7
    if-eqz p2, :cond_8

    const-string p2, "enableServiceVowifi"

    .line 741
    invoke-static {p0, p2, v2}, Lcom/sec/internal/helper/CollectionUtils;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_8

    .line 742
    sget-object p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p3, p1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return v2

    :cond_8
    if-eqz p1, :cond_9

    const-string p1, "enableServiceVolte"

    .line 746
    invoke-static {p0, p1, v2}, Lcom/sec/internal/helper/CollectionUtils;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_9

    .line 747
    sget-object p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p3, p1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    :goto_2
    move v0, v2

    goto :goto_3

    :cond_9
    if-eqz v1, :cond_a

    const-string p1, "enableServiceSmsip"

    .line 749
    invoke-static {p0, p1, v2}, Lcom/sec/internal/helper/CollectionUtils;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_a

    .line 750
    sget-object p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p3, p1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_2

    :cond_a
    if-eqz v3, :cond_b

    const-string p1, "enableServiceVilte"

    .line 752
    invoke-static {p0, p1, v2}, Lcom/sec/internal/helper/CollectionUtils;->getBooleanValue(Landroid/content/ContentValues;Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_b

    .line 753
    sget-object p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p3, p1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_2

    :cond_b
    :goto_3
    return v0

    .line 725
    :cond_c
    :goto_4
    sget-object p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string p1, "hasVoImsFeature - No SIM or GCF or LABSIM or Softphone or Default ImsSwitch"

    invoke-static {p0, p3, p1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return v0

    .line 700
    :cond_d
    sget-object p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string p1, "no VoLTE feature, no need to check mnoInfo"

    invoke-static {p0, p3, p1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return v0
.end method

.method private init()V
    .locals 2

    .line 614
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "init started"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSequentialInitializer:Ljava/util/List;

    new-instance v1, Lcom/sec/internal/ims/cmstore/CloudMessageService$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/sec/internal/ims/cmstore/CloudMessageService$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 618
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSequentialInitializer:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 621
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManager;->setVolteServiceModule(Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;)V

    .line 624
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->initInstances()V

    .line 626
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRawSipManager:Lcom/sec/internal/ims/core/RawSipManager;

    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mHandlerFactory:Lcom/sec/internal/ims/core/handler/HandlerFactory;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/handler/HandlerFactory;->getRawSipHandler()Lcom/sec/internal/ims/core/handler/RawSipHandler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RawSipManager;->init(Lcom/sec/internal/interfaces/ims/core/handler/ISipDialogInterface;)V

    .line 628
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->registerFactoryResetReceiver()V

    .line 630
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/utils/ValidationHelper;->isTapiAuthorisationSupports()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 631
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->getInstance(Landroid/content/Context;)Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceExtensionManager:Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;

    .line 632
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/tapi/service/extension/ServiceExtensionManager;->start()V

    .line 637
    :cond_0
    :try_start_0

    const/16 v1, 0xa9c

    if-lt v0, v1, :cond_1

    .line 638
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->makeSemImsService(Landroid/content/Context;)Lcom/sec/internal/ims/imsservice/SemImsServiceStub;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 641
    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/NoSuchFieldError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->registerDefaultSmsPackageChangeReceiver()V

    .line 645
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->registerPackageManagerReceiver()V

    .line 646
    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->registerUserUnlockReceiver()V

    .line 647
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->linkToPhoneDeath()V

    .line 648
    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->checkGrantAppOpsPermission()V

    return-void
.end method

.method public static isImsAvailable()Z
    .locals 1

    .line 349
    sget-boolean v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mIsImsAvailable:Z

    return v0
.end method

.method private isPermissionGranted()Z
    .locals 2

    .line 846
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v0, "com.sec.imsservice.PERMISSION"

    .line 848
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

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

.method private isPreloadedSmk(Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_1

    const-string p0, "1.3.31"

    .line 497
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

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

.method private synthetic lambda$dump$2(Ljava/lang/Runnable;)V
    .locals 2

    const-wide/16 v0, 0x3e8

    .line 822
    invoke-direct {p0, p1, v0, v1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->dump(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private synthetic lambda$dump$3()V
    .locals 3

    .line 826
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "content://com.sec.ims.settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "dump"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method private static synthetic lambda$dump$4(Ljava/util/concurrent/Future;)V
    .locals 1

    const/4 v0, 0x1

    .line 837
    invoke-interface {p0, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    return-void
.end method

.method private static synthetic lambda$explicitGC$0()V
    .locals 2

    .line 340
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Call explicit GC"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    invoke-static {}, Lcom/sec/internal/helper/os/SystemWrapper;->explicitGc()V

    return-void
.end method

.method private synthetic lambda$getRcsProfileType$6(ILcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;
    .locals 0

    .line 1211
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/util/ConfigUtil;->getRcsProfileWithFeature(Landroid/content/Context;ILcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$hasCrossSimImsService$10(ILjava/lang/String;)Z
    .locals 1

    const/16 v0, 0x12

    .line 1558
    invoke-virtual {p0, p2, v0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isServiceAvailable(Ljava/lang/String;II)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static synthetic lambda$isServiceAvailable$11(Ljava/lang/String;ILcom/sec/ims/settings/ImsProfile;)Z
    .locals 1

    if-eqz p2, :cond_0

    .line 1636
    invoke-virtual {p2}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2, p0, p1}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$linkToPhoneDeath$13()V
    .locals 2

    .line 2276
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "Phone Crashed. Cleanup IMS"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 2277
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->sendDeregister(I)V

    .line 2278
    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->cleanUpModules()V

    .line 2279
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v0, "Restart service"

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    const/4 p0, 0x0

    const/4 v0, 0x1

    const v1, -0xfffffff

    .line 2280
    invoke-static {v1, p0, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;Z)V

    const/4 p0, 0x0

    .line 2281
    invoke-static {p0}, Lcom/sec/internal/helper/os/SystemWrapper;->exit(I)V

    return-void
.end method

.method private synthetic lambda$registerImsRegistrationListener$12(Lcom/sec/ims/IImsRegistrationListener;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V
    .locals 0

    .line 2175
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManager;->registerListener(Lcom/sec/ims/IImsRegistrationListener;I)V

    return-void
.end method

.method private synthetic lambda$registerImsRegistrationListener$7(Lcom/sec/ims/IImsRegistrationListener;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V
    .locals 0

    .line 1349
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManager;->registerListener(Lcom/sec/ims/IImsRegistrationListener;I)V

    return-void
.end method

.method private synthetic lambda$registerSimMobilityStatusListener$1(Lcom/sec/ims/ISimMobilityStatusListener;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V
    .locals 0

    .line 659
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManager;->registerSimMobilityStatusListener(Lcom/sec/ims/ISimMobilityStatusListener;I)V

    return-void
.end method

.method private synthetic lambda$unregisterImsRegistrationListener$8(Lcom/sec/ims/IImsRegistrationListener;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V
    .locals 0

    .line 1358
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManager;->unregisterListener(Lcom/sec/ims/IImsRegistrationListener;I)V

    return-void
.end method

.method private synthetic lambda$unregisterImsRegistrationListenerForSlot$9(Lcom/sec/ims/IImsRegistrationListener;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V
    .locals 0

    .line 1383
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManager;->unregisterListener(Lcom/sec/ims/IImsRegistrationListener;I)V

    return-void
.end method

.method private synthetic lambda$unregisterSimMobilityStatusListenerByPhoneId$5(Lcom/sec/ims/ISimMobilityStatusListener;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V
    .locals 0

    .line 1140
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManager;->unregisterSimMobilityStatusListener(Lcom/sec/ims/ISimMobilityStatusListener;I)V

    return-void
.end method

.method private linkToPhoneDeath()V
    .locals 3

    .line 2271
    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager;->getPhoneSubServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->tryGet()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2274
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v2, "Link to Phone Binder Death"

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 2275
    new-instance v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda2;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)V

    const/4 p0, 0x0

    invoke-interface {v0, v1, p0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 2284
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static declared-synchronized makeImsService(Landroid/content/Context;)Lcom/sec/internal/ims/imsservice/ImsServiceStub;
    .locals 3

    const-class v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    monitor-enter v0

    .line 320
    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->sInstance:Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    if-eqz v1, :cond_0

    .line 321
    sget-object p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Already created."

    invoke-static {p0, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    sget-object p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->sInstance:Lcom/sec/internal/ims/imsservice/ImsServiceStub;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 325
    :cond_0
    :try_start_1
    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Creating IMSService"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x1

    .line 326
    invoke-static {v2}, Lcom/sec/internal/log/IMSLogTimer;->setLatchStartTime(I)V

    .line 327
    new-instance v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->sInstance:Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    .line 328
    invoke-direct {v2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->createModules()V

    .line 329
    sget-object p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->sInstance:Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->init()V

    const-string p0, "Done."

    .line 331
    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PID:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/high16 v1, -0x10000000

    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 334
    sget-object p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->sInstance:Lcom/sec/internal/ims/imsservice/ImsServiceStub;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private registerFactoryResetReceiver()V
    .locals 6

    .line 379
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.samsung.intent.action.SETTINGS_SOFT_RESET"

    .line 380
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.samsung.intent.action.SETTINGS_NETWORK_RESET"

    .line 381
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 382
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub$3;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$3;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v4, "com.sec.android.settings.permission.SOFT_RESET"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private registerPackageManagerReceiver()V
    .locals 3

    .line 412
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerPackageMgrListener"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    .line 414
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.ims.smk"

    const/4 v2, 0x0

    .line 415
    invoke-virtual {v0, v1, v2}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    const-string v1, "com.samsung.android.messaging"

    .line 416
    invoke-virtual {v0, v1, v2}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    const-string/jumbo v1, "package"

    .line 417
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 419
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getSmkVersion()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 422
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->writeSmkVerData(Ljava/lang/String;)V

    .line 425
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub$4;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$4;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private removeCallback(Ljava/lang/String;)Landroid/os/IInterface;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/IInterface;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 2391
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mListenerTokenMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;

    if-eqz p0, :cond_0

    .line 2393
    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;->reset()V

    .line 2395
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;->mListener:Landroid/os/IInterface;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 2397
    sget-object p1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to removeCallback by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private startDeviceConfigService()V
    .locals 3

    .line 501
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "call SMK start"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 502
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.ims.smk"

    const-string v2, "com.samsung.ims.smk.DeviceUpdateService"

    .line 503
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 504
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private writeSmkVerData(Ljava/lang/String;)V
    .locals 3

    .line 477
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x1

    .line 478
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "send_mode"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v1, 0x0

    .line 479
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "overwrite_mode"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "SMKV"

    .line 480
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result p1

    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "DRPT"

    invoke-static {p1, p0, v1, v0}, Lcom/sec/internal/ims/diagnosis/ImsLogAgentUtil;->storeLogToAgent(ILandroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V

    return-void
.end method


# virtual methods
.method public changeAudioPath(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1840
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->changeAudioPathForSlot(II)V

    return-void
.end method

.method public changeAudioPathForSlot(II)V
    .locals 3

    .line 1845
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1846
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "VolteServiceModule is not ready"

    .line 1849
    invoke-static {v1, p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 1853
    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->updateAudioInterface(II)V

    return-void
.end method

.method public checkGrantAppOpsPermission()V
    .locals 11

    const-string v0, "com.sec.imsservice"

    .line 2456
    const-class v1, Ljava/lang/String;

    :try_start_0
    const-string v2, "android.app.AppOpsManager"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 2457
    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v4, "appops"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager;

    const-string/jumbo v4, "semCheckOpWriteSms"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Class;

    .line 2459
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const/4 v9, 0x1

    aput-object v1, v6, v9

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v6, v5, [Ljava/lang/Object;

    .line 2460
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v6, v8

    aput-object v0, v6, v9

    invoke-static {v4, v3, v6}, Lcom/sec/ims/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_0

    .line 2463
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "checkGrantAppOpsPermission already allowed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string/jumbo v4, "semSetModeWriteSms"

    const/4 v6, 0x3

    new-array v10, v6, [Ljava/lang/Class;

    aput-object v7, v10, v8

    aput-object v1, v10, v9

    aput-object v7, v10, v5

    .line 2465
    invoke-virtual {v2, v4, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    .line 2466
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v8

    aput-object v0, v2, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v5

    invoke-static {v1, v3, v2}, Lcom/sec/ims/extensions/ReflectionUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2470
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkGrantAppOpsPermission exception."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public deregisterAdhocProfile(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1230
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->deregisterAdhocProfileByPhoneId(II)V

    return-void
.end method

.method public deregisterAdhocProfileByPhoneId(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1235
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1236
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->deregisterProfile(II)V

    return-void
.end method

.method public deregisterProfile(Ljava/util/List;Z)V
    .locals 1

    .line 1254
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->deregisterProfileByPhoneId(Ljava/util/List;ZI)V

    return-void
.end method

.method public deregisterProfileByPhoneId(Ljava/util/List;ZI)V
    .locals 3

    .line 1259
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1260
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->deregisterProfile(Ljava/util/List;ZI)V

    return-void
.end method

.method public dump()V
    .locals 1

    const/4 v0, 0x0

    .line 2052
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 2060
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public enableRcs(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1715
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->enableRcsByPhoneId(ZI)V

    return-void
.end method

.method public enableRcsByPhoneId(ZI)V
    .locals 4

    .line 1720
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1721
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/sec/internal/ims/util/ConfigUtil;->checkMdmRcsStatus(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "RCS isn\'t allowed by MDM. Don\'t enable RCS"

    .line 1722
    invoke-static {v1, p2, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 1730
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {v0, v2}, Lcom/sec/internal/helper/os/PackageUtils;->getProcessNameById(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.samsung.advp.imssettings"

    .line 1732
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Called by ImsSettings app. Change main switch value."

    .line 1733
    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 1734
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->enableRcsMainSwitchByPhoneId(ZI)V

    return-void

    .line 1738
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v0, v2, p2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getRcsUserSetting(Landroid/content/Context;II)I

    move-result v0

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 1740
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableRcs: oldValue: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", newValue: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1741
    invoke-direct {p0, v2, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->changeOpModeByRcsSwtich(ZZI)V

    .line 1746
    invoke-static {p2}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v2, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v2, :cond_3

    if-nez p1, :cond_3

    const-string p0, "enableRcs: Ignore RCS disable for SKT until server responds"

    .line 1747
    invoke-static {v1, p2, p0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 1753
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->setRcsUserSetting(Landroid/content/Context;II)V

    return-void
.end method

.method public enableService(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1673
    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->enableServiceByPhoneId(Ljava/lang/String;ZI)V

    return-void
.end method

.method public enableServiceByPhoneId(Ljava/lang/String;ZI)V
    .locals 5

    .line 1678
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1679
    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {v0, v2}, Lcom/sec/internal/helper/os/PackageUtils;->getProcessNameById(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.samsung.advp.imssettings"

    .line 1681
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.android.phone"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1682
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "deprecated] enableService is called by "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p3, p0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_3

    .line 1684
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1686
    :try_start_0
    sget-object v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_4

    sget-object v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VILTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    .line 1687
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 1690
    :cond_1
    sget-object v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->RCS_USER_SETTING1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1691
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_2

    move v3, v4

    :cond_2
    invoke-static {p0, p1, v3, p3}, Lcom/sec/internal/helper/DmConfigHelper;->setImsUserSetting(Landroid/content/Context;Ljava/lang/String;II)V

    goto :goto_2

    .line 1694
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2, p3}, Lcom/sec/internal/helper/DmConfigHelper;->setImsSwitch(Landroid/content/Context;Ljava/lang/String;ZI)V

    goto :goto_2

    .line 1688
    :cond_4
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_5

    goto :goto_1

    :cond_5
    move v3, v4

    :goto_1
    invoke-static {p0, p1, v3, p3}, Lcom/sec/internal/helper/DmConfigHelper;->setImsUserSetting(Landroid/content/Context;Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1697
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_3
    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1698
    throw p0
.end method

.method public enableVoLte(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1704
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->enableVoLteByPhoneId(ZI)V

    return-void
.end method

.method public enableVoLteByPhoneId(ZI)V
    .locals 3

    .line 1709
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1710
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "volte"

    invoke-static {p0, v0, p1, p2}, Lcom/sec/internal/helper/DmConfigHelper;->setImsSwitch(Landroid/content/Context;Ljava/lang/String;ZI)V

    return-void
.end method

.method public finishDmConfig(II)V
    .locals 3

    .line 1915
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1916
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/sec/internal/ims/core/RegistrationManager;->sendDmState(IZ)V

    .line 1917
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mDmConfigModule:Lcom/sec/internal/ims/settings/DmConfigModule;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/settings/DmConfigModule;->finishDmConfig(II)V

    return-void
.end method

.method public forcedUpdateRegistration(Lcom/sec/ims/settings/ImsProfile;)V
    .locals 1

    .line 1281
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->forcedUpdateRegistrationByPhoneId(Lcom/sec/ims/settings/ImsProfile;I)V

    return-void
.end method

.method public forcedUpdateRegistrationByPhoneId(Lcom/sec/ims/settings/ImsProfile;I)V
    .locals 3

    .line 1285
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1286
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->forcedUpdateRegistration(Lcom/sec/ims/settings/ImsProfile;I)I

    return-void
.end method

.method public getAECModule()Lcom/sec/internal/interfaces/ims/aec/IAECModule;
    .locals 0

    .line 2101
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mAECModule:Lcom/sec/internal/interfaces/ims/aec/IAECModule;

    return-object p0
.end method

.method public getAllServiceModules()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;",
            ">;"
        }
    .end annotation

    .line 2142
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getAllServiceModules()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getAvailableNetworkType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 976
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getAvailableNetworkType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBinder(Ljava/lang/String;)Landroid/os/Binder;
    .locals 3

    .line 2194
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2195
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getBinder(Ljava/lang/String;)Landroid/os/Binder;

    move-result-object p0

    return-object p0
.end method

.method public getBinder(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Binder;
    .locals 3

    .line 2200
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2201
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getBinder(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Binder;

    move-result-object p0

    return-object p0
.end method

.method public getBoolean(ILjava/lang/String;Z)Z
    .locals 0

    .line 2033
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/settings/GlobalSettingsManager;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getCallCount(I)[I
    .locals 3

    .line 1762
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1767
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getTotalCallCount(I)I

    move-result v0

    .line 1768
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getVideoCallCount(I)I

    move-result v1

    .line 1769
    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getDowngradedCallCount(I)I

    move-result v2

    .line 1770
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getE911CallCount(I)I

    move-result p0

    filled-new-array {v0, v1, v2, p0}, [I

    move-result-object p0

    return-object p0

    .line 1763
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Permission denied"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;
    .locals 0

    .line 2071
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mCmcAccountManager:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    return-object p0
.end method

.method public getCmcCallInfo()Lcom/sec/ims/cmc/CmcCallInfo;
    .locals 3

    .line 2298
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2299
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2301
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getCmcCallInfo()Lcom/sec/ims/cmc/CmcCallInfo;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCmcConnectivityController()Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;
    .locals 0

    .line 2106
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mCmcConnectivityController:Lcom/sec/internal/imsphone/cmc/CmcConnectivityController;

    return-object p0
.end method

.method public getConfigModule()Lcom/sec/internal/interfaces/ims/config/IConfigModule;
    .locals 0

    .line 2091
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mConfigModule:Lcom/sec/internal/ims/config/ConfigModule;

    return-object p0
.end method

.method public getConfigValues([Ljava/lang/String;I)Landroid/content/ContentValues;
    .locals 3

    .line 1891
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1892
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1894
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mDmConfigModule:Lcom/sec/internal/ims/settings/DmConfigModule;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/settings/DmConfigModule;->getConfigValues([Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1896
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1897
    throw p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .line 2157
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getCurrentProfile()[Lcom/sec/ims/settings/ImsProfile;
    .locals 1

    .line 1198
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getCurrentProfileForSlot(I)[Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentProfileForSlot(I)[Lcom/sec/ims/settings/ImsProfile;
    .locals 3

    .line 1203
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1204
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getProfileList(I)[Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    return-object p0
.end method

.method public getEpsFbCallCount(I)I
    .locals 1

    .line 1776
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1779
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getEpsFbCallCount(I)I

    move-result p0

    return p0

    .line 1777
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Permission denied"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getFcmHandler()Lcom/sec/internal/ims/fcm/interfaces/IFcmHandler;
    .locals 2

    .line 2126
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mFcmHandler:Lcom/sec/internal/ims/fcm/FcmHandler;

    if-nez v0, :cond_0

    .line 2127
    new-instance v0, Lcom/sec/internal/ims/fcm/FcmHandler;

    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/fcm/FcmHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mFcmHandler:Lcom/sec/internal/ims/fcm/FcmHandler;

    .line 2129
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mFcmHandler:Lcom/sec/internal/ims/fcm/FcmHandler;

    return-object p0
.end method

.method public getGeolocationController()Lcom/sec/internal/interfaces/ims/core/IGeolocationController;
    .locals 0

    .line 2111
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mGeolocationController:Lcom/sec/internal/ims/core/GeolocationController;

    return-object p0
.end method

.method public getGlobalSettingsValueToBoolean(Ljava/lang/String;IZ)Z
    .locals 3

    .line 2022
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2023
    invoke-virtual {p0, p2, p1, p3}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getBoolean(ILjava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getGlobalSettingsValueToInteger(Ljava/lang/String;II)I
    .locals 3

    .line 2016
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2017
    invoke-virtual {p0, p2, p1, p3}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInt(ILjava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getGlobalSettingsValueToString(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 2010
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2011
    invoke-virtual {p0, p2, p1, p3}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;
    .locals 0

    .line 2096
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mHandlerFactory:Lcom/sec/internal/ims/core/handler/HandlerFactory;

    return-object p0
.end method

.method public getIilManager(I)Lcom/sec/internal/interfaces/ims/core/iil/IIilManager;
    .locals 1

    .line 2134
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mIilManagers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2137
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mIilManagers:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/interfaces/ims/core/iil/IIilManager;

    return-object p0
.end method

.method public getImsDiagMonitor()Lcom/sec/internal/interfaces/ims/core/imslogger/IImsDiagMonitor;
    .locals 0

    .line 2121
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mImsDiagMonitor:Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;

    return-object p0
.end method

.method public getInt(ILjava/lang/String;I)I
    .locals 0

    .line 2028
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/settings/GlobalSettingsManager;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getLastDialogEvent(I)Lcom/sec/ims/DialogEvent;
    .locals 3

    .line 1458
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1459
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getLastDialogEvent(I)Lcom/sec/ims/DialogEvent;

    move-result-object p0

    return-object p0
.end method

.method public getMasterStringValue(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1472
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string p1, "com.sec.imsservice.PERMISSION"

    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    return-object p0
.end method

.method public getMasterValue(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1466
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string p1, "com.sec.imsservice.PERMISSION"

    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public getNetworkType(I)I
    .locals 3

    .line 961
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->getCurrentNetwork(I)I

    move-result p0

    const/4 p1, 0x1

    if-lt p0, p1, :cond_0

    const/16 v0, 0x11

    if-gt p0, v0, :cond_0

    return p1

    :cond_0
    const/16 p1, 0x12

    if-ne p0, p1, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getNrSaCallCount(I)I
    .locals 1

    .line 1784
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1787
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getNrSaCallCount(I)I

    move-result p0

    return p0

    .line 1785
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Permission denied"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getNtpTimeController()Lcom/sec/internal/interfaces/ims/core/INtpTimeController;
    .locals 0

    .line 2116
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mNtpTimeController:Lcom/sec/internal/ims/core/NtpTimeController;

    return-object p0
.end method

.method public getPdnController()Lcom/sec/internal/interfaces/ims/core/IPdnController;
    .locals 0

    .line 2066
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    return-object p0
.end method

.method public getPhoneCount()I
    .locals 2

    .line 892
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v0, "com.sec.imsservice.PERMISSION"

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result p0

    return p0
.end method

.method public getRawSipSender()Lcom/sec/internal/interfaces/ims/core/IRawSipSender;
    .locals 0

    .line 2152
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRawSipManager:Lcom/sec/internal/ims/core/RawSipManager;

    return-object p0
.end method

.method public getRcsPolicyManager()Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;
    .locals 0

    .line 2076
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRcsPolicyManager:Lcom/sec/internal/ims/rcs/RcsPolicyManager;

    return-object p0
.end method

.method public getRcsProfileType(I)Ljava/lang/String;
    .locals 3

    .line 1209
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1210
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    sget-object v2, Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;->RCS:Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;

    invoke-virtual {v0, p1, v2}, Lcom/sec/internal/ims/core/RegistrationManager;->getImsProfile(ILcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda9;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;I)V

    .line 1211
    invoke-virtual {v0, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const-string v0, ""

    .line 1212
    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 1213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRcsProfileType: rcsProfile = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return-object p0
.end method

.method public getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1171
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1175
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationManager;->getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    return-object p0

    .line 1172
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Permission denied"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getRegistrationInfoByPhoneId(I)[Lcom/sec/ims/ImsRegistration;
    .locals 2

    .line 1180
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1184
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getRegistrationInfoByPhoneId(I)[Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    return-object p0

    .line 1181
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] Permission denied"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getRegistrationInfoByServiceType(Ljava/lang/String;I)Lcom/sec/ims/ImsRegistration;
    .locals 1

    .line 1189
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1193
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManager;->getRegistrationInfoByServiceType(Ljava/lang/String;I)Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    return-object p0

    .line 1190
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] Permission denied"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    .locals 0

    .line 2086
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    return-object p0
.end method

.method public getRttMode(I)I
    .locals 3

    .line 1948
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "getRttMode"

    .line 1949
    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 1950
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getRttMode()I

    move-result p0

    return p0
.end method

.method public getSemBinder()Landroid/os/Binder;
    .locals 3

    .line 2205
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2206
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getSemBinder()Landroid/os/Binder;

    move-result-object p0

    return-object p0
.end method

.method public getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;
    .locals 0

    .line 2081
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    return-object p0
.end method

.method public getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2038
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/settings/GlobalSettingsManager;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStringArray(ILjava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    .line 2042
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2043
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/settings/GlobalSettingsManager;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getStringArray(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVideocallType()I
    .locals 2

    .line 1867
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1870
    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VILTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const/4 v1, -0x1

    invoke-virtual {v0, p0, v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result p0

    return p0

    .line 1868
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Permission denied"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getWfcEpdgManager()Lcom/sec/internal/interfaces/ims/core/IWfcEpdgManager;
    .locals 0

    .line 2147
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mWfcEpdgManager:Lcom/sec/internal/ims/core/WfcEpdgManager;

    return-object p0
.end method

.method public handleIntent(Landroid/content/Intent;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 508
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 511
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->handleIntent(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public hasCrossSimImsService(I)Z
    .locals 7

    .line 1546
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1547
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getCurrentProfileForSlot(I)[Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    .line 1548
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    if-eqz v4, :cond_0

    .line 1549
    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v5

    const/16 v6, 0xb

    if-ne v5, v6, :cond_0

    const/16 v0, 0x12

    .line 1550
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/sec/ims/settings/ImsProfile;->getServiceSet(Ljava/lang/Integer;)Ljava/util/Set;

    move-result-object v0

    .line 1551
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->getRegistrationGovernorByProfileId(II)Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1553
    invoke-interface {v1, v0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->applyDataSimPolicyForCrossSim(Ljava/util/Set;I)Ljava/util/Set;

    move-result-object v0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1558
    :cond_1
    :goto_1
    new-instance v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda5;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;I)V

    invoke-interface {v0, v1}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 1560
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public hasVoLteSim()Z
    .locals 1

    .line 1658
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->hasVoLteSimByPhoneId(I)Z

    move-result p0

    return p0
.end method

.method public hasVoLteSimByPhoneId(I)Z
    .locals 3

    .line 1663
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1664
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    if-eqz p0, :cond_0

    .line 1665
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->hasVoLteSim(I)Z

    move-result p0

    return p0

    :cond_0
    const-string p0, "hasVoLteSimByPhoneId - no mRegistrationManager"

    .line 1667
    invoke-static {v1, p1, p0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public isCmcEmergencyCallSupported(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2316
    iget-object p1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "com.sec.imsservice.PERMISSION"

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "isCmcEmergencyCallSupported"

    .line 2317
    invoke-static {v0, p1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2318
    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2321
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->isEmergencyCallSupported()Z

    move-result p0

    return p0
.end method

.method public isCmcEmergencyNumber(Ljava/lang/String;I)Z
    .locals 3

    .line 2326
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "isCmcEmergencyNumber"

    .line 2327
    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2328
    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2331
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->isEmergencyNumber(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public isCmcPotentialEmergencyNumber(Ljava/lang/String;I)Z
    .locals 3

    .line 2336
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "isCmcPotentialEmergencyNumber"

    .line 2337
    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2338
    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2341
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->isPotentialEmergencyNumber(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public isCrossSimCallingRegistered(I)Z
    .locals 6

    .line 1593
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getRegistrationInfoByPhoneId(I)[Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1598
    :cond_0
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    if-eqz v3, :cond_1

    .line 1599
    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v4

    const/16 v5, 0xb

    if-ne v4, v5, :cond_1

    .line 1600
    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getEpdgStatus()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->isEpdgOverCellularData()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getRegiRat()I

    move-result v3

    const/16 v4, 0x12

    if-ne v3, v4, :cond_1

    .line 1601
    sget-object p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v0, "isCrossSimCallingRegistered true"

    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1605
    :cond_2
    sget-object p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "isCrossSimCallingRegistered false"

    invoke-static {p0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v0
.end method

.method public isCrossSimCallingSupported()Z
    .locals 4

    .line 1581
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1584
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 1586
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "cross_sim_menu_enable"

    const/4 v3, -0x1

    invoke-static {p0, v0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-lez p0, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 1582
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Permission denied"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isCrossSimCallingSupportedByPhoneId(I)Z
    .locals 3

    .line 1565
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1568
    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isCrossSimCallingSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    add-int/2addr p1, v0

    .line 1572
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "cross_sim_menu_enable"

    invoke-static {p0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    return v1

    .line 1566
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] Permission denied"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isCrossSimPermanentBlocked(I)Z
    .locals 2

    .line 2369
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2372
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mWfcEpdgManager:Lcom/sec/internal/ims/core/WfcEpdgManager;

    if-eqz p0, :cond_0

    .line 2373
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/WfcEpdgManager;->isCrossSimPermanentBlocked(I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 2370
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] Permission denied"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isDefaultDmValue(Ljava/lang/String;I)Z
    .locals 5

    .line 2211
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "OMADM_VALUE"

    .line 2212
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const-string p1, "93"

    const-string v0, "94"

    const-string v3, "31"

    .line 2213
    filled-new-array {p1, v0, v3}, [Ljava/lang/String;

    move-result-object v4

    .line 2214
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mDmConfigModule:Lcom/sec/internal/ims/settings/DmConfigModule;

    invoke-virtual {p0, v4, p2}, Lcom/sec/internal/ims/settings/DmConfigModule;->getConfigValues([Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object p0

    .line 2215
    invoke-virtual {p0, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v4, "1"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    .line 2216
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 2217
    invoke-virtual {p0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    .line 2219
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OMADM Default Value [VoLTE : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", LVC : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", EAB : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p2, v3}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    :cond_1
    const-string v0, "SMS_SETTING"

    .line 2221
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "9"

    .line 2222
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v0

    .line 2223
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mDmConfigModule:Lcom/sec/internal/ims/settings/DmConfigModule;

    invoke-virtual {p0, v0, p2}, Lcom/sec/internal/ims/settings/DmConfigModule;->getConfigValues([Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object p0

    .line 2224
    invoke-virtual {p0, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2225
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SMS Setting Default Value : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p2, p1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "3GPP2"

    .line 2227
    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 2229
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is wrong value on isDefaultDmValue"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p2, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return v2
.end method

.method public isForbidden()Z
    .locals 2

    .line 1792
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1795
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/RegistrationManager;->isInvite403DisabledService(I)Z

    move-result p0

    return p0

    .line 1793
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Permission denied"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isForbiddenByPhoneId(I)Z
    .locals 1

    .line 1800
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1803
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManager;->isInvite403DisabledService(I)Z

    move-result p0

    return p0

    .line 1801
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Permission denied"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isImsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    .line 1490
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isImsEnabledByPhoneId(I)Z

    move-result p0

    return p0
.end method

.method public isImsEnabledByPhoneId(I)Z
    .locals 3

    .line 1495
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1496
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v0, "ims"

    invoke-static {p0, v0, p1}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isQSSSuccessAuthAndLogin(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1309
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1310
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->isQSSSuccessAuthAndLogin(I)Z

    move-result p0

    return p0
.end method

.method public isRcsEnabled()Z
    .locals 1

    .line 1536
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isRcsEnabledByPhoneId(I)Z

    move-result p0

    return p0
.end method

.method public isRcsEnabledByPhoneId(I)Z
    .locals 3

    .line 2186
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "isRcsEnabled:"

    .line 2187
    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 2189
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mConfigModule:Lcom/sec/internal/ims/config/ConfigModule;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/ConfigModule;->isValidAcsVersion(I)Z

    move-result p0

    return p0
.end method

.method public isRegistered()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1160
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1164
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    if-eqz v0, :cond_0

    .line 1165
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/RegistrationManager;->getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    .line 1166
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationManager;->getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    array-length p0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    .line 1161
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Permission denied"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isRttCall(I)Z
    .locals 3

    .line 1924
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "isRttCall"

    .line 1925
    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1926
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->isRttCall(I)Z

    move-result p0

    return p0
.end method

.method public isServiceAvailable(Ljava/lang/String;II)Z
    .locals 7

    .line 1611
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1612
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->hasVoImsFeature(Ljava/lang/String;II)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 1613
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "isServiceAvailable: VoImsFeature : ("

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") is not supported"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p3, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v2

    .line 1618
    :cond_0
    invoke-static {p1}, Lcom/sec/ims/settings/ImsProfile;->isRcsService(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1619
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isSKTOmcCode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKTTOmcCode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isLGTOmcCode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1620
    :cond_1
    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getCurrentProfileForSlot(I)[Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    .line 1622
    array-length v1, v0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v5, v0, v3

    if-eqz v5, :cond_2

    .line 1623
    invoke-static {v5}, Lcom/sec/ims/settings/ImsProfile;->hasRcsService(Lcom/sec/ims/settings/ImsProfile;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1624
    invoke-virtual {v5}, Lcom/sec/ims/settings/ImsProfile;->getSupportRcsAcrossSalesCode()Z

    move-result v4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1627
    :cond_3
    invoke-static {p3}, Lcom/sec/internal/helper/OmcCode;->getNWCode(I)Ljava/lang/String;

    move-result-object v0

    .line 1628
    invoke-static {p3}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 1629
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v1, v1, v0}, Lcom/sec/internal/constants/Mno;->equalsWithSalesCode(Lcom/sec/internal/constants/Mno;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    if-nez v4, :cond_4

    .line 1630
    sget-object p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isServiceAvailable: not matched with SIM :"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p3, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v2

    .line 1635
    :cond_4
    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getCurrentProfileForSlot(I)[Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda7;

    invoke-direct {v1, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda7;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    .line 1637
    invoke-virtual {p0, p1, p3}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isServiceEnabledByPhoneId(Ljava/lang/String;I)Z

    move-result p0

    .line 1639
    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isServiceAvailable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", rat: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", profileFind:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", Enabled:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p3, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-eqz v0, :cond_5

    if-eqz p0, :cond_5

    const/4 v2, 0x1

    :cond_5
    return v2
.end method

.method public isServiceEnabled(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1541
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isServiceEnabledByPhoneId(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public isServiceEnabledByPhoneId(Ljava/lang/String;I)Z
    .locals 3

    .line 1647
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1648
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1650
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1652
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1653
    throw p0
.end method

.method public isSimMobilityActivated(I)Z
    .locals 0

    .line 669
    invoke-static {p1}, Lcom/sec/internal/ims/util/ImsUtil;->isSimMobilityActivated(I)Z

    move-result p0

    return p0
.end method

.method public isSimMobilityActivatedForRcs(I)Z
    .locals 1

    .line 673
    invoke-static {p1}, Lcom/sec/internal/ims/util/ImsUtil;->isSimMobilityActivatedForRcs(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/util/ImsUtil;->isSimMobilityActivatedForAmRcs(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_0

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

.method public isSupportVoWiFiDisable5GSA(I)Z
    .locals 2

    .line 2346
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2349
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "isSupportVoWiFiDisable5GSA"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 2350
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2353
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->isSupportVoWiFiDisable5GSA(I)Z

    move-result p0

    return p0

    .line 2347
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] Permission denied"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isVoLteEnabled()Z
    .locals 1

    const/4 v0, 0x0

    .line 1501
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isVoLteEnabledByPhoneId(I)Z

    move-result p0

    return p0
.end method

.method public isVoLteEnabledByPhoneId(I)Z
    .locals 3

    .line 1506
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1507
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "volte"

    invoke-static {p0, v0, p1}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isVolteEnabledFromNetwork(I)Z
    .locals 1

    .line 1512
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1515
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->isVolteServiceStatus(I)Z

    move-result p0

    return p0

    .line 1513
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Permission denied"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isVolteSupportECT()Z
    .locals 2

    .line 1520
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1523
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->isVolteSupportECT()Z

    move-result p0

    return p0

    .line 1521
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Permission denied"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isVolteSupportEctByPhoneId(I)Z
    .locals 1

    .line 1528
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1531
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->isVolteSupportECT(I)Z

    move-result p0

    return p0

    .line 1529
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Permission denied"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public notifyImsReady(ZI)V
    .locals 3

    .line 2255
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-eqz p1, :cond_0

    const-string v1, "com.android.ims.IMS_SERVICE_UP"

    goto :goto_0

    :cond_0
    const-string v1, "com.android.ims.IMS_SERVICE_DOWN"

    .line 2256
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android:phone_id"

    .line 2257
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "SIMMO"

    .line 2258
    invoke-static {p2}, Lcom/sec/internal/ims/util/ImsUtil;->isSimMobilityActivated(I)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 2259
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2260
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sec/internal/helper/os/IntentUtil;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    const/4 v0, 0x1

    .line 2262
    sput-boolean v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mIsImsAvailable:Z

    .line 2264
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mIilManagers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2265
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mIilManagers:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/interfaces/ims/core/iil/IIilManager;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/iil/IIilManager;->notifyImsReady(Z)V

    .line 2267
    :cond_1
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->explicitGC()V

    return-void
.end method

.method public registerAdhocProfile(Lcom/sec/ims/settings/ImsProfile;)I
    .locals 1

    .line 1219
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->registerAdhocProfileByPhoneId(Lcom/sec/ims/settings/ImsProfile;I)I

    move-result p0

    return p0
.end method

.method public registerAdhocProfileByPhoneId(Lcom/sec/ims/settings/ImsProfile;I)I
    .locals 3

    .line 1224
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1225
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->registerProfile(Lcom/sec/ims/settings/ImsProfile;I)I

    move-result p0

    return p0
.end method

.method public registerAutoConfigurationListener(Lcom/sec/ims/IAutoConfigurationListener;I)Ljava/lang/String;
    .locals 3

    .line 1098
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "registerAutoConfigurationListener"

    .line 1099
    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 1100
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mConfigModule:Lcom/sec/internal/ims/config/ConfigModule;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/config/ConfigModule;->registerAutoConfigurationListener(Lcom/sec/ims/IAutoConfigurationListener;I)V

    .line 1101
    invoke-static {p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getTokenOfListener(Landroid/os/IInterface;)Ljava/lang/String;

    move-result-object p2

    .line 1102
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mListenerTokenMap:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Landroid/os/IInterface;Ljava/lang/String;)V

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public registerCallback(Lcom/sec/ims/ImsEventListener;Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public registerCmcRecordingListener(ILcom/samsung/android/ims/cmc/ISemCmcRecordingListener;)V
    .locals 2

    .line 2307
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerCmcRecordingListener"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 2308
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2310
    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->registerCmcRecordingListener(ILcom/samsung/android/ims/cmc/ISemCmcRecordingListener;)V

    :cond_0
    return-void
.end method

.method public registerCmcRegistrationListenerForSlot(Lcom/sec/ims/IImsRegistrationListener;I)Ljava/lang/String;
    .locals 2

    .line 1392
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1395
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerCmcRegistrationListenerForSlot"

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 1396
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManager;->registerCmcRegiListener(Lcom/sec/ims/IImsRegistrationListener;I)V

    .line 1397
    invoke-static {p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getTokenOfListener(Landroid/os/IInterface;)Ljava/lang/String;

    move-result-object p2

    .line 1398
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mListenerTokenMap:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Landroid/os/IInterface;Ljava/lang/String;)V

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2

    .line 1393
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] Permission denied"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerCmsRegistrationListenerByPhoneId(Lcom/sec/ims/ICentralMsgStoreService;I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public registerDefaultSmsPackageChangeReceiver()V
    .locals 2

    .line 368
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.provider.action.DEFAULT_SMS_PACKAGE_CHANGED_INTERNAL"

    .line 369
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 370
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mDefaultSmsPackageChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public registerDialogEventListener(ILcom/sec/ims/IDialogEventListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1421
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "registerDialogEventListener"

    .line 1422
    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 1423
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->registerDialogEventListener(ILcom/sec/ims/IDialogEventListener;)V

    return-void
.end method

.method public registerDialogEventListenerByToken(ILcom/sec/ims/IDialogEventListener;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1435
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "registerDialogEventListener"

    .line 1436
    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 1437
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->registerDialogEventListener(ILcom/sec/ims/IDialogEventListener;)V

    .line 1438
    invoke-static {p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getTokenOfListener(Landroid/os/IInterface;)Ljava/lang/String;

    move-result-object p1

    .line 1439
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mListenerTokenMap:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;

    invoke-direct {v1, p0, p2, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Landroid/os/IInterface;Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public registerDmValueListener(Lcom/sec/ims/IImsDmConfigListener;)V
    .locals 3

    .line 1877
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "registerDmValueListener:"

    .line 1878
    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1879
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->registerDmListener(Lcom/sec/ims/IImsDmConfigListener;)V

    return-void
.end method

.method public registerEpdgListener(Lcom/sec/ims/IEpdgListener;)Ljava/lang/String;
    .locals 3

    .line 1321
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerEpdgListener"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1322
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1323
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mWfcEpdgManager:Lcom/sec/internal/ims/core/WfcEpdgManager;

    if-eqz v0, :cond_0

    .line 1324
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/WfcEpdgManager;->registerEpdgHandoverListener(Lcom/sec/ims/IEpdgListener;)V

    .line 1326
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getTokenOfListener(Landroid/os/IInterface;)Ljava/lang/String;

    move-result-object v0

    .line 1327
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mListenerTokenMap:Ljava/util/Map;

    new-instance v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;

    invoke-direct {v2, p0, p1, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Landroid/os/IInterface;Ljava/lang/String;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public registerImSessionListener(Lcom/sec/ims/im/IImSessionListener;)Ljava/lang/String;
    .locals 3

    .line 982
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "registerImSessionListener:"

    .line 983
    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 986
    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->registerImSessionListener(Lcom/sec/ims/im/IImSessionListener;)V

    .line 988
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getTokenOfListener(Landroid/os/IInterface;)Ljava/lang/String;

    move-result-object v0

    .line 989
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mListenerTokenMap:Ljava/util/Map;

    new-instance v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;

    invoke-direct {v2, p0, p1, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Landroid/os/IInterface;Ljava/lang/String;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public registerImSessionListenerByPhoneId(Lcom/sec/ims/im/IImSessionListener;I)Ljava/lang/String;
    .locals 3

    .line 995
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "registerImSessionListenerByPhoneId"

    .line 996
    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 997
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 999
    invoke-interface {v0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->registerImSessionListenerByPhoneId(Lcom/sec/ims/im/IImSessionListener;I)V

    .line 1001
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getTokenOfListener(Landroid/os/IInterface;)Ljava/lang/String;

    move-result-object p2

    .line 1002
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mListenerTokenMap:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Landroid/os/IInterface;Ljava/lang/String;)V

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public registerImsOngoingFtListener(Lcom/sec/ims/ft/IImsOngoingFtEventListener;)Ljava/lang/String;
    .locals 3

    .line 1040
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "registerImsOngoingFtListener"

    .line 1041
    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    invoke-static {p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getTokenOfListener(Landroid/os/IInterface;)Ljava/lang/String;

    move-result-object v0

    .line 1043
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mListenerTokenMap:Ljava/util/Map;

    new-instance v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;

    invoke-direct {v2, p0, p1, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Landroid/os/IInterface;Ljava/lang/String;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1044
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1046
    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->registerImsOngoingFtListener(Lcom/sec/ims/ft/IImsOngoingFtEventListener;)V

    :cond_0
    return-object v0
.end method

.method public registerImsOngoingFtListenerByPhoneId(Lcom/sec/ims/ft/IImsOngoingFtEventListener;I)Ljava/lang/String;
    .locals 4

    .line 1053
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "registerImsOngoingFtListenerByPhoneId"

    .line 1054
    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 1055
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    move-result-object v0

    .line 1056
    invoke-static {p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getTokenOfListener(Landroid/os/IInterface;)Ljava/lang/String;

    move-result-object v1

    .line 1057
    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mListenerTokenMap:Ljava/util/Map;

    new-instance v3, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;

    invoke-direct {v3, p0, p1, v1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Landroid/os/IInterface;Ljava/lang/String;)V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1059
    invoke-interface {v0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->registerImsOngoingFtListenerByPhoneId(Lcom/sec/ims/ft/IImsOngoingFtEventListener;I)V

    :cond_0
    return-object v1
.end method

.method public registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;ZI)Ljava/lang/String;
    .locals 3

    .line 2167
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2171
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerImsRegistrationListener: broadcast = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p3, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v1, -0x1

    if-ne p3, v1, :cond_0

    const-string p2, "Requested registerListener without phoneId. register it by all phoneId."

    .line 2174
    invoke-static {v0, p2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2175
    iget-object p2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSimManagers:Ljava/util/List;

    new-instance p3, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda1;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Lcom/sec/ims/IImsRegistrationListener;)V

    invoke-interface {p2, p3}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 2177
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/ims/core/RegistrationManager;->registerListener(Lcom/sec/ims/IImsRegistrationListener;ZI)V

    .line 2179
    :goto_0
    invoke-static {p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getTokenOfListener(Landroid/os/IInterface;)Ljava/lang/String;

    move-result-object p2

    .line 2180
    iget-object p3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mListenerTokenMap:Ljava/util/Map;

    new-instance v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Landroid/os/IInterface;Ljava/lang/String;)V

    invoke-interface {p3, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2

    .line 2168
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] Permission denied"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V
    .locals 2

    .line 1345
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1348
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Requested registerListener without phoneId. register it by all phoneId."

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1349
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSimManagers:Ljava/util/List;

    new-instance v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda4;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Lcom/sec/ims/IImsRegistrationListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void

    .line 1346
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Permission denied"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerImsRegistrationListenerForSlot(Lcom/sec/ims/IImsRegistrationListener;I)Ljava/lang/String;
    .locals 2

    .line 1363
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1366
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerImsRegistrationListenerForSlot"

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x1

    .line 1367
    invoke-virtual {p0, p1, v0, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;ZI)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1364
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] Permission denied"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerProfile(Ljava/util/List;)V
    .locals 1

    .line 1242
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->registerProfileByPhoneId(Ljava/util/List;I)V

    return-void
.end method

.method public registerProfileByPhoneId(Ljava/util/List;I)V
    .locals 3

    .line 1247
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1248
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->registerProfile(Ljava/util/List;I)V

    return-void
.end method

.method public registerRttEventListener(ILcom/sec/ims/IRttEventListener;)Ljava/lang/String;
    .locals 3

    .line 1976
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "registerRttEventListener"

    .line 1977
    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 1978
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->registerRttEventListener(ILcom/sec/ims/IRttEventListener;)V

    .line 1979
    invoke-static {p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getTokenOfListener(Landroid/os/IInterface;)Ljava/lang/String;

    move-result-object p1

    .line 1980
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mListenerTokenMap:Ljava/util/Map;

    new-instance v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;

    invoke-direct {v1, p0, p2, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Landroid/os/IInterface;Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public registerSimMobilityStatusListener(Lcom/sec/ims/ISimMobilityStatusListener;ZI)Ljava/lang/String;
    .locals 3

    .line 652
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 656
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerSimMobilityStatusListener: broadcast = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p3, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v1, -0x1

    if-ne p3, v1, :cond_0

    const-string p2, "Requested registerSimMobilityStatusListener without phoneId. register it by all phoneId."

    .line 658
    invoke-static {v0, p2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    iget-object p2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSimManagers:Ljava/util/List;

    new-instance p3, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Lcom/sec/ims/ISimMobilityStatusListener;)V

    invoke-interface {p2, p3}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 661
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/ims/core/RegistrationManager;->registerSimMobilityStatusListener(Lcom/sec/ims/ISimMobilityStatusListener;ZI)V

    .line 663
    :goto_0
    invoke-static {p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getTokenOfListener(Landroid/os/IInterface;)Ljava/lang/String;

    move-result-object p2

    .line 664
    iget-object p3, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mListenerTokenMap:Ljava/util/Map;

    new-instance v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$CallBack;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Landroid/os/IInterface;Ljava/lang/String;)V

    invoke-interface {p3, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2

    .line 653
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] Permission denied"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerSimMobilityStatusListenerByPhoneId(Lcom/sec/ims/ISimMobilityStatusListener;I)Ljava/lang/String;
    .locals 2

    .line 1121
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1124
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerSimMobilityStatusListenerByPhoneId"

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x1

    .line 1125
    invoke-virtual {p0, p1, v0, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->registerSimMobilityStatusListener(Lcom/sec/ims/ISimMobilityStatusListener;ZI)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1122
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] Permission denied"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerUserUnlockReceiver()V
    .locals 2

    .line 374
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_UNLOCKED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 375
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mUserUnlockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public sendCmcRecordingEvent(IILcom/samsung/android/ims/cmc/SemCmcRecordingInfo;)V
    .locals 0

    .line 2290
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2292
    invoke-interface {p0, p1, p2, p3}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->sendCmcRecordingEvent(IILcom/samsung/android/ims/cmc/SemCmcRecordingInfo;)V

    :cond_0
    return-void
.end method

.method public sendDeregister(II)V
    .locals 3

    .line 1291
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1292
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->sendDeregister(II)V

    return-void
.end method

.method public sendIidToken(Ljava/lang/String;I)V
    .locals 3

    .line 955
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mConfigModule:Lcom/sec/internal/ims/config/ConfigModule;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/config/ConfigModule;->sendIidToken(Ljava/lang/String;I)V

    return-void
.end method

.method public sendMsisdnNumber(Ljava/lang/String;I)V
    .locals 3

    .line 949
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mConfigModule:Lcom/sec/internal/ims/config/ConfigModule;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/config/ConfigModule;->sendMsisdnNumber(Ljava/lang/String;I)V

    return-void
.end method

.method public sendRttMessage(Ljava/lang/String;)V
    .locals 3

    .line 1955
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1956
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendRttMessage, mode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1957
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->sendRttMessage(Ljava/lang/String;)V

    return-void
.end method

.method public sendRttSessionModifyRequest(IZ)V
    .locals 3

    .line 1969
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "sendRttSessionModifyRequest"

    .line 1970
    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1971
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->sendRttSessionModifyRequest(IZ)I

    return-void
.end method

.method public sendRttSessionModifyResponse(IZ)V
    .locals 3

    .line 1962
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1963
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendRttSessionModifyResponse, accept="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1964
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->sendRttSessionModifyResponse(IZ)V

    return-void
.end method

.method public sendTryRegister()V
    .locals 1

    .line 1265
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->sendTryRegisterByPhoneId(I)V

    return-void
.end method

.method public sendTryRegisterByPhoneId(I)V
    .locals 3

    .line 1270
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1271
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mConfigModule:Lcom/sec/internal/ims/config/ConfigModule;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/config/ConfigModule;->setRegisterFromApp(ZI)V

    return-void
.end method

.method public sendTryRegisterCms(I)V
    .locals 3

    .line 1276
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1277
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mConfigModule:Lcom/sec/internal/ims/config/ConfigModule;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/config/ConfigModule;->setRegisterFromApp(ZI)V

    return-void
.end method

.method public sendVerificationCode(Ljava/lang/String;I)V
    .locals 3

    .line 943
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mConfigModule:Lcom/sec/internal/ims/config/ConfigModule;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/config/ConfigModule;->sendVerificationCode(Ljava/lang/String;I)V

    return-void
.end method

.method public setActiveImpu(ILjava/lang/String;Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 910
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setActiveImpu: impu "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " service "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " to phoneId"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p1, p3}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 913
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->setActiveImpu(ILjava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public setActiveMsisdn(ILjava/lang/String;Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 919
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setActiveMsisdn: msisdn "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " service "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 922
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 926
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo p2, "setActiveMsisdn: unset activeMsisdn."

    .line 927
    invoke-static {v1, p1, p2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p2, 0x0

    .line 928
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->setActiveImpu(ILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0

    .line 931
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getNormalizedUri(ILjava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object p2

    if-nez p2, :cond_2

    const-string/jumbo p0, "setActiveMsisdn: not found!"

    .line 934
    invoke-static {v1, p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, -0x2

    return p0

    .line 938
    :cond_2
    invoke-virtual {p2}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->setActiveImpu(ILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setAutomaticMode(IZ)V
    .locals 3

    .line 1931
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1932
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAutomaticMode, mode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 1933
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->setAutomaticMode(IZ)V

    return-void
.end method

.method public setCrossSimPermanentBlocked(IZ)V
    .locals 1

    .line 2359
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2362
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mWfcEpdgManager:Lcom/sec/internal/ims/core/WfcEpdgManager;

    if-eqz p0, :cond_0

    .line 2363
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/WfcEpdgManager;->setCrossSimPermanentBlocked(IZ)V

    :cond_0
    return-void

    .line 2360
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] Permission denied"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setDefaultDmValue(Ljava/lang/String;I)Z
    .locals 4

    .line 2237
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "OMADM_VALUE"

    .line 2238
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2239
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2240
    sget-object v1, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    const-string v2, "93"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    invoke-virtual {v1}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2241
    sget-object v1, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    const-string v3, "94"

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    invoke-virtual {v1}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2242
    sget-object v1, Lcom/sec/ims/configuration/DATA;->DM_FIELD_LIST:Ljava/util/List;

    const-string v3, "31"

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;

    invoke-virtual {v1}, Lcom/sec/ims/configuration/DATA$DM_FIELD_INFO;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2243
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sec/ims/settings/NvConfiguration;->URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2245
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isDefaultDmValue(Ljava/lang/String;I)Z

    move-result p0

    return p0

    .line 2247
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is wrong value on setDefaultDmValue"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p2, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public setEmergencyPdnInfo(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1315
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object p1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string p2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "ePDN setup failure was changed to onPreciseDataConnectionStateChanged"

    .line 1316
    invoke-static {p1, p4, p0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public setIsimLoaded()V
    .locals 3

    .line 898
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->setIsimLoaded()V

    return-void
.end method

.method public setNrInterworkingMode(II)V
    .locals 1

    .line 2380
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2383
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mWfcEpdgManager:Lcom/sec/internal/ims/core/WfcEpdgManager;

    if-eqz p0, :cond_0

    .line 2384
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/WfcEpdgManager;->setNrInterworkingMode(II)V

    :cond_0
    return-void

    .line 2381
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] Permission denied"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setProvisionedStringValue(ILjava/lang/String;)V
    .locals 0

    .line 1483
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string p1, "com.sec.imsservice.PERMISSION"

    sget-object p2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setProvisionedValue(II)V
    .locals 0

    .line 1478
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string p1, "com.sec.imsservice.PERMISSION"

    sget-object p2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setRttMode(II)V
    .locals 3

    .line 1938
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1939
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRttMode, mode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 1940
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->setRttMode(II)V

    return-void
.end method

.method public setSimRefreshed()V
    .locals 3

    .line 904
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->setSimRefreshed()V

    return-void
.end method

.method public setVideocallType(I)Z
    .locals 1

    .line 1858
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1861
    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VILTE_SLOT1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->set(Landroid/content/Context;I)V

    const/4 p0, 0x1

    return p0

    .line 1859
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Permission denied"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public startAutoConfig(ZLandroid/os/Message;)V
    .locals 1

    .line 2162
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mConfigModule:Lcom/sec/internal/ims/config/ConfigModule;

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/config/ConfigModule;->startAutoConfig(ZLandroid/os/Message;I)V

    return-void
.end method

.method public startDmConfig(I)I
    .locals 3

    .line 1908
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1909
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/core/RegistrationManager;->sendDmState(IZ)V

    .line 1910
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mDmConfigModule:Lcom/sec/internal/ims/settings/DmConfigModule;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/settings/DmConfigModule;->startDmConfig(I)I

    move-result p0

    return p0
.end method

.method public startLocalRingBackTone(III)I
    .locals 3

    .line 1814
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1815
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "VolteServiceModule is not ready"

    .line 1818
    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 1822
    :cond_0
    invoke-interface {p0, p1, p2, p3}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->startLocalRingBackTone(III)I

    move-result p0

    return p0
.end method

.method public stopLocalRingBackTone()I
    .locals 3

    .line 1827
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1828
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "VolteServiceModule is not ready"

    .line 1831
    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 1835
    :cond_0
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->stopLocalRingBackTone()I

    move-result p0

    return p0
.end method

.method public suspendRegister(ZI)V
    .locals 3

    .line 1297
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1298
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->suspendRegister(ZI)V

    return-void
.end method

.method public transferCall(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1808
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1809
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->transferCall(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public triggerAutoConfigurationForApp(I)V
    .locals 3

    .line 2001
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2002
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mAECModule:Lcom/sec/internal/interfaces/ims/aec/IAECModule;

    if-eqz p0, :cond_0

    .line 2003
    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/aec/IAECModule;->triggerAutoConfigForApp(I)V

    :cond_0
    return-void
.end method

.method public unRegisterEpdgListener(Ljava/lang/String;)V
    .locals 3

    .line 1333
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1334
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1337
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->removeCallback(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/sec/ims/IEpdgListener;

    if-eqz p1, :cond_1

    .line 1338
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mWfcEpdgManager:Lcom/sec/internal/ims/core/WfcEpdgManager;

    if-eqz p0, :cond_1

    .line 1339
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/WfcEpdgManager;->unRegisterEpdgHandoverListener(Lcom/sec/ims/IEpdgListener;)V

    :cond_1
    return-void
.end method

.method public unregisterAutoConfigurationListener(Ljava/lang/String;I)V
    .locals 3

    .line 1108
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1111
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "unregisterAutoConfigurationListener"

    .line 1112
    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 1113
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->removeCallback(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/sec/ims/IAutoConfigurationListener;

    if-eqz p1, :cond_1

    .line 1115
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mConfigModule:Lcom/sec/internal/ims/config/ConfigModule;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/config/ConfigModule;->unregisterAutoConfigurationListener(Lcom/sec/ims/IAutoConfigurationListener;I)V

    :cond_1
    return-void
.end method

.method public unregisterCallback(Lcom/sec/ims/ImsEventListener;)V
    .locals 0

    .line 0
    return-void
.end method

.method public unregisterCmcRegistrationListenerForSlot(Ljava/lang/String;I)V
    .locals 2

    .line 1404
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1407
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1410
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterCmcRegistrationListenerForSlot"

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 1411
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->removeCallback(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/sec/ims/IImsRegistrationListener;

    if-eqz p1, :cond_1

    .line 1413
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManager;->unregisterCmcRegiListener(Lcom/sec/ims/IImsRegistrationListener;I)V

    :cond_1
    return-void

    .line 1405
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] Permission denied"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unregisterCmsRegistrationListenerByPhoneId(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public unregisterDialogEventListener(ILcom/sec/ims/IDialogEventListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1428
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "unregisterDialogEventListener"

    .line 1429
    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 1430
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->unregisterDialogEventListener(ILcom/sec/ims/IDialogEventListener;)V

    return-void
.end method

.method public unregisterDialogEventListenerByToken(ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1445
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1446
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "unregisterDialogEventListener"

    .line 1449
    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 1450
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->removeCallback(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    check-cast p2, Lcom/sec/ims/IDialogEventListener;

    if-eqz p2, :cond_1

    .line 1452
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->unregisterDialogEventListener(ILcom/sec/ims/IDialogEventListener;)V

    :cond_1
    return-void
.end method

.method public unregisterDmValueListener(Lcom/sec/ims/IImsDmConfigListener;)V
    .locals 3

    .line 1884
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "unregisterDmValueListener:"

    .line 1885
    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1886
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->unregisterDmListener(Lcom/sec/ims/IImsDmConfigListener;)V

    return-void
.end method

.method public unregisterImSessionListener(Ljava/lang/String;)V
    .locals 3

    .line 1008
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "unregisterImSessionListener:"

    .line 1012
    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->removeCallback(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/sec/ims/im/IImSessionListener;

    if-eqz p1, :cond_1

    .line 1015
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1017
    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->unregisterImSessionListener(Lcom/sec/ims/im/IImSessionListener;)V

    :cond_1
    return-void
.end method

.method public unregisterImSessionListenerByPhoneId(Ljava/lang/String;I)V
    .locals 3

    .line 1024
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "unregisterImSessionListenerByPhoneId"

    .line 1028
    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 1029
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->removeCallback(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/sec/ims/im/IImSessionListener;

    if-eqz p1, :cond_1

    .line 1031
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1033
    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->unregisterImSessionListenerByPhoneId(Lcom/sec/ims/im/IImSessionListener;I)V

    :cond_1
    return-void
.end method

.method public unregisterImsOngoingFtListener(Ljava/lang/String;)V
    .locals 3

    .line 1066
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1067
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "unregisterImsOngoingFtListener"

    .line 1070
    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->removeCallback(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/sec/ims/ft/IImsOngoingFtEventListener;

    if-eqz p1, :cond_1

    .line 1073
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1075
    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->unregisterImsOngoingListener(Lcom/sec/ims/ft/IImsOngoingFtEventListener;)V

    :cond_1
    return-void
.end method

.method public unregisterImsOngoingFtListenerByPhoneId(Ljava/lang/String;I)V
    .locals 3

    .line 1082
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "unregisterImsOngoingFtListenerByPhoneId"

    .line 1086
    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 1087
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    move-result-object v0

    .line 1088
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->removeCallback(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Lcom/sec/ims/ft/IImsOngoingFtEventListener;

    if-eqz p0, :cond_1

    if-eqz v0, :cond_1

    .line 1091
    invoke-interface {v0, p0, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->unregisterImsOngoingListenerByPhoneId(Lcom/sec/ims/ft/IImsOngoingFtEventListener;I)V

    :cond_1
    return-void
.end method

.method public unregisterImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1354
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1357
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Requested unregisterListener without phoneId. unregister it by all phoneId."

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1358
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSimManagers:Ljava/util/List;

    new-instance v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda3;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Lcom/sec/ims/IImsRegistrationListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void

    .line 1355
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Permission denied"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unregisterImsRegistrationListenerForSlot(Ljava/lang/String;I)V
    .locals 2

    .line 1372
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1375
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1378
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterImsRegistrationListenerForSlot"

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 1379
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->removeCallback(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/sec/ims/IImsRegistrationListener;

    if-eqz p1, :cond_2

    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    const-string p2, "Requested unRegisterListener without phoneId. register it by all phoneId."

    .line 1382
    invoke-static {v0, p2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1383
    iget-object p2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSimManagers:Ljava/util/List;

    new-instance v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda26;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda26;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Lcom/sec/ims/IImsRegistrationListener;)V

    invoke-interface {p2, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 1385
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManager;->unregisterListener(Lcom/sec/ims/IImsRegistrationListener;I)V

    :cond_2
    :goto_0
    return-void

    .line 1373
    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] Permission denied"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unregisterRttEventListener(ILjava/lang/String;)V
    .locals 3

    .line 1986
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "com.sec.imsservice.PERMISSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1987
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "unregisterRttEventListener"

    .line 1990
    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 1991
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->removeCallback(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    check-cast p2, Lcom/sec/ims/IRttEventListener;

    if-eqz p2, :cond_1

    .line 1993
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->unregisterRttEventListener(ILcom/sec/ims/IRttEventListener;)V

    :cond_1
    return-void
.end method

.method public unregisterSimMobilityStatusListenerByPhoneId(Ljava/lang/String;I)V
    .locals 2

    .line 1130
    invoke-direct {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1133
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1136
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterSimMobilityStatusListenerByPhoneId"

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 1137
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->removeCallback(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/sec/ims/ISimMobilityStatusListener;

    if-eqz p1, :cond_2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 1140
    iget-object p2, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mSimManagers:Ljava/util/List;

    new-instance v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub$$ExternalSyntheticLambda8;-><init>(Lcom/sec/internal/ims/imsservice/ImsServiceStub;Lcom/sec/ims/ISimMobilityStatusListener;)V

    invoke-interface {p2, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 1142
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManager;->unregisterSimMobilityStatusListener(Lcom/sec/ims/ISimMobilityStatusListener;I)V

    :cond_2
    :goto_0
    return-void

    .line 1131
    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "] Permission denied"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public updateConfigValues(Landroid/content/ContentValues;II)Z
    .locals 3

    .line 1902
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1903
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mDmConfigModule:Lcom/sec/internal/ims/settings/DmConfigModule;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/settings/DmConfigModule;->updateConfigValues(Landroid/content/ContentValues;II)Z

    move-result p0

    return p0
.end method

.method public updateRegistration(Lcom/sec/ims/settings/ImsProfile;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1303
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1304
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->mRegistrationManager:Lcom/sec/internal/ims/core/RegistrationManagerBase;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerBase;->updateRegistration(Lcom/sec/ims/settings/ImsProfile;I)I

    move-result p0

    return p0
.end method
