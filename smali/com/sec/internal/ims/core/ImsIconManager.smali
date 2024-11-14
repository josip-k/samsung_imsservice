.class public Lcom/sec/internal/ims/core/ImsIconManager;
.super Ljava/lang/Object;
.source "ImsIconManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;,
        Lcom/sec/internal/ims/core/ImsIconManager$TelephonyCallbackImpl;,
        Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;,
        Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;,
        Lcom/sec/internal/ims/core/ImsIconManager$Icon;
    }
.end annotation


# static fields
.field private static final CMC_SD_ICON:Ljava/lang/String; = "stat_sys_phone_call_skt"

.field private static final CROSS_SIM_ICON_NAME:[Ljava/lang/String;

.field public static final DEFAULT_VOLTE_REGI_ICON_ID:Ljava/lang/String; = "stat_notify_volte_service_avaliable"

.field private static final DUAL_IMS_NO_CTC_VOLTE_ICON_NAME:Ljava/lang/String; = "stat_sys_phone_no_volte_chn_hd"

.field private static final INTENT_ACTION_CONFIGURATION_CHANGED:Ljava/lang/String; = "android.intent.action.CONFIGURATION_CHANGED"

.field private static final INTENT_ACTION_SILENT_REDIAL:Ljava/lang/String; = "com.samsung.intent.action.PHONE_NEED_SILENT_REDIAL"

.field private static final LOG_TAG:Ljava/lang/String; = "ImsIconManager"

.field private static final NOTIFICATION_BUILDER_ID:I = -0x6687

.field private static final NO_CTC_VOLTE_ICON_NAME:Ljava/lang/String; = "stat_sys_phone_no_volte_chn_ctc"

.field private static final PRIMARY_CHANNEL:Ljava/lang/String; = "imsicon_channel"

.field private static final RCS_ICON_DESCRIPTION:Ljava/lang/String; = "RCS"

.field protected static final RCS_ICON_NAME:Ljava/lang/String; = "stat_notify_rcs_service_avaliable"

.field protected static final RCS_ICON_NAME_CHN:Ljava/lang/String; = "stat_notify_rcs"

.field protected static final RCS_ICON_NAME_DUAL:[Ljava/lang/String;

.field protected static final RCS_ICON_SLOT:Ljava/lang/String; = "com.samsung.rcs"

.field protected static final VOLTE_ICON_SLOT_HEAD:Ljava/lang/String; = "ims_volte"

.field private static final VoLTE_ICON_WFC_WARNING_NAME:Ljava/lang/String; = "stat_notify_wfc_warning"

.field static mShowVoWIFILabel:[Z

.field static mVowifiOperatorLabel:[Ljava/lang/String;

.field static mVowifiOperatorLabelOngoing:[I

.field static mWifiSubTextOnLockScreen:[Ljava/lang/String;


# instance fields
.field protected VOLTE_ICON_SLOT:Ljava/lang/String;

.field mConnectivityManager:Landroid/net/ConnectivityManager;

.field mContext:Landroid/content/Context;

.field protected mCurrentInRoaming:Z

.field protected mCurrentNetworkType:I

.field mCurrentPhoneState:I

.field protected mCurrentServiceState:I

.field protected mCurrentVoiceRatType:I

.field mDisplayDensity:I

.field mForceRefreshIcon:Z

.field final mIconBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field protected mIsDebuggable:Z

.field mIsDuringEmergencyCall:Z

.field mIsFirstVoLTEIconShown:Z

.field mIsSilentRedialInProgress:Z

.field mIsVonrEnabled:Z

.field mLastRcsVisiblity:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

.field mLastVoLTEResourceId:I

.field mLastVoLTEVisiblity:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

.field mMno:Lcom/sec/internal/constants/Mno;

.field mNotificationManager:Landroid/app/NotificationManager;

.field mOmcCode:Ljava/lang/String;

.field mPackageName:Ljava/lang/String;

.field mPdnController:Lcom/sec/internal/ims/core/PdnController;

.field mPhoneId:I

.field mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

.field mTelephonyCallback:Landroid/telephony/TelephonyCallback;

.field mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

.field mUseDualVolteIcon:Z

.field final mVolteNotiObserver:Landroid/database/ContentObserver;

.field private final simSwitchChangeObserver:Landroid/database/ContentObserver;


# direct methods
.method public static synthetic $r8$lambda$LfMQbzW3_tS2egkBcsw8UB2Rncw(Lcom/sec/internal/ims/core/ImsIconManager;Lcom/sec/ims/ImsRegistration;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/ImsIconManager;->lambda$isCounterSlotRcsTransferable$1(Lcom/sec/ims/ImsRegistration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$xQoNi6MgwL1v7UCDBxVQK1gMccE(Landroid/net/NetworkCapabilities;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->lambda$isSuspend$0(Landroid/net/NetworkCapabilities;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    const-string/jumbo v0, "stat_notify_rcs_service_avaliable_2"

    const-string/jumbo v1, "stat_notify_rcs_service_avaliable_dual"

    const-string/jumbo v2, "stat_notify_rcs_service_avaliable_1"

    .line 75
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->RCS_ICON_NAME_DUAL:[Ljava/lang/String;

    const-string/jumbo v0, "stat_sys_cross_sim_calling1_spr"

    const-string/jumbo v1, "stat_sys_cross_sim_calling2_spr"

    .line 82
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->CROSS_SIM_ICON_NAME:[Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [Z

    .line 131
    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->mShowVoWIFILabel:[Z

    const/4 v0, 0x0

    .line 132
    filled-new-array {v0, v0}, [I

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->mVowifiOperatorLabelOngoing:[I

    const-string v0, ""

    .line 133
    filled-new-array {v0, v0}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/internal/ims/core/ImsIconManager;->mWifiSubTextOnLockScreen:[Ljava/lang/String;

    .line 134
    filled-new-array {v0, v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->mVowifiOperatorLabel:[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/constants/Mno;I)V
    .locals 5

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mIsDebuggable:Z

    const-string v0, ""

    .line 71
    iput-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->VOLTE_ICON_SLOT:Ljava/lang/String;

    const/4 v0, -0x1

    .line 126
    iput v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mLastVoLTEResourceId:I

    .line 127
    sget-object v1, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;->UNKNOWN:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    iput-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mLastVoLTEVisiblity:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    .line 128
    sget-object v1, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;->HIDE:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    iput-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mLastRcsVisiblity:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    const/4 v1, 0x0

    .line 129
    iput v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    .line 136
    sget-object v2, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    iput-object v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    .line 140
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mUseDualVolteIcon:Z

    .line 141
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mIsFirstVoLTEIconShown:Z

    .line 143
    iput v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mDisplayDensity:I

    .line 144
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mForceRefreshIcon:Z

    .line 272
    new-instance v0, Lcom/sec/internal/ims/core/ImsIconManager$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/core/ImsIconManager$1;-><init>(Lcom/sec/internal/ims/core/ImsIconManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->simSwitchChangeObserver:Landroid/database/ContentObserver;

    .line 1298
    new-instance v1, Lcom/sec/internal/ims/core/ImsIconManager$2;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/core/ImsIconManager$2;-><init>(Lcom/sec/internal/ims/core/ImsIconManager;)V

    iput-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mIconBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1336
    new-instance v2, Lcom/sec/internal/ims/core/ImsIconManager$3;

    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v2, p0, v3}, Lcom/sec/internal/ims/core/ImsIconManager$3;-><init>(Lcom/sec/internal/ims/core/ImsIconManager;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mVolteNotiObserver:Landroid/database/ContentObserver;

    .line 233
    iput-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    .line 234
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPackageName:Ljava/lang/String;

    .line 236
    iget-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 238
    iput-object p2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    .line 239
    iput-object p3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    .line 241
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mOmcCode:Ljava/lang/String;

    .line 242
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->showDualVolteIcon()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mUseDualVolteIcon:Z

    .line 244
    iget-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    const-string p2, "connectivity"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 247
    iput p5, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    .line 248
    new-instance p1, Lcom/sec/internal/ims/core/ImsIconManager$TelephonyCallbackImpl;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p5, p2}, Lcom/sec/internal/ims/core/ImsIconManager$TelephonyCallbackImpl;-><init>(Lcom/sec/internal/ims/core/ImsIconManager;ILcom/sec/internal/ims/core/ImsIconManager$TelephonyCallbackImpl-IA;)V

    iput-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mTelephonyCallback:Landroid/telephony/TelephonyCallback;

    const-string/jumbo p1, "volte_noti_settings"

    .line 251
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 252
    iget-object p2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 254
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string p2, "com.samsung.intent.action.PHONE_NEED_SILENT_REDIAL"

    .line 255
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "android.intent.action.CONFIGURATION_CHANGED"

    .line 256
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 257
    iget-object p2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 259
    iget-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p2, "phone1_on"

    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2, p3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 261
    iget-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p2, "phone2_on"

    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2, p3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 263
    iget-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "esim_phone_on_1"

    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2, p3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 266
    iget-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    const-string p2, "notification"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mNotificationManager:Landroid/app/NotificationManager;

    .line 269
    invoke-virtual {p0, p4, p5}, Lcom/sec/internal/ims/core/ImsIconManager;->initConfiguration(Lcom/sec/internal/constants/Mno;I)V

    return-void
.end method

.method private isSuspend(Landroid/net/Network;)Z
    .locals 0

    .line 664
    iget-object p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p0, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/core/ImsIconManager$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/sec/internal/ims/core/ImsIconManager$$ExternalSyntheticLambda0;-><init>()V

    .line 665
    invoke-virtual {p0, p1}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object p0

    .line 666
    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$isCounterSlotRcsTransferable$1(Lcom/sec/ims/ImsRegistration;)Z
    .locals 1

    .line 900
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->hasRcsService()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getNetwork()Landroid/net/Network;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/ImsIconManager;->isSuspend(Landroid/net/Network;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$isSuspend$0(Landroid/net/NetworkCapabilities;)Z
    .locals 1

    const/16 v0, 0x15

    .line 665
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method checkKORVolteIcon()Z
    .locals 8

    .line 1093
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfoByPhoneId(I)[Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1095
    array-length v3, v0

    move v4, v2

    move v5, v4

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v6, v0, v4

    const-string v7, "mmtel"

    .line 1096
    invoke-virtual {v6, v7}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1097
    invoke-virtual {v6}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v6

    if-nez v6, :cond_0

    iget v6, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentNetworkType:I

    .line 1098
    invoke-static {v6}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move v5, v2

    .line 1103
    :cond_2
    iget v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1105
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string v1, "checkKORVolteIcon : SimManager is null"

    invoke-static {v0, p0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v2

    .line 1108
    :cond_3
    iget-object v3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v0

    invoke-interface {v3, v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSimState(I)I

    move-result v0

    if-eqz v0, :cond_8

    if-ne v0, v1, :cond_4

    goto :goto_1

    .line 1115
    :cond_4
    iget v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentNetworkType:I

    if-nez v0, :cond_5

    .line 1116
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string v1, "checkKORVolteIcon : network is unknown."

    invoke-static {v0, p0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v2

    .line 1119
    :cond_5
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    iget v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string/jumbo v3, "ril.currentplmn"

    const-string v4, ""

    invoke-interface {v0, v1, v3, v4}, Lcom/sec/internal/helper/os/ITelephonyManager;->semGetTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "oversea"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1120
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_6

    .line 1121
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string v1, "checkKORVolteIcon : on roaming. Hide VoLTE icon"

    invoke-static {v0, p0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v2

    .line 1124
    :cond_6
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkKORVolteIcon : on roaming. Volte featuremask = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v5

    .line 1129
    :cond_7
    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/core/ImsIconManager;->checkKORVolteIconOperatorSpecifics(Z)Z

    move-result p0

    return p0

    .line 1111
    :cond_8
    :goto_1
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string v1, "checkKORVolteIcon : SIM state is unknown or absent"

    invoke-static {v0, p0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v2
.end method

.method checkKORVolteIconOperatorSpecifics(Z)Z
    .locals 8

    .line 1133
    iget v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 1135
    sget-object p1, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string v0, "checkKORVolteIconOperatorSpecifics : subId is invalid, return false"

    invoke-static {p1, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v1

    .line 1138
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v2, v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getServiceStateForSubscriber(I)I

    move-result v0

    .line 1139
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKTTOmcCode()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v4, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    if-ne v2, v4, :cond_5

    .line 1140
    iget-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const/4 v4, -0x1

    invoke-static {p1, v4, v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getVoiceCallType(Landroid/content/Context;II)I

    move-result p1

    if-ne p1, v4, :cond_2

    .line 1144
    invoke-static {}, Lcom/sec/ims/extensions/Extensions$UserHandle;->myUserId()I

    move-result p1

    if-eqz p1, :cond_1

    .line 1145
    sget-object p1, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string v4, "checkKORVolteIconOperatorSpecifics : Settings not found, return VOLTE_PREFERRED"

    invoke-static {p1, v2, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    move v4, v1

    goto :goto_0

    .line 1149
    :cond_1
    sget-object p1, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string v5, "checkKORVolteIconOperatorSpecifics : Settings not found"

    invoke-static {p1, v2, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    move v4, p1

    .line 1153
    :goto_0
    sget-object p1, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkKORVolteIconOperatorSpecifics : KT device and KT sim, ServiceState = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", voicecall_type = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, p0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-nez v0, :cond_4

    if-eqz v4, :cond_3

    const/4 p0, 0x2

    if-ne v4, p0, :cond_4

    :cond_3
    move v1, v3

    :cond_4
    return v1

    .line 1156
    :cond_5
    iget-object v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v4, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    if-ne v2, v4, :cond_6

    .line 1157
    sget-object p1, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string v0, "checkKORVolteIconOperatorSpecifics : SIM card is LGT, return false"

    invoke-static {p1, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v1

    .line 1159
    :cond_6
    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1162
    iget-object v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v4, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    if-ne v2, v4, :cond_7

    .line 1163
    iget-boolean v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mIsSilentRedialInProgress:Z

    .line 1166
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isSKTOmcCode()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1169
    :try_start_0
    iget-object v4, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "volte_noti_settings"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1172
    :catch_0
    sget-object v4, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v5, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string v6, "checkKORVolteIconOperatorSpecifics : volte_noti_settings is not exists"

    invoke-static {v4, v5, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    move v4, v1

    goto :goto_1

    :cond_7
    move v2, v1

    :cond_8
    move v4, v3

    .line 1180
    :goto_1
    sget-object v5, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkKORVolteIconOperatorSpecifics : volte_noti_settings = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", isVolteFeatureEnabled = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", isHide = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", ServiceState = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, p0, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-ne v4, v3, :cond_9

    if-eqz p1, :cond_9

    if-nez v2, :cond_9

    if-nez v0, :cond_9

    move v1, v3

    :cond_9
    return v1
.end method

.method checkSameVoWIFILabel()Z
    .locals 4

    .line 870
    iget v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getOppositeSimSlot(I)I

    move-result v0

    .line 872
    sget-object v1, Lcom/sec/internal/ims/core/ImsIconManager;->mVowifiOperatorLabelOngoing:[I

    iget v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    aget v3, v1, v2

    aget v1, v1, v0

    if-ne v3, v1, :cond_0

    sget-object v1, Lcom/sec/internal/ims/core/ImsIconManager;->mWifiSubTextOnLockScreen:[Ljava/lang/String;

    aget-object v2, v1, v2

    aget-object v1, v1, v0

    .line 873
    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/internal/ims/core/ImsIconManager;->mVowifiOperatorLabel:[Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    aget-object p0, v1, p0

    aget-object v0, v1, v0

    .line 874
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method clearIcon(I)V
    .locals 1

    .line 327
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/ImsIconManager;->needShowRcsIcon(I)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "com.samsung.rcs"

    .line 328
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;->HIDE:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/core/ImsIconManager;->setIconVisibility(Ljava/lang/String;Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;)V

    .line 330
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->needShowNoCTCVoLTEIcon()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->VOLTE_ICON_SLOT:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, -0x1

    .line 331
    iput p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mLastVoLTEResourceId:I

    .line 332
    iget-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->VOLTE_ICON_SLOT:Ljava/lang/String;

    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;->HIDE:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/core/ImsIconManager;->setIconVisibility(Ljava/lang/String;Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;)V

    :cond_1
    return-void
.end method

.method fillWifiLabel()V
    .locals 8

    .line 848
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->mVowifiOperatorLabelOngoing:[I

    iget v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string/jumbo v2, "vowifi_operator_label_ongoing"

    const/4 v3, 0x0

    .line 849
    invoke-static {v1, v2, v3}, Lcom/sec/internal/ims/registry/ImsRegistry;->getInt(ILjava/lang/String;I)I

    move-result v4

    aput v4, v0, v1

    .line 851
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->mWifiSubTextOnLockScreen:[Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string/jumbo v4, "vowifi_subtext_on_lockscreen"

    const-string v5, ""

    .line 852
    invoke-static {v1, v4, v5}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v1

    .line 854
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->mVowifiOperatorLabel:[Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string/jumbo v6, "vowifi_operator_label"

    .line 855
    invoke-static {v1, v6, v5}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v1

    .line 857
    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-static {p0}, Lcom/sec/internal/helper/SimUtil;->getOppositeSimSlot(I)I

    move-result p0

    .line 859
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->mVowifiOperatorLabelOngoing:[I

    .line 860
    invoke-static {p0, v2, v3}, Lcom/sec/internal/ims/registry/ImsRegistry;->getInt(ILjava/lang/String;I)I

    move-result v1

    aput v1, v0, p0

    .line 862
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->mWifiSubTextOnLockScreen:[Ljava/lang/String;

    .line 863
    invoke-static {p0, v4, v5}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p0

    .line 865
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->mVowifiOperatorLabel:[Ljava/lang/String;

    .line 866
    invoke-static {p0, v6, v5}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p0

    return-void
.end method

.method getCrossSimIconName()Ljava/lang/String;
    .locals 4

    .line 1189
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->CROSS_SIM_ICON_NAME:[Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    aget-object v0, v0, p0

    .line 1190
    sget-object v1, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCrossSimIconName() - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method getDualIMSIconName(Lcom/sec/internal/ims/core/ImsIconManager$Icon;)Ljava/lang/String;
    .locals 4

    .line 1231
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->VOLTE_ICON_SLOT:Ljava/lang/String;

    const-string v1, "ims_volte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1232
    :goto_0
    iget-boolean v3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mUseDualVolteIcon:Z

    if-eqz v3, :cond_8

    .line 1234
    sget-object v3, Lcom/sec/internal/ims/core/ImsIconManager$4;->$SwitchMap$com$sec$internal$ims$core$ImsIconManager$Icon:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v3, p1

    const-string v3, ""

    if-eq p1, v1, :cond_3

    if-eq p1, v2, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    move-object p1, v3

    goto :goto_1

    .line 1242
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "vo5g_regi_icon_id"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 1239
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "vowifi_regi_icon_id"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 1236
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "volte_regi_icon_id"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1249
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1250
    iget v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-static {v0, p1, v3}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1254
    :cond_4
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKOROmcCode()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result p0

    if-eqz p0, :cond_9

    .line 1257
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKorOpenOmcCode()Z

    move-result p0

    if-eqz p0, :cond_5

    const-string/jumbo v3, "stat_sys_phone_call"

    goto :goto_2

    .line 1259
    :cond_5
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isSKTOmcCode()Z

    move-result p0

    if-eqz p0, :cond_6

    const-string/jumbo v3, "stat_sys_phone_call_skt"

    goto :goto_2

    .line 1261
    :cond_6
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKTTOmcCode()Z

    move-result p0

    if-eqz p0, :cond_7

    const-string/jumbo v3, "stat_sys_phone_call_kt"

    goto :goto_2

    :cond_7
    const-string/jumbo v3, "stat_sys_phone_call_lgt"

    goto :goto_2

    :cond_8
    const-string/jumbo v3, "stat_notify_volte_service_avaliable"

    :cond_9
    :goto_2
    return-object v3
.end method

.method public getDuringEmergencyCall()Z
    .locals 0

    .line 1374
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mIsDuringEmergencyCall:Z

    return p0
.end method

.method getRcsIconVisibility(Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;)Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;
    .locals 0

    .line 761
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->isShowRcsIcon()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isRcsRegistered()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;->SHOW:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;->HIDE:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    :goto_0
    return-object p0
.end method

.method protected getResourceIdByName(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 1087
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p2, p1, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method getVo5gIconName()Ljava/lang/String;
    .locals 2

    .line 1199
    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string/jumbo v0, "vo5g_regi_icon_id"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getVolteIconName()Ljava/lang/String;
    .locals 2

    .line 1205
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKOROmcCode()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1208
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKorOpenOmcCode()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string/jumbo p0, "stat_sys_phone_call"

    goto :goto_0

    .line 1210
    :cond_0
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isSKTOmcCode()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string/jumbo p0, "stat_sys_phone_call_skt"

    goto :goto_0

    .line 1212
    :cond_1
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKTTOmcCode()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string/jumbo p0, "stat_sys_phone_call_kt"

    goto :goto_0

    :cond_2
    const-string/jumbo p0, "stat_sys_phone_call_lgt"

    goto :goto_0

    .line 1218
    :cond_3
    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string/jumbo v0, "volte_regi_icon_id"

    const-string v1, ""

    .line 1219
    invoke-static {p0, v0, v1}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1221
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const-string/jumbo p0, "stat_notify_volte_service_avaliable"

    :goto_0
    return-object p0
.end method

.method getVolteIconSlot()Ljava/lang/String;
    .locals 7

    .line 298
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getESimCount()I

    move-result v0

    .line 299
    iget-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/internal/helper/SimUtil;->getActiveSimCount(Landroid/content/Context;)I

    move-result v1

    .line 300
    sget-object v2, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getVolteIconSlot: eSIM Count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", active SIM count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const-string v2, "ims_volte"

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    if-ne v1, v3, :cond_0

    return-object v2

    :cond_0
    const/4 v4, 0x2

    const-string v5, ""

    const-string v6, "2"

    if-ne v0, v3, :cond_2

    if-ne v1, v4, :cond_2

    .line 309
    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-static {p0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/helper/SimUtil$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/sec/internal/helper/SimUtil$$ExternalSyntheticLambda3;-><init>()V

    .line 310
    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_1

    move-object v5, v6

    :cond_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    if-ne v0, v4, :cond_4

    .line 315
    iget v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v0

    .line 316
    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-static {p0}, Lcom/sec/internal/helper/SimUtil;->getOppositeSimSlot(I)I

    move-result p0

    .line 317
    invoke-static {p0}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result p0

    .line 318
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ge v0, p0, :cond_3

    goto :goto_0

    :cond_3
    move-object v5, v6

    :goto_0
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 322
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    if-nez p0, :cond_5

    goto :goto_1

    :cond_5
    move-object v5, v6

    :goto_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getVolteIconVisibility(Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;)Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;
    .locals 1

    .line 756
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->isShowVolteIcon()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKOROmcCode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result p0

    if-nez p0, :cond_3

    :cond_0
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isVolteRegistered()Z

    move-result p0

    if-nez p0, :cond_3

    .line 757
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->isShowVowiFiIcon()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isVowifiRegistered()Z

    move-result p0

    if-nez p0, :cond_3

    :cond_2
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isCrossSimRegistered()Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    sget-object p0, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;->SHOW:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    goto :goto_0

    :cond_4
    sget-object p0, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;->HIDE:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    :goto_0
    return-object p0
.end method

.method getVowifiIconName()Ljava/lang/String;
    .locals 2

    .line 1195
    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string/jumbo v0, "vowifi_regi_icon_id"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method hasVolteService(Lcom/sec/ims/ImsRegistration;)Z
    .locals 2

    .line 838
    iget v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    .line 839
    iget-object p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-eq p0, v1, :cond_1

    if-eqz v0, :cond_0

    const-string p0, "GenericIR92_US:Cellcom"

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMnoName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 843
    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->hasVolteService()Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const-string p0, "mmtel"

    .line 840
    invoke-virtual {p1, p0}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "mmtel-video"

    .line 841
    invoke-virtual {p1, p0}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p0, 0x1

    :goto_2
    return p0
.end method

.method public initConfiguration(Lcom/sec/internal/constants/Mno;I)V
    .locals 2

    .line 285
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    sget-object v0, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/constants/Mno;

    iput-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    .line 286
    iput p2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const/4 p1, 0x0

    .line 287
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mIsSilentRedialInProgress:Z

    .line 288
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mIsDuringEmergencyCall:Z

    const-string/jumbo v0, "separate_vo5g_icon"

    .line 289
    invoke-static {p2, v0, p1}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 290
    invoke-interface {v0, p2}, Lcom/sec/internal/helper/os/ITelephonyManager;->semIsVoNrEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    :cond_0
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mIsVonrEnabled:Z

    .line 291
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->registerPhoneStateListener()V

    .line 292
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/ImsIconManager;->clearIcon(I)V

    .line 293
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->getVolteIconSlot()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->VOLTE_ICON_SLOT:Ljava/lang/String;

    .line 294
    sget-object p1, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget p2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initConfiguration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->VOLTE_ICON_SLOT:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method isCounterSlotRcsTransferable()Z
    .locals 4

    .line 897
    iget v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 898
    :goto_0
    iget-object v3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v3, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfoByPhoneId(I)[Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 899
    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v3, Lcom/sec/internal/ims/core/ImsIconManager$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/sec/internal/ims/core/ImsIconManager$$ExternalSyntheticLambda1;-><init>(Lcom/sec/internal/ims/core/ImsIconManager;)V

    .line 900
    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    .line 902
    :goto_1
    iget-object v3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-static {v3}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsChn(Lcom/sec/internal/constants/Mno;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v0, :cond_2

    .line 903
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->isInSvcAndOtherSimIdle()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    move v0, v1

    :cond_3
    return v0
.end method

.method isCrossSimConnected(Lcom/sec/ims/ImsRegistration;)Z
    .locals 1

    .line 690
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result p1

    .line 691
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getCurrentNetwork(I)I

    move-result p1

    const/16 v0, 0x12

    if-ne p1, v0, :cond_0

    .line 692
    iget-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/PdnController;->isEpdgConnected(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    .line 693
    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/PdnController;->getEpdgPhysicalInterface(I)I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isInSvcAndOtherSimIdle()Z
    .locals 7

    .line 910
    iget v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentServiceState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 911
    :goto_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->isOtherSimInCallStatus()Z

    move-result p0

    xor-int/2addr p0, v2

    .line 912
    sget-object v3, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 913
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "isInSvcAndOtherSimIdle: In SVC %s, Other SIM Idle %s"

    .line 912
    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method isOtherSimInCallStatus()Z
    .locals 3

    .line 918
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isDSDACapableDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 919
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string v2, "isOtherSimInCallStatus: DSDA not need to check"

    invoke-static {v0, p0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v1

    .line 923
    :cond_0
    iget v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const/4 v2, 0x1

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 924
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getTelephonyCallStatus(I)I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    if-ne p0, v2, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    return v1
.end method

.method isServiceAvailable(Ljava/lang/String;)Z
    .locals 7

    const-string v0, "ATT"

    .line 337
    iget-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mOmcCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "mmtel-video"

    const-string v2, "mmtel"

    const/16 v3, 0x12

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v0, :cond_7

    const-string v0, "APP"

    iget-object v6, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mOmcCode:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v6, Lcom/sec/internal/constants/Mno;->BOG:Lcom/sec/internal/constants/Mno;

    if-eq v0, v6, :cond_2

    sget-object v6, Lcom/sec/internal/constants/Mno;->ORANGE:Lcom/sec/internal/constants/Mno;

    if-eq v0, v6, :cond_2

    sget-object v6, Lcom/sec/internal/constants/Mno;->ORANGE_POLAND:Lcom/sec/internal/constants/Mno;

    if-eq v0, v6, :cond_2

    sget-object v6, Lcom/sec/internal/constants/Mno;->DIGI:Lcom/sec/internal/constants/Mno;

    if-eq v0, v6, :cond_2

    sget-object v6, Lcom/sec/internal/constants/Mno;->TELECOM_ITALY:Lcom/sec/internal/constants/Mno;

    if-eq v0, v6, :cond_2

    sget-object v6, Lcom/sec/internal/constants/Mno;->VODAFONE:Lcom/sec/internal/constants/Mno;

    if-eq v0, v6, :cond_2

    .line 357
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isTmobile()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v6, Lcom/sec/internal/constants/Mno;->TELEKOM_ALBANIA:Lcom/sec/internal/constants/Mno;

    if-eq v0, v6, :cond_2

    sget-object v6, Lcom/sec/internal/constants/Mno;->VODAFONE_NEWZEALAND:Lcom/sec/internal/constants/Mno;

    if-eq v0, v6, :cond_2

    sget-object v6, Lcom/sec/internal/constants/Mno;->WINDTRE:Lcom/sec/internal/constants/Mno;

    if-ne v0, v6, :cond_1

    goto :goto_0

    :cond_1
    return v5

    .line 361
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget v6, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-interface {v0, v6}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getCurrentNetworkByPhoneId(I)I

    move-result v0

    .line 362
    invoke-static {v0}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result v6

    if-nez v6, :cond_4

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    .line 364
    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/core/PdnController;->isEpdgConnected(I)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    return v4

    .line 365
    :cond_4
    :goto_1
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    .line 366
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_5
    move v4, v5

    :cond_6
    return v4

    .line 339
    :cond_7
    :goto_2
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isSoftphoneEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    return v5

    .line 343
    :cond_8
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getCurrentNetworkByPhoneId(I)I

    move-result p0

    .line 344
    invoke-static {p0}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result v0

    if-nez v0, :cond_a

    if-eq p0, v3, :cond_a

    .line 346
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    .line 347
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    move v4, v5

    :cond_9
    return v4

    :cond_a
    return v5
.end method

.method isVoImsRegistered(Lcom/sec/ims/ImsRegistration;)Z
    .locals 1

    .line 670
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/ImsIconManager;->hasVolteService(Lcom/sec/ims/ImsRegistration;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "mmtel"

    .line 671
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/ImsIconManager;->isServiceAvailable(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "mmtel-video"

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/ImsIconManager;->isServiceAvailable(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isVoWiFiConnected(Lcom/sec/ims/ImsRegistration;)Z
    .locals 5

    .line 675
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v0

    .line 676
    iget-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getCurrentNetwork(I)I

    move-result v0

    .line 677
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getRegiRat()I

    move-result p1

    .line 678
    sget-object v1, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRegiRat ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "], getCurrentNetwork ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v1, 0x0

    const/16 v2, 0x12

    if-ne v0, v2, :cond_1

    .line 679
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget v3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/core/PdnController;->isEpdgConnected(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget v3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    .line 680
    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/core/PdnController;->getEpdgPhysicalInterface(I)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 681
    iget-object p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v0, Lcom/sec/internal/constants/Mno;->CHT:Lcom/sec/internal/constants/Mno;

    if-ne p0, v0, :cond_0

    if-eq p1, v2, :cond_0

    return v1

    :cond_0
    return v3

    :cond_1
    return v1
.end method

.method isVoWiFiRegistered(I)Z
    .locals 6

    .line 878
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfoByPhoneId(I)[Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 880
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 881
    invoke-virtual {v4}, Lcom/sec/ims/ImsRegistration;->hasVolteService()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "mmtel"

    .line 882
    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/core/ImsIconManager;->isServiceAvailable(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "mmtel-video"

    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/core/ImsIconManager;->isServiceAvailable(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 883
    :cond_0
    iget-object v4, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v4, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getCurrentNetworkByPhoneId(I)I

    move-result v4

    const/16 v5, 0x12

    if-ne v4, v5, :cond_1

    .line 884
    iget-object v4, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    .line 885
    invoke-virtual {v4, p1}, Lcom/sec/internal/ims/core/PdnController;->getEpdgPhysicalInterface(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    .line 886
    invoke-virtual {v4, p1}, Lcom/sec/internal/ims/core/PdnController;->isEpdgConnected(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 887
    sget-object p1, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string v0, "isVoWIFIRegistered"

    invoke-static {p1, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method needDisplayVo5gIcon()Z
    .locals 3

    .line 697
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mIsVonrEnabled:Z

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentNetworkType:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_1

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string/jumbo v0, "separate_vo5g_icon"

    .line 698
    invoke-static {p0, v0, v2}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method needShowNoCTCVoLTEIcon()Z
    .locals 5

    .line 378
    iget v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 379
    iget-object v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    iget v3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-interface {v2, v3}, Lcom/sec/internal/helper/os/ITelephonyManager;->getRilSimOperator(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "CTC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mUseDualVolteIcon:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    .line 380
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 381
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    const/4 v3, -0x1

    iget v4, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-static {v2, v3, v4}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getVoiceCallType(Landroid/content/Context;II)I

    move-result v2

    .line 383
    iget-object v3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v2, :cond_1

    .line 385
    iget v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentNetworkType:I

    .line 386
    invoke-static {v2}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v3, :cond_1

    .line 388
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    iget v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    .line 389
    invoke-interface {v0, v2}, Lcom/sec/internal/helper/os/ITelephonyManager;->getCurrentPhoneTypeForSlot(I)I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentVoiceRatType:I

    const/4 v2, 0x7

    if-eq v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentInRoaming:Z

    if-nez v0, :cond_1

    const/4 v1, 0x1

    .line 395
    :cond_1
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "needShowNoCTCVoLTEIcon: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v1
.end method

.method needShowRcsIcon(I)Z
    .locals 1

    .line 1378
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 1379
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->isCounterSlotRcsTransferable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1380
    sget-object p1, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string v0, "needShowRcsIcon: true"

    invoke-static {p1, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public registerPhoneStateListener()V
    .locals 3

    .line 1272
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string/jumbo v2, "registerPhoneStateListener:"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1274
    iget v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v0

    if-gez v0, :cond_0

    return-void

    .line 1279
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    iget v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    iget-object v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mTelephonyCallback:Landroid/telephony/TelephonyCallback;

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/internal/helper/os/ITelephonyManager;->registerTelephonyCallbackForSlot(ILjava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    return-void
.end method

.method public setCurrentNetworkType(I)V
    .locals 0

    .line 1283
    iput p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentNetworkType:I

    return-void
.end method

.method public setCurrentRoamingState(Z)V
    .locals 0

    .line 1295
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentInRoaming:Z

    return-void
.end method

.method public setCurrentServiceState(I)V
    .locals 0

    .line 1287
    iput p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentServiceState:I

    return-void
.end method

.method public setCurrentVoiceRatType(I)V
    .locals 0

    .line 1291
    iput p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentVoiceRatType:I

    return-void
.end method

.method public setDuringEmergencyCall(Z)V
    .locals 3

    .line 1362
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->VODAFONE_AUSTRALIA:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->APT:Lcom/sec/internal/constants/Mno;

    filled-new-array {v1, v2}, [Lcom/sec/internal/constants/Mno;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1363
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mIsDuringEmergencyCall:Z

    .line 1364
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->updateRegistrationIcon()V

    :cond_0
    return-void
.end method

.method protected setIconSlot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "drawable"

    .line 1006
    invoke-virtual {p0, v0, p2}, Lcom/sec/internal/ims/core/ImsIconManager;->getResourceIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1009
    iget-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->VOLTE_ICON_SLOT:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 1010
    iget v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mLastVoLTEResourceId:I

    if-eq v1, v0, :cond_0

    .line 1011
    iput v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mLastVoLTEResourceId:I

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    const-string p3, "com.samsung.rcs"

    .line 1014
    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_4

    const-string p3, "RCS"

    :goto_0
    if-nez v2, :cond_2

    .line 1022
    iget-boolean v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mForceRefreshIcon:Z

    if-eqz v1, :cond_3

    .line 1024
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "statusbar"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    .line 1026
    invoke-virtual {v1, p1, v0, v3, p3}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 1028
    sget-object p3, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setIconSlot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " (id: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1031
    invoke-virtual {p0}, Ljava/lang/SecurityException;->printStackTrace()V

    :cond_3
    :goto_1
    return-void

    .line 1018
    :cond_4
    sget-object p2, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Wrong slot name: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method protected setIconVisibility(Ljava/lang/String;Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;)V
    .locals 7

    const-string v0, "!@Boot: "

    .line 1046
    iget-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->VOLTE_ICON_SLOT:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 1047
    iget-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mLastVoLTEVisiblity:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    if-eq v1, p2, :cond_0

    .line 1048
    iput-object p2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mLastVoLTEVisiblity:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    move v1, v2

    goto :goto_1

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    const-string v1, "com.samsung.rcs"

    .line 1051
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1052
    iget-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mLastRcsVisiblity:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    if-eq v1, p2, :cond_2

    .line 1053
    iput-object p2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mLastRcsVisiblity:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    if-nez v1, :cond_3

    .line 1056
    sget-object v4, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;->SHOW:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    if-eq p2, v4, :cond_3

    iget-boolean v4, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mForceRefreshIcon:Z

    if-eqz v4, :cond_3

    .line 1058
    sget-object p1, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string p2, "RCS not registered on this SIM. Skip refresh."

    invoke-static {p1, p0, p2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_3
    :goto_1
    if-nez v1, :cond_4

    .line 1066
    iget-boolean v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mForceRefreshIcon:Z

    if-eqz v1, :cond_7

    .line 1068
    :cond_4
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "statusbar"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    .line 1069
    sget-object v4, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;->SHOW:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    if-ne p2, v4, :cond_5

    move v3, v2

    :cond_5
    invoke-virtual {v1, p1, v3}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1071
    iget-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->VOLTE_ICON_SLOT:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "]"

    const-string v5, ": ["

    const-string/jumbo v6, "setIconVisibility: "

    if-eqz v1, :cond_6

    .line 1072
    :try_start_1
    iget-boolean v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mIsFirstVoLTEIconShown:Z

    if-nez v1, :cond_6

    if-ne p2, v4, :cond_6

    .line 1073
    iput-boolean v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mIsFirstVoLTEIconShown:Z

    .line 1074
    sget-object v1, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1078
    :cond_6
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 1081
    invoke-virtual {p0}, Ljava/lang/SecurityException;->printStackTrace()V

    :cond_7
    :goto_2
    return-void

    .line 1062
    :cond_8
    sget-object p2, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wrong slot name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public setVo5gIcon(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1369
    :goto_0
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mIsVonrEnabled:Z

    .line 1370
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->updateRegistrationIcon()V

    return-void
.end method

.method showDualVolteIcon()Z
    .locals 7

    .line 1345
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isDualIMS()Z

    move-result v0

    .line 1346
    iget-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/internal/helper/SimUtil;->getActiveSimCount(Landroid/content/Context;)I

    move-result v1

    const-string/jumbo v2, "persist.ril.esim.slotswitch"

    const-string v3, ""

    .line 1347
    invoke-static {v2, v3}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "tsds2"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 1348
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    const-string v4, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_EMBEDDED_SIM"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 1349
    iget-object p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v4, "android.hardware.telephony.euicc"

    invoke-virtual {p0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    .line 1350
    sget-object v4, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "supportDualVolte: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", activeSimCount: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", configESimSlotSwitch: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", ESim Features - floating: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", eUicc: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    if-lt v1, v0, :cond_1

    if-eqz v3, :cond_0

    if-nez v2, :cond_0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v4, 0x1

    :cond_1
    return v4
.end method

.method declared-synchronized showWifiRegistrationStateQuickPanel(IZ)V
    .locals 8

    monitor-enter p0

    .line 938
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->mShowVoWIFILabel:[Z

    add-int/lit8 v1, p1, 0x1

    aget-boolean v2, v0, v1

    if-ne v2, p2, :cond_0

    .line 939
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no need to update mShowVoWIFILabel["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]  aready ["

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 940
    monitor-exit p0

    return-void

    :cond_0
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    :try_start_1
    const-string v3, "imsicon_channel_both"

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    const-string v3, "imsicon_channel_0"

    goto :goto_0

    :cond_2
    const-string v3, "imsicon_channel_1"

    :goto_0
    const/16 v4, -0x6687

    const/4 v5, 0x0

    if-eq p1, v2, :cond_3

    .line 952
    aget-boolean v0, v0, v5

    if-eqz v0, :cond_3

    .line 953
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v2, "imsicon_channel_both"

    invoke-virtual {v0, v2, v4}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 956
    :cond_3
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "show notification VoWiFi tag["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] in quick panel ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v2, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 957
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->mShowVoWIFILabel:[Z

    aput-boolean p2, v0, v1

    const/4 v0, 0x1

    if-gtz p1, :cond_4

    move p1, v5

    goto :goto_1

    :cond_4
    move p1, v0

    .line 966
    :goto_1
    new-instance v1, Landroid/app/NotificationChannel;

    const-string v2, "imsicon_channel"

    const/4 v6, 0x2

    invoke-direct {v1, v2, v3, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 968
    invoke-virtual {v1, v5}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 969
    iget-object v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v2, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    if-eqz p2, :cond_7

    .line 972
    new-instance p2, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    const-string v2, "imsicon_channel"

    invoke-direct {p2, v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v1, "drawable"

    const-string/jumbo v2, "stat_notify_wfc_warning"

    .line 973
    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/core/ImsIconManager;->getResourceIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 974
    sget-object v1, Lcom/sec/internal/ims/core/ImsIconManager;->mVowifiOperatorLabel:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {p2, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    const-wide/16 v1, 0x0

    .line 975
    invoke-virtual {p2, v1, v2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 976
    invoke-virtual {p2, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 978
    sget-object v1, Lcom/sec/internal/ims/core/ImsIconManager;->mWifiSubTextOnLockScreen:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "string"

    .line 979
    sget-object v2, Lcom/sec/internal/ims/core/ImsIconManager;->mWifiSubTextOnLockScreen:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/core/ImsIconManager;->getResourceIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 980
    iget-object v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 981
    invoke-virtual {p2, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 982
    new-instance v2, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v2}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v2, v1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 985
    :cond_5
    sget-object v1, Lcom/sec/internal/ims/core/ImsIconManager;->mVowifiOperatorLabelOngoing:[I

    aget p1, v1, p1

    if-ne p1, v0, :cond_6

    .line 986
    invoke-virtual {p2, v0}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 989
    :cond_6
    invoke-virtual {p2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 990
    iget-object p2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p2, v3, v4, p1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    goto :goto_2

    .line 992
    :cond_7
    iget-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p1, v3, v4}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 994
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method updateRcsIcon(Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;)V
    .locals 6

    .line 765
    iget v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string/jumbo v1, "show_rcs_regi_icon"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result v0

    .line 767
    sget-object v1, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isRcsIconVisible: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 769
    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->setShowRcsIcon(Z)V

    .line 774
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/ImsIconManager;->getRcsIconVisibility(Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;)Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    move-result-object p1

    .line 775
    iget-object p2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-static {p2}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsChn(Lcom/sec/internal/constants/Mno;)Z

    move-result p2

    const/4 v0, 0x0

    const-string v3, "com.samsung.rcs"

    if-eqz p2, :cond_1

    .line 776
    sget-object p2, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;->SHOW:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    if-ne p1, p2, :cond_7

    const-string/jumbo p2, "stat_notify_rcs"

    .line 777
    invoke-virtual {p0, v3, p2, v0}, Lcom/sec/internal/ims/core/ImsIconManager;->setIconSlot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 779
    :cond_1
    iget-boolean p2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mIsDebuggable:Z

    if-eqz p2, :cond_7

    .line 780
    iget-object p2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->refreshDualRcsReg(Landroid/content/Context;)V

    .line 781
    iget p2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    move v2, v1

    .line 782
    :goto_0
    iget-object p2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p2}, Lcom/sec/internal/constants/Mno;->isEur()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isDualRcsSettings()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 783
    sget-object p2, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;->SHOW:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    if-ne p1, p2, :cond_4

    .line 784
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->isCounterSlotRcsTransferable()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 785
    sget-object p2, Lcom/sec/internal/ims/core/ImsIconManager;->RCS_ICON_NAME_DUAL:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object p2, p2, v1

    invoke-virtual {p0, v3, p2, v0}, Lcom/sec/internal/ims/core/ImsIconManager;->setIconSlot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 787
    :cond_3
    sget-object p2, Lcom/sec/internal/ims/core/ImsIconManager;->RCS_ICON_NAME_DUAL:[Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    aget-object p2, p2, v1

    invoke-virtual {p0, v3, p2, v0}, Lcom/sec/internal/ims/core/ImsIconManager;->setIconSlot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 790
    :cond_4
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->isCounterSlotRcsTransferable()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 791
    sget-object p1, Lcom/sec/internal/ims/core/ImsIconManager;->RCS_ICON_NAME_DUAL:[Ljava/lang/String;

    aget-object p1, p1, v2

    invoke-virtual {p0, v3, p1, v0}, Lcom/sec/internal/ims/core/ImsIconManager;->setIconSlot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 796
    :cond_5
    sget-object p2, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;->SHOW:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    const-string/jumbo v1, "stat_notify_rcs_service_avaliable"

    if-ne p1, p2, :cond_6

    .line 797
    invoke-virtual {p0, v3, v1, v0}, Lcom/sec/internal/ims/core/ImsIconManager;->setIconSlot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 799
    :cond_6
    iget v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v4

    if-eq v2, v4, :cond_7

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->isCounterSlotRcsTransferable()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 800
    invoke-virtual {p0, v3, v1, v0}, Lcom/sec/internal/ims/core/ImsIconManager;->setIconSlot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move-object p1, p2

    .line 806
    :cond_7
    :goto_2
    invoke-virtual {p0, v3, p1}, Lcom/sec/internal/ims/core/ImsIconManager;->setIconVisibility(Ljava/lang/String;Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;)V

    return-void
.end method

.method public updateRegistrationIcon()V
    .locals 9

    .line 511
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->showDualVolteIcon()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mUseDualVolteIcon:Z

    .line 512
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getVoiceCallType(Landroid/content/Context;II)I

    move-result v0

    .line 514
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/ImsIconManager;->updateShowIconSettings(I)Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;

    move-result-object v1

    .line 516
    iget-object v3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget v4, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-interface {v3, v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfoByPhoneId(I)[Lcom/sec/ims/ImsRegistration;

    move-result-object v3

    .line 517
    invoke-virtual {p0, v3, v0}, Lcom/sec/internal/ims/core/ImsIconManager;->updateRegistrationStatus([Lcom/sec/ims/ImsRegistration;I)Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;

    move-result-object v0

    .line 519
    sget-object v4, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v5, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateRegistrationIcon: VoLTE [show: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->isShowVolteIcon()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", regi: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isVolteRegistered()Z

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, "] VoWiFi [show: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->isShowVowiFiIcon()Z

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isVowifiRegistered()Z

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, "] RCS [show: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->isShowRcsIcon()Z

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isRcsRegistered()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, "] CROSS SIM [regi: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isCrossSimRegistered()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, "] (RcsNetworkSuspended: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isRcsNetworkSuspended()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ") (VoNREnabled: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mIsVonrEnabled:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 519
    invoke-static {v4, v5, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 527
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isCmcRegistered()Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    array-length v3, v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    move v2, v4

    .line 528
    :cond_0
    invoke-virtual {p0, v1, v0, v2}, Lcom/sec/internal/ims/core/ImsIconManager;->updateVolteIcon(Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;Z)V

    .line 529
    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/core/ImsIconManager;->updateRcsIcon(Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;)V

    .line 530
    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/core/ImsIconManager;->updateVoWifiLabel(Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;)V

    return-void
.end method

.method updateRegistrationStatus([Lcom/sec/ims/ImsRegistration;I)Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;
    .locals 9

    .line 597
    new-instance v0, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;-><init>()V

    .line 598
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKOROmcCode()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    if-ne v1, v3, :cond_1

    .line 599
    iget v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v1

    if-gez v1, :cond_0

    .line 601
    sget-object p1, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string/jumbo p2, "updateRegistrationStatus : subId is invalid"

    invoke-static {p1, p0, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0

    .line 604
    :cond_0
    iget-object v3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v3, v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getServiceStateForSubscriber(I)I

    move-result v1

    if-nez v1, :cond_1

    .line 606
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->setVolteRegistered(Z)V

    :cond_1
    if-nez p1, :cond_2

    return-object v0

    .line 615
    :cond_2
    array-length v1, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_b

    aget-object v5, p1, v4

    .line 618
    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/core/ImsIconManager;->isVoImsRegistered(Lcom/sec/ims/ImsRegistration;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 619
    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/core/ImsIconManager;->isVoWiFiConnected(Lcom/sec/ims/ImsRegistration;)Z

    move-result v6

    .line 620
    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/core/ImsIconManager;->isCrossSimConnected(Lcom/sec/ims/ImsRegistration;)Z

    move-result v7

    if-nez v6, :cond_3

    if-nez v7, :cond_3

    move v8, v2

    goto :goto_1

    :cond_3
    move v8, v3

    .line 622
    :goto_1
    invoke-virtual {v0, v8}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->setVolteRegistered(Z)V

    .line 623
    invoke-virtual {v0, v6}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->setVowifiRegistered(Z)V

    .line 624
    invoke-virtual {v0, v7}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->setCrossSimRegistered(Z)V

    .line 627
    :cond_4
    invoke-virtual {v5}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_5

    .line 628
    invoke-virtual {v5}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v6

    const/4 v7, 0x4

    if-eq v6, v7, :cond_5

    .line 629
    invoke-virtual {v5}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_6

    .line 630
    :cond_5
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->setCmcRegistered(Z)V

    .line 633
    :cond_6
    invoke-virtual {v5}, Lcom/sec/ims/ImsRegistration;->hasRcsService()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 634
    invoke-virtual {v5}, Lcom/sec/ims/ImsRegistration;->getNetwork()Landroid/net/Network;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sec/internal/ims/core/ImsIconManager;->isSuspend(Landroid/net/Network;)Z

    move-result v5

    xor-int/2addr v5, v2

    xor-int/lit8 v6, v5, 0x1

    .line 635
    invoke-virtual {v0, v6}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->setRcsNetworkSuspended(Z)V

    .line 637
    iget-object v6, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-static {v6}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsChn(Lcom/sec/internal/constants/Mno;)Z

    move-result v6

    if-eqz v6, :cond_8

    if-eqz v5, :cond_7

    .line 638
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->isInSvcAndOtherSimIdle()Z

    move-result v5

    if-eqz v5, :cond_7

    move v5, v2

    goto :goto_2

    :cond_7
    move v5, v3

    .line 640
    :cond_8
    :goto_2
    invoke-virtual {v0, v5}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->setRcsRegistered(Z)V

    .line 643
    :cond_9
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isAllRegistered()Z

    move-result v5

    if-eqz v5, :cond_a

    goto :goto_3

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 648
    :cond_b
    :goto_3
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->getDuringEmergencyCall()Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isVowifiRegistered()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 649
    iget-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->APT:Lcom/sec/internal/constants/Mno;

    if-ne p1, v1, :cond_d

    .line 650
    sget-object p1, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string v1, "APT special requirement"

    invoke-static {p1, p0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-nez p2, :cond_c

    move v3, v2

    .line 652
    :cond_c
    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->setVolteRegistered(Z)V

    xor-int/lit8 p0, v3, 0x1

    .line 653
    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->setVowifiRegistered(Z)V

    goto :goto_4

    .line 654
    :cond_d
    sget-object p2, Lcom/sec/internal/constants/Mno;->VODAFONE_AUSTRALIA:Lcom/sec/internal/constants/Mno;

    if-ne p1, p2, :cond_e

    .line 655
    sget-object p1, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string p2, "Vodafone AUS special requirement"

    invoke-static {p1, p0, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 656
    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->setVowifiRegistered(Z)V

    :cond_e
    :goto_4
    return-object v0
.end method

.method updateShowIconSettings(I)Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;
    .locals 10

    .line 535
    new-instance v0, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;-><init>()V

    const/4 v1, 0x1

    .line 536
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->setShowVolteIcon(Z)V

    .line 537
    iget v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string/jumbo v3, "show_vowifi_regi_icon"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->setShowVoWiFiIcon(Z)V

    .line 538
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->setShowRcsIcon(Z)V

    .line 540
    iget v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string/jumbo v3, "show_volte_regi_icon"

    invoke-static {v2, v3, v4}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result v2

    .line 541
    iget v3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-static {v3}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v3

    const-string/jumbo v5, "ro.product.first_api_level"

    .line 543
    invoke-static {v5, v4}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/16 v6, 0x20

    if-lt v5, v6, :cond_2

    if-eqz v3, :cond_0

    const-string v5, "GenericIR92_US:Cellcom"

    .line 544
    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMnoName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v5, Lcom/sec/internal/constants/Mno;->DPAC:Lcom/sec/internal/constants/Mno;

    sget-object v6, Lcom/sec/internal/constants/Mno;->GTA:Lcom/sec/internal/constants/Mno;

    sget-object v7, Lcom/sec/internal/constants/Mno;->ITE:Lcom/sec/internal/constants/Mno;

    sget-object v8, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    sget-object v9, Lcom/sec/internal/constants/Mno;->ASTCA_US:Lcom/sec/internal/constants/Mno;

    filled-new-array {v5, v6, v7, v8, v9}, [Lcom/sec/internal/constants/Mno;

    move-result-object v5

    .line 545
    invoke-virtual {v3, v5}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 546
    :cond_1
    sget-object v2, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string v5, "Volte RegistrationIcon: need to turn off"

    invoke-static {v2, v3, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    move v2, v4

    .line 549
    :cond_2
    iget v3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string/jumbo v5, "remove_icon_nosvc"

    invoke-static {v3, v5, v4}, Lcom/sec/internal/ims/registry/ImsRegistry;->getInt(ILjava/lang/String;I)I

    move-result v3

    .line 551
    iget-boolean v5, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mIsDebuggable:Z

    if-nez v5, :cond_4

    if-nez v2, :cond_3

    .line 553
    sget-object v2, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v5, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string v6, "Volte/RCS RegistrationIcon: turned off."

    invoke-static {v2, v5, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 554
    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->setShowVolteIcon(Z)V

    .line 557
    :cond_3
    iget-object v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-static {v2}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsChn(Lcom/sec/internal/constants/Mno;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 558
    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->setShowRcsIcon(Z)V

    .line 562
    :cond_4
    iget v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string v5, "hide_vowifi_icon_when_cs_call"

    invoke-static {v2, v5, v4}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 563
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->isShowVowiFiIcon()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mIsSilentRedialInProgress:Z

    if-eqz v2, :cond_5

    .line 564
    sget-object v2, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v5, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string v6, "VoWIFI Special Req.: Hide vowifi icon when CSFB"

    invoke-static {v2, v5, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 565
    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->setShowVoWiFiIcon(Z)V

    :cond_5
    const-string v2, "DCM"

    .line 569
    iget-object v5, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mOmcCode:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 570
    iget-object v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget v5, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/PdnController;->getVopsIndication(I)Lcom/sec/internal/constants/ims/os/VoPsIndication;

    move-result-object v2

    sget-object v5, Lcom/sec/internal/constants/ims/os/VoPsIndication;->NOT_SUPPORTED:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    if-ne v2, v5, :cond_6

    .line 571
    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->setShowVolteIcon(Z)V

    .line 575
    :cond_6
    iget-object v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 576
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKOROmcCode()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 577
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->checkKORVolteIcon()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->setShowVolteIcon(Z)V

    return-object v0

    :cond_7
    if-eqz p1, :cond_8

    .line 580
    sget-object p1, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string v5, "KOR requirement"

    invoke-static {p1, v2, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 581
    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->setShowVolteIcon(Z)V

    :cond_8
    if-ne v3, v1, :cond_a

    .line 586
    iget p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentServiceState:I

    if-nez p1, :cond_9

    iget p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentNetworkType:I

    .line 587
    invoke-static {p1}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result p1

    if-nez p1, :cond_a

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentNetworkType:I

    const/16 p1, 0x12

    if-eq p0, p1, :cond_a

    .line 589
    :cond_9
    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->setShowVolteIcon(Z)V

    :cond_a
    return-object v0
.end method

.method updateVoWifiLabel(Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;)V
    .locals 3

    .line 813
    iget v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string/jumbo v1, "vowifi_operator_label"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 814
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->isShowVowiFiIcon()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 815
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->fillWifiLabel()V

    .line 816
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->checkSameVoWIFILabel()Z

    move-result p1

    .line 817
    iget v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getOppositeSimSlot(I)I

    move-result v0

    if-eqz p1, :cond_2

    .line 820
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/ImsIconManager;->isVoWiFiRegistered(I)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isVowifiRegistered()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    const/4 p2, -0x1

    .line 821
    invoke-virtual {p0, p2, p1}, Lcom/sec/internal/ims/core/ImsIconManager;->showWifiRegistrationStateQuickPanel(IZ)V

    return-void

    .line 824
    :cond_2
    iget p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isVowifiRegistered()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/ImsIconManager;->showWifiRegistrationStateQuickPanel(IZ)V

    :cond_3
    return-void
.end method

.method protected updateVolteIcon(Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;Z)V
    .locals 6

    .line 703
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->VOLTE_ICON_SLOT:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 708
    :cond_0
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mUseDualVolteIcon:Z

    const/high16 v1, 0x7f070000

    const v2, 0x7f070001

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_5

    .line 709
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isVowifiRegistered()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->isShowVowiFiIcon()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 710
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager$Icon;->VOWIFI:Lcom/sec/internal/ims/core/ImsIconManager$Icon;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/ImsIconManager;->getDualIMSIconName(Lcom/sec/internal/ims/core/ImsIconManager$Icon;)Ljava/lang/String;

    move-result-object v3

    .line 711
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v5, v3

    move-object v3, v0

    move-object v0, v5

    goto/16 :goto_3

    .line 712
    :cond_1
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isVolteRegistered()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->isShowVolteIcon()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 713
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->needDisplayVo5gIcon()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager$Icon;->VO5G:Lcom/sec/internal/ims/core/ImsIconManager$Icon;

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager$Icon;->VOLTE:Lcom/sec/internal/ims/core/ImsIconManager$Icon;

    .line 714
    :goto_1
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/ImsIconManager;->getDualIMSIconName(Lcom/sec/internal/ims/core/ImsIconManager$Icon;)Ljava/lang/String;

    move-result-object v3

    .line 715
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 716
    :cond_3
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->isShowVolteIcon()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->needShowNoCTCVoLTEIcon()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 717
    invoke-virtual {p2, v4}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->setVolteRegistered(Z)V

    .line 718
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stat_sys_phone_no_volte_chn_hd"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    add-int/2addr v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 719
    :cond_4
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isCrossSimRegistered()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 720
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->getCrossSimIconName()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 722
    :cond_5
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isVolteRegistered()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->isShowVolteIcon()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 723
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->needDisplayVo5gIcon()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->getVo5gIconName()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->getVolteIconName()Ljava/lang/String;

    move-result-object v0

    :goto_2
    move-object v3, v0

    .line 724
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 725
    :cond_7
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isVowifiRegistered()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->isShowVowiFiIcon()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 726
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->getVowifiIconName()Ljava/lang/String;

    move-result-object v3

    .line 727
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 729
    :cond_8
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->isShowVolteIcon()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->needShowNoCTCVoLTEIcon()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 730
    invoke-virtual {p2, v4}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->setVolteRegistered(Z)V

    const-string/jumbo v0, "stat_sys_phone_no_volte_chn_ctc"

    goto :goto_3

    :cond_9
    move-object v0, v3

    :goto_3
    if-nez v3, :cond_a

    const-string v3, ""

    .line 740
    :cond_a
    iget-boolean v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mIsDebuggable:Z

    if-eqz v1, :cond_b

    if-eqz p3, :cond_b

    .line 742
    invoke-virtual {p2, v4}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->setVolteRegistered(Z)V

    const-string/jumbo v0, "stat_sys_phone_call_skt"

    .line 744
    :cond_b
    sget-object p3, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateVolteIcon: iconNametoSet="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 745
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_c

    .line 746
    iget-object p3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->VOLTE_ICON_SLOT:Ljava/lang/String;

    invoke-virtual {p0, p3, v0, v3}, Lcom/sec/internal/ims/core/ImsIconManager;->setIconSlot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    :cond_c
    iget-object p3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->VOLTE_ICON_SLOT:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/ImsIconManager;->getVolteIconVisibility(Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;)Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lcom/sec/internal/ims/core/ImsIconManager;->setIconVisibility(Ljava/lang/String;Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;)V

    return-void
.end method
