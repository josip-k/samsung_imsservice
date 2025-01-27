.class public Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;
.super Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;
.source "SmsServiceModule.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/servicemodules/sms/ISmsServiceModule;
.implements Lcom/sec/internal/ims/util/IMessagingAppInfoListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$EmergencyGeolocationState;,
        Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$AlternativeServiceXmlParser;,
        Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$AlternativeService;
    }
.end annotation


# static fields
.field private static final ACTION_EMERGENCY_CALLBACK_MODE_INTERNAL:Ljava/lang/String; = "com.samsung.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED_INTERNAL"

.field private static final ALTERNATIVE_SERVICE:Ljava/lang/String; = "application/3gpp-ims+xml"

.field private static final ASVC_INITIAL_REGISTRATION:Ljava/lang/String; = "initial-registration"

.field private static final ASVC_RESTORATION:Ljava/lang/String; = "restoration"

.field protected static final EMERGENCY_GEOLOCATION_UPDATED:I = 0xa

.field protected static final EMERGENCY_REGISTER_DONE_EVENT:I = 0x5

.field protected static final EMERGENCY_REGISTER_FAIL_EVENT:I = 0x6

.field protected static final EMERGENCY_REGISTER_START_EVENT:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MAX_RETRANS_COUNT_ON_RP_ERR:I = 0x1

.field public static final NAME:Ljava/lang/String;

.field private static final NOTI_503_OUTAGE:I = 0x309

.field private static final NOTI_DEREGISTERED:I = 0x3e7

.field public static final NOTI_INTERNAL_ADDR_ERR:I = 0x2711

.field public static final NOTI_INTERNAL_BASE:I = 0x2710

.field public static final NOTI_INTERNAL_EMERGENCY_REGI_FAIL:I = 0x2712

.field public static final NOTI_INTERNAL_END:I = 0x2af8

.field public static final NOTI_INTERNAL_LIMITED_REGI:I = 0x2714

.field public static final NOTI_INTERNAL_NO_RP_ACK:I = 0x2713

.field private static final NOTI_SUBMIT_REPORT_TIMEOUT:I = 0x321

.field protected static final RESET_EMERGENCY_GEOLOCATION_STATE:I = 0x8

.field private static final RETRANS_ON_RP_ERROR_TIMEOUT:I = 0x3

.field protected static final RRC_CONNECTION_EVENT:I = 0x2

.field protected static final SCBM_TIMEOUT_EVENT:I = 0x7

.field protected static final SEND_SMS_EVENT:I = 0x3

.field private static final SIP_R_CAUSE_200_OK:I = 0xc8

.field private static final SIP_R_CAUSE_LIMITED:I = 0x194

.field private static final SIP_R_CAUSE_TEMP_ERROR:I = 0x1e0

.field protected static final SMS_EVENT:I = 0x1

.field private static final STATE_TIMEOUT:I = 0x1

.field private static final SUBMIT_REPORT_TIMEOUT:I = 0x2

.field protected static final TIMEOUT_EMERGENCY_GEOLOCATION_UPDATE:I = 0x9

.field private static final TIMER_EMERGENCY_REGISTER_FAIL:I = 0x2710

.field private static final TIMER_RESET_EMERGENCY_GEOLOCATION:I = 0x3e8

.field private static final TIMER_STATE:I = 0x2bf20

.field protected static TIMER_SUBMIT_REPORT:I = 0x0

.field private static final TIMER_SUBMIT_REPORT_SPR:I = 0x2710

.field private static final TIMER_VZW_SCBM:I = 0x493e0

.field private static final VZW_E911_FALSE:I = 0x0

.field private static final VZW_E911_REREGI:I = 0x2

.field private static final VZW_E911_TRUE:I = 0x1


# instance fields
.field private MAX_RETRANS_COUNT:I

.field private MAX_RETRANS_COUNT_SPR:I

