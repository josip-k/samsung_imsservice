.class public Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;
.super Lcom/sec/internal/helper/StateMachine;
.source "WorkflowMcs.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$DefaultState;,
        Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$RegisteringState;,
        Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$RegisteredState;,
        Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$ProvisioningState;,
        Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$ProvisionedState;,
        Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$RCSContentObserver;,
        Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$SmsReceiver;
    }
.end annotation


# static fields
.field private static final API_FAILED:I = 0x2

.field private static final API_SUCCEED:I = 0x1

.field private static final APPROVE_SD:I = 0xf

.field private static final AUTHENTICATION:I = 0xc

.field protected static final A_DAY:J = 0x15180L

.field private static final DEFAULT:I = 0x0

.field protected static final DEFAULT_OTP_VALIDITY:I = 0x3c

.field private static final DELETE_ACCOUNT:I = 0x17

.field private static final GET_ACCOUNT:I = 0x15

.field private static final GET_LIST_OF_SD:I = 0x11

.field private static final GET_SD:I = 0x12

.field private static final GET_USER:I = 0xb

.field protected static OASIS_OTP_PREFIX:Ljava/lang/String; = "-auth, otp="

.field protected static OASIS_RECOVERY_PREFIX:Ljava/lang/String; = "-recovery"

.field private static final REGISTRATION:I = 0xd

.field private static final REMOVE_SD:I = 0x10

.field private static final REQUEST_OTP:I = 0x13

.field private static final REQUEST_OTP_TIMEOUT:I = 0x14

.field private static final RESET_STATE:I = 0x3

.field private static final START_PROVISION:I = 0xa

.field private static final TOKEN:I = 0xe

.field private static final UPDATE_ACCOUNT:I = 0x16


# instance fields
.field public LOG_TAG:Ljava/lang/String;

.field protected mAccessTokenValidityIntent:Landroid/app/PendingIntent;

.field private final mAliasUri:Landroid/net/Uri;

.field protected mAuthCodeValidityIntent:Landroid/app/PendingIntent;

.field private mChangedToSamsungMessage:Z

.field protected final mClientHandler:Landroid/os/Handler;

.field private mConsentContext:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mDefaultState:Lcom/sec/internal/helper/State;

.field private final mListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

.field protected final mLock:Ljava/lang/Object;

.field protected mMcsProvisioningListener:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/sec/ims/ICentralMsgStoreServiceListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mNeedInternalRegistration:Z

.field private final mNetAPIWorkingController:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;

.field private mOtp:Ljava/lang/String;

.field protected mOtpTimeoutIntent:Landroid/app/PendingIntent;

.field private mPendingRequests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mPhoneId:I

.field private final mPreferenceManager:Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

.field private mProvisionedState:Lcom/sec/internal/helper/State;

.field private mProvisioningState:Lcom/sec/internal/helper/State;

.field mRCSContentObserver:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$RCSContentObserver;

.field protected mRefreshTokenValidityIntent:Landroid/app/PendingIntent;

.field private mRegisteredState:Lcom/sec/internal/helper/State;

.field private mRegisteringState:Lcom/sec/internal/helper/State;

.field protected mRegistrationCodeValidityIntent:Landroid/app/PendingIntent;

.field private mRequestType:Ljava/lang/String;

.field private final mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

.field protected mSmsReceiver:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$SmsReceiver;

.field private final mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

