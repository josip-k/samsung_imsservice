.class public Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;
.super Ljava/lang/Object;
.source "SoftphoneClient.java"


# static fields
.field private static final HANDLE_EVENT_ADS_CHANGED:I


# instance fields
.field public final LOG_TAG:Ljava/lang/String;

.field mAccessToken:Ljava/lang/String;

.field private mAccessTokenType:Ljava/lang/String;

.field final mAccountId:Ljava/lang/String;

.field mAlarmManager:Landroid/app/AlarmManager;

.field private mAppKey:Ljava/lang/String;

.field private mAppSecret:Ljava/lang/String;

.field private mAutoRetry:Ljava/util/concurrent/atomic/AtomicBoolean;

.field mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field mEncryptionHelper:Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;

.field private mEnvironment:I

.field public mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field private mHandler:Landroid/os/Handler;

.field public mHost:Ljava/lang/String;

.field protected mIdentity:Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;

.field protected final mImsRegistrationListener:Lcom/sec/ims/IImsRegistrationListener;

.field protected mIsRecovery:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected mLoggedOut:Z

.field protected mPhoneId:I

.field protected mProfileId:I

.field mProgressListeners:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/sec/vsim/attsoftphone/IProgressListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mRefreshIdentityIntent:Landroid/app/PendingIntent;

.field mRefreshToken:Ljava/lang/String;

.field mRefreshTokenIntent:Landroid/app/PendingIntent;

.field private mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

.field mRequestBuilder:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;

.field mResendSmsIntent:Landroid/app/PendingIntent;

.field mSecretKey:Ljavax/crypto/SecretKey;

.field protected mSharedPrefHelper:Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;

.field mSoftphoneEmergencyServcie:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneEmergencyService;

.field protected mSoftphoneLabelObserver:Landroid/database/ContentObserver;

.field protected mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

.field mSupplementaryServiceListeners:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/sec/vsim/attsoftphone/ISupplementaryServiceListener;",
            ">;"
        }
    .end annotation
.end field

.field private mTGaurdAppId:Ljava/lang/String;

.field private mTGaurdToken:Ljava/lang/String;

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTokenExpiresTime:J

.field private mUserHandle:Landroid/os/UserHandle;

.field mUserId:I

.field mUserManager:Landroid/os/UserManager;