.field private m3GPP2SendingMsgId:I

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallState:[Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field private mEmergencyGeolocationPendingQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mEmergencyGeolocationState:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$EmergencyGeolocationState;

.field private mEmergencyPendingQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/LinkedList<",
            "Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private mEmergencyRegiProcessiong:[Z

.field private final mImsService:Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;

.field private mIsDeregisterTimerRunning:[Z

.field private mIsDeregistering:[Z

.field private mIsGeolocationResetTimerStarted:Z

.field private mIsInScbm:[Z

.field private mIsRetryIfNoSubmitReport:Z

.field private mLastMOContentType:Ljava/lang/String;

.field mListeners:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Landroid/os/RemoteCallbackList<",
            "Lcom/sec/ims/sms/ISmsServiceEventListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mMaxPhoneCount:I

.field private mMessagingAppInfoReceiver:Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;

.field private mPendingQueue:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mRetransCount:I

.field private mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

.field private mStorageAvailable:Z

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTimeoutHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$EwozC0FVY8QFypyr3Gwpuid73Eo(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->lambda$sendDeliverReport$0(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetMAX_RETRANS_COUNT(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->MAX_RETRANS_COUNT:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetMAX_RETRANS_COUNT_SPR(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->MAX_RETRANS_COUNT_SPR:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCallState(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)[Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mCallState:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmImsService(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mImsService:Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsInScbm(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)[Z
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mIsInScbm:[Z

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMaxPhoneCount(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mMaxPhoneCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMessagingAppInfoReceiver(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mMessagingAppInfoReceiver:Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPendingQueue(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mPendingQueue:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRetransCount(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mRetransCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSmsLogger(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTelephonyManager(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)Landroid/telephony/TelephonyManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputMAX_RETRANS_COUNT(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->MAX_RETRANS_COUNT:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmStorageAvailable(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mStorageAvailable:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$misRegistered(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;I)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->isRegistered(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$monReceiveSMSAckInternal(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;IIILjava/lang/String;[BI)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->onReceiveSMSAckInternal(IIILjava/lang/String;[BI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mretryToSendMessage(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;ILcom/sec/internal/ims/servicemodules/sms/SmsEvent;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->retryToSendMessage(ILcom/sec/internal/ims/servicemodules/sms/SmsEvent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 79
    const-class v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->NAME:Ljava/lang/String;

    .line 80
    sput-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    const v0, 0x9c40

    .line 99
    sput v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->TIMER_SUBMIT_REPORT:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;)V
    .locals 3

    .line 280
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;-><init>(Landroid/os/Looper;)V

    .line 81
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->getInstance()Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    const/4 p1, 0x3

    .line 104
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->MAX_RETRANS_COUNT:I

    const/4 p1, 0x2

    .line 105
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->MAX_RETRANS_COUNT_SPR:I

    .line 115
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 p1, 0x0

    .line 118
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mMessagingAppInfoReceiver:Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;

    const/4 v0, 0x0

    .line 134
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mIsRetryIfNoSubmitReport:Z

    .line 135
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mPendingQueue:Ljava/util/concurrent/ConcurrentHashMap;

    .line 136
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    .line 138
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->m3GPP2SendingMsgId:I

    .line 139
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mLastMOContentType:Ljava/lang/String;

    .line 140
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mRetransCount:I

    const/4 p1, 0x1

    .line 142
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mStorageAvailable:Z

    .line 147
    new-instance v1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$1;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$1;-><init>(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 209
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mMaxPhoneCount:I

    .line 213
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mIsGeolocationResetTimerStarted:Z

    .line 221
    sget-object p1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$EmergencyGeolocationState;->NONE:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$EmergencyGeolocationState;

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mEmergencyGeolocationState:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$EmergencyGeolocationState;

    .line 281
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result p1

    iput p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mMaxPhoneCount:I

    .line 282
    new-array v1, p1, [Z

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mEmergencyRegiProcessiong:[Z

    .line 283
    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mIsInScbm:[Z

    .line 284
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mEmergencyPendingQueue:Ljava/util/ArrayList;

    .line 285
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mEmergencyGeolocationPendingQueue:Ljava/util/ArrayList;

    .line 286
    iget p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mMaxPhoneCount:I

    new-array v1, p1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mCallState:[Ljava/lang/String;

    .line 287
    new-array v1, p1, [Z

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mIsDeregisterTimerRunning:[Z

    .line 288
    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mIsDeregistering:[Z

    move p1, v0

    .line 289
    :goto_0
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mMaxPhoneCount:I

    if-ge p1, v1, :cond_0

    .line 290
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mEmergencyRegiProcessiong:[Z

    aput-boolean v0, v1, p1

    .line 291
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mIsInScbm:[Z

    aput-boolean v0, v1, p1

    .line 292
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mEmergencyPendingQueue:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mCallState:[Ljava/lang/String;

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneConstants$State;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p1

    .line 294
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mIsDeregisterTimerRunning:[Z

    aput-boolean v0, v1, p1

    .line 295
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mIsDeregistering:[Z

    aput-boolean v0, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 297
    :cond_0
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    .line 298
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mImsService:Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;

    const-string/jumbo p1, "phone"

    .line 299
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 300
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string p2, "android.intent.action.DEVICE_STORAGE_FULL"

    .line 301
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "android.intent.action.DEVICE_STORAGE_NOT_FULL"

    .line 302
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    .line 303
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "com.samsung.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED_INTERNAL"

    .line 304
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "android.intent.action.PHONE_STATE"

    .line 305
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 306
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private declared-synchronized broadcastOnReceiveSMSAck(IIILjava/lang/String;[BI)V
    .locals 8

    monitor-enter p0

    .line 1762
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadcastOnReceiveSMSAck: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1763
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1764
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/RemoteCallbackList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_1

    .line 1767
    :try_start_1
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 1771
    :try_start_2
    invoke-virtual {p1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/sec/ims/sms/ISmsServiceEventListener;

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-interface/range {v2 .. v7}, Lcom/sec/ims/sms/ISmsServiceEventListener;->onReceiveSMSAck(IILjava/lang/String;[BI)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1773
    :try_start_3
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1779
    :cond_0
    :goto_1
    :try_start_4
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catchall_0
    move-exception p2

    goto :goto_2

    :catch_1
    move-exception p2

    .line 1777
    :try_start_5
    invoke-virtual {p2}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 1779
    :goto_2
    :try_start_6
    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1780
    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1783
    :cond_1
    :goto_3
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private failPendingEmergencySms(I)V
    .locals 9

    .line 1234
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "failPendingEmergencySms"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mEmergencyPendingQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 1236
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mEmergencyPendingQueue:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v1, p1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1237
    :goto_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1238
    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;

    .line 1239
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getMessageID()I

    move-result v4

    const/16 v5, 0x2712

    .line 1240
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getContentType()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, -0x1

    move-object v2, p0

    move v3, p1

    .line 1239
    invoke-direct/range {v2 .. v8}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->onReceiveSMSAckInternal(IIILjava/lang/String;[BI)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private fallbackForSpecificReason(I)V
    .locals 10

    .line 1708
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mLastMOContentType:Ljava/lang/String;

    const-string v1, "application/vnd.3gpp.sms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1709
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mPendingQueue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1711
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1712
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_0

    .line 1714
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mPendingQueue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;

    if-nez v2, :cond_1

    return-void

    .line 1719
    :cond_1
    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setReasonCode(I)V

    .line 1720
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1721
    sget-object v3, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fallback 3gpp message with reason "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1723
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mTimeoutHandler:Landroid/os/Handler;

    if-eqz v3, :cond_2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v4}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1724
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mTimeoutHandler:Landroid/os/Handler;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1727
    :cond_2
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mTimeoutHandler:Landroid/os/Handler;

    if-eqz v3, :cond_3

    iget-boolean v4, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mIsRetryIfNoSubmitReport:Z

    if-eqz v4, :cond_3

    .line 1728
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v3, v5, v4}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1729
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mTimeoutHandler:Landroid/os/Handler;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v5, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1732
    :cond_3
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1735
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    move v4, v1

    .line 1737
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getTpMr()I

    move-result v5

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getReasonCode()I

    move-result v6

    .line 1738
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getContentType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->get3gppTpduFromPdu([B)[B

    move-result-object v8

    .line 1739
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getRetryAfter()I

    move-result v9

    move-object v3, p0

    .line 1737
    invoke-direct/range {v3 .. v9}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->broadcastOnReceiveSMSAck(IIILjava/lang/String;[BI)V

    goto/16 :goto_0

    .line 1743
    :cond_5
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mLastMOContentType:Ljava/lang/String;

    const-string v1, "application/vnd.3gpp2.sms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1744
    iget v3, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->m3GPP2SendingMsgId:I

    const/4 v0, -0x1

    if-eq v3, v0, :cond_6

    .line 1746
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->m3GPP2SendingMsgId:I

    const/4 v2, 0x0

    .line 1749
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fallback 3gpp2 message with reason "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x320

    const-string v5, "application/vnd.3gpp2.sms"

    const/4 v6, 0x0

    const/4 v7, -0x1

    move-object v1, p0

    .line 1750
    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->broadcastOnReceiveSMSAck(IIILjava/lang/String;[BI)V

    :cond_6
    return-void
.end method

.method private handleEmergencyRegisterDone(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;)V
    .locals 4

    .line 1245
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleEmergencyRegisterDone"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getEventType()I

    move-result v1

    .line 1247
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mEmergencyRegiProcessiong:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_1

    const/4 v2, 0x6

    .line 1248
    invoke-virtual {p0, v2, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/4 v3, 0x1

    .line 1249
    invoke-virtual {p0, v1, v3}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(IZ)Lcom/sec/ims/ImsRegistration;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1250
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mEmergencyRegiProcessiong:[Z

    const/4 v0, 0x0

    aput-boolean v0, p1, v1

    .line 1251
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->sendPendingEmergencySms(I)V

    goto :goto_0

    :cond_0
    const-string v1, "handleEmergencyRegisterDone: Emergency Regi failed."

    .line 1253
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    invoke-virtual {p0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private handleEmergencyRegisterFail(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;)V
    .locals 2

    .line 1260
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleEmergencyRegisterFail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getEventType()I

    move-result p1

    .line 1262
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mEmergencyRegiProcessiong:[Z

    aget-boolean v1, v0, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 1263
    aput-boolean v1, v0, p1

    .line 1264
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->failPendingEmergencySms(I)V

    :cond_0
    return-void
.end method

.method private handleEmergencySmsWithGeolocation(I[BLjava/lang/String;ILcom/sec/internal/ims/servicemodules/sms/SmsEvent;)Z
    .locals 4

    .line 1852
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleEmergencySmsWithGeolocation: mEmergencyGeolocationState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mEmergencyGeolocationState:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$EmergencyGeolocationState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1853
    sget-object v1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$4;->$SwitchMap$com$sec$internal$ims$servicemodules$sms$SmsServiceModule$EmergencyGeolocationState:[I

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mEmergencyGeolocationState:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$EmergencyGeolocationState;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x2

    if-eq v1, v0, :cond_2

    goto :goto_0

    .line 1856
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getGeolocationController()Lcom/sec/internal/interfaces/ims/core/IGeolocationController;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v3, "handleEmergencySmsWithGeolocation: Start geolocation update for emergency SMS"

    .line 1858
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1859
    invoke-interface {v1, p1, v2}, Lcom/sec/internal/interfaces/ims/core/IGeolocationController;->startGeolocationUpdate(IZ)Z

    move-result v1

    if-nez v1, :cond_1

    const-string p0, "handleEmergencySmsWithGeolocation: Geolocation update request failed. Send SMS without geolocation update"

    .line 1860
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2

    .line 1864
    :cond_1
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$EmergencyGeolocationState;->UPDATING:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$EmergencyGeolocationState;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mEmergencyGeolocationState:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$EmergencyGeolocationState;

    .line 1865
    invoke-virtual {p5}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    const/16 v1, 0x9

    .line 1866
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getLocationAcquireFailSMS()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1869
    :cond_2
    invoke-virtual {p5, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setEventType(I)V

    .line 1870
    invoke-virtual {p5, p4}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setMessageID(I)V

    .line 1871
    invoke-virtual {p5, p2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setData([B)V

    .line 1872
    invoke-virtual {p5, p3}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setSmscAddr(Ljava/lang/String;)V

    .line 1873
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mEmergencyGeolocationPendingQueue:Ljava/util/ArrayList;

    invoke-virtual {p0, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    return p0
.end method

.method private handleMOReceivingCallID(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;Lcom/sec/ims/ImsRegistration;ILcom/sec/internal/constants/Mno;)Z
    .locals 15

    move-object v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v0, p5

    .line 1121
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getReasonCode()I

    move-result v4

    const/16 v5, 0x64

    const/4 v8, 0x1

    if-ne v4, v5, :cond_0

    return v8

    .line 1125
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getReasonCode()I

    move-result v4

    const/16 v5, 0xc8

    const/16 v6, 0x12c

    const/4 v7, 0x0

    if-lt v4, v5, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getReasonCode()I

    move-result v4

    if-ge v4, v6, :cond_5

    const/16 v3, 0x66

    .line 1126
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setState(I)V

    .line 1127
    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v4, "eng"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "userdebug"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const-string/jumbo v3, "ro.product_ship"

    const-string/jumbo v4, "true"

    .line 1128
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "false"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "ril.ims.smstest.ignoreack"

    .line 1129
    invoke-static {v3, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v7, v8

    .line 1130
    :cond_2
    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mTimeoutHandler:Landroid/os/Handler;

    if-eqz v3, :cond_4

    iget-boolean v4, v1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mIsRetryIfNoSubmitReport:Z

    if-eqz v4, :cond_4

    if-nez v7, :cond_4

    const/4 v4, 0x2

    .line 1131
    invoke-virtual {v3, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 1132
    invoke-virtual/range {p5 .. p5}, Lcom/sec/internal/constants/Mno;->isSprint()Z

    move-result v0

    if-eqz v0, :cond_3

    const-wide/16 v5, 0x2710

    goto :goto_0

    :cond_3
    sget v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->TIMER_SUBMIT_REPORT:I

    int-to-long v5, v0

    .line 1131
    :goto_0
    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1134
    :cond_4
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mPendingQueue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getMessageID()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v8

    .line 1137
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getReasonCode()I

    move-result v4

    if-lt v4, v6, :cond_b

    if-eqz v3, :cond_b

    .line 1138
    iget-object v9, v1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    const-string v11, "1"

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getReasonCode()I

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x1

    move/from16 v10, p4

    invoke-static/range {v9 .. v14}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->sendIsmoInfoToHqmAndStoreMoSmsInfoOfDrcsToImsLogAgent(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Z)V

    .line 1140
    sget-object v4, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    const-string v5, "initial-registration"

    const-string/jumbo v6, "restoration"

    const-string v9, "application/3gpp-ims+xml"

    const/16 v10, 0x1f8

    if-ne v0, v4, :cond_7

    .line 1141
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getReasonCode()I

    move-result v0

    if-ne v0, v10, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1143
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$AlternativeServiceXmlParser;->parseXml(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$AlternativeService;

    move-result-object v0

    .line 1144
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$AlternativeService;->mType:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$AlternativeService;->mAction:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_9

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1148
    sget-object v4, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceiveSipResponse: XPath expression failed :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljavax/xml/xpath/XPathExpressionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1150
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getReasonCode()I

    move-result v0

    const/16 v4, 0x198

    if-ne v0, v4, :cond_9

    :goto_1
    move v7, v8

    goto :goto_2

    .line 1153
    :cond_7
    sget-object v4, Lcom/sec/internal/constants/Mno;->EDF:Lcom/sec/internal/constants/Mno;

    if-eq v0, v4, :cond_8

    sget-object v4, Lcom/sec/internal/constants/Mno;->SWISSCOM:Lcom/sec/internal/constants/Mno;

    if-ne v0, v4, :cond_9

    .line 1154
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getReasonCode()I

    move-result v0

    if-ne v0, v10, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1156
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$AlternativeServiceXmlParser;->parseXml(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$AlternativeService;

    move-result-object v0

    .line 1157
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$AlternativeService;->mType:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$AlternativeService;->mAction:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v0, :cond_9

    goto :goto_1

    :catch_1
    :cond_9
    :goto_2
    if-eqz v7, :cond_a

    .line 1166
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getReasonCode()I

    move-result v0

    const-string v4, "initial_registration"

    invoke-static {v3, v0, v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->onSipError(Lcom/sec/ims/ImsRegistration;ILjava/lang/String;)V

    goto :goto_3

    .line 1168
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getReasonCode()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getReason()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->onSipError(Lcom/sec/ims/ImsRegistration;ILjava/lang/String;)V

    .line 1170
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2f

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move/from16 v3, p4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "onReceiveSipResponse"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getTpMr()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getReasonCode()I

    move-result v4

    .line 1172
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getContentType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getRetryAfter()I

    move-result v7

    move-object v1, p0

    move/from16 v2, p4

    move v3, v0

    .line 1171
    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->broadcastOnReceiveSMSAck(IIILjava/lang/String;[BI)V

    return v8

    :cond_b
    return v7
.end method

.method private handleMTReceivingDeliverReportAck(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;Lcom/sec/ims/ImsRegistration;I)V
    .locals 4

    .line 1179
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1180
    invoke-virtual {v0, v1, p2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1182
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getReasonCode()I

    move-result v0

    const/16 v2, 0x12c

    if-lt v0, v2, :cond_2

    if-eqz p3, :cond_2

    .line 1183
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getRetryAfter()I

    move-result v0

    if-lez v0, :cond_1

    .line 1184
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mPendingQueue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getMessageID()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1185
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mTimeoutHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 1186
    invoke-virtual {v0, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0x2bf20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1190
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getReasonCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v0, v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->onSipError(Lcom/sec/ims/ImsRegistration;ILjava/lang/String;)V

    .line 1193
    :cond_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2f

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "onReceiveSipResponse"

    invoke-static {p3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    iget-object p3, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 1195
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p0, p3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/RemoteCallbackList;

    if-eqz p0, :cond_4

    .line 1198
    :try_start_0
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result p3
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-lez p3, :cond_3

    add-int/lit8 p3, p3, -0x1

    .line 1202
    :try_start_1
    invoke-virtual {p0, p3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object p4

    check-cast p4, Lcom/sec/ims/sms/ISmsServiceEventListener;

    .line 1203
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getMessageID()I

    move-result v0

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getReasonCode()I

    move-result v1

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getRetryAfter()I

    move-result v2

    .line 1202
    invoke-interface {p4, v0, v1, v2}, Lcom/sec/ims/sms/ISmsServiceEventListener;->onReceiveSMSDeliveryReportAck(III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p4

    .line 1205
    :try_start_2
    invoke-virtual {p4}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 1209
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1211
    :cond_3
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1212
    throw p1

    :cond_4
    :goto_2
    return-void
.end method

.method private handleRRCConnection(Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent;)V
    .locals 3

    .line 542
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rrcEvent.getEvent() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent;->getEvent()Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent$RrcEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 545
    sget-object v1, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_0

    return-void

    .line 549
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent;->getEvent()Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent$RrcEvent;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent$RrcEvent;->REJECTED:Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent$RrcEvent;

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent;->getEvent()Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent$RrcEvent;

    move-result-object p1

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent$RrcEvent;->TIMER_EXPIRED:Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent$RrcEvent;

    if-ne p1, v0, :cond_3

    .line 550
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mLastMOContentType:Ljava/lang/String;

    if-nez p1, :cond_2

    return-void

    :cond_2
    const/16 p1, 0x320

    .line 553
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->fallbackForSpecificReason(I)V

    :cond_3
    return-void
.end method

.method private handleSmsEvent(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;)V
    .locals 3

    .line 527
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSmsEvent coming "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getEventType()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    .line 536
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->onReceiveSmsMessage(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;)V

    goto :goto_0

    .line 530
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->onReceiveNotiInfo(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;)V

    goto :goto_0

    .line 533
    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->onReceiveOtherInfo(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;)V

    :goto_0
    return-void
.end method

.method private isEmergencyNumber(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "911"

    .line 1538
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "9339"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "922"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method private isRegistered(I)Z
    .locals 0

    .line 1653
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$sendDeliverReport$0(II)V
    .locals 3

    .line 1586
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1587
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/RemoteCallbackList;

    if-eqz p0, :cond_1

    .line 1590
    :try_start_0
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-lez p1, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 1594
    :try_start_1
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/sms/ISmsServiceEventListener;

    const/16 v1, 0x3e7

    const/4 v2, -0x1

    invoke-interface {v0, p2, v1, v2}, Lcom/sec/ims/sms/ISmsServiceEventListener;->onReceiveSMSDeliveryReportAck(III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1596
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 1600
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1602
    :cond_0
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1603
    throw p1

    :cond_1
    :goto_2
    return-void
.end method

.method private make3gpp2SMS(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;[BLjava/lang/String;Lcom/sec/internal/constants/Mno;IILjava/lang/String;Lcom/sec/ims/ImsRegistration;)Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;
    .locals 12

    move-object v1, p0

    move-object v0, p1

    move-object/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    const-string v5, "0"

    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 1483
    :try_start_0
    sget-object v7, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    const/4 v9, 0x1

    if-ne v2, v7, :cond_0

    move-object v7, p3

    move-object/from16 v10, p8

    move v11, v9

    goto :goto_0

    :cond_0
    move-object v7, p3

    move-object/from16 v10, p8

    move v11, v6

    :goto_0
    invoke-static {v10, p3, v11}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->getNetworkPreferredUri(Lcom/sec/ims/ImsRegistration;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setSmscAddr(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1491
    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setData([B)V

    .line 1492
    sget-object v6, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v2, v6, :cond_1

    move-object v2, p2

    array-length v2, v2

    const/16 v6, 0x100

    if-le v2, v6, :cond_1

    .line 1494
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    const-string v1, "SSM_sendSMSOverIMS_overSize"

    invoke-static {v0, v3, v5, v1, v9}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->sendSmotInfoToHQM(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)V

    return-object v8

    .line 1498
    :cond_1
    invoke-virtual {p1, v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setMessageID(I)V

    .line 1499
    iput v4, v1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->m3GPP2SendingMsgId:I

    return-object v0

    :catch_0
    move-exception v0

    .line 1485
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1486
    iget-object v0, v1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    const-string v2, "SSM_sendSMSOverIMS_AddrErr"

    invoke-static {v0, v3, v5, v2, v6}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->sendSmotInfoToHQM(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)V

    const/16 v0, 0x2711

    const/4 v6, 0x0

    const/4 v7, -0x1

    move-object v1, p0

    move/from16 v2, p5

    move/from16 v3, p6

    move v4, v0

    move-object/from16 v5, p7

    .line 1487
    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->onReceiveSMSAckInternal(IIILjava/lang/String;[BI)V

    return-object v8
.end method

.method private make3gppSMS(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;[BLjava/lang/String;Lcom/sec/internal/constants/Mno;IILjava/lang/String;Lcom/sec/ims/ImsRegistration;Z)Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move-object/from16 v12, p8

    move/from16 v13, p9

    .line 1428
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->getIncreasedRPRef()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setRpRef(I)V

    .line 1430
    invoke-static {v13, v2, v3, v9}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->getScaForRpDa(Z[BLjava/lang/String;Lcom/sec/internal/constants/Mno;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "noSCA"

    .line 1431
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v14, 0x0

    const-string v15, "0"

    const/4 v8, 0x1

    if-eqz v5, :cond_0

    .line 1432
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    const-string v2, "SSM_sendSMSOverIMS_emptySCA"

    invoke-static {v1, v10, v15, v2, v8}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->sendSmotInfoToHQM(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)V

    const/16 v3, 0x2711

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p5

    move/from16 v2, p6

    move-object/from16 v4, p7

    .line 1433
    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->onReceiveSMSAckInternal(IIILjava/lang/String;[BI)V

    return-object v14

    .line 1437
    :cond_0
    invoke-static {v4, v3, v9, v12}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->getSca(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/Mno;Lcom/sec/ims/ImsRegistration;)Ljava/lang/String;

    move-result-object v5

    if-nez v13, :cond_2

    .line 1439
    sget-object v3, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v9, v3, :cond_1

    goto :goto_0

    :cond_1
    move-object v4, v5

    .line 1440
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getRpRef()I

    move-result v3

    invoke-static {v4}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->removeSipPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, ""

    invoke-static {v2, v3, v4, v6}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->get3gppPduFromTpdu([BILjava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setData([B)V

    goto :goto_1

    .line 1442
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getRpRef()I

    move-result v3

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->getRpSMMAPdu(I)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setData([B)V

    .line 1445
    :goto_1
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    iget-object v6, v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object v4, v5

    move-object/from16 v5, p4

    move/from16 v7, p5

    move v14, v8

    move-object/from16 v8, p8

    invoke-static/range {v3 .. v8}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->getScaFromPsismscPSI(Landroid/content/Context;Ljava/lang/String;Lcom/sec/internal/constants/Mno;Landroid/telephony/TelephonyManager;ILcom/sec/ims/ImsRegistration;)Ljava/lang/String;

    move-result-object v3

    .line 1446
    sget-object v4, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    if-ne v9, v4, :cond_3

    const-string v4, "noPSI"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1447
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    const-string v1, "SSM_sendSMSOverIMS_LguNoPSI"

    invoke-static {v0, v10, v15, v1, v14}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->sendSmotInfoToHQM(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    return-object v0

    .line 1451
    :cond_3
    sget-object v4, Lcom/sec/internal/constants/Mno;->DOCOMO:Lcom/sec/internal/constants/Mno;

    if-eq v9, v4, :cond_4

    invoke-virtual/range {p4 .. p4}, Lcom/sec/internal/constants/Mno;->isOrangeGPG()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual/range {p4 .. p4}, Lcom/sec/internal/constants/Mno;->isSprint()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual/range {p4 .. p4}, Lcom/sec/internal/constants/Mno;->isTmobile()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1453
    :cond_4
    iput-boolean v14, v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mIsRetryIfNoSubmitReport:Z

    .line 1456
    :cond_5
    sget-object v4, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-eq v9, v4, :cond_7

    sget-object v4, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-eq v9, v4, :cond_7

    sget-object v4, Lcom/sec/internal/constants/Mno;->CU:Lcom/sec/internal/constants/Mno;

    if-ne v9, v4, :cond_6

    goto :goto_2

    :cond_6
    const/4 v8, 0x0

    goto :goto_3

    :cond_7
    :goto_2
    move v8, v14

    :goto_3
    invoke-static {v12, v3, v8}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->getNetworkPreferredUri(Lcom/sec/ims/ImsRegistration;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setSmscAddr(Ljava/lang/String;)V

    if-nez v13, :cond_8

    .line 1458
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->getNewMsgId()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setMessageID(I)V

    .line 1459
    invoke-static/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->getTPMRFromPdu([B)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setTpMr(I)V

    goto :goto_4

    .line 1461
    :cond_8
    invoke-virtual {v1, v11}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setMessageID(I)V

    .line 1462
    invoke-virtual {v1, v11}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setTpMr(I)V

    .line 1465
    :goto_4
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mPendingQueue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getMessageID()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1466
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "send message already pending"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_9
    const/16 v2, 0x64

    .line 1468
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setState(I)V

    .line 1470
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mTimeoutHandler:Landroid/os/Handler;

    if-eqz v2, :cond_a

    .line 1471
    invoke-virtual {v2, v14, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    const-wide/32 v4, 0x2bf20

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1473
    :cond_a
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mPendingQueue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getMessageID()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    return-object v1
.end method

.method private onReceive3GPP2IncomingSms(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;)V
    .locals 5

    .line 732
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 735
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 738
    :goto_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "1"

    if-nez v1, :cond_1

    .line 739
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    const-string p1, "SSM_onReceive3GPP2IncomingSms_WrongFormat"

    invoke-static {p0, v0, v3, p1, v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->sendSmotInfoToHQM(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 743
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/sms/CdmaSmsUtil;->isValid3GPP2PDU([B)Z

    move-result v1

    if-nez v1, :cond_2

    .line 745
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    const-string p1, "SSM_onReceive3GPP2IncomingSms_InvalidPdu"

    invoke-static {p0, v0, v3, p1, v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->sendSmotInfoToHQM(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 751
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive3GPP2IncomingSms: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onReceive3GPP2IncomingSms"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->toKeyDump()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x50000004

    invoke-static {v2, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 754
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->storeMtSmsInfoOfDrcsToImsLogAgent(Landroid/content/Context;I)V

    .line 755
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 756
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/RemoteCallbackList;

    if-eqz p0, :cond_4

    .line 759
    :try_start_0
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    if-lez v0, :cond_3

    add-int/lit8 v0, v0, -0x1

    .line 763
    :try_start_1
    invoke-virtual {p0, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/sms/ISmsServiceEventListener;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getMessageID()I

    move-result v2

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/sec/ims/sms/ISmsServiceEventListener;->onReceiveIncomingSMS(ILjava/lang/String;[B)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 765
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 769
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 771
    :cond_3
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_3

    :goto_2
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 772
    throw p1

    :cond_4
    :goto_3
    return-void
.end method

.method private onReceive3GPP2SmsAck(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;)Z
    .locals 10

    .line 1029
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getReasonCode()I

    move-result v6

    const/16 v0, 0x64

    const/4 v7, 0x1

    if-ne v6, v0, :cond_0

    return v7

    .line 1036
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1039
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move v8, v0

    .line 1041
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->m3GPP2SendingMsgId:I

    if-gez v0, :cond_2

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getMessageID()I

    move-result v0

    :cond_2
    move v9, v0

    .line 1042
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    const-string v2, "1"

    const/4 v4, 0x0

    const/4 v5, 0x1

    move v1, v8

    move v3, v6

    invoke-static/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->sendIsmoInfoToHqmAndStoreMoSmsInfoOfDrcsToImsLogAgent(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Z)V

    .line 1043
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onReceive3GPP2SmsAck"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v5

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getRetryAfter()I

    move-result p1

    move-object v0, p0

    move v1, v8

    move v2, v9

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->broadcastOnReceiveSMSAck(IIILjava/lang/String;[BI)V

    return v7
.end method

.method private onReceive3GPPIncomingSms(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;)V
    .locals 17

    move-object/from16 v0, p0

    .line 633
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 636
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v2

    .line 639
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v4

    const-string v5, "1"

    const/4 v6, 0x1

    if-eqz v4, :cond_c

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getCallID()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_c

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getSmscAddr()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    goto/16 :goto_6

    .line 644
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v4

    invoke-static {v4}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->get3gppTpduFromPdu([B)[B

    move-result-object v4

    if-nez v4, :cond_4

    .line 646
    sget-object v4, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "incoming tpdu is null. send RP Error report"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getCallID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "] SmscAddr ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getSmscAddr()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    const-string v7, "SSM_onReceive3GPPIncomingSms_tPduNull"

    invoke-static {v4, v3, v5, v7, v6}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->sendSmotInfoToHQM(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)V

    .line 649
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getSmscAddr()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->trimSipAddr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 650
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v4

    invoke-static {v4}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->makeRPErrorPdu([B)[B

    move-result-object v11

    if-nez v11, :cond_2

    .line 653
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    const-string v1, "SSM_onReceive3GPPIncomingSms_deliverPduNull"

    invoke-static {v0, v3, v5, v1, v6}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->sendSmotInfoToHQM(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_2
    const-string v3, "application/vnd.3gpp.sms"

    .line 656
    iput-object v3, v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mLastMOContentType:Ljava/lang/String;

    .line 657
    iget-object v7, v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mImsService:Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->getLocalUri(Lcom/sec/ims/ImsRegistration;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "application/vnd.3gpp.sms"

    const/4 v12, 0x1

    .line 658
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getCallID()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v2

    :cond_3
    move v15, v2

    const/16 v16, 0x0

    .line 657
    invoke-interface/range {v7 .. v16}, Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;->sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZLjava/lang/String;IIZ)V

    return-void

    .line 662
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v1

    array-length v1, v1

    if-gt v1, v6, :cond_5

    .line 663
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    const-string v1, "SSM_onReceive3GPPIncomingSms_DataError"

    invoke-static {v0, v3, v5, v1, v6}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->sendSmotInfoToHQM(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 667
    :cond_5
    new-instance v1, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;

    invoke-direct {v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;-><init>()V

    .line 668
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getContentType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setContentType(Ljava/lang/String;)V

    .line 669
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v5

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v1, v5}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setRpRef(I)V

    .line 670
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getSmscAddr()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->removeDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->trimSipAddr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setSmscAddr(Ljava/lang/String;)V

    .line 671
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getMessageID()I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v1, v5}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setMessageID(I)V

    .line 672
    invoke-virtual/range {p1 .. p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getCallID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setCallID(Ljava/lang/String;)V

    .line 673
    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setData([B)V

    .line 675
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getRpRef()I

    move-result v5

    const/4 v7, -0x1

    if-eq v5, v7, :cond_9

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getSmscAddr()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 676
    invoke-static {v4}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->isStatusReport([B)Z

    move-result v5

    const-wide/32 v7, 0x2bf20

    if-ne v5, v6, :cond_6

    .line 678
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->getNewMsgId()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setMessageID(I)V

    const/16 v2, 0x68

    .line 679
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setState(I)V

    .line 681
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mTimeoutHandler:Landroid/os/Handler;

    if-eqz v2, :cond_8

    .line 682
    invoke-virtual {v2, v6, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v4, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 686
    :cond_6
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->getNewMsgId()I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v1, v5}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setMessageID(I)V

    const/16 v5, 0x67

    .line 687
    invoke-virtual {v1, v5}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setState(I)V

    .line 689
    invoke-static {v4}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->getTPPidDcsFromPdu([B)[B

    move-result-object v4

    if-eqz v4, :cond_7

    .line 691
    aget-byte v2, v4, v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setTpPid(I)V

    .line 692
    aget-byte v2, v4, v6

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setTpDcs(I)V

    .line 693
    sget-object v2, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Incoming SMS new setMessageID : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getMessageID()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " TpPid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 694
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getTpPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " TpDcs : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getTpDcs()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 693
    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    :cond_7
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mTimeoutHandler:Landroid/os/Handler;

    if-eqz v2, :cond_8

    .line 698
    invoke-virtual {v2, v6, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v4, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 701
    :cond_8
    :goto_1
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mPendingQueue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getMessageID()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 704
    :cond_9
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    sget-object v4, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceive3GPPIncomingSms: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x2f

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "onReceive3GPPIncomingSms"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->toKeyDump()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v4, 0x50000003

    invoke-static {v4, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 707
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->storeMtSmsInfoOfDrcsToImsLogAgent(Landroid/content/Context;I)V

    .line 708
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 709
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/os/RemoteCallbackList;

    if-eqz v2, :cond_b

    .line 712
    :try_start_0
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    if-lez v0, :cond_a

    add-int/lit8 v3, v0, -0x1

    .line 716
    :try_start_1
    invoke-virtual {v2, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/sms/ISmsServiceEventListener;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getMessageID()I

    move-result v4

    .line 717
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getContentType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v6

    .line 716
    invoke-interface {v0, v4, v5, v6}, Lcom/sec/ims/sms/ISmsServiceEventListener;->onReceiveIncomingSMS(ILjava/lang/String;[B)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 719
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    move v0, v3

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    .line 723
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 725
    :cond_a
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_5

    :goto_4
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 726
    throw v0

    :cond_b
    :goto_5
    return-void

    .line 640
    :cond_c
    :goto_6
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    const-string v1, "SSM_onReceive3GPPIncomingSms_WrongFormat"

    invoke-static {v0, v3, v5, v1, v6}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->sendSmotInfoToHQM(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private onReceive3GPPSmsAck(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;)Z
    .locals 11

    const-string v0, "eng"

    .line 954
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    const-string/jumbo v0, "userdebug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "false"

    const-string/jumbo v1, "ro.product_ship"

    const-string/jumbo v4, "true"

    .line 955
    invoke-static {v1, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "true"

    const-string/jumbo v1, "ril.ims.smstest.ignoreack"

    const-string v4, "false"

    .line 956
    invoke-static {v1, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    if-eqz v0, :cond_2

    .line 958
    sget-object p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Ignore ack for test"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p0, "ril.ims.smstest.ignoreack"

    const-string p1, "false"

    .line 959
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 963
    :cond_2
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 966
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    goto :goto_1

    :cond_3
    move v0, v3

    .line 969
    :goto_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v1

    if-eqz v1, :cond_b

    .line 974
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_4

    .line 975
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mPendingQueue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v4

    invoke-static {v1, v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->getMessageIdByPdu(Ljava/util/concurrent/ConcurrentHashMap;[B)I

    move-result v1

    .line 976
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mPendingQueue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    const/4 v1, -0x1

    :goto_2
    move-object v10, v4

    if-nez v10, :cond_5

    .line 980
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    sget-object p1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "unexpected SUBMIT report - pendingMessage is null"

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 984
    :cond_5
    invoke-virtual {v10}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getState()I

    move-result v4

    const/16 v5, 0x64

    if-lt v4, v5, :cond_a

    const/16 v5, 0x66

    if-le v4, v5, :cond_6

    goto/16 :goto_4

    .line 991
    :cond_6
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mTimeoutHandler:Landroid/os/Handler;

    if-eqz v1, :cond_7

    .line 992
    invoke-virtual {v1, v2, v10}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 993
    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mIsRetryIfNoSubmitReport:Z

    if-eqz v1, :cond_7

    .line 994
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v1, v4, v10}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 998
    :cond_7
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->get3gppTpduFromPdu([B)[B

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setData([B)V

    .line 999
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setContentType(Ljava/lang/String;)V

    .line 1000
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getRetryAfter()I

    move-result v1

    invoke-virtual {v10, v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setRetryAfter(I)V

    .line 1002
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v4

    invoke-static {v1, v4}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->get3gppRPError(Ljava/lang/String;[B)I

    move-result v1

    if-lez v1, :cond_8

    .line 1004
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    const-string v6, "2"

    const/4 v7, 0x0

    const-string v5, "%02X"

    int-to-byte v8, v1

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    move v5, v0

    invoke-static/range {v4 .. v9}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->sendIsmoInfoToHqmAndStoreMoSmsInfoOfDrcsToImsLogAgent(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Z)V

    .line 1005
    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->getRilRPErrCode(I)I

    move-result v1

    invoke-virtual {v10, v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setReasonCode(I)V

    goto :goto_3

    .line 1007
    :cond_8
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    const-string v6, "0"

    const/4 v7, 0x0

    const-string v8, "00"

    const/4 v9, 0x1

    move v5, v0

    invoke-static/range {v4 .. v9}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->sendIsmoInfoToHqmAndStoreMoSmsInfoOfDrcsToImsLogAgent(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Z)V

    .line 1008
    invoke-virtual {v10, v3}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setReasonCode(I)V

    .line 1011
    :goto_3
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    sget-object v4, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceive3GPPSmsAck: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->toKeyDump()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v5, 0x50000005

    invoke-static {v5, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1013
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v5

    invoke-static {v1, v5}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->isAck(Ljava/lang/String;[B)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1014
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v1

    .line 1015
    :try_start_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2f

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "onReceive3GPPSmsAck"

    invoke-static {p1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    invoke-virtual {v10}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getTpMr()I

    move-result v6

    invoke-virtual {v10}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getReasonCode()I

    move-result v7

    .line 1017
    invoke-virtual {v10}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getContentType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v9

    invoke-virtual {v10}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getRetryAfter()I

    move-result v10

    move-object v4, p0

    move v5, v0

    .line 1016
    invoke-direct/range {v4 .. v10}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->broadcastOnReceiveSMSAck(IIILjava/lang/String;[BI)V

    .line 1018
    monitor-exit v1

    return v2

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 1021
    :cond_9
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getTpMr()I

    move-result p0

    if-nez p0, :cond_b

    .line 1022
    invoke-virtual {v10}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getTpMr()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setTpMr(I)V

    goto :goto_5

    .line 986
    :cond_a
    :goto_4
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unexpected SUBMIT report - pendingState is "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mPendingQueue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v10}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    :goto_5
    return v3
.end method

.method private onReceive3GPPSmsRpError(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;)Z
    .locals 6

    .line 912
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 915
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 918
    :goto_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v2

    if-eqz v2, :cond_5

    .line 922
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_1

    .line 923
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mPendingQueue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object p1

    invoke-static {v2, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->getMessageIdByPdu(Ljava/util/concurrent/ConcurrentHashMap;[B)I

    move-result p1

    .line 924
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mPendingQueue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_2

    .line 928
    sget-object p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "unexpected RP-ERROR"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 932
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    sget-object v3, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive3GPPSmsRpError: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->toKeyDump()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v2, 0x50000006

    invoke-static {v2, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 934
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 935
    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 936
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mIsRetryIfNoSubmitReport:Z

    if-eqz v0, :cond_3

    .line 937
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v0, v4, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 941
    :cond_3
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mRetransCount:I

    if-ge v0, v2, :cond_5

    const-string/jumbo v0, "retry to send message on RP-ERROR"

    .line 942
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mTimeoutHandler:Landroid/os/Handler;

    if-eqz v0, :cond_4

    const/4 v1, 0x3

    .line 944
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 946
    :cond_4
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mPendingQueue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getMessageID()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v2

    :cond_5
    return v1
.end method

.method private onReceiveAck(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;Ljava/lang/String;IILcom/sec/ims/ImsRegistration;I)V
    .locals 7

    const/4 p4, -0x1

    if-nez p5, :cond_0

    .line 778
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getReasonCode()I

    move-result p5

    const/16 v0, 0x198

    if-ne p5, v0, :cond_0

    .line 779
    iput p4, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->m3GPP2SendingMsgId:I

    .line 780
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    const-string v3, "3"

    const/16 v4, 0x198

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v2, p3

    invoke-static/range {v1 .. v6}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->sendIsmoInfoToHqmAndStoreMoSmsInfoOfDrcsToImsLogAgent(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Z)V

    return-void

    .line 787
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getCallID()Ljava/lang/String;

    move-result-object p5

    .line 790
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v0

    if-nez v0, :cond_2

    if-eqz p5, :cond_1

    .line 793
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mPendingQueue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2, p5}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->getMessageIdByCallId(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;)I

    move-result p2

    if-le p2, p4, :cond_1

    .line 795
    iget-object p5, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mPendingQueue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p5, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getTpMr()I

    move-result p2

    goto :goto_0

    :cond_1
    move p2, p4

    .line 798
    :goto_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->onReceiveSipResponse(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;)Z

    move-result p5

    goto :goto_3

    :cond_2
    const-string p5, "application/vnd.3gpp.sms"

    .line 799
    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_4

    .line 800
    invoke-static {p3}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object p2

    .line 801
    sget-object p5, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    if-ne p2, p5, :cond_3

    invoke-static {p6}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->isRPErrorForRetransmission(I)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 802
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    const-string v2, "2"

    const/4 v3, 0x0

    int-to-byte p2, p6

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string p5, "%02X"

    invoke-static {p5, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move v1, p3

    invoke-static/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->sendIsmoInfoToHqmAndStoreMoSmsInfoOfDrcsToImsLogAgent(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Z)V

    .line 804
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->onReceive3GPPSmsRpError(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;)Z

    move-result p2

    goto :goto_1

    .line 807
    :cond_3
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->onReceive3GPPSmsAck(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;)Z

    move-result p2

    :goto_1
    move p5, p2

    goto :goto_2

    :cond_4
    const-string p5, "application/vnd.3gpp2.sms"

    .line 809
    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 810
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->onReceive3GPP2SmsAck(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;)Z

    move-result p5

    goto :goto_2

    :cond_5
    const/4 p5, 0x0

    :goto_2
    move p2, p4

    :goto_3
    if-nez p5, :cond_8

    if-lez p6, :cond_6

    .line 816
    invoke-static {p6}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->getRilRPErrCode(I)I

    move-result p5

    invoke-virtual {p1, p5}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setReasonCode(I)V

    .line 817
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object p5

    invoke-static {p5}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->get3gppTpduFromPdu([B)[B

    move-result-object p5

    invoke-virtual {p1, p5}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setData([B)V

    .line 818
    invoke-static {}, Lcom/sec/internal/helper/os/ImsGateConfig;->isGateEnabled()Z

    move-result p5

    if-eqz p5, :cond_6

    const-string p5, "GATE"

    const-string p6, "<GATE-M>SMS_GENERIC_FAILURE</GATE-M>"

    .line 820
    invoke-static {p5, p6}, Lcom/sec/internal/log/IMSLog;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    :cond_6
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p6, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p6, 0x2f

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    const-string p6, "onReceiveAck"

    invoke-static {p5, p6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getTpMr()I

    move-result p5

    if-nez p5, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getTpMr()I

    move-result p2

    :goto_4
    move v2, p2

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getReasonCode()I

    move-result v3

    .line 826
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v5

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getRetryAfter()I

    move-result v6

    move-object v0, p0

    move v1, p3

    .line 825
    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->broadcastOnReceiveSMSAck(IIILjava/lang/String;[BI)V

    .line 827
    iput p4, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->m3GPP2SendingMsgId:I

    :cond_8
    return-void
.end method

.method private onReceiveIncomingSms(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;Ljava/lang/String;IILcom/sec/ims/ImsRegistration;)V
    .locals 6

    .line 577
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v0, p4}, Lcom/sec/ims/extensions/TelephonyManagerExt;->getSubscriberId(Landroid/telephony/TelephonyManager;I)Ljava/lang/String;

    move-result-object p4

    .line 578
    invoke-static {p3}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 580
    sget-object v1, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    const-string v2, "application/vnd.3gpp.sms"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v1, :cond_4

    if-eqz p5, :cond_4

    .line 581
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p5, p4}, Lcom/sec/ims/ImsRegistration;->isImsiBased(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 582
    sget-object p4, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string v0, "onReceiveIncomingSms: isLimitedRegi = true"

    invoke-static {p4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p4, v3

    goto :goto_0

    :cond_0
    move p4, v4

    .line 585
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mIsInScbm:[Z

    aget-boolean v0, v0, p3

    if-eqz v0, :cond_3

    .line 587
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v0

    if-eqz v0, :cond_1

    .line 588
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->get3gppTpduFromPdu([B)[B

    move-result-object v0

    .line 589
    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->is911FromPdu([B)Z

    move-result v0

    if-eqz v0, :cond_1

    move v4, v3

    .line 594
    :cond_1
    invoke-virtual {p5}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p5

    invoke-virtual {p5}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result p5

    if-nez p5, :cond_2

    if-eqz v4, :cond_3

    .line 595
    :cond_2
    iget-object p5, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    invoke-static {p5}, Lcom/sec/internal/helper/PreciseAlarmManager;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/PreciseAlarmManager;

    move-result-object p5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p5, v0}, Lcom/sec/internal/helper/PreciseAlarmManager;->removeMessage(Landroid/os/Message;)V

    .line 596
    iget-object p5, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    invoke-static {p5}, Lcom/sec/internal/helper/PreciseAlarmManager;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/PreciseAlarmManager;

    move-result-object p5

    .line 597
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/32 v4, 0x493e0

    .line 596
    invoke-virtual {p5, v0, v4, v5}, Lcom/sec/internal/helper/PreciseAlarmManager;->sendMessageDelayed(Landroid/os/Message;J)Lcom/sec/internal/helper/DelayedMessage;

    :cond_3
    move v4, p4

    .line 603
    :cond_4
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    const/16 p5, 0x194

    if-eqz p4, :cond_6

    if-eqz v4, :cond_5

    .line 604
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object p2

    if-eqz p2, :cond_5

    .line 605
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object p2

    invoke-static {p2}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->get3gppTpduFromPdu([B)[B

    move-result-object p2

    .line 606
    invoke-static {p2}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->isAdminMsg([B)Z

    move-result p2

    if-nez p2, :cond_5

    .line 607
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mImsService:Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getCallID()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p3, p1, p5}, Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;->sendSMSResponse(ILjava/lang/String;I)V

    return-void

    .line 611
    :cond_5
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->onReceive3GPPIncomingSms(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;)V

    goto :goto_1

    :cond_6
    const-string p4, "application/vnd.3gpp2.sms"

    .line 612
    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    if-ne v4, v3, :cond_7

    .line 613
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object p2

    if-eqz p2, :cond_7

    .line 614
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object p2

    invoke-static {p2}, Lcom/sec/internal/ims/servicemodules/sms/CdmaSmsUtil;->isAdminMsg([B)Z

    move-result p2

    if-nez p2, :cond_7

    .line 615
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mImsService:Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getCallID()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p3, p1, p5}, Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;->sendSMSResponse(ILjava/lang/String;I)V

    return-void

    .line 619
    :cond_7
    iget-boolean p2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mStorageAvailable:Z

    if-nez p2, :cond_8

    .line 620
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    sget-object p4, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string p5, "incoming sms but mStorageAvailable = false"

    invoke-virtual {p2, p4, p5}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mImsService:Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getCallID()Ljava/lang/String;

    move-result-object p4

    const/16 p5, 0x1e0

    invoke-interface {p2, p3, p4, p5}, Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;->sendSMSResponse(ILjava/lang/String;I)V

    .line 622
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->onReceive3GPP2IncomingSms(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;)V

    return-void

    .line 625
    :cond_8
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->onReceive3GPP2IncomingSms(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;)V

    goto :goto_1

    .line 627
    :cond_9
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    const-string p4, "1"

    const-string p5, "SSM_onReceiveIncomingSms_noContentType"

    invoke-static {p2, p3, p4, p5, v3}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->sendSmotInfoToHQM(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)V

    .line 629
    :goto_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mImsService:Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getCallID()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0xc8

    invoke-interface {p0, p3, p1, p2}, Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;->sendSMSResponse(ILjava/lang/String;I)V

    return-void
.end method

.method private onReceiveNotiInfo(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;)V
    .locals 4

    .line 1049
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getMessageID()I

    move-result v0

    if-gez v0, :cond_0

    return-void

    .line 1056
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mPendingQueue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;

    if-eqz v1, :cond_3

    .line 1058
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getState()I

    move-result v2

    const/16 v3, 0x64

    if-eq v2, v3, :cond_2

    const/16 v3, 0x69

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const/16 v2, 0x6a

    .line 1066
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setState(I)V

    .line 1067
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getCallID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setCallID(Ljava/lang/String;)V

    .line 1068
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mPendingQueue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const/16 v2, 0x65

    .line 1060
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setState(I)V

    .line 1061
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getCallID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setCallID(Ljava/lang/String;)V

    .line 1062
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mPendingQueue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    .line 1076
    :cond_3
    sget-object p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string p1, "no pending message"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onReceiveOtherInfo(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;)V
    .locals 12

    .line 1080
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getMessageID()I

    move-result v0

    .line 1081
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getContentType()Ljava/lang/String;

    move-result-object v5

    if-gez v0, :cond_0

    return-void

    .line 1088
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getReasonCode()I

    move-result v1

    const/16 v2, 0x3e7

    if-eq v1, v2, :cond_1

    goto/16 :goto_1

    .line 1090
    :cond_1
    sget-object v1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string v3, "cannot send message as NOTI_DEREGISTERED"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1095
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    const-string v3, "application/vnd.3gpp.sms"

    .line 1098
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1099
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mPendingQueue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;

    if-nez v3, :cond_3

    const-string p0, "no pending message"

    .line 1101
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const-string/jumbo v4, "remove pending message"

    .line 1104
    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setReasonCode(I)V

    const/4 v2, -0x1

    .line 1106
    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setRetryAfter(I)V

    .line 1107
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->m3GPP2SendingMsgId:I

    .line 1108
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getTpMr()I

    move-result v0

    :cond_4
    move v3, v0

    .line 1111
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    const-string v8, "1"

    const/16 v9, 0x3e7

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v7, p1

    invoke-static/range {v6 .. v11}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->sendIsmoInfoToHqmAndStoreMoSmsInfoOfDrcsToImsLogAgent(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Z)V

    .line 1112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onReceiveOtherInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x3e7

    const/4 v6, 0x0

    const/4 v7, -0x1

    move-object v1, p0

    move v2, p1

    .line 1113
    invoke-direct/range {v1 .. v7}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->broadcastOnReceiveSMSAck(IIILjava/lang/String;[BI)V

    :goto_1
    return-void
.end method

.method private onReceiveSMSAckInternal(IIILjava/lang/String;[BI)V
    .locals 3

    .line 1756
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceiveSMSAckInternal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1757
    invoke-direct/range {p0 .. p6}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->broadcastOnReceiveSMSAck(IIILjava/lang/String;[BI)V

    return-void
.end method

.method private onReceiveSipResponse(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;)Z
    .locals 13

    .line 832
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getCallID()Ljava/lang/String;

    move-result-object v0

    .line 837
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v4

    .line 838
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getPhoneId()I

    move-result v1

    if-eqz v4, :cond_0

    .line 840
    invoke-virtual {v4}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v1

    :cond_0
    move v11, v1

    .line 843
    invoke-static {v11}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v12

    .line 844
    invoke-virtual {v12}, Lcom/sec/internal/constants/Mno;->isEur()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getReasonCode()I

    move-result v1

    const/16 v2, 0x2c4

    if-ne v1, v2, :cond_1

    const/16 v1, 0x198

    .line 846
    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setReasonCode(I)V

    .line 848
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceiveSipResponse: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->toKeyDump()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v3, 0x50000007    # 8.5899418E9f

    invoke-static {v3, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    .line 851
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mPendingQueue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getCallID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->getMessageIdByCallId(Ljava/util/concurrent/ConcurrentHashMap;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    const/4 v3, 0x1

    const/4 v5, 0x0

    if-ltz v0, :cond_5

    .line 855
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mPendingQueue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;

    .line 857
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getState()I

    move-result v1

    const/16 v2, 0x65

    if-eq v1, v2, :cond_4

    const/16 v2, 0x6a

    if-eq v1, v2, :cond_3

    return v5

    .line 862
    :cond_3
    invoke-direct {p0, p1, v0, v4, v11}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->handleMTReceivingDeliverReportAck(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;Lcom/sec/ims/ImsRegistration;I)V

    return v3

    :cond_4
    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    move v5, v11

    move-object v6, v12

    .line 859
    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->handleMOReceivingCallID(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;Lcom/sec/ims/ImsRegistration;ILcom/sec/internal/constants/Mno;)Z

    move-result p0

    return p0

    .line 871
    :cond_5
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v0

    if-nez v0, :cond_8

    .line 890
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "onReceiveSipResponse"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getReasonCode()I

    move-result v0

    .line 892
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getReason()Ljava/lang/String;

    move-result-object v2

    .line 893
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    const-string v7, "1"

    const/4 v9, 0x0

    const/4 v10, 0x1

    move v6, v11

    move v8, v0

    invoke-static/range {v5 .. v10}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->sendIsmoInfoToHqmAndStoreMoSmsInfoOfDrcsToImsLogAgent(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Z)V

    .line 894
    sget-object v5, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v12, v5, :cond_6

    const/16 v5, 0x1f7

    if-ne v0, v5, :cond_6

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "Outage"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v0, 0x309

    :cond_6
    move v8, v0

    .line 898
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->m3GPP2SendingMsgId:I

    if-gez v0, :cond_7

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getMessageID()I

    move-result v0

    :cond_7
    move v7, v0

    .line 899
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->m3GPP2SendingMsgId:I

    const-string v9, "application/vnd.3gpp2.sms"

    const/4 v10, 0x0

    const/4 v0, -0x1

    move-object v5, p0

    move v6, v11

    move v11, v0

    .line 900
    invoke-direct/range {v5 .. v11}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->broadcastOnReceiveSMSAck(IIILjava/lang/String;[BI)V

    .line 904
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getReasonCode()I

    move-result p0

    const/16 v0, 0x12c

    if-lt p0, v0, :cond_9

    if-eqz v4, :cond_9

    .line 905
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getReasonCode()I

    move-result p0

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getReason()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p0, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->onSipError(Lcom/sec/ims/ImsRegistration;ILjava/lang/String;)V

    goto :goto_1

    :cond_8
    move v3, v5

    :cond_9
    :goto_1
    return v3
.end method

.method private onReceiveSmsMessage(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;)V
    .locals 8

    .line 558
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getContentType()Ljava/lang/String;

    move-result-object v2

    .line 559
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->get3gppRPError(Ljava/lang/String;[B)I

    move-result v6

    .line 560
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v5

    .line 561
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getPhoneId()I

    move-result v0

    if-eqz v5, :cond_0

    .line 564
    invoke-virtual {v5}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    .line 565
    invoke-virtual {v5}, Lcom/sec/ims/ImsRegistration;->getSubscriptionId()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    move v3, v0

    move v4, v1

    .line 568
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceiveSmsMessage: errorCode="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-gtz v6, :cond_1

    .line 569
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v0

    invoke-static {v2, v0}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->isAck(Ljava/lang/String;[B)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, p0

    move-object v1, p1

    .line 570
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->onReceiveIncomingSms(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;Ljava/lang/String;IILcom/sec/ims/ImsRegistration;)V

    goto :goto_1

    :cond_1
    move-object v0, p0

    move-object v1, p1

    .line 572
    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->onReceiveAck(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;Ljava/lang/String;IILcom/sec/ims/ImsRegistration;I)V

    :goto_1
    return-void
.end method

.method private retryToSendMessage(ILcom/sec/internal/ims/servicemodules/sms/SmsEvent;)V
    .locals 12

    .line 1679
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "retry to send message"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1680
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->isRegistered(I)Z

    move-result p1

    const/4 v1, -0x1

    if-nez p1, :cond_0

    const/16 p1, 0x3e7

    .line 1681
    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setReasonCode(I)V

    .line 1682
    invoke-virtual {p2, v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setRetryAfter(I)V

    .line 1683
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->onReceiveSmsMessage(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;)V

    return-void

    .line 1686
    :cond_0
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v6

    if-nez v6, :cond_1

    const/16 p1, 0x2711

    .line 1688
    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setReasonCode(I)V

    .line 1689
    invoke-virtual {p2, v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setRetryAfter(I)V

    .line 1690
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->onReceiveSmsMessage(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;)V

    const-string p0, "Aborting, reason: null pdu obtained via SmsEvent.getData() call"

    .line 1691
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1694
    :cond_1
    invoke-static {v6}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->set3gppTPRD([B)V

    .line 1695
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1696
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mImsService:Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getSmscAddr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getLocalUri()Ljava/lang/String;

    move-result-object v4

    .line 1697
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getContentType()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getMessageID()I

    move-result v9

    .line 1698
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    move v10, p1

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->isEmergency()Z

    move-result v11

    .line 1696
    invoke-interface/range {v2 .. v11}, Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;->sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZLjava/lang/String;IIZ)V

    const/16 p1, 0x64

    .line 1699
    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setState(I)V

    .line 1700
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 1701
    invoke-virtual {p1, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0x2bf20

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1703
    :cond_3
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mPendingQueue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getMessageID()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1704
    iget p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mRetransCount:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mRetransCount:I

    return-void
.end method

.method private sendPendingEmergencySms(I)V
    .locals 3

    .line 1218
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "sendPendingEmergencySms"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mEmergencyPendingQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 1220
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mEmergencyPendingQueue:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v1, p1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1221
    :goto_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x3

    .line 1222
    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private sendPendingEmergencySmsWithGeolocation()V
    .locals 3

    .line 1227
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendPendingEmergencySmsWithGeolocation : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mEmergencyGeolocationState:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$EmergencyGeolocationState;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mEmergencyGeolocationPendingQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1229
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mEmergencyGeolocationPendingQueue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private vzwSendSmsDestAddr(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    .line 1542
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0xe

    if-ne p0, v0, :cond_0

    const-string p0, "0111"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->isNanp(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1545
    sget-object p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string v0, "6.5.2b is applied"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x3

    .line 1546
    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private vzwSendSmsE911(Ljava/lang/String;II[BLcom/sec/internal/ims/servicemodules/sms/SmsEvent;Lcom/sec/ims/ImsRegistration;)I
    .locals 3

    .line 1515
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "ro.product.first_api_level"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_2

    .line 1516
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendSMSOverIMS: isVzwE911 = true, mEmergencyRegiProcessiong = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mEmergencyRegiProcessiong:[Z

    aget-boolean v2, v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-eqz p6, :cond_0

    const-string/jumbo p0, "sendSMSOverIMS: regInfo = eRegInfo"

    .line 1518
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1521
    :cond_0
    invoke-virtual {p5, p2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setEventType(I)V

    .line 1522
    invoke-virtual {p5, p3}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setMessageID(I)V

    .line 1523
    invoke-virtual {p5, p4}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setData([B)V

    .line 1524
    invoke-virtual {p5, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setSmscAddr(Ljava/lang/String;)V

    .line 1525
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mEmergencyPendingQueue:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/LinkedList;

    invoke-virtual {p1, p5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1526
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mEmergencyRegiProcessiong:[Z

    aget-boolean p3, p1, p2

    if-nez p3, :cond_1

    .line 1527
    aput-boolean v1, p1, p2

    const/4 p1, 0x4

    .line 1528
    invoke-virtual {p0, p1, p5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 p1, 0x6

    .line 1529
    invoke-virtual {p0, p1, p5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 p2, 0x2710

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    const/4 p0, 0x2

    return p0

    :cond_2
    return v1
.end method

.method private vzwSendSmsLimitedRegi(IIILjava/lang/String;Lcom/sec/ims/ImsRegistration;)Z
    .locals 7

    .line 1505
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v0, p1}, Lcom/sec/ims/extensions/TelephonyManagerExt;->getSubscriberId(Landroid/telephony/TelephonyManager;I)Ljava/lang/String;

    move-result-object p1

    if-eqz p5, :cond_0

    .line 1506
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p5, p1}, Lcom/sec/ims/ImsRegistration;->isImsiBased(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1507
    sget-object p1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string p5, "Limited Regi Mode, fallback to 1xRTT"

    invoke-static {p1, p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x2714

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object v0, p0

    move v1, p2

    move v2, p3

    move-object v4, p4

    .line 1508
    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->onReceiveSMSAckInternal(IIILjava/lang/String;[BI)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public deRegisterForSMSStateChange(ILcom/sec/ims/sms/ISmsServiceEventListener;)V
    .locals 3

    .line 1282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deRegisterForSMSStateChange["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1284
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/RemoteCallbackList;

    if-eqz p0, :cond_0

    .line 1286
    invoke-virtual {p0, p2}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    :cond_0
    return-void
.end method

.method public dump()V
    .locals 5

    .line 1899
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dump of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 1900
    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->increaseIndent(Ljava/lang/String;)V

    .line 1902
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIncommingMagId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->getIncommingMagId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 1903
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRPMsgRef : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->getRPMsgRef()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 1904
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "m3GPP2SendingMsgId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->m3GPP2SendingMsgId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 1905
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLastMOContentType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mLastMOContentType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 1906
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRetransCount : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mRetransCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 1907
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mStorageAvailable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mStorageAvailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mPendingQueue :"

    .line 1909
    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 1910
    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->increaseIndent(Ljava/lang/String;)V

    .line 1911
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mPendingQueue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1912
    sget-object v2, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "key : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", value : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1915
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->dump()V

    .line 1917
    sget-object p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    invoke-static {p0}, Lcom/sec/internal/log/IMSLog;->decreaseIndent(Ljava/lang/String;)V

    .line 1918
    invoke-static {p0}, Lcom/sec/internal/log/IMSLog;->decreaseIndent(Ljava/lang/String;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 311
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPendingQueue()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;",
            ">;"
        }
    .end annotation

    .line 1847
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mPendingQueue:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public getServicesRequiring()[Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "smsip"

    .line 316
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSmsFallback(I)Z
    .locals 3

    const-string p0, "enable_default_sms_fallback"

    const/4 v0, 0x0

    .line 1647
    invoke-static {p1, p0, v0}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result p0

    .line 1648
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSmsFallback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return p0
.end method

.method public handleEventDefaultAppChanged()V
    .locals 4

    .line 1293
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "handleEventDefaultAppChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1294
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1295
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->isRegistered(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1296
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mMessagingAppInfoReceiver:Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;

    invoke-virtual {v1}, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->registerReceiver()V

    .line 1297
    sget-object v1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onChange["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] : MessageApplication is changed. MsgApp = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mMessagingAppInfoReceiver:Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;

    iget-object v3, v3, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->mDefaultMsgApp:Lcom/sec/internal/ims/util/MessagingAppInfoReceiver$MsgApp;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", Version = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mMessagingAppInfoReceiver:Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;

    iget-object v3, v3, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->mMsgAppVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mImsService:Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mMessagingAppInfoReceiver:Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;

    iget-object v2, v2, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->mMsgAppVersion:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;->setMsgAppInfoToSipUa(ILjava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public handleIntent(Landroid/content/Intent;)V
    .locals 0

    .line 0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 446
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->handleMessage(Landroid/os/Message;)V

    .line 449
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage() - what : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iget v0, p1, Landroid/os/Message;->what:I

    const-wide/16 v1, 0x3e8

    const/16 v3, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 510
    :pswitch_0
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mEmergencyGeolocationState:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$EmergencyGeolocationState;

    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$EmergencyGeolocationState;->UPDATING:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$EmergencyGeolocationState;

    if-ne p1, v0, :cond_0

    .line 511
    sget-object p1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$EmergencyGeolocationState;->UPDATED:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$EmergencyGeolocationState;

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mEmergencyGeolocationState:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$EmergencyGeolocationState;

    const/16 p1, 0x9

    .line 512
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 514
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->sendPendingEmergencySmsWithGeolocation()V

    .line 516
    iget-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mIsGeolocationResetTimerStarted:Z

    if-nez p1, :cond_2

    .line 517
    iput-boolean v4, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mIsGeolocationResetTimerStarted:Z

    .line 518
    invoke-virtual {p0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 495
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 496
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$EmergencyGeolocationState;->TIMEOUT:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$EmergencyGeolocationState;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mEmergencyGeolocationState:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$EmergencyGeolocationState;

    .line 497
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getGeolocationController()Lcom/sec/internal/interfaces/ims/core/IGeolocationController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 499
    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/IGeolocationController;->updateGeolocationFromLastKnown(I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 500
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->sendPendingEmergencySmsWithGeolocation()V

    .line 502
    :cond_1
    iget-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mIsGeolocationResetTimerStarted:Z

    if-nez p1, :cond_2

    .line 503
    iput-boolean v4, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mIsGeolocationResetTimerStarted:Z

    .line 504
    invoke-virtual {p0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 490
    :pswitch_2
    iput-boolean v5, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mIsGeolocationResetTimerStarted:Z

    .line 491
    sget-object p1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$EmergencyGeolocationState;->NONE:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$EmergencyGeolocationState;

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mEmergencyGeolocationState:Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$EmergencyGeolocationState;

    goto/16 :goto_0

    .line 481
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 482
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mIsInScbm:[Z

    aput-boolean v5, v0, p1

    .line 483
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/helper/PreciseAlarmManager;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/PreciseAlarmManager;

    move-result-object v0

    const/4 v1, 0x7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/PreciseAlarmManager;->removeMessage(Landroid/os/Message;)V

    .line 484
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->stopEmergencyRegistration(I)V

    .line 485
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    invoke-static {p0, v5, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->broadcastSCBMState(Landroid/content/Context;ZI)V

    goto :goto_0

    .line 477
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->handleEmergencyRegisterFail(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;)V

    goto :goto_0

    .line 473
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->handleEmergencyRegisterDone(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;)V

    goto :goto_0

    .line 467
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;

    .line 468
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getEventType()I

    move-result v1

    const/4 v2, 0x5

    .line 469
    invoke-virtual {p0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 468
    invoke-interface {v0, v1, p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->startEmergencyRegistration(ILandroid/os/Message;)V

    goto :goto_0

    .line 462
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;

    .line 463
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getEventType()I

    move-result v1

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getSmscAddr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getContentType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getMessageID()I

    move-result v5

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->sendSMSOverIMS(I[BLjava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_0

    .line 457
    :pswitch_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 458
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->handleRRCConnection(Lcom/sec/internal/constants/ims/servicemodules/volte2/RrcConnectionEvent;)V

    goto :goto_0

    .line 452
    :pswitch_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 453
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->handleSmsEvent(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;)V

    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public init()V
    .locals 3

    .line 323
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->init()V

    .line 324
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->start()V

    .line 325
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mImsService:Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;->registerForSMSEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 326
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mImsService:Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1, v2}, Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;->registerForRrcConnectionEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 327
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mMessagingAppInfoReceiver:Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;

    if-nez v0, :cond_0

    .line 328
    new-instance v0, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/util/IMessagingAppInfoListener;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mMessagingAppInfoReceiver:Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;

    .line 329
    invoke-virtual {v0}, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->registerReceiver()V

    .line 332
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$2;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$2;-><init>(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mTimeoutHandler:Landroid/os/Handler;

    return-void
.end method

.method public isSmsOverIpEnabled(I)Z
    .locals 5

    .line 1786
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    .line 1788
    sget-object v1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "regInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 1789
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->isRunning()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    const-string/jumbo v1, "smsip"

    .line 1793
    invoke-virtual {v0, v1}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1794
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    sget-object v3, Lcom/sec/internal/constants/Mno;->ORANGE:Lcom/sec/internal/constants/Mno;

    const/4 v4, 0x1

    if-eq v1, v3, :cond_3

    .line 1795
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    sget-object v3, Lcom/sec/internal/constants/Mno;->ORANGE_POLAND:Lcom/sec/internal/constants/Mno;

    if-ne v1, v3, :cond_1

    goto :goto_0

    .line 1797
    :cond_1
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getDisallowReregi()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1798
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {p0, p1, v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->isServiceAvailable(Landroid/telephony/TelephonyManager;IZ)Z

    move-result p0

    if-eqz p0, :cond_4

    return v4

    .line 1801
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mIsDeregisterTimerRunning:[Z

    aget-boolean p0, p0, p1

    if-eqz p0, :cond_3

    return v2

    :cond_3
    :goto_0
    return v4

    :cond_4
    return v2

    :cond_5
    :goto_1
    const-string p0, "disallow sms Service"

    .line 1790
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public isVolteSupported(I)Z
    .locals 3

    .line 1813
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1815
    sget-object p1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IsVolteSupported= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mmtel"

    invoke-virtual {p0, v1}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1816
    invoke-virtual {p0, v1}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onConfigured(I)V
    .locals 2

    .line 399
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onConfigured:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mEnabledFeatures:[J

    const-wide/16 v0, 0x0

    aput-wide v0, p0, p1

    .line 402
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object p0

    .line 403
    invoke-virtual {p0}, Lcom/sec/internal/constants/Mno;->isOrangeGPG()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x4e20

    .line 404
    sput p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->TIMER_SUBMIT_REPORT:I

    goto :goto_0

    :cond_0
    const p0, 0x9c40

    .line 406
    sput p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->TIMER_SUBMIT_REPORT:I

    :goto_0
    return-void
.end method

.method public onDeregistered(Lcom/sec/ims/ImsRegistration;I)V
    .locals 3

    .line 428
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deregistered from SMS service. reason "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mIsDeregistering:[Z

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v1

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    .line 430
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->updateCapabilities(I)V

    .line 432
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    .line 433
    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 434
    sget-object v1, Lcom/sec/internal/constants/Mno;->BSNL:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mLastMOContentType:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/16 v0, 0x3e7

    .line 435
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->fallbackForSpecificReason(I)V

    .line 437
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onDeregistered(Lcom/sec/ims/ImsRegistration;I)V

    return-void
.end method

.method public onDeregistering(Lcom/sec/ims/ImsRegistration;)V
    .locals 2

    .line 1557
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onDeregistering"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onDeregistering(Lcom/sec/ims/ImsRegistration;)V

    .line 1559
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mIsDeregistering:[Z

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result p1

    const/4 v0, 0x1

    aput-boolean v0, p0, p1

    return-void
.end method

.method public onMessagingAppPackageReplaced()V
    .locals 1

    .line 1663
    new-instance v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$3;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$3;-><init>(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onRegistered(Lcom/sec/ims/ImsRegistration;)V
    .locals 4

    .line 417
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onRegistered(Lcom/sec/ims/ImsRegistration;)V

    .line 418
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    .line 419
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mIsDeregistering:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    .line 420
    sget-object v1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Registered to SMS service. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->updateCapabilities(I)V

    .line 423
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mImsService:Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mMessagingAppInfoReceiver:Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;

    iget-object p0, p0, Lcom/sec/internal/ims/util/MessagingAppInfoReceiver;->mMsgAppVersion:Ljava/lang/String;

    invoke-interface {p1, v0, p0}, Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;->setMsgAppInfoToSipUa(ILjava/lang/String;)V

    return-void
.end method

.method public onSimReady(I)V
    .locals 0

    .line 412
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->broadcastDcnNumber(Landroid/content/Context;I)V

    return-void
.end method

.method public onUpdateGeolocation()V
    .locals 2

    .line 1886
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mEmergencyGeolocationPendingQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1887
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onUpdateGeolocation"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xa

    .line 1888
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public queryCapabilityStatus(I)Landroid/telephony/ims/feature/ImsFeature$Capabilities;
    .locals 4

    .line 1828
    new-instance v0, Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    invoke-direct {v0}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;-><init>()V

    .line 1829
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->isSmsOverIpEnabled(I)Z

    move-result p0

    const/16 v1, 0x8

    const-string v2, "Sms Service queryCapabilityStatus["

    if-eqz p0, :cond_0

    .line 1830
    sget-object p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]: addCapabilities CAPABILITY_TYPE_SMS"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1831
    invoke-virtual {v0, v1}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->addCapabilities(I)V

    goto :goto_0

    .line 1833
    :cond_0
    sget-object p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]: removeCapabilities CAPABILITY_TYPE_SMS"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1834
    invoke-virtual {v0, v1}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->removeCapabilities(I)V

    :goto_0
    return-object v0
.end method

.method public registerForSMSStateChange(ILcom/sec/ims/sms/ISmsServiceEventListener;)V
    .locals 4

    .line 1270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerForSMSStateChange["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1272
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Landroid/os/RemoteCallbackList;

    invoke-direct {v3}, Landroid/os/RemoteCallbackList;-><init>()V

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1274
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mListeners:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/RemoteCallbackList;

    if-eqz p0, :cond_1

    .line 1276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "registerForSMSStateChange register"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    invoke-virtual {p0, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    :cond_1
    return-void
.end method

.method public sendDeliverReport(I[B)V
    .locals 12

    if-eqz p2, :cond_9

    .line 1564
    array-length v0, p2

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v0, 0x2

    .line 1569
    aget-byte v1, p2, v0

    and-int/lit16 v9, v1, 0xff

    .line 1570
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mPendingQueue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;

    if-eqz v1, :cond_8

    .line 1572
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mTimeoutHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 1573
    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1580
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 1581
    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getPreferredImpu()Lcom/sec/ims/util/NameAddr;

    move-result-object v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mIsDeregistering:[Z

    aget-boolean v4, v4, p1

    if-eqz v4, :cond_2

    goto/16 :goto_2

    .line 1610
    :cond_2
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getRpRef()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_6

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getCallID()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getSmscAddr()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    goto/16 :goto_1

    .line 1615
    :cond_3
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getTpPid()I

    move-result v4

    .line 1616
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getTpDcs()I

    move-result v5

    and-int/lit8 v6, v4, 0x3f

    const/16 v7, 0x3f

    if-ne v6, v7, :cond_4

    and-int/lit8 v6, v5, 0x2

    if-ne v6, v0, :cond_4

    .line 1621
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v6, "sendDeliverReport() set TP-PID and TP-DCS"

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1625
    :cond_4
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "sendDeliverReport() do not set TP-PID and TP-DCS"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    move v5, v4

    .line 1628
    :goto_0
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getRpRef()I

    move-result v0

    invoke-static {p1, v0, p2, v4, v5}, Lcom/sec/internal/ims/servicemodules/sms/GsmSmsUtil;->getDeliverReportFromPdu(II[BII)[B

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setData([B)V

    const/16 p2, 0x69

    .line 1629
    invoke-virtual {v1, p2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setState(I)V

    .line 1630
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setImsRegistration(Lcom/sec/ims/ImsRegistration;)V

    .line 1631
    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->getLocalUri(Lcom/sec/ims/ImsRegistration;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setLocalUri(Ljava/lang/String;)V

    .line 1633
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mTimeoutHandler:Landroid/os/Handler;

    if-eqz p2, :cond_5

    .line 1634
    invoke-virtual {p2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/32 v2, 0x2bf20

    invoke-virtual {p2, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1636
    :cond_5
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mPendingQueue:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1638
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendDeliverReport: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1639
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->toKeyDump()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const p2, 0x50000002    # 8.5899366E9f

    invoke-static {p2, p1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1640
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mImsService:Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getSmscAddr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getLocalUri()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getContentType()Ljava/lang/String;

    move-result-object v5

    .line 1641
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getCallID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v10

    const/4 v11, 0x0

    .line 1640
    invoke-interface/range {v2 .. v11}, Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;->sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZLjava/lang/String;IIZ)V

    .line 1642
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getContentType()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mLastMOContentType:Ljava/lang/String;

    return-void

    .line 1611
    :cond_6
    :goto_1
    sget-object p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "sendDeliverReport wrong format"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1582
    :cond_7
    :goto_2
    sget-object p2, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "sendDeliverReport() called. but not registered IMS"

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x2f

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendDeliverReport: msgId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    new-instance p2, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p1, v9}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;II)V

    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 1576
    :cond_8
    sget-object p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "sendDeliverReport no incoming Message to send DeliverReport!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_3
    return-void
.end method

.method public sendSMSOverIMS(I[BLjava/lang/String;Ljava/lang/String;IZ)V
    .locals 32

    move-object/from16 v10, p0

    move/from16 v11, p1

    move-object/from16 v7, p3

    move-object/from16 v12, p4

    move/from16 v13, p5

    .line 1307
    invoke-virtual/range {p0 .. p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v8

    const/4 v14, 0x1

    .line 1308
    invoke-virtual {v10, v11, v14}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(IZ)Lcom/sec/ims/ImsRegistration;

    move-result-object v9

    .line 1310
    invoke-static/range {p1 .. p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v15

    .line 1313
    invoke-static {}, Lcom/sec/internal/helper/os/Debug;->isProductShip()Z

    move-result v0

    const-string v1, " destAddr="

    const-string/jumbo v6, "sendSMSOverIMS: "

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    if-eqz v7, :cond_0

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x3

    if-le v0, v2, :cond_0

    .line 1314
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1316
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/16 v16, 0x0

    if-eqz v8, :cond_1

    .line 1321
    invoke-virtual {v8}, Lcom/sec/ims/ImsRegistration;->getSubscriptionId()I

    move-result v0

    .line 1322
    invoke-virtual {v8}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    move-object/from16 v31, v2

    move v2, v0

    move-object/from16 v0, v31

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    move v2, v0

    move-object/from16 v0, v16

    .line 1325
    :goto_1
    new-instance v4, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;

    invoke-direct {v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;-><init>()V

    .line 1326
    invoke-virtual {v4, v12}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setContentType(Ljava/lang/String;)V

    .line 1327
    invoke-direct {v10, v7}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v4, v3}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setEmergency(Z)V

    .line 1328
    invoke-virtual {v4, v8}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setImsRegistration(Lcom/sec/ims/ImsRegistration;)V

    .line 1330
    sget-object v3, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v15, v3, :cond_5

    move-object/from16 v0, p0

    move v1, v2

    move/from16 v2, p1

    move/from16 v3, p5

    move-object/from16 v17, v4

    move-object/from16 v4, p4

    move-object v5, v8

    .line 1331
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->vzwSendSmsLimitedRegi(IIILjava/lang/String;Lcom/sec/ims/ImsRegistration;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p1

    move/from16 v3, p5

    move-object/from16 v4, p2

    move-object/from16 v5, v17

    move-object/from16 v18, v6

    move-object v6, v9

    .line 1334
    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->vzwSendSmsE911(Ljava/lang/String;II[BLcom/sec/internal/ims/servicemodules/sms/SmsEvent;Lcom/sec/ims/ImsRegistration;)I

    move-result v5

    if-ne v5, v14, :cond_3

    move-object v8, v9

    goto :goto_2

    :cond_3
    const/4 v0, 0x2

    if-ne v5, v0, :cond_4

    return-void

    .line 1340
    :cond_4
    :goto_2
    invoke-direct {v10, v7}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->vzwSendSmsDestAddr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    move-object v7, v8

    move v8, v5

    goto :goto_3

    :cond_5
    move-object/from16 v17, v4

    move-object/from16 v18, v6

    if-eqz v0, :cond_6

    const/16 v2, 0x40

    .line 1341
    invoke-virtual {v0, v2}, Lcom/sec/ims/settings/ImsProfile;->isNeedPidfSipMsg(I)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual/range {v17 .. v17}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->isEmergency()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1342
    sget-object v0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendSMSOverIMS: add geolocation"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p5

    move-object/from16 v5, v17

    .line 1343
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->handleEmergencySmsWithGeolocation(I[BLjava/lang/String;ILcom/sec/internal/ims/servicemodules/sms/SmsEvent;)Z

    move-result v0

    if-nez v0, :cond_6

    return-void

    :cond_6
    move-object v9, v7

    move-object v7, v8

    const/4 v8, 0x0

    .line 1349
    :goto_3
    invoke-static {v7}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->isProhibited(Lcom/sec/ims/ImsRegistration;)Z

    move-result v0

    const-string v6, "SSM_sendSMSOverIMS_notRegi"

    const-string v5, "0"

    if-nez v0, :cond_12

    if-nez v7, :cond_7

    goto/16 :goto_6

    :cond_7
    move-object/from16 v1, v17

    .line 1368
    invoke-virtual {v1, v7}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setImsRegistration(Lcom/sec/ims/ImsRegistration;)V

    if-eqz v9, :cond_9

    const-string v0, "application/vnd.3gpp.sms"

    .line 1370
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-object v3, v9

    move-object v4, v15

    move-object v14, v5

    move/from16 v5, p1

    move-object v13, v6

    move/from16 v6, p5

    move-object/from16 v19, v7

    move-object/from16 v7, p4

    move/from16 v20, v8

    move-object/from16 v8, v19

    move-object/from16 p3, v9

    move/from16 v9, p6

    .line 1371
    invoke-direct/range {v0 .. v9}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->make3gppSMS(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;[BLjava/lang/String;Lcom/sec/internal/constants/Mno;IILjava/lang/String;Lcom/sec/ims/ImsRegistration;Z)Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;

    move-result-object v4

    goto :goto_4

    :cond_8
    move-object v14, v5

    move-object v13, v6

    move-object/from16 v19, v7

    move/from16 v20, v8

    move-object/from16 p3, v9

    const-string v0, "application/vnd.3gpp2.sms"

    .line 1372
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v4, v15

    move/from16 v5, p1

    move/from16 v6, p5

    move-object/from16 v7, p4

    move-object/from16 v8, v19

    .line 1373
    invoke-direct/range {v0 .. v8}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->make3gpp2SMS(Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;[BLjava/lang/String;Lcom/sec/internal/constants/Mno;IILjava/lang/String;Lcom/sec/ims/ImsRegistration;)Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;

    move-result-object v4

    goto :goto_4

    :cond_9
    move-object v14, v5

    move-object v13, v6

    move-object/from16 v19, v7

    move/from16 v20, v8

    move-object/from16 p3, v9

    :cond_a
    move-object v4, v1

    :goto_4
    if-nez v4, :cond_b

    return-void

    .line 1381
    :cond_b
    invoke-virtual/range {v19 .. v19}, Lcom/sec/ims/ImsRegistration;->getPreferredImpu()Lcom/sec/ims/util/NameAddr;

    move-result-object v0

    if-nez v0, :cond_c

    .line 1383
    iget-object v0, v10, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    const-string v2, "1"

    const/16 v3, 0x3e7

    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 v1, p1

    invoke-static/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->sendIsmoInfoToHqmAndStoreMoSmsInfoOfDrcsToImsLogAgent(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Z)V

    .line 1384
    iget-object v0, v10, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-static {v0, v11, v14, v13, v6}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->sendSmotInfoToHQM(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)V

    move/from16 v7, p5

    .line 1385
    iput v7, v10, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->m3GPP2SendingMsgId:I

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object/from16 v0, p0

    move/from16 v2, p5

    move-object/from16 v4, p4

    .line 1386
    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->broadcastOnReceiveSMSAck(IIILjava/lang/String;[BI)V

    return-void

    :cond_c
    const/4 v6, 0x0

    .line 1389
    invoke-static/range {v19 .. v19}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->getLocalUri(Lcom/sec/ims/ImsRegistration;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->setLocalUri(Ljava/lang/String;)V

    .line 1392
    iput v6, v10, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mRetransCount:I

    .line 1393
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getContentType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mLastMOContentType:Ljava/lang/String;

    .line 1394
    iget-object v0, v10, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mSmsLogger:Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, v18

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/sms/SmsLogger;->logAndAdd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    if-eqz v15, :cond_d

    .line 1397
    invoke-virtual {v15}, Lcom/sec/internal/constants/Mno;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    .line 1398
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Country Code = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_d
    move-object v2, v0

    .line 1400
    :goto_5
    iget-object v3, v10, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v7, p3

    invoke-virtual {v3, v7}, Landroid/telephony/TelephonyManager;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

    const-string v3, "922"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    const-string/jumbo v3, "us"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    :cond_e
    const-string v2, "Send EMERGENCY_SMS_OVER_IMS intent for GPS"

    .line 1401
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.intent.action.EMERGENCY_SMS_OVER_IMS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1403
    iget-object v2, v10, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_f
    if-eqz v7, :cond_10

    const-string v1, "(?<=.{2}).(?=.{2})"

    .line 1408
    invoke-virtual {v7, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1410
    :cond_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->toKeyDump()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x50000001

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1411
    iget-object v0, v10, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mImsService:Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getSmscAddr()Ljava/lang/String;

    move-result-object v22

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getLocalUri()Ljava/lang/String;

    move-result-object v23

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getContentType()Ljava/lang/String;

    move-result-object v24

    .line 1412
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getData()[B

    move-result-object v25

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->getMessageID()I

    move-result v28

    invoke-virtual/range {v19 .. v19}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v29

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->isEmergency()Z

    move-result v30

    move-object/from16 v21, v0

    .line 1411
    invoke-interface/range {v21 .. v30}, Lcom/sec/internal/ims/servicemodules/sms/ISmsServiceInterface;->sendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BZLjava/lang/String;IIZ)V

    move/from16 v5, v20

    const/4 v0, 0x1

    if-ne v5, v0, :cond_11

    .line 1415
    iget-object v0, v10, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/helper/PreciseAlarmManager;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/PreciseAlarmManager;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v10, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/PreciseAlarmManager;->removeMessage(Landroid/os/Message;)V

    .line 1416
    iget-object v0, v10, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/helper/PreciseAlarmManager;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/PreciseAlarmManager;

    move-result-object v0

    .line 1417
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0x493e0

    .line 1416
    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/helper/PreciseAlarmManager;->sendMessageDelayed(Landroid/os/Message;J)Lcom/sec/internal/helper/DelayedMessage;

    .line 1418
    iget-object v0, v10, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mIsInScbm:[Z

    aget-boolean v1, v0, v11

    if-nez v1, :cond_11

    const/4 v1, 0x1

    .line 1419
    aput-boolean v1, v0, v11

    .line 1420
    iget-object v0, v10, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v11}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->broadcastSCBMState(Landroid/content/Context;ZI)V

    :cond_11
    return-void

    :cond_12
    :goto_6
    move-object v14, v5

    move-object v8, v6

    move-object/from16 v19, v7

    move v7, v13

    move-object/from16 v1, v17

    const/4 v6, 0x0

    .line 1352
    invoke-static/range {p1 .. p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1353
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getNetMno()Lcom/sec/internal/constants/Mno;

    move-result-object v16

    :cond_13
    move-object/from16 v0, v16

    if-eqz v19, :cond_14

    .line 1354
    invoke-virtual/range {v19 .. v19}, Lcom/sec/ims/ImsRegistration;->isProhibited()Z

    move-result v2

    if-eqz v2, :cond_14

    const/16 v2, 0x309

    goto :goto_7

    :cond_14
    const/16 v2, 0x3e7

    .line 1357
    :goto_7
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/sms/SmsEvent;->isEmergency()Z

    move-result v1

    if-eqz v1, :cond_15

    sget-object v1, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_15

    const/16 v0, 0x2712

    move v9, v0

    goto :goto_8

    :cond_15
    move v9, v2

    .line 1360
    :goto_8
    iput v7, v10, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->m3GPP2SendingMsgId:I

    .line 1361
    iget-object v0, v10, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    const-string v2, "1"

    const/16 v3, 0x3e7

    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 v1, p1

    invoke-static/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->sendIsmoInfoToHqmAndStoreMoSmsInfoOfDrcsToImsLogAgent(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Z)V

    .line 1362
    iget-object v0, v10, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mContext:Landroid/content/Context;

    invoke-static {v0, v11, v14, v8, v6}, Lcom/sec/internal/ims/servicemodules/sms/SmsUtil;->sendSmotInfoToHQM(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Z)V

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object/from16 v0, p0

    move/from16 v2, p5

    move v3, v9

    move-object/from16 v4, p4

    .line 1364
    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->broadcastOnReceiveSMSAck(IIILjava/lang/String;[BI)V

    return-void
.end method

.method public sendSMSResponse(ZI)V
    .locals 0

    .line 0
    return-void
.end method

.method public setDelayedDeregisterTimerRunning(IZ)V
    .locals 1

    .line 1842
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->mIsDeregisterTimerRunning:[Z

    aput-boolean p2, v0, p1

    .line 1843
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/sms/SmsServiceModule;->updateCapabilities(I)V

    return-void
.end method

.method public updateCapabilities(I)V
    .locals 0

    .line 1823
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->updateCapabilities(I)V

    return-void
.end method
