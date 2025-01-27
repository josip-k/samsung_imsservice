.class public Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;
.super Lcom/sec/internal/ims/entitlement/config/EntitlementConfigModuleBase;
.source "NSDSConfigModule.java"


# static fields
.field private static final ACTION_RECEIVED_SMS_NOTIFICATION:Ljava/lang/String; = "android.intent.action.DATA_SMS_RECEIVED"

.field private static final DATA_AUTHORITY:Ljava/lang/String; = "localhost"

.field private static final DATA_SCHEME:Ljava/lang/String; = "sms"

.field private static final DEST_PORT:Ljava/lang/String; = "16161"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final NSDS_SMS_PUSH_MESSAGE:Ljava/lang/String; = "carrierconfigupdate"


# instance fields
.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mEntitlementConfigImpl:Lcom/sec/internal/interfaces/ims/entitlement/config/IEntitlementConfig;

.field final mEsimRequestObserver:Landroid/database/ContentObserver;

.field private mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field private mIsEsimRequestedObserverRegistered:Z

.field protected mNSDSPushSmsReceiver:Landroid/content/BroadcastReceiver;

.field private mNeedUpdate:Z

.field private mPhoneId:I

.field private mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

.field private mTimeoutEsimReady:Z

.field protected mTimeoutEsimReadyReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEventLog(Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;)Lcom/sec/internal/helper/SimpleEventLog;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mPhoneId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmTimeoutEsimReady(Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mTimeoutEsimReady:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 45
    const-class v0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V
    .locals 1

    .line 148
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigModuleBase;-><init>(Landroid/os/Looper;)V

    const/4 p1, 0x0

    .line 57
    iput-boolean p1, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mTimeoutEsimReady:Z

    .line 58
    iput-boolean p1, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mIsEsimRequestedObserverRegistered:Z

    .line 59
    iput-boolean p1, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mNeedUpdate:Z

    .line 62
    new-instance p1, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule$1;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, v0}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule$1;-><init>(Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mContentObserver:Landroid/database/ContentObserver;

    .line 81
    new-instance p1, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule$2;

    invoke-direct {p1, p0, p0}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule$2;-><init>(Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mEsimRequestObserver:Landroid/database/ContentObserver;

    .line 91
    new-instance p1, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule$3;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule$3;-><init>(Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;)V

    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mTimeoutEsimReadyReceiver:Landroid/content/BroadcastReceiver;

    .line 106
    new-instance p1, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule$4;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule$4;-><init>(Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;)V

    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mNSDSPushSmsReceiver:Landroid/content/BroadcastReceiver;

    .line 149
    iput-object p2, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mContext:Landroid/content/Context;

    .line 150
    iput-object p3, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 151
    invoke-interface {p3}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result p1

    iput p1, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mPhoneId:I

    .line 152
    new-instance p1, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSDeviceConfigImpl;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    iget-object p3, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-direct {p1, p2, p3, v0}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSDeviceConfigImpl;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/ISimManager;)V

    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mEntitlementConfigImpl:Lcom/sec/internal/interfaces/ims/entitlement/config/IEntitlementConfig;

    .line 153
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->registerContentObserver()V

    .line 154
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->registerTimeoutEsimReadyReceiver()V

    .line 155
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->registerPushSmsReceiver()V

    .line 156
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigModuleBase;->init()V

    .line 157
    new-instance p1, Lcom/sec/internal/helper/SimpleEventLog;

    iget-object p2, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mContext:Landroid/content/Context;

    sget-object p3, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->LOG_TAG:Ljava/lang/String;

    const/16 v0, 0x64

    invoke-direct {p1, p2, p3, v0}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    return-void
.end method

.method private getMnoNsdsStrategy()Lcom/sec/internal/interfaces/ims/entitlement/config/IMnoNsdsConfigStrategy;
    .locals 0

    .line 311
    iget p0, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mPhoneId:I

    invoke-static {p0}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/strategy/MnoNsdsConfigStrategyCreator;->getMnoStrategy(I)Lcom/sec/internal/interfaces/ims/entitlement/config/IMnoNsdsConfigStrategy;

    move-result-object p0

    return-object p0
.end method

.method private isDuringCall()Z
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object v0

    .line 227
    iget v1, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getCallState(I)I

    move-result v1

    if-nez v1, :cond_1

    iget p0, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mPhoneId:I

    .line 228
    invoke-static {p0}, Lcom/sec/internal/helper/SimUtil;->getOppositeSimSlot(I)I

    move-result p0

    invoke-interface {v0, p0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getCallState(I)I

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

.method private otherSimInProgress(I)Z
    .locals 4

    .line 315
    sget-object v0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Check otherSimInProgress"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getAllSimManagers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 317
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 319
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/sec/internal/ims/entitlement/storagehelper/DeviceIdHelper;->getDeviceId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 320
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mContext:Landroid/content/Context;

    const-string v3, "device_config_state"

    invoke-static {v2, v1, v3}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "deviceconfig_in_progress"

    .line 323
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 324
    sget-object p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "otherSimInProgress... pending device config"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private registerContentObserver()V
    .locals 3

    .line 161
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/ims/extensions/Extensions$Settings$Global;->DEVICE_PROVISIONED:Ljava/lang/String;

    .line 162
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mContentObserver:Landroid/database/ContentObserver;

    .line 161
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private registerPushSmsReceiver()V
    .locals 3

    .line 173
    sget-object v0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerPushSmsReceiver"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.DATA_SMS_RECEIVED"

    .line 175
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "sms"

    .line 176
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v1, "localhost"

    const-string v2, "16161"

    .line 177
    invoke-virtual {v0, v1, v2}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mNSDSPushSmsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerTimeoutEsimReadyReceiver()V
    .locals 2

    .line 166
    sget-object v0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerTimeoutEsimReadyReceiver"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sec.vsim.ericssonnsds.TIMEOUT_ESIM_READY "

    .line 168
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mTimeoutEsimReadyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private unregisterEsimRequestedObserver()V
    .locals 3

    .line 196
    iget-boolean v0, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mIsEsimRequestedObserverRegistered:Z

    if-eqz v0, :cond_0

    .line 197
    sget-object v0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mPhoneId:I

    const-string/jumbo v2, "unregisterEsimRequestedObserver"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mEsimRequestObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 199
    iput-boolean v0, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mIsEsimRequestedObserverRegistered:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public dump()V
    .locals 3

    .line 333
    sget-object v0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dump of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->increaseIndent(Ljava/lang/String;)V

    .line 335
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {p0}, Lcom/sec/internal/helper/SimpleEventLog;->dump()V

    .line 336
    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->decreaseIndent(Ljava/lang/String;)V

    return-void
.end method

.method public final esimRequested()Z
    .locals 4

    .line 219
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mContext:Landroid/content/Context;

    .line 220
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sim_manager_esim_requested"

    const/4 v2, 0x0

    .line 219
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget p0, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "esimRequested: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    return v2
.end method

.method public forceConfigUpdate()V
    .locals 2

    .line 289
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mEntitlementConfigImpl:Lcom/sec/internal/interfaces/ims/entitlement/config/IEntitlementConfig;

    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x12

    invoke-interface {v0, p0, v1}, Lcom/sec/internal/interfaces/ims/entitlement/config/IEntitlementConfig;->getDeviceConfig(Ljava/lang/String;I)V

    return-void
.end method

.method public onDeviceReady()V
    .locals 8

    .line 232
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/config/EntitlementConfigModuleBase;->start()V

    .line 233
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->getMnoNsdsStrategy()Lcom/sec/internal/interfaces/ims/entitlement/config/IMnoNsdsConfigStrategy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 234
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/entitlement/config/IMnoNsdsConfigStrategy;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
    sget-object p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Waiting for OOBE setup complete..."

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 239
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->esimRequested()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mTimeoutEsimReady:Z

    if-nez v0, :cond_1

    .line 240
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget v1, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mPhoneId:I

    const-string v2, "eSIM profile download is in progress"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",eSIM requested"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x14010003

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 242
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->registerEsimRequestedObserver()V

    .line 243
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 244
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mPhoneId:I

    const-string v4, "com.sec.vsim.ericssonnsds.TIMEOUT_ESIM_READY "

    const-wide/32 v6, 0xea60

    invoke-static/range {v2 .. v7}, Lcom/sec/internal/ims/entitlement/util/IntentScheduler;->scheduleTimer(Landroid/content/Context;ILjava/lang/String;Landroid/os/Bundle;J)V

    return-void

    .line 248
    :cond_1
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->unregisterEsimRequestedObserver()V

    .line 249
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mPhoneId:I

    const-string v2, "com.sec.vsim.ericssonnsds.TIMEOUT_ESIM_READY "

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/entitlement/util/IntentScheduler;->stopTimer(Landroid/content/Context;ILjava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mPhoneId:I

    invoke-static {v0, v1}, Lcom/sec/internal/ims/entitlement/storagehelper/DeviceIdHelper;->getDeviceId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 252
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->isSimSwapPending(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 254
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mContext:Landroid/content/Context;

    const-string v3, "device_config_state"

    invoke-static {v2, v0, v3}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 257
    sget-object v2, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v4, "onDeviceReady... reset deviceconfig_state"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v3}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->remove(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    :cond_2
    iget v2, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mPhoneId:I

    invoke-direct {p0, v2}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->otherSimInProgress(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 262
    sget-object v0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Waiting for other SIM operation until 5sec"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v0, "com.sec.vsim.ericssonnsds.SIM_SLOT_IDX"

    .line 264
    iget v1, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mPhoneId:I

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 265
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mPhoneId:I

    const-string v4, "com.sec.vsim.ericssonnsds.RETRY_DEVICE_CONFIG"

    const-wide/16 v6, 0x1388

    invoke-static/range {v2 .. v7}, Lcom/sec/internal/ims/entitlement/util/IntentScheduler;->scheduleTimer(Landroid/content/Context;ILjava/lang/String;Landroid/os/Bundle;J)V

    return-void

    .line 269
    :cond_3
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mPhoneId:I

    const-string v5, "com.sec.vsim.ericssonnsds.RETRY_DEVICE_CONFIG"

    invoke-static {v2, v4, v5}, Lcom/sec/internal/ims/entitlement/util/IntentScheduler;->stopTimer(Landroid/content/Context;ILjava/lang/String;)V

    .line 272
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mContext:Landroid/content/Context;

    const-string v4, "deviceconfig_in_progress"

    invoke-static {v2, v0, v3, v4}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->save(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->isDuringCall()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v0, 0x1

    .line 277
    iput-boolean v0, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mNeedUpdate:Z

    .line 278
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget p0, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mPhoneId:I

    const-string v1, "during a call. retry after call ended"

    invoke-virtual {v0, p0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    return-void

    :cond_4
    if-eqz v1, :cond_5

    .line 283
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->clearSimSwapPending(Landroid/content/Context;Ljava/lang/String;)V

    .line 285
    :cond_5
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mEntitlementConfigImpl:Lcom/sec/internal/interfaces/ims/entitlement/config/IEntitlementConfig;

    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/sec/internal/interfaces/ims/entitlement/config/IEntitlementConfig;->getDeviceConfig(Ljava/lang/String;I)V

    return-void
.end method

.method public onSimReady(Z)V
    .locals 3

    .line 205
    sget-object v0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSimReady: isSwapped "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 206
    iput-boolean v0, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mTimeoutEsimReady:Z

    if-eqz p1, :cond_0

    .line 208
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mPhoneId:I

    const-string/jumbo v1, "prev_imsi"

    invoke-static {p1, v0, v1}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->getPrefForSlot(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 210
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/entitlement/storagehelper/EntitlementConfigDBHelper;->deleteConfig(Landroid/content/Context;Ljava/lang/String;)V

    .line 212
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mPhoneId:I

    invoke-static {p1, p0}, Lcom/sec/internal/ims/entitlement/storagehelper/DeviceIdHelper;->getDeviceId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x2

    invoke-static {p1, p0, v0}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->saveActionTrigger(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public registerEsimRequestedObserver()V
    .locals 4

    .line 187
    iget-boolean v0, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mIsEsimRequestedObserverRegistered:Z

    if-nez v0, :cond_0

    .line 188
    sget-object v0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mPhoneId:I

    const-string/jumbo v2, "registerEsimRequestedObserver"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sim_manager_esim_requested"

    .line 190
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mEsimRequestObserver:Landroid/database/ContentObserver;

    .line 189
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const/4 v0, 0x1

    .line 191
    iput-boolean v0, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mIsEsimRequestedObserverRegistered:Z

    :cond_0
    return-void
.end method

.method public retriveAkaToken()V
    .locals 2

    .line 293
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mPhoneId:I

    invoke-static {v0, v1}, Lcom/sec/internal/ims/entitlement/storagehelper/DeviceIdHelper;->getDeviceId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 294
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->isSimSwapPending(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 297
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sec/internal/ims/entitlement/storagehelper/NSDSSharedPrefHelper;->clearSimSwapPending(Landroid/content/Context;Ljava/lang/String;)V

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mEntitlementConfigImpl:Lcom/sec/internal/interfaces/ims/entitlement/config/IEntitlementConfig;

    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x13

    invoke-interface {v0, p0, v1}, Lcom/sec/internal/interfaces/ims/entitlement/config/IEntitlementConfig;->getDeviceConfig(Ljava/lang/String;I)V

    return-void
.end method

.method public unregisterReceiver()V
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mTimeoutEsimReadyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 183
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mNSDSPushSmsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public updateTelephonyCallStatus(II)V
    .locals 1

    .line 303
    iget-boolean p1, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mNeedUpdate:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->isDuringCall()Z

    move-result p1

    if-nez p1, :cond_0

    .line 304
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget p2, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mPhoneId:I

    const-string v0, "Call ended. Resume configuration"

    invoke-virtual {p1, p2, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    const/4 p1, 0x0

    .line 305
    iput-boolean p1, p0, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->mNeedUpdate:Z

    .line 306
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/config/app/nsdsconfig/NSDSConfigModule;->onDeviceReady()V

    :cond_0
    return-void
.end method