.field private mWaitOtp:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmAliasUri(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;)Landroid/net/Uri;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mAliasUri:Landroid/net/Uri;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConsentContext(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mConsentContext:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDefaultState(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;)Lcom/sec/internal/helper/State;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mDefaultState:Lcom/sec/internal/helper/State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmListener(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNetAPIWorkingController(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;)Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mNetAPIWorkingController:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOtp(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mOtp:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPendingRequests(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;)Ljava/util/Set;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPendingRequests:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreferenceManager(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;)Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPreferenceManager:Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProvisionedState(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;)Lcom/sec/internal/helper/State;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mProvisionedState:Lcom/sec/internal/helper/State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProvisioningState(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;)Lcom/sec/internal/helper/State;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mProvisioningState:Lcom/sec/internal/helper/State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRegisteredState(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;)Lcom/sec/internal/helper/State;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mRegisteredState:Lcom/sec/internal/helper/State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRegisteringState(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;)Lcom/sec/internal/helper/State;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mRegisteringState:Lcom/sec/internal/helper/State;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRequestType(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mRequestType:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStoreClient(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWaitOtp(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mWaitOtp:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmOtp(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mOtp:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRequestType(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mRequestType:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWaitOtp(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mWaitOtp:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mbuildDeviceInfo(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;)Lorg/json/JSONObject;
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->buildDeviceInfo()Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetE164Msisdn(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->getE164Msisdn()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Landroid/os/Handler;Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;)V
    .locals 2

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WorkflowMcs["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/helper/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 86
    const-class p1, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->LOG_TAG:Ljava/lang/String;

    .line 111
    new-instance p1, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$DefaultState;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$DefaultState;-><init>(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$DefaultState-IA;)V

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mDefaultState:Lcom/sec/internal/helper/State;

    .line 112
    new-instance p1, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$RegisteringState;

    invoke-direct {p1, p0, v0}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$RegisteringState;-><init>(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$RegisteringState-IA;)V

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mRegisteringState:Lcom/sec/internal/helper/State;

    .line 113
    new-instance p1, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$RegisteredState;

    invoke-direct {p1, p0, v0}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$RegisteredState;-><init>(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$RegisteredState-IA;)V

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mRegisteredState:Lcom/sec/internal/helper/State;

    .line 114
    new-instance p1, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$ProvisioningState;

    invoke-direct {p1, p0, v0}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$ProvisioningState;-><init>(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$ProvisioningState-IA;)V

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mProvisioningState:Lcom/sec/internal/helper/State;

    .line 115
    new-instance p1, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$ProvisionedState;

    invoke-direct {p1, p0, v0}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$ProvisionedState;-><init>(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$ProvisionedState-IA;)V

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mProvisionedState:Lcom/sec/internal/helper/State;

    const-string p1, "mobile_ip"

    .line 120
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mRequestType:Ljava/lang/String;

    .line 121
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPendingRequests:Ljava/util/Set;

    const/4 p1, 0x0

    .line 130
    iput p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPhoneId:I

    .line 131
    iput-boolean p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mNeedInternalRegistration:Z

    .line 132
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mConsentContext:Ljava/lang/String;

    .line 133
    iput-boolean p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mChangedToSamsungMessage:Z

    .line 135
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mLock:Ljava/lang/Object;

    .line 137
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mAccessTokenValidityIntent:Landroid/app/PendingIntent;

    .line 138
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mRefreshTokenValidityIntent:Landroid/app/PendingIntent;

    .line 139
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mRegistrationCodeValidityIntent:Landroid/app/PendingIntent;

    .line 140
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mAuthCodeValidityIntent:Landroid/app/PendingIntent;

    .line 141
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mOtpTimeoutIntent:Landroid/app/PendingIntent;

    .line 150
    invoke-interface {p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 151
    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 152
    invoke-interface {p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result p1

    iput p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPhoneId:I

    .line 153
    invoke-interface {p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mContext:Landroid/content/Context;

    .line 154
    iput-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    .line 155
    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mClientHandler:Landroid/os/Handler;

    .line 156
    invoke-interface {p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p3

    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPreferenceManager:Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    .line 157
    iput-object p4, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mNetAPIWorkingController:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;

    .line 158
    invoke-interface {p2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getMcsProvisioningListener()Landroid/os/RemoteCallbackList;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mMcsProvisioningListener:Landroid/os/RemoteCallbackList;

    .line 159
    new-instance p2, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$RCSContentObserver;

    invoke-virtual {p0}, Lcom/sec/internal/helper/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object p3

    invoke-direct {p2, p0, p3}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$RCSContentObserver;-><init>(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mRCSContentObserver:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$RCSContentObserver;

    .line 160
    sget-object p2, Lcom/sec/internal/constants/ims/cmstore/McsConstants$Uris;->RCS_USER_ALIAS_URI:Landroid/net/Uri;

    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "simslot"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPhoneId:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mAliasUri:Landroid/net/Uri;

    .line 161
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->initStates()V

    .line 162
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->registerSmsReceiver()V

    .line 163
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->registerSyncStatusListener()V

    .line 164
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->registerContentObservers()V

    .line 165
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    const-string p3, "com.sec.imsservice.cmstore.mcs.action.ACCESS_TOKEN_VALIDITY_TIMEOUT"

    .line 166
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p3, "com.sec.imsservice.cmstore.mcs.action.REFRESH_TOKEN_VALIDITY_TIMEOUT"

    .line 167
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p3, "com.sec.imsservice.cmstore.mcs.action.REGISTRATION_CODE_VALIDITY_TIMEOUT"

    .line 168
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p3, "com.sec.imsservice.cmstore.mcs.action.AUTH_CODE_VALIDITY_TIMEOUT"

    .line 169
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p3, "com.sec.imsservice.cmstore.mcs.action.OTP_RESPONSE_TIMEOUT"

    .line 170
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 171
    new-instance p3, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$1;

    invoke-direct {p3, p0}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$1;-><init>(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;)V

    .line 220
    invoke-virtual {p1, p3, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private buildDeviceInfo()Lorg/json/JSONObject;
    .locals 3

    .line 580
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 581
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/utils/CmsUtil;->getMcsClientId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "client_id"

    .line 582
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "device_id"

    .line 583
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPreferenceManager:Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "device_name"

    .line 584
    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/McsConstants$DeviceInfoValue;->DEVICE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "client_ip"

    .line 585
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mNetAPIWorkingController:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;

    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->getMobileIp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "client_vendor"

    const-string v2, "Samsung"

    .line 586
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mno"

    .line 587
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->getMnoName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "os_type"

    const-string v2, "aos"

    .line 588
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "os_version"

    .line 589
    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/McsConstants$DeviceInfoValue;->OS_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "device_kind"

    .line 590
    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/McsConstants$DeviceInfoValue;->DEVICE_KIND:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "firmware_version"

    .line 591
    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/McsConstants$DeviceInfoValue;->FIRMWARE_VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "service_version"

    const-string v2, "1.0"

    .line 592
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "client_version"

    .line 593
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/internal/ims/cmstore/utils/CmsUtil;->getSmAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "native_info"

    .line 594
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->buildNativeInfo()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 597
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private buildNativeInfo()Lorg/json/JSONObject;
    .locals 4

    .line 604
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "imsi"

    .line 605
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "imei"

    .line 606
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPreferenceManager:Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "sms_port"

    const/16 v2, 0x4199

    .line 607
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "default_sms_app"

    .line 608
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPhoneId:I

    invoke-static {v2, v3}, Lcom/sec/internal/ims/util/ConfigUtil;->isSecDmaPackageInuse(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 611
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private getE164Msisdn()Ljava/lang/String;
    .locals 2

    .line 573
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPreferenceManager:Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserCtn()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPhoneId:I

    .line 574
    invoke-static {v1, p0}, Lcom/sec/internal/ims/cmstore/utils/Util;->getSimCountryCode(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    .line 573
    invoke-static {v0, p0}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method private getMnoName()Ljava/lang/String;
    .locals 1

    .line 617
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mSimManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object p0

    .line 618
    sget-object v0, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    if-ne p0, v0, :cond_0

    const-string p0, "SKT"

    return-object p0

    .line 621
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    if-ne p0, v0, :cond_1

    const-string p0, "LGU"

    return-object p0

    .line 624
    :cond_1
    sget-object v0, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    if-ne p0, v0, :cond_2

    const-string p0, "KT"

    return-object p0

    :cond_2
    const-string p0, ""

    return-object p0
.end method

.method private initStates()V
    .locals 2

    .line 278
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mDefaultState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;)V

    .line 279
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mRegisteringState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mDefaultState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 280
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mRegisteredState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mRegisteringState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 281
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mProvisioningState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mRegisteringState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 282
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mProvisionedState:Lcom/sec/internal/helper/State;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mRegisteringState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;Lcom/sec/internal/helper/State;)V

    .line 283
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mDefaultState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->setInitialState(Lcom/sec/internal/helper/State;)V

    .line 284
    invoke-virtual {p0}, Lcom/sec/internal/helper/StateMachine;->start()V

    return-void
.end method

.method private registerSyncStatusListener()V
    .locals 2

    .line 224
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    new-instance v1, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$2;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$2;-><init>(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;)V

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->setMcsFcmPushNotificationListener(Lcom/sec/internal/interfaces/ims/cmstore/IMcsFcmPushNotificationListener;)V

    return-void
.end method

.method private updatePendingAccountInfo()V
    .locals 4

    .line 669
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPhoneId:I

    const-string/jumbo v2, "updatePendingAccountInfo"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 670
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 671
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mConsentContext:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const-string v1, "is_changed_consent"

    .line 672
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "consent_context"

    .line 673
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mConsentContext:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v1, "is_changed_alias"

    .line 675
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 676
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPreferenceManager:Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getMcsAlias()Ljava/lang/String;

    move-result-object v1

    const-string v2, "alias"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x16

    .line 677
    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected cancelAccessTokenValidityTimer()V
    .locals 3

    .line 834
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mAccessTokenValidityIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    .line 835
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPhoneId:I

    const-string v1, "cancelValidityTimer: AccessToken validityTimer is not running."

    invoke-static {v0, p0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 838
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPhoneId:I

    const-string v2, "cancel AccessToken ValidityTimer"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 839
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mAccessTokenValidityIntent:Landroid/app/PendingIntent;

    invoke-static {v0, v1}, Lcom/sec/internal/helper/AlarmTimer;->stop(Landroid/content/Context;Landroid/app/PendingIntent;)V

    const/4 v0, 0x0

    .line 840
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mAccessTokenValidityIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method public cancelAuthCodeValidityTimer()V
    .locals 3

    .line 854
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mAuthCodeValidityIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    .line 855
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPhoneId:I

    const-string v1, "cancelValidityTimer: AuthCode validityTimer is not running."

    invoke-static {v0, p0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 858
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPhoneId:I

    const-string v2, "cancel AuthCode ValidityTimer"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 859
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mAuthCodeValidityIntent:Landroid/app/PendingIntent;

    invoke-static {v0, v1}, Lcom/sec/internal/helper/AlarmTimer;->stop(Landroid/content/Context;Landroid/app/PendingIntent;)V

    const/4 v0, 0x0

    .line 860
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mAuthCodeValidityIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method protected cancelRefreshTokenValidityTimer()V
    .locals 3

    .line 844
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mRefreshTokenValidityIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    .line 845
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPhoneId:I

    const-string v1, "cancelValidityTimer: RefreshToken validityTimer is not running."

    invoke-static {v0, p0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 848
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPhoneId:I

    const-string v2, "cancel RefreshToken ValidityTimer"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 849
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mRefreshTokenValidityIntent:Landroid/app/PendingIntent;

    invoke-static {v0, v1}, Lcom/sec/internal/helper/AlarmTimer;->stop(Landroid/content/Context;Landroid/app/PendingIntent;)V

    const/4 v0, 0x0

    .line 850
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mRefreshTokenValidityIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method public cancelRegistrationCodeValidityTimer()V
    .locals 3

    .line 864
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mRegistrationCodeValidityIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    .line 865
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPhoneId:I

    const-string v1, "cancelValidityTimer: RegistrationCode validityTimer is not running."

    invoke-static {v0, p0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 868
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPhoneId:I

    const-string v2, "cancel RegistrationCode ValidityTimer"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 869
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mRegistrationCodeValidityIntent:Landroid/app/PendingIntent;

    invoke-static {v0, v1}, Lcom/sec/internal/helper/AlarmTimer;->stop(Landroid/content/Context;Landroid/app/PendingIntent;)V

    const/4 v0, 0x0

    .line 870
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mRegistrationCodeValidityIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method public clearData()V
    .locals 2

    const/4 v0, 0x0

    .line 903
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mConsentContext:Ljava/lang/String;

    .line 904
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPendingRequests:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 905
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->setProvisionStatus(Z)V

    .line 906
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->clearWorkflow()V

    return-void
.end method

.method public clearToken()V
    .locals 2

    .line 874
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPreferenceManager:Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveMcsAccessToken(Ljava/lang/String;)V

    .line 875
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPreferenceManager:Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveMcsRefreshToken(Ljava/lang/String;)V

    .line 876
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->cancelAccessTokenValidityTimer()V

    .line 877
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->cancelRefreshTokenValidityTimer()V

    .line 878
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->setProvisionStatus(Z)V

    return-void
.end method

.method public clearWorkflow()V
    .locals 1

    const/4 v0, 0x3

    .line 631
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public disableMCS()V
    .locals 3

    .line 686
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPhoneId:I

    const-string v2, "disableMCS"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x17

    .line 687
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public getAccount()V
    .locals 3

    .line 681
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPhoneId:I

    const-string v2, "getAccount"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x15

    .line 682
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public getSd(Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 4

    .line 651
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSd type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 652
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x11

    .line 653
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x12

    .line 655
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public handleFailedEvent(II)V
    .locals 1

    const-string v0, "mobile_ip"

    .line 1401
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mRequestType:Ljava/lang/String;

    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    .line 1403
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->processFailResponseForGetUser(I)V

    goto :goto_1

    :cond_0
    const/16 v0, 0xc

    if-ne p1, v0, :cond_1

    .line 1405
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->processFailResponseForAuthentication(I)V

    goto :goto_1

    :cond_1
    const/16 v0, 0xd

    if-eq p1, v0, :cond_4

    const/16 v0, 0x13

    if-eq p1, v0, :cond_4

    const/16 v0, 0x14

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    const/16 v0, 0xe

    if-ne p1, v0, :cond_3

    .line 1409
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->processFailResponseForToken(I)V

    goto :goto_1

    .line 1410
    :cond_3
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->isBearerAuthRequest(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1411
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->processFailResponseForBearerApi(II)V

    goto :goto_1

    .line 1407
    :cond_4
    :goto_0
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->processFailResponseForRegistration(I)V

    :cond_5
    :goto_1
    return-void
.end method

.method public handleSucceededEvent(ILjava/lang/Object;)V
    .locals 10

    const/16 v0, 0xc

    const/4 v1, 0x4

    const/16 v2, 0xe

    const-string v3, "consent_context"

    const/4 v4, 0x7

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x64

    const/4 v9, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_4

    .line 1235
    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->onDeRegistrationCompleted()V

    goto/16 :goto_4

    .line 1227
    :pswitch_2
    invoke-virtual {p0, v4, v8, v7, p2}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->notifyMcsProvisionListener(IIILjava/lang/Object;)V

    .line 1228
    check-cast p2, Landroid/os/Bundle;

    const-string p1, "account_status"

    .line 1229
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const/16 p2, 0x270f

    if-ne p1, p2, :cond_a

    .line 1231
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->onDeRegistrationCompleted()V

    goto/16 :goto_4

    .line 1224
    :pswitch_3
    invoke-virtual {p0, v4, v8, v7, p2}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->notifyMcsProvisionListener(IIILjava/lang/Object;)V

    goto/16 :goto_4

    .line 1199
    :pswitch_4
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mWaitOtp:Z

    if-eqz p1, :cond_a

    .line 1200
    check-cast p2, Landroid/os/Bundle;

    .line 1201
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getPrerenceManager()Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getOasisAuthRoot()Ljava/lang/String;

    move-result-object p1

    const-string v1, "dev"

    .line 1202
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "stg"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "https://rapi.rcsoasis.kr"

    .line 1206
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    const-string/jumbo p1, "otpCodeValidity"

    .line 1207
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->startOtpTimer(J)V

    goto/16 :goto_4

    .line 1203
    :cond_1
    :goto_0
    iput-boolean v7, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mWaitOtp:Z

    const-string p1, "123456"

    .line 1204
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mOtp:Ljava/lang/String;

    .line 1205
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mConsentContext:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_4

    .line 1218
    :pswitch_5
    invoke-virtual {p0, v5, v8, v7, p2}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->notifyMcsProvisionListener(IIILjava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_6
    const/4 p1, 0x6

    .line 1221
    invoke-virtual {p0, p1, v8, v7, p2}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->notifyMcsProvisionListener(IIILjava/lang/Object;)V

    goto/16 :goto_4

    .line 1215
    :pswitch_7
    invoke-virtual {p0, v1, v8, v9, v6}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->notifyMcsProvisionListener(IIILjava/lang/Object;)V

    goto/16 :goto_4

    :pswitch_8
    const/4 p1, 0x3

    .line 1212
    invoke-virtual {p0, p1, v8, v9, v6}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->notifyMcsProvisionListener(IIILjava/lang/Object;)V

    goto/16 :goto_4

    .line 1164
    :pswitch_9
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mProvisionedState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 1165
    invoke-virtual {p0, v7}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->updateMcsAlias(Z)V

    .line 1166
    iput-boolean v7, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mNeedInternalRegistration:Z

    .line 1167
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPreferenceManager:Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getMcsUser()I

    move-result p1

    if-eq p1, v9, :cond_2

    .line 1168
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPreferenceManager:Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    invoke-virtual {p1, v9}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveMcsUser(I)V

    .line 1169
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1, v9}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->setProvisionStatus(Z)V

    const/4 p1, 0x2

    .line 1170
    invoke-virtual {p0, v9, v8, p1, v6}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->notifyMcsProvisionListener(IIILjava/lang/Object;)V

    goto/16 :goto_4

    .line 1172
    :cond_2
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getProvisionStatus()Z

    move-result p1

    if-nez p1, :cond_4

    .line 1173
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1, v9}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->setProvisionStatus(Z)V

    .line 1174
    iget-boolean p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mChangedToSamsungMessage:Z

    if-eqz p1, :cond_3

    .line 1175
    iput-boolean v7, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mChangedToSamsungMessage:Z

    .line 1176
    invoke-virtual {p0, v9, v8, v5, v6}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->notifyMcsProvisionListener(IIILjava/lang/Object;)V

    goto :goto_1

    .line 1178
    :cond_3
    invoke-virtual {p0, v9, v8, v1, v6}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->notifyMcsProvisionListener(IIILjava/lang/Object;)V

    goto :goto_1

    .line 1181
    :cond_4
    invoke-virtual {p0, v9, v8, v5, v6}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->notifyMcsProvisionListener(IIILjava/lang/Object;)V

    .line 1183
    :goto_1
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPendingRequests:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_a

    .line 1184
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->LOG_TAG:Ljava/lang/String;

    iget p2, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPhoneId:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pending requests"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPendingRequests:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1185
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPendingRequests:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 1186
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 1187
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/16 v0, 0x16

    if-ne p2, v0, :cond_5

    .line 1189
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->updatePendingAccountInfo()V

    goto :goto_2

    .line 1192
    :cond_5
    invoke-virtual {p0, p2}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    goto :goto_2

    .line 1194
    :cond_6
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPendingRequests:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    goto/16 :goto_4

    .line 1161
    :pswitch_a
    invoke-virtual {p0, v2}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    goto/16 :goto_4

    :pswitch_b
    const-string p1, "mobile_ip"

    .line 1142
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mRequestType:Ljava/lang/String;

    if-nez p2, :cond_7

    .line 1144
    invoke-virtual {p0, v2}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    goto/16 :goto_4

    .line 1146
    :cond_7
    check-cast p2, Landroid/os/Bundle;

    .line 1147
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1148
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_a

    .line 1149
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPreferenceManager:Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    invoke-virtual {p2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getRegCode()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sec/internal/ims/cmstore/utils/Util;->isRegistrationCodeInvalid(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 1150
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->LOG_TAG:Ljava/lang/String;

    iget p2, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPhoneId:I

    const-string/jumbo v1, "registration code is expired, remove and retry to get it"

    invoke-static {p1, p2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1151
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPreferenceManager:Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    const-string p2, ""

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveRegCode(Ljava/lang/String;)V

    .line 1152
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    goto :goto_4

    :cond_8
    const/16 p2, 0xd

    .line 1155
    invoke-virtual {p0, p2, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_4

    .line 1124
    :pswitch_c
    check-cast p2, Landroid/os/Bundle;

    const-string/jumbo p1, "root_client_id"

    .line 1125
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1126
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/CmsUtil;->getMcsClientId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1127
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mConsentContext:Ljava/lang/String;

    .line 1128
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mConsentContext "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mConsentContext:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1129
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPreferenceManager:Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    invoke-virtual {v1, v9}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveMcsUser(I)V

    .line 1130
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 1131
    iput-boolean v9, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mNeedInternalRegistration:Z

    .line 1132
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mDefaultState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_3

    .line 1134
    :cond_9
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mRegisteredState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    :goto_3
    const/16 p1, 0xa

    .line 1136
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mConsentContext:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 1137
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->notifyMcsRegistrationStatus()V

    .line 1138
    invoke-virtual {p0, v4, v8, v7, p2}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->notifyMcsProvisionListener(IIILjava/lang/Object;)V

    :cond_a
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public isBearerAuthRequest(I)Z
    .locals 0

    .line 0
    const/16 p0, 0xf

    if-eq p1, p0, :cond_1

    const/16 p0, 0x10

    if-eq p1, p0, :cond_1

    const/16 p0, 0x11

    if-eq p1, p0, :cond_1

    const/16 p0, 0x12

    if-eq p1, p0, :cond_1

    const/16 p0, 0x15

    if-eq p1, p0, :cond_1

    const/16 p0, 0x16

    if-eq p1, p0, :cond_1

    const/16 p0, 0x17

    if-ne p1, p0, :cond_0

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

.method public isValidAccessToken()Z
    .locals 7

    .line 726
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPreferenceManager:Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getMcsAccessTokenExpireTime()J

    move-result-wide v0

    .line 727
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPreferenceManager:Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getMcsAccessToken()Ljava/lang/String;

    move-result-object v2

    .line 728
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->LOG_TAG:Ljava/lang/String;

    iget v4, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPhoneId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "tokenExpireime = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 730
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 731
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x15180

    sub-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 733
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPhoneId:I

    const-string v4, "AccessToken is valid"

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 734
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->setAccessTokenValidityTimer(J)V

    const/4 p0, 0x1

    return p0

    .line 738
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPhoneId:I

    const-string v1, "AccessToken is invalid"

    invoke-static {v0, p0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method protected isValidRefreshToken()Z
    .locals 7

    .line 743
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPreferenceManager:Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getMcsRefreshTokenExpireTime()J

    move-result-wide v0

    .line 744
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPreferenceManager:Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getMcsRefreshToken()Ljava/lang/String;

    move-result-object v2

    .line 745
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->LOG_TAG:Ljava/lang/String;

    iget v4, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPhoneId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "tokenExpireime = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 747
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 748
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x15180

    sub-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 750
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPhoneId:I

    const-string v4, "RefreshToken is valid"

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 751
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->setRefreshTokenValidityTimer(J)V

    const/4 p0, 0x1

    return p0

    .line 755
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPhoneId:I

    const-string v1, "RefreshToken is invalid"

    invoke-static {v0, p0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public manageSd(ILjava/lang/String;)V
    .locals 4

    .line 642
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "manageSd type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/16 p1, 0xf

    .line 644
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const/16 p1, 0x10

    .line 646
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected notifyMcsAlias(Ljava/lang/String;)V
    .locals 3

    .line 718
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPhoneId:I

    const-string/jumbo v2, "updateAccountInfo alias"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 719
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "is_changed_alias"

    const/4 v2, 0x1

    .line 720
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "alias"

    .line 721
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x16

    .line 722
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public notifyMcsProvisionListener(IIILjava/lang/Object;)V
    .locals 9

    .line 918
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 919
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getMcsProvisioningListener()Landroid/os/RemoteCallbackList;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mMcsProvisioningListener:Landroid/os/RemoteCallbackList;

    if-nez v1, :cond_0

    .line 921
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPhoneId:I

    const-string p2, "notifyMcsProvisionListener: empty"

    invoke-static {p1, p0, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 922
    monitor-exit v0

    return-void

    .line 924
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyMcsProvisionListener: notify "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", result "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", details "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->infoLogAndAdd(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 927
    :try_start_1
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mMcsProvisioningListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 928
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyMcsProvisionListener: length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    .line 930
    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mMcsProvisioningListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/sec/ims/ICentralMsgStoreServiceListener;

    const/4 v5, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 958
    :pswitch_0
    move-object v5, p4

    check-cast v5, Landroid/os/Bundle;

    const-string/jumbo v6, "pushType"

    .line 959
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "key"

    .line 960
    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "value"

    .line 961
    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 962
    invoke-interface {v4, v6, v7, v5}, Lcom/sec/ims/ICentralMsgStoreServiceListener;->onCmsPushMessageReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 951
    :pswitch_1
    move-object v5, p4

    check-cast v5, Landroid/os/Bundle;

    const-string v6, "alias"

    .line 952
    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "consent_context"

    .line 953
    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 954
    invoke-interface {v4, v6, v5, p2}, Lcom/sec/ims/ICentralMsgStoreServiceListener;->onCmsAccountInfoDelivered(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 948
    :pswitch_2
    move-object v6, p4

    check-cast v6, Ljava/lang/String;

    invoke-interface {v4, v5, v6, p2}, Lcom/sec/ims/ICentralMsgStoreServiceListener;->onCmsSdChanged(ZLjava/lang/String;I)V

    goto :goto_1

    .line 945
    :pswitch_3
    move-object v5, p4

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4, v2, v5, p2}, Lcom/sec/ims/ICentralMsgStoreServiceListener;->onCmsSdChanged(ZLjava/lang/String;I)V

    goto :goto_1

    .line 942
    :pswitch_4
    move-object v5, p4

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x2

    invoke-interface {v4, v6, v5, p2, p3}, Lcom/sec/ims/ICentralMsgStoreServiceListener;->onCmsSdManagementCompleted(ILjava/lang/String;II)V

    goto :goto_1

    .line 939
    :pswitch_5
    move-object v6, p4

    check-cast v6, Ljava/lang/String;

    invoke-interface {v4, v5, v6, p2, p3}, Lcom/sec/ims/ICentralMsgStoreServiceListener;->onCmsSdManagementCompleted(ILjava/lang/String;II)V

    goto :goto_1

    .line 936
    :pswitch_6
    invoke-interface {v4, p2}, Lcom/sec/ims/ICentralMsgStoreServiceListener;->onCmsDeRegistrationCompleted(I)V

    goto :goto_1

    .line 933
    :pswitch_7
    invoke-interface {v4, p2, p3}, Lcom/sec/ims/ICentralMsgStoreServiceListener;->onCmsRegistrationCompleted(II)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 970
    :try_start_2
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->LOG_TAG:Ljava/lang/String;

    iget p3, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPhoneId:I

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyMcsProvisionListener: Exception: "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 974
    :cond_1
    :try_start_3
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mMcsProvisioningListener:Landroid/os/RemoteCallbackList;

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_1
    move-exception p1

    .line 976
    :try_start_4
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPhoneId:I

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "notifyMcsProvisionListener: Exception: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 978
    :goto_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method public notifyMcsRegistrationStatus()V
    .locals 3

    .line 910
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPreferenceManager:Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getMcsUser()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/16 v0, 0x64

    .line 911
    invoke-virtual {p0, v2, v0, v2, v1}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->notifyMcsProvisionListener(IIILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0xc8

    .line 913
    invoke-virtual {p0, v2, v0, v2, v1}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->notifyMcsProvisionListener(IIILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onDeRegistrationCompleted()V
    .locals 4

    .line 882
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPreferenceManager:Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getMcsUser()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 883
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPhoneId:I

    const-string v2, "De-Registration is completed"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->infoLogAndAdd(Ljava/lang/String;ILjava/lang/String;)V

    .line 884
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->resetMcsData()V

    .line 885
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPreferenceManager:Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveMcsUser(I)V

    .line 886
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->unregisterSmsReceiver()V

    const/16 v0, 0x64

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 887
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->notifyMcsProvisionListener(IIILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onDefaultSmsPackageChanged()V
    .locals 1

    .line 691
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/utils/CmsUtil;->isDefaultMessageAppInUse(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    .line 692
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    const/4 v0, 0x0

    .line 693
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mChangedToSamsungMessage:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 695
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mChangedToSamsungMessage:Z

    :goto_0
    return-void
.end method

.method public onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;I)V
    .locals 4

    .line 1443
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFailedCall request "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x322

    if-ne p2, v0, :cond_0

    .line 1445
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " curr state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1446
    invoke-virtual {p0}, Lcom/sec/internal/helper/StateMachine;->getCurrentState()Lcom/sec/internal/helper/IState;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/helper/IState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " request failure due to connection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1447
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1445
    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->infoLogAndAdd(Ljava/lang/String;ILjava/lang/String;)V

    .line 1449
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->translateRequestCommand(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x2

    .line 1450
    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/internal/helper/StateMachine;->sendMessage(III)V

    return-void
.end method

.method public onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onFailedCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onFailedEvent(ILjava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onFixedFlow(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onFixedFlowWithMessage(Landroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onGoToEvent(ILjava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onMoveOnToNext(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onOverRequest(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;I)V
    .locals 5

    .line 1469
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 1470
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 1471
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " OnOverRequest : request "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", error code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", retryAfter "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1472
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getMcsRetryMapAdapter()Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->checkAndIncreaseRetry(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;I)Z

    move-result p1

    .line 1473
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->translateRequestCommand(Ljava/lang/String;)I

    move-result v0

    if-eqz p1, :cond_0

    int-to-long p1, p3

    .line 1475
    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(IJ)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 1477
    invoke-virtual {p0, p1, v0, p2}, Lcom/sec/internal/helper/StateMachine;->sendMessage(III)V

    :goto_0
    return-void
.end method

.method public onOverRequest(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 5

    .line 1483
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 1484
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 1485
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " OnOverRequest2 : request "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", error code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", retryAfter "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1486
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getMcsRetryMapAdapter()Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/sec/internal/ims/cmstore/adapters/McsRetryMapAdapter;->checkAndIncreaseRetry(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;I)Z

    move-result p1

    .line 1487
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->translateRequestCommand(Ljava/lang/String;)I

    move-result v0

    if-eqz p1, :cond_2

    .line 1489
    check-cast p4, Landroid/os/Bundle;

    const/16 p1, 0xc

    if-eq v0, p1, :cond_1

    const/16 p1, 0x15

    if-eq v0, p1, :cond_0

    const/16 p1, 0x16

    if-eq v0, p1, :cond_0

    int-to-long p1, p3

    .line 1501
    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(IJ)V

    goto :goto_0

    :cond_0
    int-to-long p1, p3

    .line 1498
    invoke-virtual {p0, v0, p4, p1, p2}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(ILjava/lang/Object;J)V

    goto :goto_0

    :cond_1
    const-string p1, "consent_context"

    .line 1492
    invoke-virtual {p4, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    int-to-long p2, p3

    .line 1493
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(ILjava/lang/Object;J)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x2

    .line 1504
    invoke-virtual {p0, p1, v0, p2}, Lcom/sec/internal/helper/StateMachine;->sendMessage(III)V

    :goto_0
    return-void
.end method

.method public onSuccessfulCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onSuccessfulCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/Object;)V
    .locals 4

    .line 1116
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSuccessfulCall request "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1117
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->translateRequestCommand(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1118
    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/sec/internal/helper/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public onSuccessfulCall(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onSuccessfulEvent(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;ILjava/lang/Object;)V
    .locals 0

    .line 0
    return-void
.end method

.method public processFailResponseForAuthentication(I)V
    .locals 4

    const/16 v0, 0x191

    if-ne p1, v0, :cond_0

    const-string/jumbo p1, "otp"

    .line 1308
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mRequestType:Ljava/lang/String;

    const/16 p1, 0x13

    .line 1309
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x384

    if-ne p1, v0, :cond_1

    .line 1311
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->onDeRegistrationCompleted()V

    goto :goto_0

    :cond_1
    const/16 v0, 0x385

    const/4 v1, 0x0

    const/16 v2, 0xc8

    const/4 v3, 0x1

    if-ne p1, v0, :cond_2

    .line 1313
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mDefaultState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    const/16 p1, 0x14

    .line 1314
    invoke-virtual {p0, v3, v2, p1, v1}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->notifyMcsProvisionListener(IIILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x386

    if-ne p1, v0, :cond_3

    .line 1316
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mDefaultState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    const/16 p1, 0x15

    .line 1317
    invoke-virtual {p0, v3, v2, p1, v1}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->notifyMcsProvisionListener(IIILjava/lang/Object;)V

    goto :goto_0

    :cond_3
    const/16 v0, 0x387

    if-ne p1, v0, :cond_4

    .line 1319
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mDefaultState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    const/16 p1, 0x16

    .line 1320
    invoke-virtual {p0, v3, v2, p1, v1}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->notifyMcsProvisionListener(IIILjava/lang/Object;)V

    goto :goto_0

    .line 1322
    :cond_4
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPreferenceManager:Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getMcsUser()I

    move-result p1

    if-eq p1, v3, :cond_5

    .line 1323
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mDefaultState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    const/4 p1, 0x2

    .line 1324
    invoke-virtual {p0, v3, v2, p1, v1}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->notifyMcsProvisionListener(IIILjava/lang/Object;)V

    goto :goto_0

    .line 1326
    :cond_5
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mRegisteredState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    :goto_0
    return-void
.end method

.method public processFailResponseForBearerApi(II)V
    .locals 3

    const/16 v0, 0x191

    const/4 v1, 0x1

    if-ne p2, v0, :cond_2

    .line 1382
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->RCS_USER_SETTING1:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getName()Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPhoneId:I

    invoke-static {p2, v0, v2}, Lcom/sec/internal/helper/DmConfigHelper;->getImsUserSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p2

    .line 1383
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->isRcsRegistered()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    .line 1384
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->onDeRegistrationCompleted()V

    return-void

    .line 1387
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->clearToken()V

    .line 1388
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPreferenceManager:Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    invoke-virtual {p2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getMcsUser()I

    move-result p2

    if-ne p2, v1, :cond_2

    .line 1389
    invoke-virtual {p0}, Lcom/sec/internal/helper/StateMachine;->getCurrentState()Lcom/sec/internal/helper/IState;

    move-result-object p2

    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mProvisioningState:Lcom/sec/internal/helper/State;

    if-eq p2, v0, :cond_1

    const/16 p2, 0xc

    .line 1390
    invoke-virtual {p0, p2}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    .line 1392
    :cond_1
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPendingRequests:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1393
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->LOG_TAG:Ljava/lang/String;

    iget p2, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPhoneId:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPendingRequests"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPendingRequests:Ljava/util/Set;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 1397
    :cond_2
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->translateRequestToNotify(I)I

    move-result p1

    const/16 p2, 0xc8

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->notifyMcsProvisionListener(IIILjava/lang/Object;)V

    return-void
.end method

.method public processFailResponseForGetUser(I)V
    .locals 1

    const/16 v0, 0x194

    if-ne p1, v0, :cond_0

    .line 1301
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPreferenceManager:Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveMcsUser(I)V

    .line 1302
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->notifyMcsRegistrationStatus()V

    :cond_0
    return-void
.end method

.method public processFailResponseForRegistration(I)V
    .locals 4

    const/4 v0, 0x0

    .line 1332
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mWaitOtp:Z

    const/16 v0, 0x385

    const/4 v1, 0x0

    const/16 v2, 0xc8

    const/4 v3, 0x1

    if-ne p1, v0, :cond_0

    .line 1334
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mDefaultState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    const/16 p1, 0x14

    .line 1335
    invoke-virtual {p0, v3, v2, p1, v1}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->notifyMcsProvisionListener(IIILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x386

    if-ne p1, v0, :cond_1

    .line 1337
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mDefaultState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    const/16 p1, 0x15

    .line 1338
    invoke-virtual {p0, v3, v2, p1, v1}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->notifyMcsProvisionListener(IIILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x387

    if-ne p1, v0, :cond_2

    .line 1340
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mDefaultState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    const/16 p1, 0x16

    .line 1341
    invoke-virtual {p0, v3, v2, p1, v1}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->notifyMcsProvisionListener(IIILjava/lang/Object;)V

    .line 1344
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPreferenceManager:Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getMcsUser()I

    move-result p1

    if-eq p1, v3, :cond_3

    .line 1345
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mDefaultState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    const/4 p1, 0x2

    .line 1346
    invoke-virtual {p0, v3, v2, p1, v1}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->notifyMcsProvisionListener(IIILjava/lang/Object;)V

    goto :goto_1

    .line 1348
    :cond_3
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mRegisteredState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    :goto_1
    return-void
.end method

.method public processFailResponseForToken(I)V
    .locals 5

    const/16 v0, 0x194

    if-ne p1, v0, :cond_0

    const/16 p1, 0xc

    .line 1354
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    goto :goto_1

    :cond_0
    const/16 v0, 0x385

    const/4 v1, 0x0

    const/16 v2, 0xc8

    const/4 v3, 0x1

    if-ne p1, v0, :cond_1

    .line 1356
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mRegisteredState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    const/16 p1, 0x14

    .line 1357
    invoke-virtual {p0, v3, v2, p1, v1}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->notifyMcsProvisionListener(IIILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    const/16 v0, 0x386

    if-ne p1, v0, :cond_2

    .line 1359
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mRegisteredState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    const/16 p1, 0x15

    .line 1360
    invoke-virtual {p0, v3, v2, p1, v1}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->notifyMcsProvisionListener(IIILjava/lang/Object;)V

    goto :goto_1

    :cond_2
    const/16 v0, 0x387

    if-ne p1, v0, :cond_3

    .line 1362
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mRegisteredState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    const/16 p1, 0x16

    .line 1363
    invoke-virtual {p0, v3, v2, p1, v1}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->notifyMcsProvisionListener(IIILjava/lang/Object;)V

    goto :goto_1

    .line 1365
    :cond_3
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->LOG_TAG:Ljava/lang/String;

    iget v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPhoneId:I

    const-string v4, "onFailedCall: MCS provisioning is failed"

    invoke-static {p1, v0, v4}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->infoLogAndAdd(Ljava/lang/String;ILjava/lang/String;)V

    .line 1367
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPreferenceManager:Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getMcsUser()I

    move-result p1

    if-eq p1, v3, :cond_4

    const/4 p1, 0x2

    goto :goto_0

    :cond_4
    const/4 p1, 0x4

    .line 1370
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getProvisionStatus()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 p1, 0x5

    .line 1373
    :cond_5
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPendingRequests:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1374
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->setProvisionStatus(Z)V

    .line 1375
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mRegisteredState:Lcom/sec/internal/helper/State;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 1376
    invoke-virtual {p0, v3, v2, p1, v1}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->notifyMcsProvisionListener(IIILjava/lang/Object;)V

    :goto_1
    return-void
.end method

.method registerContentObservers()V
    .locals 3

    .line 1072
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPhoneId:I

    const-string/jumbo v2, "registerContentObservers"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1074
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mAliasUri:Landroid/net/Uri;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mRCSContentObserver:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$RCSContentObserver;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1076
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected registerSmsReceiver()V
    .locals 3

    .line 981
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mSmsReceiver:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$SmsReceiver;

    if-nez v0, :cond_0

    .line 982
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPhoneId:I

    const-string/jumbo v2, "register mSmsReceiver"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 983
    new-instance v0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$SmsReceiver;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$SmsReceiver;-><init>(Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;)V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mSmsReceiver:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$SmsReceiver;

    .line 984
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$SmsReceiver;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public requestMcsAccessToken()V
    .locals 3

    .line 1094
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPhoneId:I

    const-string/jumbo v2, "requestMcsAccessToken: need to refresh"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->infoLogAndAdd(Ljava/lang/String;ILjava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 1095
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->setAccessTokenValidityTimer(J)V

    return-void
.end method

.method public requestMcsReAuthentication()V
    .locals 3

    .line 1099
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPhoneId:I

    const-string/jumbo v2, "requestMcsReAuthentication: token is no longer valid, need to ReAuthentication"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->infoLogAndAdd(Ljava/lang/String;ILjava/lang/String;)V

    .line 1101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",PV:REAUTH"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, -0x6ffcfffb

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1102
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->clearToken()V

    const-wide/16 v0, 0x0

    .line 1103
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->setRefreshTokenValidityTimer(J)V

    return-void
.end method

.method public resetMcsData()V
    .locals 3

    .line 892
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPhoneId:I

    const-string/jumbo v2, "reset MCS data"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->infoLogAndAdd(Ljava/lang/String;ILjava/lang/String;)V

    .line 893
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPreferenceManager:Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getUserCtn()Ljava/lang/String;

    move-result-object v0

    .line 894
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPreferenceManager:Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getSimImsi()Ljava/lang/String;

    move-result-object v1

    .line 895
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mNetAPIWorkingController:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;

    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->clearData()V

    .line 896
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mNetAPIWorkingController:Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;

    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/NetAPIWorkingStatusControllerMcs;->stopCMNWorking()V

    .line 897
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->clearData()V

    .line 898
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPreferenceManager:Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveSimImsi(Ljava/lang/String;)V

    .line 899
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPreferenceManager:Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveUserCtn(Ljava/lang/String;Z)V

    return-void
.end method

.method public setAccessTokenValidityTimer(J)V
    .locals 4

    .line 760
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mAccessTokenValidityIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 761
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPhoneId:I

    const-string/jumbo v2, "setAccessTokenValidityTimer: AccessTokenValidityTimer is already running. Stopping it."

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 762
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->cancelAccessTokenValidityTimer()V

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_1

    .line 766
    invoke-virtual {p0}, Lcom/sec/internal/helper/StateMachine;->getCurrentState()Lcom/sec/internal/helper/IState;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mProvisioningState:Lcom/sec/internal/helper/State;

    if-eq p1, p2, :cond_2

    const/16 p1, 0xe

    .line 767
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    goto :goto_0

    :cond_1
    const-wide/32 v2, 0x15180

    sub-long/2addr p1, v2

    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    .line 770
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.imsservice.cmstore.mcs.action.ACCESS_TOKEN_VALIDITY_TIMEOUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 771
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "phone"

    .line 772
    iget v2, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPhoneId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 773
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x2000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mAccessTokenValidityIntent:Landroid/app/PendingIntent;

    .line 775
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAccessTokenValidityTimer: start validity period timer ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " sec)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 776
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mAccessTokenValidityIntent:Landroid/app/PendingIntent;

    const-wide/16 v1, 0x3e8

    mul-long/2addr p1, v1

    invoke-static {v0, p0, p1, p2}, Lcom/sec/internal/helper/AlarmTimer;->start(Landroid/content/Context;Landroid/app/PendingIntent;J)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setAuthCodeValidityTimer(J)V
    .locals 4

    .line 818
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mAuthCodeValidityIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 819
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPhoneId:I

    const-string/jumbo v2, "setAuthCodeValidityTimer: AuthCodeValidityTimer is already running. Stopping it."

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 820
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->cancelAuthCodeValidityTimer()V

    .line 822
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAuthCodeValidityTimer: start validity period timer ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " sec)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 824
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.imsservice.cmstore.mcs.action.AUTH_CODE_VALIDITY_TIMEOUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 825
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "phone"

    .line 826
    iget v2, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPhoneId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 827
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x2000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mAuthCodeValidityIntent:Landroid/app/PendingIntent;

    .line 830
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mContext:Landroid/content/Context;

    const-wide/16 v1, 0x3e8

    mul-long/2addr p1, v1

    invoke-static {p0, v0, p1, p2}, Lcom/sec/internal/helper/AlarmTimer;->start(Landroid/content/Context;Landroid/app/PendingIntent;J)V

    return-void
.end method

.method public setRefreshTokenValidityTimer(J)V
    .locals 4

    .line 781
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mRefreshTokenValidityIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 782
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPhoneId:I

    const-string/jumbo v2, "setRefreshTokenValidityTimer: RefreshTokenValidityTimer is already running. Stopping it."

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 783
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->cancelRefreshTokenValidityTimer()V

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_1

    .line 787
    invoke-virtual {p0}, Lcom/sec/internal/helper/StateMachine;->getCurrentState()Lcom/sec/internal/helper/IState;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mProvisioningState:Lcom/sec/internal/helper/State;

    if-eq p1, p2, :cond_2

    const/16 p1, 0xc

    .line 788
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    goto :goto_0

    :cond_1
    const-wide/32 v2, 0x15180

    sub-long/2addr p1, v2

    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    .line 791
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.imsservice.cmstore.mcs.action.REFRESH_TOKEN_VALIDITY_TIMEOUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 792
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "phone"

    .line 793
    iget v2, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPhoneId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 794
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x2000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mRefreshTokenValidityIntent:Landroid/app/PendingIntent;

    .line 796
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setRefreshTokenValidityTimer: start validity period timer ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " sec)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 797
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mRefreshTokenValidityIntent:Landroid/app/PendingIntent;

    const-wide/16 v1, 0x3e8

    mul-long/2addr p1, v1

    invoke-static {v0, p0, p1, p2}, Lcom/sec/internal/helper/AlarmTimer;->start(Landroid/content/Context;Landroid/app/PendingIntent;J)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setRegistrationCodeValidityTimer(J)V
    .locals 4

    .line 802
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mRegistrationCodeValidityIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 803
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPhoneId:I

    const-string/jumbo v2, "setRegistrationCodeValidityTimer: RegistrationCodeValidityTimer is already running. Stopping it."

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 804
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->cancelRegistrationCodeValidityTimer()V

    .line 806
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setRegistrationCodeValidityTimer: start validity period timer ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " sec)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 808
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.imsservice.cmstore.mcs.action.REGISTRATION_CODE_VALIDITY_TIMEOUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 809
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "phone"

    .line 810
    iget v2, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPhoneId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 811
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x2000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mRegistrationCodeValidityIntent:Landroid/app/PendingIntent;

    .line 814
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mContext:Landroid/content/Context;

    const-wide/16 v1, 0x3e8

    mul-long/2addr p1, v1

    invoke-static {p0, v0, p1, p2}, Lcom/sec/internal/helper/AlarmTimer;->start(Landroid/content/Context;Landroid/app/PendingIntent;J)V

    return-void
.end method

.method public startOtpTimer(J)V
    .locals 4

    .line 1057
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mOtpTimeoutIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 1058
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sec/internal/helper/AlarmTimer;->stop(Landroid/content/Context;Landroid/app/PendingIntent;)V

    .line 1059
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mOtpTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->cancel()V

    const/4 v0, 0x0

    .line 1060
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mOtpTimeoutIntent:Landroid/app/PendingIntent;

    .line 1062
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPhoneId:I

    const-string/jumbo v2, "startOtpTimer"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1063
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.imsservice.cmstore.mcs.action.OTP_RESPONSE_TIMEOUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1064
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "phone"

    .line 1065
    iget v2, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPhoneId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1066
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x2000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mOtpTimeoutIntent:Landroid/app/PendingIntent;

    .line 1068
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mContext:Landroid/content/Context;

    const-wide/16 v1, 0x3e8

    mul-long/2addr p1, v1

    invoke-static {p0, v0, p1, p2}, Lcom/sec/internal/helper/AlarmTimer;->start(Landroid/content/Context;Landroid/app/PendingIntent;J)V

    return-void
.end method

.method public startProvisioning(Ljava/lang/String;)V
    .locals 3

    .line 635
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPhoneId:I

    const-string/jumbo v2, "startProvisioning"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->infoLogAndAdd(Ljava/lang/String;ILjava/lang/String;)V

    .line 636
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->registerSmsReceiver()V

    .line 637
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mConsentContext:Ljava/lang/String;

    const/16 v0, 0xa

    .line 638
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public translateRequestCommand(Ljava/lang/String;)I
    .locals 3

    .line 1243
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const/16 v0, 0xb

    const/4 v1, 0x0

    const/4 v2, -0x1

    sparse-switch p0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string p0, "RequestOtpSms"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    move v2, v0

    goto/16 :goto_0

    :sswitch_1
    const-string p0, "RequestGetListOfSD"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v2, 0xa

    goto/16 :goto_0

    :sswitch_2
    const-string p0, "RequestGetSD"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v2, 0x9

    goto/16 :goto_0

    :sswitch_3
    const-string p0, "RequestGetUser"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v2, 0x8

    goto/16 :goto_0

    :sswitch_4
    const-string p0, "RequestRemoveSd"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x7

    goto :goto_0

    :sswitch_5
    const-string p0, "RequestUpdateAccount"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_6
    const-string p0, "RequestGetAccount"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_7
    const-string p0, "RequestApproveSd"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_8
    const-string p0, "RequestMCSToken"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_9
    const-string p0, "RequestUserAuthentication"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_a
    const-string p0, "RequestUserRegistration"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_b
    const-string p0, "RequestDeleteAccount"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto :goto_0

    :cond_b
    move v2, v1

    :goto_0
    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    const/16 p0, 0x13

    return p0

    :pswitch_1
    const/16 p0, 0x11

    return p0

    :pswitch_2
    const/16 p0, 0x12

    return p0

    :pswitch_3
    return v0

    :pswitch_4
    const/16 p0, 0x10

    return p0

    :pswitch_5
    const/16 p0, 0x16

    return p0

    :pswitch_6
    const/16 p0, 0x15

    return p0

    :pswitch_7
    const/16 p0, 0xf

    return p0

    :pswitch_8
    const/16 p0, 0xe

    return p0

    :pswitch_9
    const/16 p0, 0xc

    return p0

    :pswitch_a
    const/16 p0, 0xd

    return p0

    :pswitch_b
    const/16 p0, 0x17

    return p0

    :sswitch_data_0
    .sparse-switch
        -0x760eb82d -> :sswitch_b
        -0x6efd1f4d -> :sswitch_a
        -0x68b73c0e -> :sswitch_9
        0x47bb1eb -> :sswitch_8
        0xba550cf -> :sswitch_7
        0x2dbf2dc6 -> :sswitch_6
        0x3cfb76f5 -> :sswitch_5
        0x40530184 -> :sswitch_4
        0x512a96d2 -> :sswitch_3
        0x5620cef8 -> :sswitch_2
        0x59bb73ad -> :sswitch_1
        0x7c71697d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
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

.method public translateRequestToNotify(I)I
    .locals 0

    .line 0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    :pswitch_1
    const/4 p0, 0x2

    return p0

    :pswitch_2
    const/4 p0, 0x7

    return p0

    :pswitch_3
    const/4 p0, 0x5

    return p0

    :pswitch_4
    const/4 p0, 0x6

    return p0

    :pswitch_5
    const/4 p0, 0x4

    return p0

    :pswitch_6
    const/4 p0, 0x3

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected unregisterSmsReceiver()V
    .locals 3

    .line 989
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mSmsReceiver:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$SmsReceiver;

    if-eqz v0, :cond_0

    .line 990
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPhoneId:I

    const-string/jumbo v2, "unregister mSmsReceiver"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 991
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mSmsReceiver:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$SmsReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 992
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mSmsReceiver:Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs$SmsReceiver;

    :cond_0
    return-void
.end method

.method public updateAccountInfo(Ljava/lang/String;)V
    .locals 3

    .line 660
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPhoneId:I

    const-string/jumbo v2, "updateAccountInfo consent"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 661
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mConsentContext:Ljava/lang/String;

    .line 662
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "is_changed_consent"

    const/4 v2, 0x1

    .line 663
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "consent_context"

    .line 664
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x16

    .line 665
    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method protected updateMcsAlias(Z)V
    .locals 8

    .line 700
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPreferenceManager:Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->getMcsAlias()Ljava/lang/String;

    move-result-object v0

    .line 702
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mAliasUri:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 704
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 705
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 706
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->LOG_TAG:Ljava/lang/String;

    iget v4, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPhoneId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateMcsAlias: mUserAlias "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 702
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0

    :cond_0
    move-object v2, v0

    :goto_1
    if-eqz v1, :cond_1

    .line 709
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    if-nez p1, :cond_2

    .line 710
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 711
    :cond_2
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->LOG_TAG:Ljava/lang/String;

    iget v0, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPhoneId:I

    const-string/jumbo v1, "updateMcsAlias: RCS user alias is changed, update Mcs Alias"

    invoke-static {p1, v0, v1}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->infoLogAndAdd(Ljava/lang/String;ILjava/lang/String;)V

    .line 712
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->mPreferenceManager:Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;

    invoke-virtual {p1, v2}, Lcom/sec/internal/ims/cmstore/utils/CloudMessagePreferenceManager;->saveMcsAlias(Ljava/lang/String;)V

    .line 713
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/cmstore/mcs/provision/workflow/WorkflowMcs;->notifyMcsAlias(Ljava/lang/String;)V

    :cond_3
    return-void
.end method