# direct methods
.method public static synthetic $r8$lambda$B_dZ1C0Kil-f05CTvnh1jib-99Y(Landroid/net/NetworkCapabilities;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->lambda$reLogin$1(Landroid/net/NetworkCapabilities;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$TZas5MCqIhp_jFkq63XX-XnxzU0(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;Landroid/location/Address;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->lambda$checkAutoRegistrationCondition$3(Landroid/location/Address;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZOvgrhD910VAUqq-poV-T9Y9GlE(Landroid/net/NetworkCapabilities;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->lambda$reLogin$2(Landroid/net/NetworkCapabilities;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$jVeDcsFWOoT6x77TMg3uyLTNTds(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;Landroid/net/Network;)Landroid/net/NetworkCapabilities;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->lambda$reLogin$0(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRegistrationManager(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;)Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    return-object p0
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Landroid/os/Looper;)V
    .locals 6

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mProgressListeners:Ljava/util/concurrent/ConcurrentHashMap;

    .line 143
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSupplementaryServiceListeners:Ljava/util/concurrent/ConcurrentHashMap;

    .line 144
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mListeners:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 146
    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccessToken:Ljava/lang/String;

    .line 147
    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccessTokenType:Ljava/lang/String;

    const-wide/16 v1, -0x1

    .line 148
    iput-wide v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mTokenExpiresTime:J

    .line 149
    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRefreshToken:Ljava/lang/String;

    .line 150
    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRefreshTokenIntent:Landroid/app/PendingIntent;

    .line 151
    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mResendSmsIntent:Landroid/app/PendingIntent;

    .line 152
    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRefreshIdentityIntent:Landroid/app/PendingIntent;

    .line 153
    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mTGaurdToken:Ljava/lang/String;

    .line 154
    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mTGaurdAppId:Ljava/lang/String;

    const/4 v1, 0x0

    .line 156
    iput v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mPhoneId:I

    .line 158
    new-instance v2, Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;

    invoke-direct {v2}, Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;-><init>()V

    iput-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mIdentity:Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;

    const/4 v2, -0x1

    .line 159
    iput v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mProfileId:I

    const/4 v2, 0x1

    .line 160
    iput-boolean v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mLoggedOut:Z

    .line 161
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAutoRetry:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 162
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mIsRecovery:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 167
    iput v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    .line 168
    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserHandle:Landroid/os/UserHandle;

    .line 174
    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mHandler:Landroid/os/Handler;

    .line 176
    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    .line 269
    new-instance v2, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$3;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$3;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;)V

    iput-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mImsRegistrationListener:Lcom/sec/ims/IImsRegistrationListener;

    .line 178
    iput-object p2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    .line 179
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    .line 180
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    const-string/jumbo v2, "phone"

    .line 181
    invoke-virtual {p2, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string v2, "connectivity"

    .line 182
    invoke-virtual {p2, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    iput-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const-string v2, "alarm"

    .line 183
    invoke-virtual {p2, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAlarmManager:Landroid/app/AlarmManager;

    const-string/jumbo v2, "user"

    .line 184
    invoke-virtual {p2, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    iput-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserManager:Landroid/os/UserManager;

    .line 185
    invoke-static {}, Lcom/sec/ims/extensions/Extensions$ActivityManager;->getCurrentUser()I

    move-result v2

    iput v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    .line 186
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserManager:Landroid/os/UserManager;

    int-to-long v4, v2

    invoke-virtual {v3, v4, v5}, Landroid/os/UserManager;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserHandle:Landroid/os/UserHandle;

    if-nez v2, :cond_0

    .line 188
    sget-object v2, Lcom/sec/ims/extensions/ContextExt;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    iput-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserHandle:Landroid/os/UserHandle;

    .line 190
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->LOG_TAG:Ljava/lang/String;

    .line 191
    new-instance v3, Lcom/sec/internal/helper/SimpleEventLog;

    const/16 v4, 0xc8

    invoke-direct {v3, p2, v2, v4}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 193
    new-instance v2, Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;

    const-string/jumbo v3, "softphone"

    invoke-direct {v2, v3}, Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSharedPrefHelper:Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;

    const-string v2, "AES"

    .line 194
    invoke-static {v2}, Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;->getInstance(Ljava/lang/String;)Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEncryptionHelper:Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;

    .line 196
    :try_start_0
    invoke-static {v2}, Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;->generateKey(Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSecretKey:Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 198
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :goto_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v2

    iput v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mPhoneId:I

    .line 201
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mImsRegistrationListener:Lcom/sec/ims/IImsRegistrationListener;

    invoke-interface {v3, v4, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->registerListener(Lcom/sec/ims/IImsRegistrationListener;I)V

    .line 202
    new-instance v2, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$1;

    invoke-direct {v2, p0, p3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$1;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mHandler:Landroid/os/Handler;

    .line 221
    invoke-static {v2, v1, v0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->registerForADSChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 223
    new-instance v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    invoke-direct {v0, p3, p2, p1, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;-><init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;)V

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    .line 225
    new-instance p1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneEmergencyService;

    invoke-direct {p1, p2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneEmergencyService;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSoftphoneEmergencyServcie:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneEmergencyService;

    .line 226
    new-instance p1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;

    invoke-direct {p1, p2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRequestBuilder:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;

    .line 228
    new-instance p1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$2;

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, p0, p2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$2;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSoftphoneLabelObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private addMsipHeaders(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;)Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 1730
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_CONFIG_BRAND_NAME"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1731
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SCH_SCC_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "x-att-clientId"

    invoke-virtual {p1, v1, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "x-att-clientVersion"

    const-string v1, "1.0"

    .line 1732
    invoke-virtual {p1, v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1734
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPrimaryImei()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "x-att-deviceId"

    invoke-virtual {p1, v1, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "x-att-contextInfo"

    .line 1738
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->getContextInfo()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method private checkWithCondition(Ljava/util/List;Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule;ZILjava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;",
            ">;",
            "Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule;",
            "ZI",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1582
    iget-object v0, p2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule;->mConditions:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;

    iget-object v1, v0, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;->mBusy:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 1583
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v0, "condition: busy"

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1584
    new-instance p0, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;

    if-eqz p3, :cond_0

    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_0

    iget-object p2, p2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule;->mConditions:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;

    iget-object p2, p2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;->mRuleDeactivated:Ljava/lang/String;

    if-nez p2, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    const/4 v6, 0x0

    const/4 v8, 0x1

    move-object v4, p0

    move v7, p4

    move-object v9, p5

    invoke-direct/range {v4 .. v9}, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;-><init>(ZZIILjava/lang/String;)V

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 1586
    :cond_1
    iget-object v1, v0, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;->mNoAnswer:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 1587
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v0, "condition: no-answer"

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1588
    new-instance p0, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;

    if-eqz p3, :cond_2

    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_2

    iget-object p2, p2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule;->mConditions:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;

    iget-object p2, p2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;->mRuleDeactivated:Ljava/lang/String;

    if-nez p2, :cond_2

    move v5, v2

    goto :goto_1

    :cond_2
    move v5, v3

    :goto_1
    const/4 v6, 0x0

    const/4 v8, 0x2

    move-object v4, p0

    move v7, p4

    move-object v9, p5

    invoke-direct/range {v4 .. v9}, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;-><init>(ZZIILjava/lang/String;)V

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 1590
    :cond_3
    iget-object v1, v0, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;->mNotReachable:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 1591
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v0, "condition: not-reachable"

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1592
    new-instance p0, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;

    if-eqz p3, :cond_4

    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_4

    iget-object p2, p2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule;->mConditions:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;

    iget-object p2, p2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;->mRuleDeactivated:Ljava/lang/String;

    if-nez p2, :cond_4

    move v5, v2

    goto :goto_2

    :cond_4
    move v5, v3

    :goto_2
    const/4 v6, 0x0

    const/4 v8, 0x3

    move-object v4, p0

    move v7, p4

    move-object v9, p5

    invoke-direct/range {v4 .. v9}, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;-><init>(ZZIILjava/lang/String;)V

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1594
    :cond_5
    iget-object v1, v0, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;->mNotRegistered:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 1595
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v0, "condition: not-registered"

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1596
    new-instance p0, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;

    if-eqz p3, :cond_6

    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_6

    iget-object p2, p2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule;->mConditions:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;

    iget-object p2, p2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;->mRuleDeactivated:Ljava/lang/String;

    if-nez p2, :cond_6

    move v5, v2

    goto :goto_3

    :cond_6
    move v5, v3

    :goto_3
    const/4 v6, 0x0

    const/16 v8, 0x8

    move-object v4, p0

    move v7, p4

    move-object v9, p5

    invoke-direct/range {v4 .. v9}, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;-><init>(ZZIILjava/lang/String;)V

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1598
    :cond_7
    iget-object v0, v0, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;->mUnconditional:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 1599
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v0, "condition: unconditional"

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1600
    new-instance p0, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;

    if-eqz p3, :cond_8

    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_8

    iget-object p2, p2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule;->mConditions:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;

    iget-object p2, p2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;->mRuleDeactivated:Ljava/lang/String;

    if-nez p2, :cond_8

    move v5, v2

    goto :goto_4

    :cond_8
    move v5, v3

    :goto_4
    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v4, p0

    move v7, p4

    move-object v9, p5

    invoke-direct/range {v4 .. v9}, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;-><init>(ZZIILjava/lang/String;)V

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_5
    return-void
.end method

.method private deregisterSoftphoneLabelObserver()V
    .locals 2

    .line 1329
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "deregisterSoftphoneLabelObserver()"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1331
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSoftphoneLabelObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method private findAndRemoveListener(I)Ljava/lang/Object;
    .locals 1

    .line 462
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 463
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->delete(I)V

    return-object v0
.end method

.method private getAccountSecretKey()V
    .locals 9

    .line 1885
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAccount;->buildAccountIdUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v4

    const-string/jumbo v6, "userid = ?"

    .line 1887
    iget v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v7

    .line 1888
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1889
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1890
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " secretKey"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1891
    invoke-static {v0}, Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;->getSecretKey(Landroid/database/Cursor;)Ljavax/crypto/SecretKey;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSecretKey:Ljavax/crypto/SecretKey;

    .line 1892
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void
.end method

.method private getCallForwardingInfo(IJ)V
    .locals 3

    .line 789
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCallForwardingInfo():retryCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", timeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 790
    new-instance v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;)V

    const-string v1, "/callHandlingFeatures/v1/communication-diversion"

    .line 792
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->initHttpRequest(Ljava/lang/String;)V

    const-string v1, "Accept"

    const-string v2, "application/xcap-el+xml"

    .line 793
    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    sget-object v1, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->GET:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setRequestMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)V

    .line 796
    invoke-virtual {v0, p2, p3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setTimeout(J)V

    .line 798
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 p2, 0x9

    const/4 p3, -0x1

    invoke-virtual {p0, p2, p1, p3, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method private getCallHandlingTxn(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;
    .locals 1

    .line 847
    new-instance v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;)V

    .line 849
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->initHttpRequest(Ljava/lang/String;)V

    const-string p0, "Content-Type"

    const-string p1, "application/xcap-el+xml"

    .line 850
    invoke-virtual {v0, p0, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "Accept"

    .line 851
    invoke-virtual {v0, p0, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setStringBody(Ljava/lang/String;)V

    .line 855
    sget-object p0, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->PUT:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setRequestMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)V

    return-object v0
.end method

.method private getContextInfo()Ljava/lang/String;
    .locals 2

    .line 1720
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mdl="

    .line 1721
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1722
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/internal/helper/entitlement/softphone/SoftphoneAuthUtils;->getDeviceType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",os="

    .line 1723
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1724
    sget-object p0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1725
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getCurrentAddress()J
    .locals 7

    .line 1164
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAddress;->buildGetCurrentAddressUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1165
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_1

    .line 1168
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " current addresses"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1169
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v1, "_id"

    .line 1170
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 1172
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1174
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentAddress(): id = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    return-wide v1
.end method

.method private synthetic lambda$checkAutoRegistrationCondition$3(Landroid/location/Address;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1111
    invoke-virtual {p1}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object p1

    .line 1112
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAddressObtained(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    const-string v1, "US"

    .line 1113
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "VI"

    .line 1114
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "PR"

    .line 1115
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1120
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->tryRegister()V

    const-string p1, "com.samsung.softphone.action.ACCOUNT_IN_INTERNATIONAL"

    .line 1121
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->broadcastIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, "com.samsung.softphone.action.ACCOUNT_MISSING_E911"

    .line 1117
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->broadcastIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1124
    :cond_2
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "onAddressObtained(): cannot determine location"

    invoke-virtual {p1, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    const-string p1, "com.samsung.softphone.action.ACCOUNT_LOCATION_UNKNOWN"

    .line 1126
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->broadcastIntent(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private synthetic lambda$reLogin$0(Landroid/net/Network;)Landroid/net/NetworkCapabilities;
    .locals 0

    .line 737
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p0, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$reLogin$1(Landroid/net/NetworkCapabilities;)Z
    .locals 1

    const/16 v0, 0xc

    .line 738
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$reLogin$2(Landroid/net/NetworkCapabilities;)Z
    .locals 1

    const/16 v0, 0x10

    .line 739
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    return p0
.end method

.method private registerSoftphoneLabelObserver(Ljava/lang/String;)V
    .locals 3

    .line 1322
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerSoftphoneLabelObserver() for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1324
    iget v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAccount;->buildAccountLabelUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object p1

    .line 1325
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSoftphoneLabelObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private removeSharedPreferences()V
    .locals 14

    .line 476
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo v1, "removeSharedPreferences()"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 477
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSharedPrefHelper:Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "tguard_token"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "tguard_appid"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "environment"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "impi"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "impu"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "fqdn"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "refresh_token"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "pd_cookies"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "sms_time"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    filled-new-array/range {v5 .. v13}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;->remove(Landroid/content/Context;[Ljava/lang/String;)V

    return-void
.end method

.method private retryObtainPdCookies(I)V
    .locals 1

    add-int/lit8 p1, p1, 0x1

    const/4 v0, 0x3

    if-ge p1, v0, :cond_0

    .line 1822
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->obtainPdCookies(I)V

    :cond_0
    return-void
.end method

.method private saveAccountIdentities(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 368
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 369
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "impi"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEncryptionHelper:Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSecretKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v3, p1, v4}, Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;->encrypt(Ljava/lang/String;Ljavax/crypto/SecretKey;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "impu"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEncryptionHelper:Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSecretKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v1, p2, v3}, Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;->encrypt(Ljava/lang/String;Ljavax/crypto/SecretKey;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "fqdn"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEncryptionHelper:Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSecretKey:Ljavax/crypto/SecretKey;

    invoke-virtual {p2, p3, v1}, Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;->encrypt(Ljava/lang/String;Ljavax/crypto/SecretKey;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSharedPrefHelper:Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;

    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0, v0}, Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;->save(Landroid/content/Context;Ljava/util/Map;)V

    return-void
.end method

.method private saveListener(ILjava/lang/Object;)V
    .locals 0

    .line 458
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mListeners:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method private scheduleRefreshIdentityAlarm(J)V
    .locals 5

    .line 448
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 449
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "refresh_identity"

    .line 450
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 452
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    const/high16 v2, 0x2000000

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRefreshIdentityIntent:Landroid/app/PendingIntent;

    .line 453
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p1

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRefreshIdentityIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/app/AlarmManager;->setAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 454
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "refresh identity after "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    return-void
.end method

.method private sendSMS(Ljava/lang/String;I)V
    .locals 11

    .line 1827
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo v1, "sendSMS()"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1829
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mIdentity:Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;->getImpu()Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    .line 1831
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const-string v3, "@"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1830
    invoke-static {v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;->buildSendSMSRequest(Ljava/lang/String;)Lcom/sec/internal/constants/ims/entitilement/softphone/requests/SendSMSRequest;

    move-result-object v0

    .line 1833
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/softphone/VSimClient;->getHttpTransactionId()I

    move-result v1

    .line 1834
    new-instance v3, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    invoke-direct {v3, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;)V

    .line 1836
    iget v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEnvironment:I

    const-string v5, "Host"

    if-ne v2, v4, :cond_0

    const-string v2, "https://messagessd.att.net/messaging/v0/outbound"

    .line 1837
    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setRequestURL(Ljava/lang/String;)V

    const-string v2, "messagessd.att.net"

    .line 1838
    invoke-virtual {v3, v5, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v2, "https://messagessd.stage.att.net/messaging/v0/outbound"

    .line 1840
    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setRequestURL(Ljava/lang/String;)V

    const-string v2, "messagessd.stage.att.net"

    .line 1841
    invoke-virtual {v3, v5, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v2, "Cookie"

    .line 1843
    invoke-virtual {v3, v2, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Content-Type"

    const-string v2, "application/json"

    .line 1844
    invoke-virtual {v3, p1, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Accept"

    .line 1845
    invoke-virtual {v3, p1, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "transactionId"

    .line 1846
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, p1, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1847
    invoke-direct {p0, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->addMsipHeaders(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;)Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    move-result-object v8

    .line 1850
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    .line 1852
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1853
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\/"

    const-string v1, "/"

    .line 1854
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 1855
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendSMS(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1856
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {v8, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setByteData([B)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1858
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "could not build JSONObject:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1861
    :goto_1
    sget-object p1, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->POST:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {v8, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setRequestMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)V

    .line 1862
    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v5, 0x3fe

    const/4 v7, -0x1

    int-to-long p0, p2

    const-wide/32 v0, 0xea60

    mul-long v9, p0, v0

    move v6, p2

    invoke-virtual/range {v4 .. v10}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(IIILjava/lang/Object;J)V

    return-void
.end method

.method private setAddressCurrent(J)V
    .locals 3

    .line 1179
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAddressCurrent(): id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1180
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAddress;->buildSetCurrentAddressUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object p1

    .line 1181
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    .line 1182
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private setCallForwardingInfo(Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;IJ)V
    .locals 3

    .line 826
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCallForwardingInfo() retryCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", timeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    const/16 v0, 0xb

    if-nez p1, :cond_0

    .line 829
    new-instance p1, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;

    const/4 p2, 0x0

    const-string p3, "null info"

    invoke-direct {p1, v0, p2, p3}, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;-><init>(IZLjava/lang/String;)V

    .line 831
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->notifySsProgress(Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;)V

    return-void

    .line 835
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;->buildSetCallForwardingInfoRequest(Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/callHandlingFeatures/v1/communication-diversion"

    .line 836
    invoke-direct {p0, v2, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->getCallHandlingTxn(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    move-result-object v1

    .line 837
    invoke-virtual {v1, p3, p4}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setTimeout(J)V

    .line 839
    iget-object p3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/4 p4, -0x1

    invoke-virtual {p3, v0, p2, p4, v1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 840
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string p4, "communication-diversion"

    .line 841
    invoke-virtual {p3, p4, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 842
    invoke-virtual {p2, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 843
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    invoke-virtual {p0, p2}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method private setCallWaitingInfo(Lcom/sec/vsim/attsoftphone/data/CallWaitingInfo;IJ)V
    .locals 3

    .line 804
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCallWaitingInfo(): retryCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", timeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    const/16 v0, 0xa

    if-nez p1, :cond_0

    .line 807
    new-instance p1, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;

    const/4 p2, 0x0

    const-string p3, "null info"

    invoke-direct {p1, v0, p2, p3}, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;-><init>(IZLjava/lang/String;)V

    .line 808
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->notifySsProgress(Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;)V

    return-void

    .line 812
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;->buildSetCallWaitingInfoRequest(Lcom/sec/vsim/attsoftphone/data/CallWaitingInfo;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/callHandlingFeatures/v1/communication-waiting"

    .line 813
    invoke-direct {p0, v2, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->getCallHandlingTxn(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    move-result-object v1

    .line 814
    invoke-virtual {v1, p3, p4}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setTimeout(J)V

    .line 816
    iget-object p3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/4 p4, -0x1

    invoke-virtual {p3, v0, p2, p4, v1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 817
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string p4, "communication-waiting"

    .line 818
    invoke-virtual {p3, p4, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 819
    invoke-virtual {p2, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 820
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    invoke-virtual {p0, p2}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method private setupEnvironment(I)V
    .locals 2

    .line 468
    iput p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEnvironment:I

    .line 469
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/sec/internal/helper/entitlement/softphone/SoftphoneAuthUtils;->setupAppKey(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAppKey:Ljava/lang/String;

    .line 470
    invoke-static {p1, v0}, Lcom/sec/internal/helper/entitlement/softphone/SoftphoneAuthUtils;->setupAppSecret(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAppSecret:Ljava/lang/String;

    const-string p1, "api.att.com"

    .line 471
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mHost:Ljava/lang/String;

    .line 472
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setupEnvironment(): appKey: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAppKey:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", appSecret: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAppSecret:Ljava/lang/String;

    invoke-static {p0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    return-void
.end method

.method private storeTokens(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    .line 376
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAccount;->buildAccountIdUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    .line 377
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "access_token"

    .line 378
    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "token_type"

    .line 379
    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSharedPrefHelper:Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;

    iget-object p2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "refresh_token"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEncryptionHelper:Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRefreshToken:Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSecretKey:Ljavax/crypto/SecretKey;

    .line 381
    invoke-virtual {v3, v4, v5}, Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;->encrypt(Ljava/lang/String;Ljavax/crypto/SecretKey;)Ljava/lang/String;

    move-result-object v3

    .line 380
    invoke-virtual {p1, p2, v2, v3}, Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;->save(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, v0, v1, p1, p1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private updateAccountInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 356
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAccount;->buildAccountIdUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    .line 357
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "impi"

    .line 358
    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, ":"

    .line 359
    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    const-string v2, "@"

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, p1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string p2, "msisdn"

    .line 360
    invoke-virtual {v1, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSecretKey:Ljavax/crypto/SecretKey;

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object p1

    const/4 p2, 0x2

    invoke-static {p1, p2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "secret_key"

    invoke-virtual {v1, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    iget p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEnvironment:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "environment"

    invoke-virtual {v1, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 364
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, v0, v1, p1, p1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private updateE911AddressLocally(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1266
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo v1, "updateE911AddressLocally()"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    int-to-long v0, p1

    .line 1268
    invoke-static {v0, v1}, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAddress;->buildAddressUri(J)Landroid/net/Uri;

    move-result-object p1

    .line 1270
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "account_id"

    .line 1271
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "E911AID"

    .line 1272
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "expire_date"

    .line 1273
    invoke-virtual {v0, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1275
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v0, p2, p2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private validateE911Address(IZLcom/sec/vsim/attsoftphone/IEmergencyServiceListener;IJ)V
    .locals 5

    .line 656
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "validateE911Address(): addressId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", confirmed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", retryCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", timeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 659
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRequestBuilder:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;->buildAddressValidationRequest(IZ)Lcom/sec/internal/constants/ims/entitilement/softphone/requests/AddressValidationRequest;

    move-result-object v0

    .line 661
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    invoke-virtual {v1}, Lcom/sec/internal/ims/entitlement/softphone/VSimClient;->getHttpTransactionId()I

    move-result v1

    if-eqz p3, :cond_0

    .line 663
    invoke-direct {p0, v1, p3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->saveListener(ILjava/lang/Object;)V

    .line 665
    :cond_0
    new-instance p3, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    invoke-direct {p3, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;)V

    const-string v2, "/emergencyServices/v1/e911Locations"

    .line 667
    invoke-virtual {p3, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->initHttpRequest(Ljava/lang/String;)V

    const-string v2, "Content-Type"

    const-string v3, "application/json"

    .line 668
    invoke-virtual {p3, v2, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 673
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 674
    invoke-virtual {p3, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setJsonBody(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 676
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "could not build JSONObject:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    :goto_0
    sget-object v0, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->POST:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {p3, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setRequestMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)V

    .line 680
    invoke-virtual {p3, p5, p6}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setTimeout(J)V

    .line 682
    iget-object p5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/4 p6, 0x6

    invoke-virtual {p5, p6, v1, p1, p3}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 683
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo p5, "retry_count"

    .line 684
    invoke-virtual {p3, p5, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p4, "confirmed"

    .line 685
    invoke-virtual {p3, p4, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 686
    invoke-virtual {p1, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 687
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method addE911Address(IIJ)V
    .locals 5

    .line 1279
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addE911Address(): addressId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", retryCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", timeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1281
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRequestBuilder:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;->buildAddAddressRequest(I)Lcom/sec/internal/constants/ims/entitilement/softphone/requests/AddAddressRequest;

    move-result-object v0

    .line 1283
    new-instance v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;)V

    const-string v2, "/softphone/v1/locations"

    .line 1285
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->initHttpRequest(Ljava/lang/String;)V

    const-string v2, "Content-Type"

    const-string v3, "application/json"

    .line 1286
    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1289
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 1291
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1292
    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setJsonBody(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1294
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "could not build JSONObject:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1297
    :goto_0
    sget-object v0, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->POST:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setRequestMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)V

    .line 1298
    invoke-virtual {v1, p3, p4}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setTimeout(J)V

    .line 1300
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/4 p3, 0x7

    invoke-virtual {p0, p3, p2, p1, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public broadcastExplicitIntent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 992
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "com.android.phone"

    .line 993
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "com.sec.android.softphone"

    .line 994
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 995
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 996
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "account_id"

    .line 997
    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_0

    const-string v3, "msisdn"

    .line 999
    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1002
    :cond_0
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "broadcastIntent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1003
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "broadcastIntent: extras: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1005
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserHandle:Landroid/os/UserHandle;

    invoke-static {v1, v2, v3}, Lcom/sec/internal/helper/os/IntentUtil;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public broadcastIntent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 981
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p1, "account_id"

    .line 982
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_0

    const-string p1, "msisdn"

    .line 984
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 986
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "broadcastIntent: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 987
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "broadcastIntent: extras: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserHandle:Landroid/os/UserHandle;

    invoke-static {p1, v0, p0}, Lcom/sec/internal/helper/os/IntentUtil;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method checkAutoRegistrationCondition()V
    .locals 2

    .line 1104
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->tryRegisterWithDefaultAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1107
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;-><init>(Landroid/content/Context;)V

    .line 1108
    new-instance v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;)V

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow;->requestGeolocationUpdate(Lcom/sec/internal/ims/entitlement/util/GeolocationUpdateFlow$LocationUpdateListener;)V

    return-void
.end method

.method public deleteAddress(J)V
    .locals 2

    .line 1976
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "deleteAddress :"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 1979
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-static {p1}, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAddress;->buildDeleteAllAddressUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 1980
    iget-object p2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteAddressAll` Uri is` : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    goto :goto_0

    .line 1982
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAddress;->buildDeleteSingleAddressUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object p1

    .line 1983
    iget-object p2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteAddressbyId Uri is : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1986
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public deregisterProgressListener(I)V
    .locals 0

    .line 527
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mProgressListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public deregisterSupplementaryServiceListener(I)V
    .locals 0

    .line 537
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSupplementaryServiceListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public dump(Lcom/sec/internal/log/IndentingPrintWriter;)V
    .locals 2

    .line 905
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dump of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 906
    invoke-virtual {p1}, Lcom/sec/internal/log/IndentingPrintWriter;->increaseIndent()V

    .line 907
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/SimpleEventLog;->dump(Lcom/sec/internal/log/IndentingPrintWriter;)V

    .line 908
    invoke-virtual {p1}, Lcom/sec/internal/log/IndentingPrintWriter;->decreaseIndent()V

    return-void
.end method

.method public exchangeForAccessToken(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V
    .locals 9

    const/4 v6, 0x0

    .line 556
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType4:[J

    const/4 v1, 0x0

    aget-wide v7, v0, v1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v8}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->exchangeForAccessToken(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IIJ)V

    return-void
.end method

.method exchangeForAccessToken(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IIJ)V
    .locals 5

    .line 567
    invoke-static {}, Lcom/sec/ims/extensions/Extensions$ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    .line 568
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserManager:Landroid/os/UserManager;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/os/UserManager;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserHandle:Landroid/os/UserHandle;

    if-nez v0, :cond_0

    .line 570
    sget-object v0, Lcom/sec/ims/extensions/ContextExt;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserHandle:Landroid/os/UserHandle;

    .line 572
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exchangeForAccessToken request: authCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", tGuardAppId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exchangeForAccessToken request: accountId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", autoRegister: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", environment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", retryCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", timeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p7, p8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", mUserId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    if-nez p1, :cond_1

    .line 578
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string p1, "authorizationCode is null"

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    return-void

    .line 582
    :cond_1
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mTGaurdToken:Ljava/lang/String;

    .line 583
    iput-object p4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mTGaurdAppId:Ljava/lang/String;

    .line 584
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 585
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "tguard_token"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEncryptionHelper:Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSecretKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v3, p1, v4}, Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;->encrypt(Ljava/lang/String;Ljavax/crypto/SecretKey;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "tguard_appid"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEncryptionHelper:Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSecretKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v3, p4, v4}, Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;->encrypt(Ljava/lang/String;Ljavax/crypto/SecretKey;)Ljava/lang/String;

    move-result-object p4

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "environment"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    iget-object p4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSharedPrefHelper:Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    invoke-virtual {p4, v1, v0}, Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;->save(Landroid/content/Context;Ljava/util/Map;)V

    .line 594
    invoke-direct {p0, p5}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->setupEnvironment(I)V

    .line 596
    iget-object p4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAppKey:Ljava/lang/String;

    iget-object p5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAppSecret:Ljava/lang/String;

    .line 597
    invoke-static {p4, p5, p2, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;->buildExchangeForAccessTokenRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/entitilement/softphone/requests/ExchangeForAccessTokenRequest;

    move-result-object p1

    .line 599
    new-instance p2, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    invoke-direct {p2, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;)V

    const-string p4, "/oauth/v4/token"

    .line 601
    invoke-virtual {p2, p4}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->initHttpRequest(Ljava/lang/String;)V

    const-string p4, "Content-Type"

    const-string p5, "application/x-www-form-urlencoded"

    .line 602
    invoke-virtual {p2, p4, p5}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    new-instance p4, Lcom/google/gson/Gson;

    invoke-direct {p4}, Lcom/google/gson/Gson;-><init>()V

    .line 606
    :try_start_0
    new-instance p5, Lorg/json/JSONObject;

    invoke-virtual {p4, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p5, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 607
    invoke-virtual {p2, p5}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setJsonBody(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 609
    iget-object p4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->LOG_TAG:Ljava/lang/String;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "could not build JSONObject:"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    :goto_0
    sget-object p1, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->POST:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setRequestMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)V

    .line 613
    invoke-virtual {p2, p7, p8}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setTimeout(J)V

    if-lez p6, :cond_2

    .line 616
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 p1, 0x403

    invoke-virtual {p0, p1, p6, p3, p2}, Lcom/sec/internal/helper/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_1

    .line 618
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p6, p3, p2}, Lcom/sec/internal/helper/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    :goto_1
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 248
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "finalize()"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 249
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccessToken:Ljava/lang/String;

    return-object p0
.end method

.method public getAccessTokenType()Ljava/lang/String;
    .locals 0

    .line 260
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccessTokenType:Ljava/lang/String;

    return-object p0
.end method

.method public getAutoRetryComSet(ZZ)Z
    .locals 0

    .line 267
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAutoRetry:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p0

    return p0
.end method

.method public getCallForwardingInfo()V
    .locals 4

    .line 786
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType1:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    invoke-direct {p0, v1, v2, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->getCallForwardingInfo(IJ)V

    return-void
.end method

.method public getCallWaitingInfo()V
    .locals 4

    .line 771
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType1:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->getCallWaitingInfo(IJ)V

    return-void
.end method

.method getCallWaitingInfo(IJ)V
    .locals 3

    .line 774
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCallWaitingInfo(): retryCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", timeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 775
    new-instance v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;)V

    const-string v1, "/callHandlingFeatures/v1/communication-waiting"

    .line 777
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->initHttpRequest(Ljava/lang/String;)V

    const-string v1, "Accept"

    const-string v2, "application/xcap-el+xml"

    .line 778
    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    sget-object v1, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->GET:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setRequestMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)V

    .line 781
    invoke-virtual {v0, p2, p3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setTimeout(J)V

    .line 783
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 p2, 0x8

    const/4 p3, -0x1

    invoke-virtual {p0, p2, p1, p3, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method getDefaultAddress()J
    .locals 7

    .line 1149
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAddress;->buildGetDefaultAddressUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1150
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_1

    .line 1153
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " default addresses"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1154
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v1, "_id"

    .line 1155
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 1157
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1159
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDefaultAddress(): id = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    return-wide v1
.end method

.method public getDeviceList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/vsim/attsoftphone/data/DeviceInfo;",
            ">;"
        }
    .end annotation

    .line 861
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 862
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mPhoneId:I

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfoByPhoneId(I)[Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 863
    array-length v2, v1

    if-lez v2, :cond_3

    const/4 v2, 0x0

    .line 864
    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getDeviceList()Ljava/util/List;

    move-result-object v1

    .line 865
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reg.deviceList: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 866
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/util/NameAddr;

    .line 867
    invoke-virtual {v2}, Lcom/sec/ims/util/NameAddr;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    .line 869
    invoke-virtual {v2}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    const-string v4, ""

    if-eqz v2, :cond_0

    const-string v5, "gr"

    .line 871
    invoke-virtual {v2, v5}, Lcom/sec/ims/util/ImsUri;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    move-object v2, v4

    .line 876
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 877
    new-instance v2, Lcom/sec/vsim/attsoftphone/data/DeviceInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "D;"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAppKey:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ";Smartphone"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v4}, Lcom/sec/vsim/attsoftphone/data/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 879
    :cond_2
    new-instance v4, Lcom/sec/vsim/attsoftphone/data/DeviceInfo;

    invoke-direct {v4, v3, v2}, Lcom/sec/vsim/attsoftphone/data/DeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 884
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDeviceList(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    return-object v0
.end method

.method public getImsNetworkIdentifiers(ZZIJI)V
    .locals 3

    .line 946
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getImsNetworkIdentifiers(): justProvisioned: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", autoRegister: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", retryCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", timeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", attempt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 949
    new-instance v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;)V

    const-string v1, "/softphone/v1/identities?SoftphoneType:sip"

    .line 951
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->initHttpRequest(Ljava/lang/String;)V

    .line 952
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccessTokenType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccessToken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Authorization"

    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    sget-object v1, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->GET:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setRequestMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)V

    .line 955
    invoke-virtual {v0, p4, p5}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setTimeout(J)V

    const-string p4, "attempt"

    if-eqz p1, :cond_0

    .line 958
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/4 p1, 0x0

    const/16 p5, 0x68

    invoke-virtual {p0, p5, p3, p2, p1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 959
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 960
    invoke-virtual {p1, p4, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 961
    invoke-virtual {p0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 963
    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->commit(Landroid/os/Message;)V

    goto :goto_0

    .line 965
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/4 p5, 0x1

    invoke-virtual {p1, p5, p3, p2, v0}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 966
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 967
    invoke-virtual {p2, p4, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 968
    invoke-virtual {p1, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    if-lez p6, :cond_1

    const-wide/16 p2, 0x1

    shl-long/2addr p2, p6

    const-wide/32 p4, 0xea60

    mul-long/2addr p2, p4

    .line 972
    iget-object p4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "SoftphoneEvents(): backoff: "

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 973
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto :goto_0

    .line 975
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    :goto_0
    return-void
.end method

.method public getProfileId()I
    .locals 0

    .line 264
    iget p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mProfileId:I

    return p0
.end method

.method public getTermsAndConditions()V
    .locals 4

    .line 1185
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType1:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->getTermsAndConditions(IJ)V

    return-void
.end method

.method getTermsAndConditions(IJ)V
    .locals 3

    .line 1188
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTermsAndConditions(): retryCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", timeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1190
    new-instance v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;)V

    const-string v1, "/softphone/v1/termsAndConditions?tcType=Url"

    .line 1192
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->initHttpRequest(Ljava/lang/String;)V

    .line 1194
    sget-object v1, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->GET:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setRequestMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)V

    .line 1195
    invoke-virtual {v0, p2, p3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setTimeout(J)V

    .line 1197
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/4 p2, 0x2

    const/4 p3, -0x1

    invoke-virtual {p0, p2, p1, p3, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public getUserId()I
    .locals 3

    .line 889
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUserId(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 890
    iget p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    return p0
.end method

.method public handleDeRegisterRequest()V
    .locals 3

    .line 1356
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleDeRegisterRequest(): mProfileId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mProfileId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1357
    iget v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mProfileId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1358
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mPhoneId:I

    invoke-interface {v1, v0, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->deregisterProfile(II)V

    const/4 v0, 0x1

    .line 1359
    iput-boolean v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mLoggedOut:Z

    :cond_0
    return-void
.end method

.method handleImsNetworkIdentityAfterRecovery()V
    .locals 12

    .line 1907
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->registerSoftphoneLabelObserver(Ljava/lang/String;)V

    .line 1908
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSharedPrefHelper:Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "impi"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1909
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSharedPrefHelper:Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "impu"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1910
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSharedPrefHelper:Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "fqdn"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    if-nez v2, :cond_0

    goto :goto_0

    .line 1922
    :cond_0
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v5, "Recovery: identity found. Try to relogin"

    invoke-virtual {v3, v5}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1923
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v5, 0x40d

    invoke-virtual {v3, v5}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    .line 1924
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEncryptionHelper:Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;

    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSecretKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v3, v0, v5}, Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;->decrypt(Ljava/lang/String;Ljavax/crypto/SecretKey;)Ljava/lang/String;

    move-result-object v0

    .line 1925
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEncryptionHelper:Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;

    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSecretKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v3, v1, v5}, Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;->decrypt(Ljava/lang/String;Ljavax/crypto/SecretKey;)Ljava/lang/String;

    move-result-object v1

    .line 1926
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEncryptionHelper:Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;

    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSecretKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v3, v2, v5}, Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;->decrypt(Ljava/lang/String;Ljavax/crypto/SecretKey;)Ljava/lang/String;

    move-result-object v2

    .line 1928
    new-instance v3, Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;

    new-instance v5, Ljava/util/ArrayList;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAppKey:Ljava/lang/String;

    invoke-direct {v3, v0, v1, v5, v2}, Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mIdentity:Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;

    .line 1929
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType1:[J

    aget-wide v0, v0, v4

    invoke-virtual {p0, v4, v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->releaseImsNetworkIdentities(IJ)V

    goto :goto_1

    .line 1913
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "Recovery: no previous identity"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1914
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType1:[J

    aget-wide v9, v0, v4

    const/4 v11, 0x0

    move-object v5, p0

    invoke-virtual/range {v5 .. v11}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->getImsNetworkIdentifiers(ZZIJI)V

    .line 1916
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mResendSmsIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_2

    .line 1917
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSharedPrefHelper:Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sms_time"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1918
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    .line 1917
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    .line 1919
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->resumeSmsAlarm(J)V

    :cond_2
    :goto_1
    return-void
.end method

.method public handleLabelUpdated()V
    .locals 2

    .line 1364
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "handleLabelUpdated()"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1365
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->handleDeRegisterRequest()V

    .line 1366
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method public handleTryRegisterRequest()V
    .locals 4

    .line 1337
    iget-boolean v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mLoggedOut:Z

    if-nez v0, :cond_0

    .line 1338
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v0, "There is an ongoing profile registration."

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    return-void

    .line 1342
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mIdentity:Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-static {v0, v1, v2, v3}, Lcom/sec/internal/helper/entitlement/softphone/SoftphoneAuthUtils;->createProfileFromTemplate(Landroid/content/Context;Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;Ljava/lang/String;I)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1344
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mPhoneId:I

    invoke-interface {v2, v0, v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->registerProfile(Lcom/sec/ims/settings/ImsProfile;I)I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mProfileId:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 1346
    iput-boolean v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mLoggedOut:Z

    .line 1348
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "injected profile ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mProfileId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    goto :goto_0

    .line 1350
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v2, "fail to build profile"

    invoke-virtual {v0, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    const-string v0, "Fail to build profile."

    .line 1351
    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->notifyRegisterStatus(ZLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method isImsNetworkIdentifiersResponseValid(Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse;)Z
    .locals 3

    .line 1087
    iget-object v0, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse;->mIdentitiesResponse:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse;->mSubscriberIdentities:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse$SubscriberIdentities;

    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse$SubscriberIdentities;->mPrivateUserId:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse$SubscriberIdentities;->mPublicUserId:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v1, v1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse$SubscriberIdentities;->mFQDN:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse;->mLocations:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 1093
    iput-boolean v0, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    const-string v1, "Cannot retrieve account info. Please call AT&T Customer Care."

    .line 1094
    iput-object v1, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mReason:Ljava/lang/String;

    .line 1096
    new-instance v1, Lcom/sec/vsim/attsoftphone/data/GeneralNotify;

    const/4 v2, 0x4

    iget-object p1, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mReason:Ljava/lang/String;

    invoke-direct {v1, v2, v0, p1}, Lcom/sec/vsim/attsoftphone/data/GeneralNotify;-><init>(IZLjava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->notifyProgress(Lcom/sec/vsim/attsoftphone/data/GeneralNotify;)V

    return v0
.end method

.method public isTarget(Ljava/lang/String;)Z
    .locals 3

    .line 491
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mIdentity:Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;->impiEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mIdentity:Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;->getImpi()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 494
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isTarget(): impi: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public logOut()V
    .locals 2

    .line 700
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "logOut()"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 702
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    .line 706
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 707
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 708
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 709
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v1, 0x404

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 713
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAutoRetry:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 714
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mIsRecovery:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 715
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->resetAccountStatus()V

    .line 717
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->resetCurrentAddresses()V

    .line 718
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->removeSharedPreferences()V

    .line 719
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->deregisterSoftphoneLabelObserver()V

    .line 720
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v0, 0x3fa

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public notifyProgress(Lcom/sec/vsim/attsoftphone/data/GeneralNotify;)V
    .locals 5

    .line 915
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "listener size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mProgressListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 916
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mProgressListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 918
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notify: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/sec/vsim/attsoftphone/data/GeneralNotify;->mRequestId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 919
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/vsim/attsoftphone/IProgressListener;

    invoke-interface {v1, p1}, Lcom/sec/vsim/attsoftphone/IProgressListener;->onNotify(Lcom/sec/vsim/attsoftphone/data/GeneralNotify;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 921
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyRegisterStatus(ZLjava/lang/String;)V
    .locals 3

    .line 939
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyRegisterStatus(): registered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 941
    new-instance v0, Lcom/sec/vsim/attsoftphone/data/GeneralNotify;

    const/16 v1, 0xe

    invoke-direct {v0, v1, p1, p2}, Lcom/sec/vsim/attsoftphone/data/GeneralNotify;-><init>(IZLjava/lang/String;)V

    .line 942
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->notifyProgress(Lcom/sec/vsim/attsoftphone/data/GeneralNotify;)V

    return-void
.end method

.method notifySsProgress(Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;)V
    .locals 5

    .line 927
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "listener size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSupplementaryServiceListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 928
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSupplementaryServiceListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 930
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notify: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;->mRequestId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 931
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/vsim/attsoftphone/ISupplementaryServiceListener;

    invoke-interface {v1, p1}, Lcom/sec/vsim/attsoftphone/ISupplementaryServiceListener;->onNotify(Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 933
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public obtainPdCookies(I)V
    .locals 10

    .line 1743
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "obtainPdCookies(): retryCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1744
    new-instance v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;)V

    .line 1746
    iget v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEnvironment:I

    const-string v2, "Host"

    const/4 v3, 0x1

    if-ne v3, v1, :cond_0

    const-string v1, "https://tprodsmsx.att.net/commonLogin/nxsEDAM/controller.do"

    .line 1747
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setRequestURL(Ljava/lang/String;)V

    .line 1748
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRequestBuilder:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    iget v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    iget-object v6, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSecretKey:Ljavax/crypto/SecretKey;

    const-string v7, "messagessd.att.net"

    invoke-virtual {v1, v4, v5, v6, v7}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;->buildObtainPdCookiesQueryParams(Ljava/lang/String;ILjavax/crypto/SecretKey;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setQueryParameters(Ljava/util/LinkedHashMap;Z)V

    const-string/jumbo v1, "tprodsmsx.att.net"

    .line 1750
    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "https://tstagesms.stage.att.net/commonLogin/nxsEDAM/controller.do"

    .line 1752
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setRequestURL(Ljava/lang/String;)V

    .line 1753
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRequestBuilder:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    iget v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    iget-object v6, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSecretKey:Ljavax/crypto/SecretKey;

    const-string v7, "messagessd.stage.att.net"

    invoke-virtual {v1, v4, v5, v6, v7}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;->buildObtainPdCookiesQueryParams(Ljava/lang/String;ILjavax/crypto/SecretKey;Ljava/lang/String;)Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setQueryParameters(Ljava/util/LinkedHashMap;Z)V

    const-string/jumbo v1, "tstagesms.stage.att.net"

    .line 1755
    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v1, "Content-Type"

    const-string v2, "application/x-www-form-urlencoded"

    .line 1758
    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1759
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->addMsipHeaders(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;)Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    move-result-object v7

    .line 1761
    sget-object v0, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->POST:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {v7, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setRequestMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)V

    .line 1762
    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v4, 0x3fc

    const/4 v6, -0x1

    int-to-long v0, p1

    const-wide/32 v8, 0xea60

    mul-long/2addr v8, v0

    move v5, p1

    invoke-virtual/range {v3 .. v9}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(IIILjava/lang/Object;J)V

    return-void
.end method

.method public onAirplaneModeOn()V
    .locals 2

    .line 894
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "onAirplaneModeOn()"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 895
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    .line 896
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v0, 0x407

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public onNetworkConnected()V
    .locals 2

    .line 900
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "onNetworkConnected()"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 901
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v0, 0x408

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public onRequestAkaChallenge(Ljava/lang/String;I)V
    .locals 6

    .line 1766
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType1:[J

    aget-wide v0, v0, p2

    .line 1767
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRequestAkaChallenge : nonce = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", retryCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", timeout = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1769
    invoke-static {p1}, Lcom/sec/internal/helper/entitlement/softphone/SoftphoneAuthUtils;->splitRandAutn(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1770
    new-instance v3, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    invoke-direct {v3, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;)V

    const-string v4, "/softphone/v1/challengeKeys"

    .line 1771
    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->initHttpRequest(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 1772
    aget-object v4, v2, v4

    const-string/jumbo v5, "randomChallenge"

    invoke-virtual {v3, v5, v4}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    .line 1773
    aget-object v2, v2, v4

    const-string v4, "networkAuthenticatorToken"

    invoke-virtual {v3, v4, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1774
    sget-object v2, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->GET:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setRequestMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)V

    .line 1775
    invoke-virtual {v3, v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setTimeout(J)V

    const/16 v0, 0x13

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 1777
    invoke-static {v2, v0, p2, v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 1778
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "nonce"

    .line 1779
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1780
    invoke-virtual {p2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1781
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    invoke-virtual {p0, p2}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public onUserSwitch()V
    .locals 2

    .line 766
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo v1, "onUserSwitch()"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 767
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    .line 768
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v0, 0x401

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public onUserSwitchedAway()V
    .locals 2

    .line 308
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo v1, "onUserSwitchedAway()"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mImsRegistrationListener:Lcom/sec/ims/IImsRegistrationListener;

    iget p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mPhoneId:I

    invoke-interface {v0, v1, p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->unregisterListener(Lcom/sec/ims/IImsRegistrationListener;I)V

    return-void
.end method

.method public onUserSwitchedBack()V
    .locals 3

    .line 313
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo v1, "onUserSwitchedBack()"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mImsRegistrationListener:Lcom/sec/ims/IImsRegistrationListener;

    iget v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mPhoneId:I

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->registerListener(Lcom/sec/ims/IImsRegistrationListener;I)V

    .line 315
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v0, 0x402

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public processAddE911AddressResponse(Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AddAddressResponse;II)V
    .locals 3

    .line 1304
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processAddAddressResponse(): success: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", retryCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", addressId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1307
    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AddAddressResponse;->mLocationResponse:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AddAddressResponse$LocationResponse;

    if-eqz v0, :cond_0

    .line 1308
    iget-object p2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSoftphoneEmergencyServcie:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneEmergencyService;

    iget-object p3, v0, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AddAddressResponse$LocationResponse;->mLocations:Ljava/util/List;

    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {p2, p3, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneEmergencyService;->compareAndSaveE911Address(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 1310
    :cond_0
    iget v0, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mStatusCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    add-int/lit8 p2, p2, 0x1

    const/4 v0, 0x3

    if-ge p2, v0, :cond_1

    .line 1312
    sget-object p1, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType1:[J

    aget-wide v0, p1, p2

    .line 1313
    invoke-virtual {p0, p3, p2, v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->addE911Address(IIJ)V

    return-void

    .line 1318
    :cond_1
    :goto_0
    new-instance p2, Lcom/sec/vsim/attsoftphone/data/GeneralNotify;

    iget-boolean p3, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    iget-object p1, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mReason:Ljava/lang/String;

    const/4 v0, 0x7

    invoke-direct {p2, v0, p3, p1}, Lcom/sec/vsim/attsoftphone/data/GeneralNotify;-><init>(IZLjava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->notifyProgress(Lcom/sec/vsim/attsoftphone/data/GeneralNotify;)V

    return-void
.end method

.method public processAkaChallengeResponse(Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AkaAuthenticationResponse;ILjava/lang/String;)V
    .locals 3

    .line 1695
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processAkaChallengeResponse(): retryCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1696
    invoke-static {p1}, Lcom/sec/internal/helper/entitlement/softphone/SoftphoneAuthUtils;->processAkaAuthenticationResponse(Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AkaAuthenticationResponse;)Ljava/lang/String;

    move-result-object p1

    .line 1698
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1699
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "aka failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " time(s)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x3

    if-ge p2, p1, :cond_0

    .line 1701
    invoke-virtual {p0, p3, p2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->onRequestAkaChallenge(Ljava/lang/String;I)V

    return-void

    .line 1704
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->LOG_TAG:Ljava/lang/String;

    const-string p2, "aka failed over 3 times, deregister..."

    invoke-static {p1, p2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1705
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.sec.imsservice.AKA_CHALLENGE_FAILED"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1706
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    sget-object p2, Lcom/sec/ims/extensions/ContextExt;->ALL:Landroid/os/UserHandle;

    invoke-static {p0, p1, p2}, Lcom/sec/ims/extensions/ContextExt;->sendBroadcastAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 1710
    :cond_1
    iget-object p2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->LOG_TAG:Ljava/lang/String;

    const-string p3, "Sending AKA response Intent to SimManager"

    invoke-static {p2, p3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1711
    new-instance p2, Landroid/content/Intent;

    const-string p3, "com.sec.imsservice.AKA_CHALLENGE_COMPLETE"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo p3, "result"

    .line 1712
    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "id"

    .line 1713
    iget p3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mProfileId:I

    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1714
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1715
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    sget-object p1, Lcom/sec/ims/extensions/ContextExt;->ALL:Landroid/os/UserHandle;

    invoke-static {p0, p2, p1}, Lcom/sec/ims/extensions/ContextExt;->sendBroadcastAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    :goto_0
    return-void
.end method

.method public processExchangeForAccessTokenResponse(Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AccessTokenResponse;IZ)V
    .locals 12

    .line 1934
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processExchangeForAccessTokenResponse(): success: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mReason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mReason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", retryCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", autoRegister: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1936
    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1937
    iget-object p2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-virtual {p0, p2, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->updateAccountStatus(Ljava/lang/String;I)V

    .line 1938
    iget-object v3, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AccessTokenResponse;->mAccessToken:Ljava/lang/String;

    iget-object v4, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AccessTokenResponse;->mTokenType:Ljava/lang/String;

    iget-object p2, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AccessTokenResponse;->mExpiresIn:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iget-object v7, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AccessTokenResponse;->mRefreshToken:Ljava/lang/String;

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->saveTokens(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 1939
    iget-wide v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mTokenExpiresTime:J

    const-wide/16 v4, 0x384

    mul-long/2addr v2, v4

    .line 1940
    invoke-virtual {p0, v2, v3, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->scheduleRefreshTokenAlarm(JI)V

    .line 1941
    iget-object p2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v0, 0x40b

    invoke-virtual {p2, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 1943
    sget-object p2, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType1:[J

    aget-wide v6, p2, v1

    const/4 v8, 0x0

    move-object v2, p0

    move v4, p3

    invoke-virtual/range {v2 .. v8}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->getImsNetworkIdentifiers(ZZIJI)V

    if-nez p3, :cond_0

    .line 1945
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->scheduleSmsAlarm()V

    .line 1946
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->obtainPdCookies(I)V

    goto :goto_0

    .line 1949
    :cond_0
    iget-object p2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mResendSmsIntent:Landroid/app/PendingIntent;

    if-nez p2, :cond_3

    .line 1950
    iget-object p2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSharedPrefHelper:Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;

    iget-object p3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sms_time"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1951
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 1950
    invoke-virtual {p2, p3, v0, v2, v3}, Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide p2

    .line 1952
    invoke-virtual {p0, p2, p3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->resumeSmsAlarm(J)V

    goto :goto_0

    .line 1956
    :cond_1
    iget v0, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mStatusCode:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    add-int/lit8 v9, p2, 0x1

    const/4 p2, 0x3

    if-ge v9, p2, :cond_2

    .line 1958
    sget-object p1, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType4:[J

    aget-wide v10, p1, v9

    .line 1959
    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mTGaurdToken:Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    iget-object v7, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mTGaurdAppId:Ljava/lang/String;

    iget v8, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEnvironment:I

    move-object v3, p0

    move v6, p3

    invoke-virtual/range {v3 .. v11}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->exchangeForAccessToken(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IIJ)V

    return-void

    .line 1963
    :cond_2
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->resetAccountStatus()V

    .line 1964
    iget-object p2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 p3, 0x40c

    invoke-virtual {p2, p3}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    .line 1967
    :cond_3
    :goto_0
    new-instance p2, Lcom/sec/vsim/attsoftphone/data/GeneralNotify;

    iget-boolean p3, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    iget-object p1, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mReason:Ljava/lang/String;

    invoke-direct {p2, v1, p3, p1}, Lcom/sec/vsim/attsoftphone/data/GeneralNotify;-><init>(IZLjava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->notifyProgress(Lcom/sec/vsim/attsoftphone/data/GeneralNotify;)V

    return-void
.end method

.method public processGetCallForwardingInfoResponse(Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse;I)V
    .locals 23

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v0, p2

    .line 1606
    iget-object v1, v6, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processGetCallForwardingInfoResponse(): success: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v7, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", retryCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1608
    iget-boolean v1, v7, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    const/4 v8, 0x3

    const/16 v9, 0x9

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v1, :cond_b

    .line 1609
    iget-object v0, v6, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget-object v1, v7, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse;->mActive:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1610
    iget-object v0, v6, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget-object v1, v7, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse;->mNoReplyTimer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1611
    iget-object v0, v6, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "num of rules: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse;->mRuleset:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset;

    iget-object v2, v2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset;->mRules:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1612
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v0, "true"

    .line 1613
    iget-object v1, v7, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse;->mActive:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    .line 1614
    iget-object v0, v7, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse;->mNoReplyTimer:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 1617
    iget-object v0, v7, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse;->mRuleset:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset;

    iget-object v0, v0, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset;->mRules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_0
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule;

    .line 1618
    iget-object v0, v6, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ruleId: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule;->mId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1619
    iget-object v0, v2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule;->mActions:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Action;

    iget-object v0, v0, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Action;->mForwardTo:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Action$ForwardTo;

    iget-object v0, v0, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Action$ForwardTo;->mTarget:Ljava/lang/String;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1620
    array-length v1, v0

    sub-int/2addr v1, v12

    aget-object v5, v0, v1

    .line 1621
    iget-object v0, v6, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {v0, v5}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1622
    iget-object v0, v2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule;->mId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :goto_1
    move v0, v10

    goto :goto_2

    :sswitch_0
    const-string v1, "call-diversion-not-reachable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x4

    goto :goto_2

    :sswitch_1
    const-string v1, "call-diversion-busy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v8

    goto :goto_2

    :sswitch_2
    const-string v1, "call-diversion-not-logged-in"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    goto :goto_2

    :sswitch_3
    const-string v1, "call-diversion-unconditional"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    move v0, v12

    goto :goto_2

    :sswitch_4
    const-string v1, "call-diversion-no-reply"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    move v0, v11

    :goto_2
    packed-switch v0, :pswitch_data_0

    .line 1644
    iget-object v0, v6, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown ruleId: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule;->mId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object v1, v13

    move v3, v14

    move/from16 v4, v21

    .line 1645
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->checkWithCondition(Ljava/util/List;Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule;ZILjava/lang/String;)V

    goto/16 :goto_0

    .line 1636
    :pswitch_0
    new-instance v0, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;

    if-eqz v14, :cond_5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, v2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule;->mConditions:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;

    iget-object v1, v1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;->mRuleDeactivated:Ljava/lang/String;

    if-nez v1, :cond_5

    move/from16 v16, v12

    goto :goto_3

    :cond_5
    move/from16 v16, v11

    :goto_3
    const/16 v17, 0x0

    const/16 v19, 0x3

    move-object v15, v0

    move/from16 v18, v21

    move-object/from16 v20, v5

    invoke-direct/range {v15 .. v20}, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;-><init>(ZZIILjava/lang/String;)V

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1628
    :pswitch_1
    new-instance v0, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;

    if-eqz v14, :cond_6

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, v2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule;->mConditions:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;

    iget-object v1, v1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;->mRuleDeactivated:Ljava/lang/String;

    if-nez v1, :cond_6

    move/from16 v16, v12

    goto :goto_4

    :cond_6
    move/from16 v16, v11

    :goto_4
    const/16 v17, 0x0

    const/16 v19, 0x1

    move-object v15, v0

    move/from16 v18, v21

    move-object/from16 v20, v5

    invoke-direct/range {v15 .. v20}, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;-><init>(ZZIILjava/lang/String;)V

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1640
    :pswitch_2
    new-instance v0, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;

    if-eqz v14, :cond_7

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, v2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule;->mConditions:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;

    iget-object v1, v1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;->mRuleDeactivated:Ljava/lang/String;

    if-nez v1, :cond_7

    move/from16 v16, v12

    goto :goto_5

    :cond_7
    move/from16 v16, v11

    :goto_5
    const/16 v17, 0x0

    const/16 v19, 0x8

    move-object v15, v0

    move/from16 v18, v21

    move-object/from16 v20, v5

    invoke-direct/range {v15 .. v20}, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;-><init>(ZZIILjava/lang/String;)V

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1624
    :pswitch_3
    new-instance v0, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;

    if-eqz v14, :cond_8

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, v2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule;->mConditions:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;

    iget-object v1, v1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;->mRuleDeactivated:Ljava/lang/String;

    if-nez v1, :cond_8

    move/from16 v16, v12

    goto :goto_6

    :cond_8
    move/from16 v16, v11

    :goto_6
    const/16 v17, 0x0

    const/16 v19, 0x0

    move-object v15, v0

    move/from16 v18, v21

    move-object/from16 v20, v5

    invoke-direct/range {v15 .. v20}, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;-><init>(ZZIILjava/lang/String;)V

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1632
    :pswitch_4
    new-instance v0, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;

    if-eqz v14, :cond_9

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, v2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule;->mConditions:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;

    iget-object v1, v1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallForwardingResponse$Ruleset$Rule$Condition;->mRuleDeactivated:Ljava/lang/String;

    if-nez v1, :cond_9

    move/from16 v16, v12

    goto :goto_7

    :cond_9
    move/from16 v16, v11

    :goto_7
    const/16 v17, 0x0

    const/16 v19, 0x2

    move-object v15, v0

    move/from16 v18, v21

    move-object/from16 v20, v5

    invoke-direct/range {v15 .. v20}, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;-><init>(ZZIILjava/lang/String;)V

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1649
    :cond_a
    new-instance v0, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;

    iget-boolean v1, v7, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    iget-object v2, v7, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mReason:Ljava/lang/String;

    invoke-direct {v0, v9, v1, v2, v13}, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;-><init>(IZLjava/lang/String;Ljava/util/List;)V

    .line 1651
    invoke-virtual {v6, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->notifySsProgress(Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;)V

    goto :goto_8

    .line 1653
    :cond_b
    iget v1, v7, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mStatusCode:I

    if-ne v1, v10, :cond_c

    add-int/2addr v0, v12

    if-ge v0, v8, :cond_c

    .line 1655
    sget-object v1, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType1:[J

    aget-wide v1, v1, v0

    .line 1656
    invoke-direct {v6, v0, v1, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->getCallForwardingInfo(IJ)V

    return-void

    .line 1660
    :cond_c
    new-instance v0, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;

    iget-object v1, v7, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mReason:Ljava/lang/String;

    invoke-direct {v0, v9, v11, v1}, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;-><init>(IZLjava/lang/String;)V

    .line 1661
    invoke-virtual {v6, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->notifySsProgress(Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;)V

    :goto_8
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7cddf879 -> :sswitch_4
        -0x45b7dfbc -> :sswitch_3
        -0xd706b33 -> :sswitch_2
        0x66b7622 -> :sswitch_1
        0x194f58ca -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public processGetCallWaitingInfoResponse(Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallWaitingResponse;I)V
    .locals 5

    .line 1562
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processGetCallWaitingInfoResponse(): success: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", retryCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1564
    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 1565
    iget-object p2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    iget-object v0, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallWaitingResponse;->mActive:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1566
    new-instance p2, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;

    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    iget-object v2, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mReason:Ljava/lang/String;

    new-instance v3, Lcom/sec/vsim/attsoftphone/data/CallWaitingInfo;

    const-string/jumbo v4, "true"

    iget-object p1, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/CallWaitingResponse;->mActive:Ljava/lang/String;

    .line 1567
    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    invoke-direct {v3, p1}, Lcom/sec/vsim/attsoftphone/data/CallWaitingInfo;-><init>(Z)V

    invoke-direct {p2, v1, v0, v2, v3}, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;-><init>(IZLjava/lang/String;Lcom/sec/vsim/attsoftphone/data/CallWaitingInfo;)V

    .line 1566
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->notifySsProgress(Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;)V

    goto :goto_0

    .line 1569
    :cond_0
    iget v0, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mStatusCode:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    add-int/lit8 p2, p2, 0x1

    const/4 v0, 0x3

    if-ge p2, v0, :cond_1

    .line 1571
    sget-object p1, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType1:[J

    aget-wide v0, p1, p2

    .line 1572
    invoke-virtual {p0, p2, v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->getCallWaitingInfo(IJ)V

    return-void

    .line 1576
    :cond_1
    new-instance p2, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;

    const/4 v0, 0x0

    iget-object p1, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mReason:Ljava/lang/String;

    invoke-direct {p2, v1, v0, p1}, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;-><init>(IZLjava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->notifySsProgress(Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;)V

    :goto_0
    return-void
.end method

.method public processImsNetworkIdentifiersResponse(Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse;ZIZI)V
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v6, p5

    .line 1011
    iget-object v5, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "processImsNetworkIdentifiersResponse(): success: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, v1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", justProvisioned: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", autoRegister: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", retryCount: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", attempt: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1014
    iget-boolean v5, v1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v5, :cond_1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->isImsNetworkIdentifiersResponseValid(Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1015
    iget-object v2, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSoftphoneEmergencyServcie:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneEmergencyService;

    iget-object v3, v1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse;->mIdentitiesResponse:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse;

    iget-object v3, v3, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse;->mLocations:Ljava/util/List;

    iget-object v5, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v2, v3, v5}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneEmergencyService;->compareAndSaveE911Address(Ljava/util/List;Ljava/lang/String;)V

    .line 1017
    iget-object v2, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->registerSoftphoneLabelObserver(Ljava/lang/String;)V

    .line 1018
    new-instance v2, Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;

    iget-object v3, v1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse;->mIdentitiesResponse:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse;

    iget-object v3, v3, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse;->mSubscriberIdentities:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse$SubscriberIdentities;

    iget-object v5, v3, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse$SubscriberIdentities;->mPrivateUserId:Ljava/lang/String;

    iget-object v3, v3, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse$SubscriberIdentities;->mPublicUserId:Ljava/lang/String;

    new-instance v6, Ljava/util/ArrayList;

    iget-object v10, v1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse;->mIdentitiesResponse:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse;

    iget-object v10, v10, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse;->mSubscriberIdentities:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse$SubscriberIdentities;

    iget-object v10, v10, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse$SubscriberIdentities;->mFQDN:Ljava/lang/String;

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    .line 1020
    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v10, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAppKey:Ljava/lang/String;

    invoke-direct {v2, v5, v3, v6, v10}, Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mIdentity:Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;

    const-wide/32 v2, 0xa4cb80

    .line 1023
    invoke-direct {p0, v2, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->scheduleRefreshIdentityAlarm(J)V

    .line 1025
    iget-object v2, v1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse;->mIdentitiesResponse:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse;

    iget-object v2, v2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse;->mSubscriberIdentities:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse$SubscriberIdentities;

    iget-object v3, v2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse$SubscriberIdentities;->mPrivateUserId:Ljava/lang/String;

    iget-object v2, v2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse$SubscriberIdentities;->mPublicUserId:Ljava/lang/String;

    invoke-direct {p0, v3, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->updateAccountInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1027
    iget-object v2, v1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse;->mIdentitiesResponse:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse;

    iget-object v2, v2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse;->mSubscriberIdentities:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse$SubscriberIdentities;

    iget-object v3, v2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse$SubscriberIdentities;->mPrivateUserId:Ljava/lang/String;

    iget-object v5, v2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse$SubscriberIdentities;->mPublicUserId:Ljava/lang/String;

    iget-object v2, v2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse$SubscriberIdentities;->mFQDN:Ljava/lang/String;

    invoke-direct {p0, v3, v5, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->saveAccountIdentities(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1031
    iget-object v2, v1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse;->mIdentitiesResponse:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse;

    iget-object v2, v2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse;->mSubscriberIdentities:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse$SubscriberIdentities;

    iget-object v2, v2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse$SubscriberIdentities;->mPublicUserId:Ljava/lang/String;

    const-string v3, ":"

    .line 1032
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v3, v9

    iget-object v5, v1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse;->mIdentitiesResponse:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse;

    iget-object v5, v5, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse;->mSubscriberIdentities:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse$SubscriberIdentities;

    iget-object v5, v5, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/ImsNetworkIdentifiersResponse$IdentitiesResponse$SubscriberIdentities;->mPublicUserId:Ljava/lang/String;

    const-string v6, "@"

    .line 1033
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 1031
    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.samsung.softphone.action.ACCOUNT_LOGIN_COMPLETED"

    .line 1034
    invoke-virtual {p0, v3, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->broadcastIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    iget-object v2, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v3, 0x40e

    invoke-virtual {v2, v3}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    if-eqz v4, :cond_0

    .line 1037
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->checkAutoRegistrationCondition()V

    .line 1039
    :cond_0
    iget-object v2, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mIsRecovery:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    .line 1041
    :cond_1
    iget v5, v1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mStatusCode:I

    const/4 v10, -0x1

    const/4 v11, 0x3

    if-ne v5, v10, :cond_2

    add-int/2addr v3, v9

    if-ge v3, v11, :cond_2

    .line 1043
    sget-object v1, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType1:[J

    aget-wide v7, v1, v3

    move-object v0, p0

    move v1, p2

    move/from16 v2, p4

    move-wide v4, v7

    move/from16 v6, p5

    .line 1044
    invoke-virtual/range {v0 .. v6}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->getImsNetworkIdentifiers(ZZIJI)V

    return-void

    :cond_2
    if-eqz v2, :cond_4

    add-int/lit8 v2, v6, 0x1

    if-ge v2, v11, :cond_3

    .line 1051
    iget-object v0, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const-wide/32 v3, 0xafc8

    invoke-virtual {v0, v7, v2, v3, v4}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(IIJ)V

    return-void

    :cond_3
    const-string v2, "Please try again later or call AT&T Customer Care."

    .line 1054
    iput-object v2, v1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mReason:Ljava/lang/String;

    .line 1055
    iget-object v2, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo v3, "processImsNetworkIdentifiersResponse(): notify getImsNetworkIdentity failure after 3 attempts"

    invoke-virtual {v2, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    goto :goto_0

    .line 1058
    :cond_4
    iget-object v2, v1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mReason:Ljava/lang/String;

    if-eqz v2, :cond_5

    const-string v3, "LDAP Record not found"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1059
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->getTermsAndConditions()V

    return-void

    :cond_5
    if-eqz v4, :cond_8

    .line 1065
    iget v2, v1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mStatusCode:I

    const/16 v3, 0x191

    if-ne v2, v3, :cond_6

    .line 1066
    iget-object v2, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "processImsNetworkIdentifiersResponse(): statusCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mStatusCode:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", invalid access token, reLogin"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1068
    invoke-virtual {p0, v8, v9}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->reLogin(IZ)V

    return-void

    :cond_6
    add-int/2addr v6, v9

    const/4 v2, 0x6

    if-ge v6, v2, :cond_7

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 1072
    sget-object v2, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType1:[J

    aget-wide v7, v2, v8

    move-object v0, p0

    move/from16 v2, p4

    move-wide v4, v7

    invoke-virtual/range {v0 .. v6}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->getImsNetworkIdentifiers(ZZIJI)V

    return-void

    .line 1075
    :cond_7
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->logOut()V

    .line 1082
    :cond_8
    :goto_0
    new-instance v2, Lcom/sec/vsim/attsoftphone/data/GeneralNotify;

    iget-boolean v3, v1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    iget-object v1, v1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mReason:Ljava/lang/String;

    invoke-direct {v2, v7, v3, v1}, Lcom/sec/vsim/attsoftphone/data/GeneralNotify;-><init>(IZLjava/lang/String;)V

    .line 1083
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->notifyProgress(Lcom/sec/vsim/attsoftphone/data/GeneralNotify;)V

    return-void
.end method

.method public processObtainPdCookiesResponse(Lcom/sec/internal/helper/httpclient/HttpResponseParams;I)V
    .locals 7

    if-eqz p1, :cond_6

    .line 1786
    invoke-virtual {p1}, Lcom/sec/internal/helper/httpclient/HttpResponseParams;->getHeaders()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_5

    const-string v0, "Set-Cookie"

    .line 1788
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 1789
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1791
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "[;,]"

    .line 1792
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1793
    array-length v3, v2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    const-string v6, "PD-ID="

    .line 1794
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "PD-H-SESSION-ID"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1795
    :cond_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ";"

    .line 1796
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1801
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1802
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo v2, "processObtainPdCookiesResponse()"

    invoke-virtual {v0, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1803
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processObtainPdCookiesResponse(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1804
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1805
    iget-object p2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSharedPrefHelper:Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;

    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "pd_cookies"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEncryptionHelper:Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;

    .line 1806
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSecretKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v3, v4, v5}, Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;->encrypt(Ljava/lang/String;Ljavax/crypto/SecretKey;)Ljava/lang/String;

    move-result-object v3

    .line 1805
    invoke-virtual {p2, v0, v2, v3}, Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;->save(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1808
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->sendSMS(Ljava/lang/String;I)V

    goto :goto_1

    .line 1810
    :cond_4
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->retryObtainPdCookies(I)V

    goto :goto_1

    .line 1813
    :cond_5
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->retryObtainPdCookies(I)V

    goto :goto_1

    .line 1816
    :cond_6
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->retryObtainPdCookies(I)V

    :goto_1
    return-void
.end method

.method public processProvisionAccountResponse(Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;I)V
    .locals 5

    .line 1217
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processProvisionAccountResponse(): success: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", retryCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1218
    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    .line 1219
    iget-object p2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/4 v0, 0x0

    const-wide/32 v2, 0xafc8

    const/4 v4, 0x4

    invoke-virtual {p2, v4, v0, v2, v3}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(IIJ)V

    goto :goto_0

    .line 1221
    :cond_0
    iget v0, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mStatusCode:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    add-int/lit8 p2, p2, 0x1

    if-ge p2, v1, :cond_1

    .line 1223
    sget-object p1, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType3:[J

    aget-wide v0, p1, p2

    .line 1224
    invoke-virtual {p0, p2, v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->provisionAccount(IJ)V

    return-void

    .line 1229
    :cond_1
    :goto_0
    new-instance p2, Lcom/sec/vsim/attsoftphone/data/GeneralNotify;

    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    iget-object p1, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mReason:Ljava/lang/String;

    invoke-direct {p2, v1, v0, p1}, Lcom/sec/vsim/attsoftphone/data/GeneralNotify;-><init>(IZLjava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->notifyProgress(Lcom/sec/vsim/attsoftphone/data/GeneralNotify;)V

    return-void
.end method

.method public processRefreshTokenResponse(Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AccessTokenResponse;III)V
    .locals 8

    .line 1520
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processRefreshTokenResponse(): success: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", statusCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", retryCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", attempt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1523
    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1524
    iget-object v3, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AccessTokenResponse;->mAccessToken:Ljava/lang/String;

    iget-object v4, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AccessTokenResponse;->mTokenType:Ljava/lang/String;

    iget-object p2, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AccessTokenResponse;->mExpiresIn:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iget-object v7, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AccessTokenResponse;->mRefreshToken:Ljava/lang/String;

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->saveTokens(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 1525
    iget-wide p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mTokenExpiresTime:J

    const-wide/16 p3, 0x384

    mul-long/2addr p1, p3

    .line 1526
    invoke-virtual {p0, p1, p2, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->scheduleRefreshTokenAlarm(JI)V

    .line 1527
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mIsRecovery:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1528
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->handleImsNetworkIdentityAfterRecovery()V

    goto/16 :goto_0

    .line 1531
    :cond_0
    iget p1, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mStatusCode:I

    const/4 v0, -0x1

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ne p1, v0, :cond_1

    add-int/2addr p3, v3

    if-ge p3, v2, :cond_1

    .line 1533
    sget-object p1, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType4:[J

    aget-wide p1, p1, p3

    .line 1534
    invoke-virtual {p0, p3, p1, p2, p4}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->refreshToken(IJI)V

    return-void

    :cond_1
    const/16 p1, 0x191

    const-string/jumbo p3, "processRefreshTokenResponse(): statusCode: "

    if-ne p2, p1, :cond_2

    .line 1539
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", invalid access token, reLogin"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1540
    invoke-virtual {p0, v1, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->reLogin(IZ)V

    goto :goto_0

    :cond_2
    add-int/2addr p4, v3

    if-gt p4, v2, :cond_4

    .line 1543
    sget-object p1, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType4:[J

    aget-wide p1, p1, v1

    .line 1544
    iget-wide v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mTokenExpiresTime:J

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-lez p3, :cond_3

    const-wide/16 p1, 0x64

    mul-long/2addr v0, p1

    const-wide/16 p1, 0x3

    .line 1545
    div-long p1, v0, p1

    .line 1547
    :cond_3
    invoke-virtual {p0, p1, p2, p4}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->scheduleRefreshTokenAlarm(JI)V

    goto :goto_0

    .line 1549
    :cond_4
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mTGaurdToken:Ljava/lang/String;

    if-eqz p1, :cond_5

    .line 1550
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", unable to refresh token, try reLogin"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1551
    invoke-virtual {p0, v1, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->reLogin(IZ)V

    goto :goto_0

    .line 1553
    :cond_5
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", unable to refresh token, logOut"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1554
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->logOut()V

    :cond_6
    :goto_0
    return-void
.end method

.method public processReleaseImsNetworkIdentitiesResponse(Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;I)V
    .locals 5

    .line 1409
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processReleaseImsNetworkIdentitiesResponse(): success: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", retryCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1411
    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    if-eqz v0, :cond_0

    .line 1412
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mIdentity:Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;->clear()V

    .line 1413
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSharedPrefHelper:Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;

    iget-object p2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "impi"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "impu"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "fqdn"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v2, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;->remove(Landroid/content/Context;[Ljava/lang/String;)V

    goto :goto_0

    .line 1419
    :cond_0
    iget v0, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mStatusCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    add-int/lit8 p2, p2, 0x1

    const/4 v0, 0x3

    if-ge p2, v0, :cond_1

    .line 1421
    sget-object p1, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType1:[J

    aget-wide v0, p1, p2

    .line 1422
    invoke-virtual {p0, p2, v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->releaseImsNetworkIdentities(IJ)V

    return-void

    .line 1426
    :cond_1
    iget-object p2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fail to ReleaseImsNetworkIdentities: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mReason:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1429
    :goto_0
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRefreshIdentityIntent:Landroid/app/PendingIntent;

    if-eqz p1, :cond_2

    .line 1430
    iget-object p2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {p2, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/4 p1, 0x0

    .line 1431
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRefreshIdentityIntent:Landroid/app/PendingIntent;

    .line 1434
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 p1, 0x12

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public processRevokeAccessTokenResponse(Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;)V
    .locals 3

    .line 1448
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processRevokeAccessTokenResponse(): success: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1450
    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 1451
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccessToken:Ljava/lang/String;

    .line 1452
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccessTokenType:Ljava/lang/String;

    const-wide/16 v0, -0x1

    .line 1453
    iput-wide v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mTokenExpiresTime:J

    goto :goto_0

    .line 1455
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to RevokeAccessToken: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mReason:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    :goto_0
    const-string/jumbo p1, "refresh_token"

    .line 1458
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRefreshToken:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->revokeToken(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public processRevokeRefreshTokenResponse(Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;)V
    .locals 3

    .line 1462
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processRevokeRefreshTokenResponse(): success: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1464
    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 1465
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRefreshToken:Ljava/lang/String;

    goto :goto_0

    .line 1467
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail to RevokeRefreshToken: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mReason:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1473
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 p1, 0x40c

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public processSendSMSResponse(Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;I)V
    .locals 4

    .line 1866
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processSendSMSResponse(): success: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", retryCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1868
    iget-boolean p1, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    if-nez p1, :cond_0

    add-int/lit8 p2, p2, 0x1

    const/4 p1, 0x3

    if-ge p2, p1, :cond_0

    .line 1869
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSharedPrefHelper:Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;

    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "pd_cookies"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1870
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEncryptionHelper:Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSecretKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;->decrypt(Ljava/lang/String;Ljavax/crypto/SecretKey;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->sendSMS(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public processSetCallForwardingInfoResponse(Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;ILcom/sec/vsim/attsoftphone/data/CallForwardingInfo;)V
    .locals 3

    .line 1681
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processSetCallForwardingInfoResponse(): success: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", retryCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1682
    iget v0, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mStatusCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    add-int/lit8 p2, p2, 0x1

    const/4 v0, 0x3

    if-ge p2, v0, :cond_0

    .line 1684
    sget-object p1, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType2:[J

    aget-wide v0, p1, p2

    .line 1685
    invoke-direct {p0, p3, p2, v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->setCallForwardingInfo(Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;IJ)V

    return-void

    .line 1689
    :cond_0
    new-instance p2, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;

    iget-boolean p3, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    iget-object p1, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mReason:Ljava/lang/String;

    const/16 v0, 0xb

    invoke-direct {p2, v0, p3, p1}, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;-><init>(IZLjava/lang/String;)V

    .line 1691
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->notifySsProgress(Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;)V

    return-void
.end method

.method public processSetCallWaitingInfoResponse(Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;ILcom/sec/vsim/attsoftphone/data/CallWaitingInfo;)V
    .locals 3

    .line 1666
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processSetCallWaitingInfoResponse(): success: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", retryCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1667
    iget v0, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mStatusCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    add-int/lit8 p2, p2, 0x1

    const/4 v0, 0x3

    if-ge p2, v0, :cond_0

    .line 1669
    sget-object p1, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType2:[J

    aget-wide v0, p1, p2

    .line 1670
    invoke-direct {p0, p3, p2, v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->setCallWaitingInfo(Lcom/sec/vsim/attsoftphone/data/CallWaitingInfo;IJ)V

    return-void

    .line 1674
    :cond_0
    new-instance p2, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;

    iget-boolean p3, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    iget-object p1, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mReason:Ljava/lang/String;

    const/16 v0, 0xa

    invoke-direct {p2, v0, p3, p1}, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;-><init>(IZLjava/lang/String;)V

    .line 1677
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->notifySsProgress(Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;)V

    return-void
.end method

.method public processTermsAndConditionsResponse(Lcom/sec/internal/constants/ims/entitilement/softphone/responses/TermsAndConditionsResponse;I)V
    .locals 3

    .line 1201
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processTermsAndConditionsResponse(): success: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", retryCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1202
    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    if-eqz v0, :cond_0

    .line 1203
    iget-object p2, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/TermsAndConditionsResponse;->mTCResponse:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/TermsAndConditionsResponse$TCResponse;

    iget-object p2, p2, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/TermsAndConditionsResponse$TCResponse;->mUrl:Ljava/lang/String;

    iput-object p2, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mReason:Ljava/lang/String;

    goto :goto_0

    .line 1205
    :cond_0
    iget v0, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mStatusCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    add-int/lit8 p2, p2, 0x1

    const/4 v0, 0x3

    if-ge p2, v0, :cond_1

    .line 1207
    sget-object p1, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType1:[J

    aget-wide v0, p1, p2

    .line 1208
    invoke-virtual {p0, p2, v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->getTermsAndConditions(IJ)V

    return-void

    .line 1213
    :cond_1
    :goto_0
    new-instance p2, Lcom/sec/vsim/attsoftphone/data/GeneralNotify;

    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    iget-object p1, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mReason:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-direct {p2, v1, v0, p1}, Lcom/sec/vsim/attsoftphone/data/GeneralNotify;-><init>(IZLjava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->notifyProgress(Lcom/sec/vsim/attsoftphone/data/GeneralNotify;)V

    return-void
.end method

.method public processValidateE911AddressResponse(Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AddressValidationResponse;I)V
    .locals 11

    .line 1233
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processAddressValidationResponse(): success: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", retryCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1236
    iget-boolean v0, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1237
    iget p2, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AddressValidationResponse;->mAddressId:I

    iget-object v0, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AddressValidationResponse;->mE911Locations:Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AddressValidationResponse$E911Locations;

    iget-object v2, v0, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AddressValidationResponse$E911Locations;->mAddressIdentifier:Ljava/lang/String;

    iget-object v0, v0, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AddressValidationResponse$E911Locations;->mExpirationDate:Ljava/lang/String;

    invoke-direct {p0, p2, v2, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->updateE911AddressLocally(ILjava/lang/String;Ljava/lang/String;)V

    .line 1238
    iget p2, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AddressValidationResponse;->mAddressId:I

    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType1:[J

    aget-wide v2, v0, v1

    invoke-virtual {p0, p2, v1, v2, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->addE911Address(IIJ)V

    goto :goto_0

    .line 1240
    :cond_0
    iget v0, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mStatusCode:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    add-int/lit8 v8, p2, 0x1

    const/4 p2, 0x3

    if-ge v8, p2, :cond_1

    .line 1242
    sget-object p2, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType2:[J

    aget-wide v9, p2, v8

    .line 1243
    iget p2, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AddressValidationResponse;->mTransactionId:I

    invoke-direct {p0, p2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->findAndRemoveListener(I)Ljava/lang/Object;

    move-result-object p2

    move-object v7, p2

    check-cast v7, Lcom/sec/vsim/attsoftphone/IEmergencyServiceListener;

    .line 1244
    iget v5, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AddressValidationResponse;->mAddressId:I

    iget-boolean v6, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AddressValidationResponse;->mConfirmed:Z

    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->validateE911Address(IZLcom/sec/vsim/attsoftphone/IEmergencyServiceListener;IJ)V

    return-void

    .line 1248
    :cond_1
    iget-object p2, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mReason:Ljava/lang/String;

    const-string v0, "Address Confirmation Required"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    move v9, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v9, v1

    .line 1252
    :goto_1
    new-instance p2, Lcom/sec/vsim/attsoftphone/data/AddressValidationNotify;

    const/4 v5, 0x6

    iget-boolean v6, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mSuccess:Z

    iget-object v7, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/SoftphoneResponse;->mReason:Ljava/lang/String;

    iget v8, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AddressValidationResponse;->mAddressId:I

    move-object v4, p2

    invoke-direct/range {v4 .. v9}, Lcom/sec/vsim/attsoftphone/data/AddressValidationNotify;-><init>(IZLjava/lang/String;IZ)V

    .line 1255
    iget p1, p1, Lcom/sec/internal/constants/ims/entitilement/softphone/responses/AddressValidationResponse;->mTransactionId:I

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->findAndRemoveListener(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/vsim/attsoftphone/IEmergencyServiceListener;

    if-eqz p1, :cond_3

    .line 1258
    :try_start_0
    invoke-interface {p1, p2}, Lcom/sec/vsim/attsoftphone/IEmergencyServiceListener;->onNotify(Lcom/sec/vsim/attsoftphone/data/AddressValidationNotify;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 1260
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "exception"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public provisionAccount()V
    .locals 4

    .line 623
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType3:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->provisionAccount(IJ)V

    return-void
.end method

.method provisionAccount(IJ)V
    .locals 5

    .line 627
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "provisionAccount(): retryCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", timeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 629
    invoke-static {}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;->buildProvisionAccountRequest()Lcom/sec/internal/constants/ims/entitilement/softphone/requests/ProvisionAccountRequest;

    move-result-object v0

    .line 631
    new-instance v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;)V

    const-string v2, "/softphone/v1/account"

    .line 633
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->initHttpRequest(Ljava/lang/String;)V

    const-string v2, "Content-Type"

    const-string v3, "application/json"

    .line 634
    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 639
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 640
    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setJsonBody(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 642
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "could not build JSONObject:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    :goto_0
    sget-object v0, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->POST:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setRequestMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)V

    .line 646
    invoke-virtual {v1, p2, p3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setTimeout(J)V

    .line 648
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/4 p2, 0x3

    const/4 p3, -0x1

    invoke-virtual {p0, p2, p1, p3, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public reLogin(IZ)V
    .locals 12

    .line 724
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reLogin(): retryCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", needNewToken: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", callState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 726
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    const-wide/32 v4, 0xea60

    mul-long v10, v2, v4

    .line 728
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reLogin(): backoff: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    add-int/2addr p1, v1

    const/4 v0, 0x6

    if-le p1, v0, :cond_0

    move v8, v0

    goto :goto_0

    :cond_0
    move v8, p1

    .line 732
    :goto_0
    iget-object v6, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v7, 0x404

    move v9, p2

    invoke-virtual/range {v6 .. v11}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(IIIJ)V

    return-void

    .line 736
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$$ExternalSyntheticLambda1;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;)V

    .line 737
    invoke-virtual {p1, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$$ExternalSyntheticLambda2;-><init>()V

    .line 738
    invoke-virtual {p1, v0}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient$$ExternalSyntheticLambda3;-><init>()V

    .line 739
    invoke-virtual {p1, v0}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object p1

    .line 740
    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    const/16 v0, 0x11

    if-eqz p1, :cond_3

    .line 744
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v2, 0xe

    invoke-virtual {p1, v2}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 745
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 747
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->deregisterSoftphoneLabelObserver()V

    if-eqz p2, :cond_2

    .line 749
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    .line 750
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSharedPrefHelper:Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;

    iget-object p2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "refresh_token"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;->remove(Landroid/content/Context;[Ljava/lang/String;)V

    .line 751
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAutoRetry:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 752
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mIsRecovery:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 753
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 p1, 0x406

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    goto :goto_1

    .line 755
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 p1, 0x405

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    goto :goto_1

    .line 758
    :cond_3
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo p2, "reLogin(): network is not connected"

    invoke-virtual {p1, p2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 759
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    .line 761
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 p1, 0x409

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    :goto_1
    return-void
.end method

.method public refreshToken(IJI)V
    .locals 3

    .line 1505
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "refreshToken(): retryCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", timeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", attempt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1507
    new-instance v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;)V

    const-string v1, "/oauth/v4/token"

    .line 1509
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->initHttpRequest(Ljava/lang/String;)V

    const-string v1, "Content-Type"

    const-string v2, "application/x-www-form-urlencoded"

    .line 1510
    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1511
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "client_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAppKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&client_secret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAppSecret:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&grant_type=refresh_token&refresh_token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRefreshToken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setStringBody(Ljava/lang/String;)V

    .line 1513
    sget-object v1, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->POST:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setRequestMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)V

    .line 1514
    invoke-virtual {v0, p2, p3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setTimeout(J)V

    .line 1516
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 p2, 0x3f7

    invoke-virtual {p0, p2, p1, p4}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->commit(Landroid/os/Message;)V

    return-void
.end method

.method refreshTokenAfterRecovery()V
    .locals 5

    .line 1897
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSharedPrefHelper:Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "refresh_token"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRefreshToken:Ljava/lang/String;

    .line 1898
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEncryptionHelper:Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSecretKey:Ljavax/crypto/SecretKey;

    invoke-virtual {v1, v0, v2}, Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;->decrypt(Ljava/lang/String;Ljavax/crypto/SecretKey;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRefreshToken:Ljava/lang/String;

    .line 1899
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    sget-object v1, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType4:[J

    const/4 v2, 0x0

    aget-wide v3, v1, v2

    long-to-int v1, v3

    const/4 v3, 0x0

    const/16 v4, 0xf

    invoke-virtual {v0, v4, v2, v1, v3}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1900
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v3, "attempt"

    .line 1901
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1902
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1903
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public registerProgressListener(ILcom/sec/vsim/attsoftphone/IProgressListener;)V
    .locals 3

    .line 522
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerProgressListener current size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mProgressListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " UID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " listener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 523
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mProgressListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public registerSupplementaryServiceListener(ILcom/sec/vsim/attsoftphone/ISupplementaryServiceListener;)V
    .locals 3

    .line 531
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SupplementaryServiceListener current size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSupplementaryServiceListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " UID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " listener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 533
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSupplementaryServiceListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public releaseImsNetworkIdentities(IJ)V
    .locals 5

    .line 1377
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "releaseImsNetworkIdentities(): retryCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", timeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1379
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mIdentity:Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;->impiEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1380
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string p2, "No IMS network identifiers to release."

    invoke-virtual {p1, p2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1381
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 p1, 0x12

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void

    .line 1385
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mIdentity:Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;

    .line 1386
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;->getImpi()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mIdentity:Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/entitilement/softphone/ImsNetworkIdentity;->getImpu()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;->buildReleaseImsNetworkIdentifiersRequest(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/entitilement/softphone/requests/ReleaseImsNetworkIdentifiersRequest;

    move-result-object v0

    .line 1388
    new-instance v1, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;)V

    const-string v2, "/softphone/v1/identities"

    .line 1390
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->initHttpRequest(Ljava/lang/String;)V

    const-string v2, "Content-Type"

    const-string v3, "application/json"

    .line 1391
    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1394
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 1396
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1397
    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setJsonBody(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1399
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "could not build JSONObject:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1402
    :goto_0
    sget-object v0, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->PUT:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setRequestMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)V

    .line 1403
    invoke-virtual {v1, p2, p3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setTimeout(J)V

    .line 1405
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/4 p2, 0x5

    const/4 p3, -0x1

    invoke-virtual {p0, p2, p1, p3, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method resetAccountStatus()V
    .locals 3

    .line 499
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->updateAccountStatus(Ljava/lang/String;I)V

    const-string v0, "com.samsung.softphone.action.ACCOUNT_REQUEST_LOGOUT"

    const/4 v1, 0x0

    .line 500
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->broadcastIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRefreshTokenIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 503
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v2, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 504
    iput-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRefreshTokenIntent:Landroid/app/PendingIntent;

    .line 506
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mResendSmsIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    .line 507
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v2, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 508
    iput-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mResendSmsIntent:Landroid/app/PendingIntent;

    :cond_1
    return-void
.end method

.method public resetCurrentAddresses()V
    .locals 3

    .line 1370
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo v1, "resetCurrentAddresses()"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1371
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAddress;->buildResetCurrentAddressUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1372
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method restoreAccessToken(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V
    .locals 9

    .line 543
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->tokenExist()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mIsRecovery:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 544
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo v2, "restoreAccessToken(): Softphone Service is recovering"

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 545
    invoke-direct {p0, p5}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->setupEnvironment(I)V

    .line 546
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->updateAccountStatus(Ljava/lang/String;I)V

    .line 547
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->getAccountSecretKey()V

    .line 548
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->refreshTokenAfterRecovery()V

    .line 549
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v1, 0x40b

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 550
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mIsRecovery:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v6, 0x0

    .line 551
    sget-object v1, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType4:[J

    aget-wide v7, v1, v2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v8}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->exchangeForAccessToken(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IIJ)V

    :cond_1
    :goto_0
    return-void
.end method

.method resumeSmsAlarm(J)V
    .locals 15

    move-object v0, p0

    .line 426
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    move-wide/from16 v2, p1

    .line 427
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 428
    iget-object v2, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "last sms time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x2

    .line 429
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "-"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x5

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v9, 0xa

    .line 430
    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ":"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v11, 0xc

    invoke-virtual {v1, v11}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v12, 0xd

    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v13

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 428
    invoke-virtual {v2, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    const/16 v2, 0x1e

    .line 431
    invoke-virtual {v1, v6, v2}, Ljava/util/Calendar;->add(II)V

    .line 434
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 435
    iget-object v3, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "resend_sms"

    .line 436
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 438
    iget-object v3, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    const/high16 v13, 0x2000000

    const/4 v14, 0x0

    invoke-static {v3, v14, v2, v13}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mResendSmsIntent:Landroid/app/PendingIntent;

    .line 439
    iget-object v2, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    iget-object v3, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mResendSmsIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v14, v12, v13, v3}, Landroid/app/AlarmManager;->setAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 441
    iget-object v0, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "schedule to send SMS at: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xd

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 441
    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    return-void
.end method

.method public revokeAccessToken()V
    .locals 4

    .line 1438
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo v1, "revokeAccessToken()"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1440
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    const-string v0, "access_token"

    .line 1441
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccessToken:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->revokeToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 1444
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSharedPrefHelper:Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "refresh_token"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;->remove(Landroid/content/Context;[Ljava/lang/String;)V

    return-void
.end method

.method revokeToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1477
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo v1, "revokeToken()"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1478
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "revokeToken(): tokenType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1480
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAppKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAppSecret:Ljava/lang/String;

    invoke-static {v0, v1, p2, p1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneRequestBuilder;->buildRevokeTokenRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/constants/ims/entitilement/softphone/requests/RevokeTokenRequest;

    move-result-object p2

    .line 1482
    new-instance v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;-><init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;)V

    const-string v1, "/oauth/v4/revoke"

    .line 1484
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->initHttpRequest(Ljava/lang/String;)V

    const-string v1, "Content-Type"

    const-string v2, "application/x-www-form-urlencoded"

    .line 1485
    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1488
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 1490
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {v1, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1491
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setJsonBody(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 1493
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "could not build JSONObject:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1496
    :goto_0
    sget-object p2, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->POST:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneHttpTransaction;->setRequestMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)V

    const-string p2, "access_token"

    .line 1497
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1498
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 p1, 0xc

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_1

    :cond_0
    const-string/jumbo p2, "refresh_token"

    .line 1499
    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1500
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 p1, 0xd

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    :cond_1
    :goto_1
    return-void
.end method

.method saveTokens(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    .line 387
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccessToken:Ljava/lang/String;

    .line 388
    iput-object p2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccessTokenType:Ljava/lang/String;

    .line 389
    iput-wide p3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mTokenExpiresTime:J

    .line 390
    iput-object p5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRefreshToken:Ljava/lang/String;

    .line 391
    iget-object p2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEncryptionHelper:Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;

    iget-object p3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSecretKey:Ljavax/crypto/SecretKey;

    invoke-virtual {p2, p1, p3}, Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;->encrypt(Ljava/lang/String;Ljavax/crypto/SecretKey;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEncryptionHelper:Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;

    iget-object p3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccessTokenType:Ljava/lang/String;

    iget-object p4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSecretKey:Ljavax/crypto/SecretKey;

    invoke-virtual {p2, p3, p4}, Lcom/sec/internal/ims/entitlement/util/EncryptionHelper;->encrypt(Ljava/lang/String;Ljavax/crypto/SecretKey;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->storeTokens(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method scheduleRefreshTokenAlarm(JI)V
    .locals 5

    .line 396
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "refresh_token"

    .line 397
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "attempt"

    .line 398
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 400
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    const/high16 v2, 0xc000000

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRefreshTokenIntent:Landroid/app/PendingIntent;

    .line 401
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p1

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRefreshTokenIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/app/AlarmManager;->setAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 402
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "refresh token after "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", attempt: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized scheduleSmsAlarm()V
    .locals 13

    monitor-enter p0

    .line 406
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 407
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "-"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0xa

    .line 408
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0xc

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0xd

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 407
    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 409
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSharedPrefHelper:Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v10, "sms_time"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    invoke-virtual {v1, v2, v9, v10, v11}, Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;->save(Landroid/content/Context;Ljava/lang/String;J)V

    const/16 v1, 0x1e

    .line 410
    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->add(II)V

    .line 413
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 414
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "resend_sms"

    .line 415
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 417
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    const/high16 v9, 0x2000000

    const/4 v10, 0x0

    invoke-static {v2, v10, v1, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mResendSmsIntent:Landroid/app/PendingIntent;

    .line 418
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mResendSmsIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v10, v11, v12, v2}, Landroid/app/AlarmManager;->setAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    .line 420
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "schedule to send SMS at: "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 420
    invoke-virtual {v1, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 423
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setCallForwardingInfo(Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;)V
    .locals 4

    .line 823
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType2:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->setCallForwardingInfo(Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;IJ)V

    return-void
.end method

.method public setCallWaitingInfo(Lcom/sec/vsim/attsoftphone/data/CallWaitingInfo;)V
    .locals 4

    .line 801
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType2:[J

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->setCallWaitingInfo(Lcom/sec/vsim/attsoftphone/data/CallWaitingInfo;IJ)V

    return-void
.end method

.method public startInitstate()V
    .locals 7

    .line 560
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAutoRetry:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 561
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mTGaurdToken:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mTGaurdAppId:Ljava/lang/String;

    iget v6, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEnvironment:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->exchangeForAccessToken(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V

    :cond_0
    return-void
.end method

.method tokenExist()Z
    .locals 6

    .line 1875
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mSharedPrefHelper:Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1876
    iget-object v2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "refresh_token"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/sec/internal/ims/entitlement/util/SharedPrefHelper;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRefreshToken:Ljava/lang/String;

    .line 1877
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tokenExist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRefreshToken:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 1878
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mRefreshToken:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 1880
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo v0, "sharedPrefHelper is null"

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    return v1
.end method

.method public tryDeregister()V
    .locals 2

    .line 695
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mAccountId:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->updateAccountStatus(Ljava/lang/String;I)V

    .line 696
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public tryRegister()V
    .locals 1

    .line 691
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mStateHandler:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void
.end method

.method tryRegisterWithDefaultAddress()Z
    .locals 6

    .line 1132
    invoke-direct {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->getCurrentAddress()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1134
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->tryRegister()V

    return v1

    .line 1137
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->getDefaultAddress()J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-eqz v0, :cond_1

    .line 1139
    invoke-direct {p0, v4, v5}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->setAddressCurrent(J)V

    .line 1140
    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->tryRegister()V

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public updateAccountStatus(Ljava/lang/String;I)V
    .locals 3

    .line 319
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateAccountStatus(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 321
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    if-eqz p2, :cond_2

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    const/4 v1, 0x5

    if-eq p2, v1, :cond_0

    .line 335
    invoke-static {p1}, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAccount;->buildAccountIdUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string/jumbo v1, "status"

    .line 336
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 p2, 0x0

    .line 339
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    .line 340
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v1, "status > ?"

    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void

    .line 332
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAccount;->buildRegisteredAccountUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    .line 326
    :cond_1
    invoke-static {p1}, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAccount;->buildActivateAccountUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    .line 329
    :cond_2
    invoke-static {p1}, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAccount;->buildDeActivateAccountUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_3

    .line 346
    iget p2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    .line 347
    iget-object v1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "userid = ?"

    invoke-virtual {v1, p1, v0, v2, p2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_3

    .line 349
    iget p2, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mUserId:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string/jumbo v1, "userid"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 350
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    :cond_3
    return-void
.end method

.method public validateE911Address(IZLcom/sec/vsim/attsoftphone/IEmergencyServiceListener;)V
    .locals 7

    const/4 v4, 0x0

    .line 652
    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType2:[J

    const/4 v1, 0x0

    aget-wide v5, v0, v1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->validateE911Address(IZLcom/sec/vsim/attsoftphone/IEmergencyServiceListener;IJ)V

    return-void
.end method
