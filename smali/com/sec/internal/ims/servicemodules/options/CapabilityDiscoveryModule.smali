.class public Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;
.super Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;
.source "CapabilityDiscoveryModule.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$SimEventListener;,
        Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$TelephonyCallbackForCapability;
    }
.end annotation


# static fields
.field private static final CONTACT_CHANGED_DELAY:I = 0x1f4

.field private static final EVT_EXCHANGE_CAPABILITIES_FOR_VSH_DELAY:I = 0x1f4

.field private static final LAST_SEEN_ACTIVE:J = 0x0L

.field private static final LAST_SEEN_UNKNOWN:J = -0x1L

.field private static final LOG_TAG:Ljava/lang/String; = "CapabilityDiscModule"

.field private static final NAME:Ljava/lang/String;

.field private static final SET_OWN_CAPABILITIES_DELAY:I = 0x1f4

.field private static final SET_OWN_CAPABILITIES_DELAY_ON_REG:I = 0x64


# instance fields
.field private forcePollingGuard:Lcom/sec/internal/helper/PhoneIdKeyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/helper/PhoneIdKeyMap<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field isOfflineAddedContact:Lcom/sec/internal/helper/PhoneIdKeyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/helper/PhoneIdKeyMap<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mActiveCallRemoteUri:Lcom/sec/ims/util/ImsUri;

.field private mAvailablePhoneId:I

.field protected mBackgroundHandler:Landroid/os/Handler;

.field protected mCallNumber:[Ljava/lang/String;

.field final mCapabilitiesMapList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;",
            ">;"
        }
    .end annotation
.end field

.field mCapabilityEventListener:Lcom/sec/internal/ims/servicemodules/options/CapabilityEventListener;

.field protected mCapabilityExchange:Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;

.field protected mCapabilityForIncall:Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;

.field protected mCapabilityModuleOn:Z

.field protected mCapabilityQuery:Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;

.field protected mCapabilityRegistration:Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;

.field mCapabilityServiceEventListener:Lcom/sec/internal/ims/servicemodules/options/CapabilityServiceEventListener;

.field protected mCapabilityUpdate:Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;

.field protected mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

.field protected mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/helper/PhoneIdKeyMap<",
            "Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;",
            ">;"
        }
    .end annotation
.end field

.field mContactList:Lcom/sec/internal/ims/servicemodules/options/ContactCache;

.field private final mContactListener:Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactEventListener;

.field mContext:Landroid/content/Context;

.field mControl:Lcom/sec/internal/helper/PhoneIdKeyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/helper/PhoneIdKeyMap<",
            "Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl;",
            ">;"
        }
    .end annotation
.end field

.field private mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field private mHasVideoOwn:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

.field protected mImsRegInfoList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/ims/ImsRegistration;",
            ">;"
        }
    .end annotation
.end field

.field protected mInitialQuery:Lcom/sec/internal/helper/PhoneIdKeyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/helper/PhoneIdKeyMap<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mIsConfigured:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mIsConfiguredOnCapability:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mIsInCall:Z

.field private mLastCapExResult:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;",
            ">;"
        }
    .end annotation
.end field

.field protected mLastListSubscribeStamp:Lcom/sec/internal/helper/PhoneIdKeyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/helper/PhoneIdKeyMap<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mLastPollTimestamp:Lcom/sec/internal/helper/PhoneIdKeyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/helper/PhoneIdKeyMap<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkClass:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkEvent:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/constants/ims/os/NetworkEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkType:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mOldFeature:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mOptionsCallbacks:Lcom/sec/internal/helper/PhoneIdKeyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/helper/PhoneIdKeyMap<",
            "Ljava/util/HashMap<",
            "Lcom/sec/ims/util/ImsUri;",
            "Ljava/util/List<",
            "Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$OptionsResponseCallback;",
            ">;>;>;"
        }
    .end annotation
.end field

.field mOptionsModule:Lcom/sec/internal/ims/servicemodules/options/OptionsModule;

.field protected mOptionsSwitchOnList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mOwnList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/ims/options/Capabilities;",
            ">;"
        }
    .end annotation
.end field

.field protected mPartialPollingIntent:Lcom/sec/internal/helper/PhoneIdKeyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/helper/PhoneIdKeyMap<",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field protected mPollingHistory:Lcom/sec/internal/helper/PhoneIdKeyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/helper/PhoneIdKeyMap<",
            "Ljava/util/List<",
            "Ljava/util/Date;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mPollingIntent:Lcom/sec/internal/helper/PhoneIdKeyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/helper/PhoneIdKeyMap<",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field mPresenceModule:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

.field protected mPresenceSwitchOnList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected mPublishedServiceList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRcsProfile:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

.field protected mRetrySyncContactCount:I

.field private final mServiceAvailabilityEventListenerWrapper:Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerWrapper;

.field mServiceTupleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/ims/presence/ServiceTuple;",
            ">;"
        }
    .end annotation
.end field

.field protected mSimEventListener:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$SimEventListener;

.field protected mTelephonyCallback:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$TelephonyCallbackForCapability;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field protected mThrottledIntent:Lcom/sec/internal/helper/PhoneIdKeyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/helper/PhoneIdKeyMap<",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field private mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

.field mUrisToRequestList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;>;"
        }
    .end annotation
.end field

.field private mUserLastActive:Lcom/sec/internal/helper/PhoneIdKeyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/helper/PhoneIdKeyMap<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$1oD7p3P7bp1CnyGaJkfhW26SMa0(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->lambda$processStop$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$BnfEc-1Uc4abp3TI5nXjIdl4hUY(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->lambda$processConfigured$1(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Fx25x4HZ9SRkk0OQb_NLyOmS5E8(Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;)Lcom/sec/ims/options/Capabilities;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->lambda$checkSenderCapability$5(Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;)Lcom/sec/ims/options/Capabilities;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$JFxXn972oIzLQRsT6EfL9D8yOk4(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->lambda$notifyOwnCapabilitiesChanged$3(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$S_4xpyJX-0A3QZTYhIwiCSDTW64(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$nG3SgZ-vk5UtDxPfhELNNp9KjGE(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;ILjava/util/List;Lcom/sec/ims/options/Capabilities;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->lambda$notifyCapabilitiesChanged$4(ILjava/util/List;Lcom/sec/ims/options/Capabilities;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmAvailablePhoneId(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mAvailablePhoneId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsInCall(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mIsInCall:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmOwnList(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;)Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mOwnList:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmAvailablePhoneId(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mAvailablePhoneId:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsInCall(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mIsInCall:Z

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 114
    const-class v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/options/OptionsModule;Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;)V
    .locals 9

    .line 202
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;-><init>(Landroid/os/Looper;)V

    .line 129
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mOwnList:Ljava/util/Map;

    .line 130
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mRcsProfile:Ljava/util/Map;

    .line 135
    new-instance p1, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContactListener:Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactEventListener;

    .line 149
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilitiesMapList:Ljava/util/Map;

    .line 152
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mUrisToRequestList:Ljava/util/Map;

    .line 157
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mOptionsSwitchOnList:Ljava/util/Map;

    .line 158
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mPresenceSwitchOnList:Ljava/util/Map;

    const/4 p1, 0x1

    .line 159
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityModuleOn:Z

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mServiceTupleList:Ljava/util/List;

    const/4 v0, 0x0

    .line 163
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mSimEventListener:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$SimEventListener;

    .line 167
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mImsRegInfoList:Ljava/util/Map;

    .line 168
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mPublishedServiceList:Ljava/util/Map;

    .line 169
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    .line 178
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mHasVideoOwn:Ljava/util/Map;

    const/4 v1, 0x0

    .line 221
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 181
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mIsInCall:Z

    .line 182
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mIsConfigured:Ljava/util/Map;

    .line 183
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mIsConfiguredOnCapability:Ljava/util/Map;

    .line 184
    filled-new-array {v0, v0}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCallNumber:[Ljava/lang/String;

    .line 185
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mLastCapExResult:Ljava/util/Map;

    .line 186
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mBackgroundHandler:Landroid/os/Handler;

    .line 187
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mActiveCallRemoteUri:Lcom/sec/ims/util/ImsUri;

    .line 188
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mNetworkEvent:Ljava/util/Map;

    .line 189
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mNetworkClass:Ljava/util/Map;

    .line 190
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mNetworkType:Ljava/util/Map;

    .line 191
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mAvailablePhoneId:I

    .line 195
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mOldFeature:Ljava/util/Map;

    .line 198
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mRetrySyncContactCount:I

    .line 204
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContext:Landroid/content/Context;

    .line 205
    iput-object p5, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    .line 206
    new-instance v3, Lcom/sec/internal/helper/SimpleEventLog;

    const/16 v4, 0x3e8

    const-string v5, "CapabilityDiscModule"

    invoke-direct {v3, p2, v5, v4}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 208
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result p2

    move v3, v1

    :goto_0
    if-ge v3, p2, :cond_0

    .line 210
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mUrisToRequestList:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mOptionsSwitchOnList:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mPresenceSwitchOnList:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mOwnList:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Lcom/sec/ims/options/Capabilities;

    invoke-direct {v7}, Lcom/sec/ims/options/Capabilities;-><init>()V

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mRcsProfile:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, ""

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mHasVideoOwn:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mIsConfigured:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mIsConfiguredOnCapability:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mLastCapExResult:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mOldFeature:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget v7, Lcom/sec/ims/options/Capabilities;->FEATURE_NOT_UPDATED:I

    int-to-long v7, v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mNetworkEvent:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mNetworkClass:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mNetworkType:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 225
    :cond_0
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->initContactCache(I)V

    .line 227
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mOptionsModule:Lcom/sec/internal/ims/servicemodules/options/OptionsModule;

    .line 228
    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mPresenceModule:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    .line 230
    new-instance p3, Lcom/sec/internal/ims/servicemodules/options/CapabilityEventListener;

    iget-object p4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContext:Landroid/content/Context;

    invoke-direct {p3, p0, p4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityEventListener;-><init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;Landroid/content/Context;)V

    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityEventListener:Lcom/sec/internal/ims/servicemodules/options/CapabilityEventListener;

    .line 231
    new-instance p3, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerWrapper;

    invoke-direct {p3, p0}, Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerWrapper;-><init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;)V

    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mServiceAvailabilityEventListenerWrapper:Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerWrapper;

    .line 232
    new-instance p3, Lcom/sec/internal/ims/servicemodules/options/CapabilityServiceEventListener;

    invoke-direct {p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityServiceEventListener;-><init>()V

    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityServiceEventListener:Lcom/sec/internal/ims/servicemodules/options/CapabilityServiceEventListener;

    .line 236
    iput-object p6, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    .line 237
    invoke-static {}, Lcom/sec/internal/log/IMSLog;->isShipBuild()Z

    move-result p3

    const-string p4, "Shall not happen! Wrong order of modules instantiation in ServiceModuleManager"

    if-eqz p3, :cond_1

    .line 238
    iget-object p3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    if-nez p3, :cond_3

    .line 239
    invoke-static {v5, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 242
    :cond_1
    iget-object p3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    if-eqz p3, :cond_2

    move v1, p1

    :cond_2
    invoke-static {v1, p4}, Lcom/sec/internal/helper/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 246
    :cond_3
    :goto_1
    new-instance p3, Lcom/sec/internal/ims/servicemodules/options/CapabilityIntentReceiver;

    invoke-direct {p3, p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityIntentReceiver;-><init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;)V

    .line 247
    iget-object p4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityIntentReceiver;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p6

    invoke-virtual {p4, p3, p6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 249
    new-instance p3, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$TelephonyCallbackForCapability;

    invoke-direct {p3, p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$TelephonyCallbackForCapability;-><init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;)V

    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mTelephonyCallback:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$TelephonyCallbackForCapability;

    .line 250
    iget-object p3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContext:Landroid/content/Context;

    const-string/jumbo p4, "phone"

    invoke-virtual {p3, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/telephony/TelephonyManager;

    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 252
    iget-object p3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    if-nez p3, :cond_4

    .line 253
    invoke-static {}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->getInstance()Lcom/sec/internal/ims/util/UriGeneratorFactory;

    move-result-object p3

    sget-object p4, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->RCS_URI:Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    invoke-virtual {p3, p4}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->get(Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object p3

    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    .line 254
    iget-object p4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContactList:Lcom/sec/internal/ims/servicemodules/options/ContactCache;

    invoke-virtual {p4, p3}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->setUriGenerator(Lcom/sec/internal/ims/util/UriGenerator;)V

    :cond_4
    if-le p2, p1, :cond_5

    const/16 p1, 0xf

    .line 258
    invoke-static {p0, p1, v0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->registerForADSChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 261
    :cond_5
    new-instance p1, Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-direct {p1, p2, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 262
    new-instance p1, Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-direct {p1, p2, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mControl:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 263
    new-instance p1, Lcom/sec/internal/helper/PhoneIdKeyMap;

    const-wide/16 p3, -0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p6

    invoke-direct {p1, p2, p6}, Lcom/sec/internal/helper/PhoneIdKeyMap;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mUserLastActive:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 264
    new-instance p1, Lcom/sec/internal/helper/PhoneIdKeyMap;

    sget-object p6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p1, p2, p6}, Lcom/sec/internal/helper/PhoneIdKeyMap;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mInitialQuery:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 265
    new-instance p1, Lcom/sec/internal/helper/PhoneIdKeyMap;

    new-instance p6, Ljava/util/ArrayList;

    invoke-direct {p6}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p1, p2, p6}, Lcom/sec/internal/helper/PhoneIdKeyMap;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mPollingHistory:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 266
    new-instance p1, Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p6

    invoke-direct {p1, p2, p6}, Lcom/sec/internal/helper/PhoneIdKeyMap;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mLastPollTimestamp:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 267
    new-instance p1, Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/sec/internal/helper/PhoneIdKeyMap;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mLastListSubscribeStamp:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 268
    new-instance p1, Lcom/sec/internal/helper/PhoneIdKeyMap;

    sget-object p3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, p2, p3}, Lcom/sec/internal/helper/PhoneIdKeyMap;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->isOfflineAddedContact:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 269
    new-instance p1, Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-direct {p1, p2, p3}, Lcom/sec/internal/helper/PhoneIdKeyMap;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->forcePollingGuard:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 270
    new-instance p1, Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-direct {p1, p2, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mPollingIntent:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 271
    new-instance p1, Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-direct {p1, p2, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mThrottledIntent:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 272
    new-instance p1, Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-direct {p1, p2, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mOptionsCallbacks:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 273
    new-instance p1, Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-direct {p1, p2, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mPartialPollingIntent:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 275
    new-instance p1, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-direct {p1, p0, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;-><init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;Lcom/sec/internal/helper/SimpleEventLog;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    .line 276
    new-instance p1, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    invoke-direct {p1, p0, p2, p5}, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;-><init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityForIncall:Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;

    .line 277
    new-instance p1, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    iget-object p3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-direct {p1, p0, p2, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;-><init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;Lcom/sec/internal/helper/SimpleEventLog;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityExchange:Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;

    .line 278
    new-instance p2, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;

    iget-object p3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    invoke-direct {p2, p0, p3, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;-><init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;)V

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityQuery:Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;

    .line 279
    new-instance p1, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    iget-object p3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-direct {p1, p0, p2, p5, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;-><init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/helper/SimpleEventLog;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityUpdate:Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;

    .line 280
    new-instance p1, Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    invoke-direct {p1, p0, p2, p5}, Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;-><init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityRegistration:Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;

    const-string p0, "created"

    .line 281
    invoke-static {v5, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;)I
    .locals 0

    .line 113
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mActiveDataPhoneId:I

    return p0
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;)I
    .locals 0

    .line 113
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mActiveDataPhoneId:I

    return p0
.end method

.method static synthetic access$200(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;)I
    .locals 0

    .line 113
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mActiveDataPhoneId:I

    return p0
.end method

.method static synthetic access$300(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;)I
    .locals 0

    .line 113
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mActiveDataPhoneId:I

    return p0
.end method

.method static synthetic access$400(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;)I
    .locals 0

    .line 113
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mActiveDataPhoneId:I

    return p0
.end method

.method static synthetic access$500(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;)I
    .locals 0

    .line 113
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mActiveDataPhoneId:I

    return p0
.end method

.method private initContactCache(I)V
    .locals 6

    .line 1463
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilitiesMapList:Ljava/util/Map;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 1465
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilitiesMapList:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;-><init>(Landroid/content/Context;I)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1467
    :cond_0
    new-instance p1, Lcom/sec/internal/ims/servicemodules/options/ContactCache;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilitiesMapList:Ljava/util/Map;

    invoke-direct {p1, v1, v2}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;-><init>(Landroid/content/Context;Ljava/util/Map;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContactList:Lcom/sec/internal/ims/servicemodules/options/ContactCache;

    .line 1468
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private isCapConfigAvailable(I)Z
    .locals 2

    .line 920
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->isImsSingleRegiRequired(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->checkModuleReady(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContext:Landroid/content/Context;

    .line 921
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->isCheckRcsSwitch(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 922
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isCapConfigAvailable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CapabilityDiscModule"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return p0
.end method

.method private static synthetic lambda$checkSenderCapability$5(Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;)Lcom/sec/ims/options/Capabilities;
    .locals 0

    .line 1511
    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->get(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/options/Capabilities;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$new$0()V
    .locals 3

    const/4 v0, 0x2

    .line 137
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 138
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private synthetic lambda$notifyCapabilitiesChanged$4(ILjava/util/List;Lcom/sec/ims/options/Capabilities;)V
    .locals 2

    const-string v0, "CapabilityDiscModule"

    const-string v1, "notifyCapabilitiesChanged:"

    .line 1093
    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1094
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCallNumber:[Ljava/lang/String;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    .line 1095
    invoke-static {v0}, Lcom/sec/internal/helper/UriUtil;->parseNumber(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mActiveCallRemoteUri:Lcom/sec/ims/util/ImsUri;

    .line 1097
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityServiceEventListener:Lcom/sec/internal/ims/servicemodules/options/CapabilityServiceEventListener;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mActiveCallRemoteUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v0, p2, p3, p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityServiceEventListener;->notifyCapabilitiesChanged(Ljava/util/List;Lcom/sec/ims/options/Capabilities;Lcom/sec/ims/util/ImsUri;I)V

    return-void
.end method

.method private synthetic lambda$notifyOwnCapabilitiesChanged$3(I)V
    .locals 2

    const-string v0, "CapabilityDiscModule"

    const-string v1, "notifyOwnCapabilitiesChanged:"

    .line 1086
    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1087
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityServiceEventListener:Lcom/sec/internal/ims/servicemodules/options/CapabilityServiceEventListener;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityServiceEventListener;->notifyOwnCapabilitiesChanged(I)V

    return-void
.end method

.method private synthetic lambda$processConfigured$1(I)V
    .locals 5

    .line 325
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mAvailablePhoneId:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 326
    iput v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mAvailablePhoneId:I

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isRegAllowed(Landroid/content/Context;I)Z

    move-result v0

    const-string v1, "CapabilityDiscModule"

    if-nez v0, :cond_1

    const-string p0, "omit not data sim onConfigured!"

    .line 329
    invoke-static {v1, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 333
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    new-instance v3, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, p1, v3}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 334
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->loadConfig(I)V

    .line 336
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContactList:Lcom/sec/internal/ims/servicemodules/options/ContactCache;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->isReady(I)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->isDisableInitialScan()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "onConfigured: start ContactCache"

    .line 337
    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 338
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isRegAllowed(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "onConfigured: ignore to start ContactCache because of opposite sim"

    .line 339
    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 341
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->isCheckRcsSwitch(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 342
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->syncContact()V

    .line 347
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->usePresence()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 348
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mControl:Lcom/sec/internal/helper/PhoneIdKeyMap;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mPresenceModule:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 349
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mOwnList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/options/Capabilities;

    .line 350
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_PRESENCE_DISCOVERY:I

    int-to-long v3, v1

    invoke-virtual {v0, v3, v4}, Lcom/sec/ims/options/Capabilities;->addFeature(J)V

    .line 351
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mOwnList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 353
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mControl:Lcom/sec/internal/helper/PhoneIdKeyMap;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mOptionsModule:Lcom/sec/internal/ims/servicemodules/options/OptionsModule;

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 356
    :goto_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mRcsProfile:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v3, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v3, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->getRcsProfile()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_5
    const-string v3, ""

    :goto_2
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 358
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 361
    :goto_3
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->loadThirdPartyServiceTuples(I)V

    .line 362
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->onImsSettingsUpdate(I)V

    const/16 v0, 0x9

    const/4 v1, 0x0

    .line 363
    invoke-virtual {p0, v0, p1, v2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/16 v0, 0x34

    .line 364
    invoke-virtual {p0, v0, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private synthetic lambda$processStop$2()V
    .locals 5

    const-string v0, "CapabilityDiscModule"

    const-string/jumbo v1, "processStop"

    .line 489
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    move v1, v0

    .line 491
    :goto_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 492
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->stopPollingTimer(I)V

    .line 493
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->isCapabilityDiscoveryDisabled(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x0

    .line 495
    invoke-virtual {p0, v2, v3, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->savePollTimestamp(JI)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 499
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mImsRegInfoList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 500
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mPublishedServiceList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 502
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mOwnList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 503
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 504
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mOwnList:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/options/Capabilities;

    .line 505
    invoke-virtual {v3}, Lcom/sec/ims/options/Capabilities;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 506
    invoke-virtual {v3, v0}, Lcom/sec/ims/options/Capabilities;->setAvailiable(Z)V

    .line 507
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mOwnList:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->notifyOwnCapabilitiesChanged(I)V

    goto :goto_1

    .line 512
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContactList:Lcom/sec/internal/ims/servicemodules/options/ContactCache;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->stop()V

    .line 513
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContactList:Lcom/sec/internal/ims/servicemodules/options/ContactCache;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContactListener:Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactEventListener;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->unregisterListener(Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactEventListener;)V

    .line 515
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->deregisterSimCardEventListener()V

    .line 517
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mTelephonyCallback:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$TelephonyCallbackForCapability;

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V

    return-void
.end method

.method private loadCapabilityStorage()V
    .locals 4

    .line 1472
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilitiesMapList:Ljava/util/Map;

    monitor-enter v0

    .line 1473
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilitiesMapList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1474
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1475
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilitiesMapList:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->loadCapabilityStorage()V

    goto :goto_0

    .line 1477
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private notifyProvisionedValue(I)V
    .locals 4

    .line 927
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->isCapConfigAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "CapabilityDiscModule"

    const-string v1, "notify provisioned value"

    .line 930
    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 931
    invoke-static {}, Lcom/sec/internal/google/SecImsNotifier;->getInstance()Lcom/sec/internal/google/SecImsNotifier;

    move-result-object v0

    .line 932
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->getDefaultDisc()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const/16 v3, 0x11

    .line 931
    invoke-virtual {v0, p1, v3, v1}, Lcom/sec/internal/google/SecImsNotifier;->notifyProvisionedIntValueChanged(III)V

    .line 933
    invoke-static {}, Lcom/sec/internal/google/SecImsNotifier;->getInstance()Lcom/sec/internal/google/SecImsNotifier;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 934
    invoke-virtual {v1, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->getCapInfoExpiry()I

    move-result v1

    const/16 v3, 0x12

    .line 933
    invoke-virtual {v0, p1, v3, v1}, Lcom/sec/internal/google/SecImsNotifier;->notifyProvisionedIntValueChanged(III)V

    .line 935
    invoke-static {}, Lcom/sec/internal/google/SecImsNotifier;->getInstance()Lcom/sec/internal/google/SecImsNotifier;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 936
    invoke-virtual {v1, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->getServiceAvailabilityInfoExpiry()I

    move-result v1

    const/16 v3, 0x13

    .line 935
    invoke-virtual {v0, p1, v3, v1}, Lcom/sec/internal/google/SecImsNotifier;->notifyProvisionedIntValueChanged(III)V

    .line 937
    invoke-static {}, Lcom/sec/internal/google/SecImsNotifier;->getInstance()Lcom/sec/internal/google/SecImsNotifier;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 938
    invoke-virtual {v1, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->getPollingPeriod()I

    move-result v1

    const/16 v3, 0x14

    .line 937
    invoke-virtual {v0, p1, v3, v1}, Lcom/sec/internal/google/SecImsNotifier;->notifyProvisionedIntValueChanged(III)V

    .line 940
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_2

    invoke-static {p1}, Lcom/sec/internal/ims/util/ConfigUtil;->isJibeAs(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 941
    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->getDefaultDisc()I

    move-result v0

    if-eq v0, v2, :cond_2

    .line 942
    invoke-static {}, Lcom/sec/internal/google/SecImsNotifier;->getInstance()Lcom/sec/internal/google/SecImsNotifier;

    move-result-object v0

    .line 943
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContext:Landroid/content/Context;

    const-string v1, "omadm/./3GPP_IMS/EAB_SETTING"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, v1, v2, p1}, Lcom/sec/internal/helper/DmConfigHelper;->readBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;I)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    const/16 v1, 0x19

    .line 942
    invoke-virtual {v0, p1, v1, p0}, Lcom/sec/internal/google/SecImsNotifier;->notifyProvisionedIntValueChanged(III)V

    :cond_2
    return-void
.end method

.method private processStop()V
    .locals 1

    .line 488
    new-instance v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$$ExternalSyntheticLambda1;-><init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private saveUserLastActiveTimeStamp(JI)V
    .locals 2

    .line 1178
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "capdiscovery_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "CapabilityDiscModule"

    const-string/jumbo v1, "save last seen active"

    .line 1179
    invoke-static {v0, p3, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1180
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 1181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lastseenactive_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getImsiFromPhoneId(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1182
    invoke-interface {p0, p3, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1183
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method _syncContact(Lcom/sec/internal/constants/Mno;)V
    .locals 1

    .line 1202
    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "CapabilityDiscModule"

    const-string p1, "Chn syncContact Block."

    .line 1203
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1206
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityUpdate:Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;

    if-eqz p0, :cond_1

    .line 1207
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->_syncContact(Lcom/sec/internal/constants/Mno;)V

    :cond_1
    return-void
.end method

.method addFakeCapabilityInfo(Ljava/util/List;ZI)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;ZI)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 852
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addFakeCapabilityInfo: uri "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CapabilityDiscModule"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 855
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p1, "URIS"

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    if-eqz p2, :cond_1

    .line 857
    sget-wide p1, Lcom/sec/ims/options/Capabilities;->FEATURE_ALL:J

    goto :goto_0

    :cond_1
    sget p1, Lcom/sec/ims/options/Capabilities;->FEATURE_OFFLINE_RCS_USER:I

    int-to-long p1, p1

    :goto_0
    const-string v1, "FEATURES"

    .line 858
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p1, "PHONEID"

    .line 859
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 860
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 p2, -0x1

    const/4 p3, 0x4

    invoke-virtual {p0, p3, p1, p2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method addPollingHistory(Ljava/util/Date;I)V
    .locals 1

    .line 1564
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mPollingHistory:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1565
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1566
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mPollingHistory:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p2, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    return-void
.end method

.method adsChangedCheckRcsSwitch(I)Z
    .locals 3

    .line 812
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mActiveDataPhoneId:I

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    .line 813
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Current default phoneId = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mActiveDataPhoneId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CapabilityDiscModule"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 816
    :cond_0
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mActiveDataPhoneId:I

    .line 817
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mAvailablePhoneId:I

    const/4 v0, -0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    .line 818
    iput v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mAvailablePhoneId:I

    .line 820
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->isCheckRcsSwitch(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 821
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->stop()V

    return v2

    .line 824
    :cond_2
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->isReady()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->start()V

    :cond_3
    return v1
.end method

.method public changeParalysed(ZI)V
    .locals 0

    .line 875
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->changeParalysed(ZI)V

    return-void
.end method

.method public checkSenderCapability(Lcom/sec/ims/util/ImsUri;)Z
    .locals 2

    .line 1510
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilitiesCache()Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$$ExternalSyntheticLambda4;-><init>(Lcom/sec/ims/util/ImsUri;)V

    .line 1511
    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/ims/options/Capabilities;

    if-eqz p0, :cond_0

    .line 1512
    invoke-virtual {p0}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide p0

    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_NON_RCS_USER:I

    int-to-long v0, v0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public clearCapabilitiesCache(I)V
    .locals 3

    const-string v0, "CapabilityDiscModule"

    const-string v1, "clearCapabilitiesCache"

    .line 865
    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 866
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilitiesMapList:Ljava/util/Map;

    monitor-enter v0

    .line 867
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilitiesMapList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->clear()V

    .line 868
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v0, 0x0

    .line 869
    invoke-virtual {p0, v0, v1, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->savePollTimestamp(JI)V

    .line 870
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContactList:Lcom/sec/internal/ims/servicemodules/options/ContactCache;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->resetRefreshTime(I)V

    return-void

    :catchall_0
    move-exception p0

    .line 868
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method deRegisterService(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "CapabilityDiscModule"

    const-string v1, "deRegisterService: called for vzw api layer"

    .line 1240
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mControl:Lcom/sec/internal/helper/PhoneIdKeyMap;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mActiveDataPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mControl:Lcom/sec/internal/helper/PhoneIdKeyMap;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mActiveDataPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mPresenceModule:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    if-ne v0, v1, :cond_0

    .line 1243
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mControl:Lcom/sec/internal/helper/PhoneIdKeyMap;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mActiveDataPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mActiveDataPhoneId:I

    invoke-interface {v0, p1, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl;->deRegisterService(Ljava/util/List;I)V

    :cond_0
    return-void
.end method

.method deleteNonRcsDataFromContactDB(I)V
    .locals 2

    .line 1458
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "deleteNonRcsDataFromContactDB"

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1459
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilitiesCache(I)Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->deleteNonRcsDataFromContactDB()V

    return-void
.end method

.method deregisterSimCardEventListener()V
    .locals 3

    .line 1496
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mSimEventListener:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$SimEventListener;

    if-eqz v0, :cond_2

    .line 1497
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isDualRcsReg()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1498
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getAllSimManagers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 1499
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mSimEventListener:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$SimEventListener;

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->deRegisterSimCardEventListener(Lcom/sec/internal/interfaces/ims/core/ISimEventListener;)V

    goto :goto_0

    .line 1502
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    .line 1503
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mSimEventListener:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$SimEventListener;

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->deRegisterSimCardEventListener(Lcom/sec/internal/interfaces/ims/core/ISimEventListener;)V

    :cond_1
    const/4 v0, 0x0

    .line 1505
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mSimEventListener:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$SimEventListener;

    :cond_2
    return-void
.end method

.method protected disableFeature(JZ)V
    .locals 5

    .line 639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disableFeature: forced "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " feature "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lcom/sec/ims/options/Capabilities;->dumpFeature(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CapabilityDiscModule"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mOwnList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 642
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 643
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mOwnList:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/options/Capabilities;

    .line 644
    invoke-virtual {v2, p1, p2}, Lcom/sec/ims/options/Capabilities;->removeFeature(J)V

    .line 645
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mOwnList:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p3, :cond_0

    .line 647
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {p0, v3, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/4 v2, 0x0

    .line 648
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4, v2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public dump()V
    .locals 3

    .line 1261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dump of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CapabilityDiscModule"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 1262
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->increaseIndent(Ljava/lang/String;)V

    .line 1263
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContactList:Lcom/sec/internal/ims/servicemodules/options/ContactCache;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->dump()V

    .line 1264
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {v0}, Lcom/sec/internal/helper/SimpleEventLog;->dump()V

    .line 1265
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    if-eqz v2, :cond_0

    .line 1267
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1271
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilitiesCache()Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->dump()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1273
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1275
    :goto_1
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->decreaseIndent(Ljava/lang/String;)V

    return-void
.end method

.method enableFeature(JZ)V
    .locals 5

    .line 623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableFeature: forced "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " feature "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lcom/sec/ims/options/Capabilities;->dumpFeature(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CapabilityDiscModule"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mOwnList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 626
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 627
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mOwnList:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/options/Capabilities;

    .line 628
    invoke-virtual {v2, p1, p2}, Lcom/sec/ims/options/Capabilities;->addFeature(J)V

    .line 629
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mOwnList:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p3, :cond_0

    .line 631
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {p0, v3, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/4 v2, 0x0

    .line 632
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4, v2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public exchangeCapabilities(Ljava/lang/String;JILjava/lang/String;)V
    .locals 9

    .line 793
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityExchange:Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mImsRegInfoList:Ljava/util/Map;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCallNumber:[Ljava/lang/String;

    aget-object v8, p0, p4

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v8}, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->exchangeCapabilities(Ljava/util/Map;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public exchangeCapabilitiesForVSH(IZ)V
    .locals 1

    .line 798
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityForIncall:Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mImsRegInfoList:Ljava/util/Map;

    invoke-virtual {v0, p1, p2, p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->exchangeCapabilitiesForVSH(IZLjava/util/Map;)V

    return-void
.end method

.method public exchangeCapabilitiesForVSHOnRegi(ZI)V
    .locals 2

    const/4 v0, 0x0

    .line 1368
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/16 v1, 0xe

    invoke-virtual {p0, v1, p2, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method getActiveDataPhoneId()I
    .locals 0

    .line 1638
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mActiveDataPhoneId:I

    return p0
.end method

.method getAllCapabilities(I)[Lcom/sec/ims/options/Capabilities;
    .locals 0

    .line 951
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityQuery:Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->getAllCapabilities(I)[Lcom/sec/ims/options/Capabilities;

    move-result-object p0

    return-object p0
.end method

.method public getCapCacheExpiry(I)I
    .locals 2

    .line 893
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->isCapConfigAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->getCapCacheExpiry()J

    move-result-wide v0

    long-to-int p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 894
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCapCacheExpiry: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CapabilityDiscModule"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return p0
.end method

.method public getCapInfoExpiry(I)I
    .locals 2

    .line 900
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->isCapConfigAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->getCapInfoExpiry()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 901
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCapInfoExpiry: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CapabilityDiscModule"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return p0
.end method

.method public getCapPollInterval(I)I
    .locals 2

    .line 914
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->isCapConfigAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->getPollingPeriod()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 915
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCapPollInterval: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CapabilityDiscModule"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return p0
.end method

.method public getCapabilities(II)Lcom/sec/ims/options/Capabilities;
    .locals 0

    .line 658
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityQuery:Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->getCapabilities(II)Lcom/sec/ims/options/Capabilities;

    move-result-object p0

    return-object p0
.end method

.method public getCapabilities(Lcom/sec/ims/util/ImsUri;JI)Lcom/sec/ims/options/Capabilities;
    .locals 6

    .line 672
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityQuery:Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mRcsProfile:Ljava/util/Map;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Ljava/lang/String;

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->getCapabilities(Lcom/sec/ims/util/ImsUri;JILjava/lang/String;)Lcom/sec/ims/options/Capabilities;

    move-result-object p0

    return-object p0
.end method

.method public getCapabilities(Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/options/CapabilityRefreshType;I)Lcom/sec/ims/options/Capabilities;
    .locals 2

    .line 687
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityQuery:Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mRcsProfile:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->getCapabilities(Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/options/CapabilityRefreshType;ILjava/lang/String;)Lcom/sec/ims/options/Capabilities;

    move-result-object p0

    return-object p0
.end method

.method public getCapabilities(Ljava/lang/String;JI)Lcom/sec/ims/options/Capabilities;
    .locals 6

    .line 667
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityQuery:Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mRcsProfile:Ljava/util/Map;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Ljava/lang/String;

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->getCapabilities(Ljava/lang/String;JILjava/lang/String;)Lcom/sec/ims/options/Capabilities;

    move-result-object p0

    return-object p0
.end method

.method public getCapabilities(Ljava/lang/String;Lcom/sec/ims/options/CapabilityRefreshType;ZI)Lcom/sec/ims/options/Capabilities;
    .locals 6

    .line 662
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityQuery:Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mRcsProfile:Ljava/util/Map;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Ljava/lang/String;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->getCapabilities(Ljava/lang/String;Lcom/sec/ims/options/CapabilityRefreshType;ZILjava/lang/String;)Lcom/sec/ims/options/Capabilities;

    move-result-object p0

    return-object p0
.end method

.method public getCapabilities(Ljava/util/List;Lcom/sec/ims/options/CapabilityRefreshType;JI)[Lcom/sec/ims/options/Capabilities;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/ims/options/CapabilityRefreshType;",
            "JI)[",
            "Lcom/sec/ims/options/Capabilities;"
        }
    .end annotation

    .line 677
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityQuery:Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mRcsProfile:Ljava/util/Map;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->getCapabilities(Ljava/util/List;Lcom/sec/ims/options/CapabilityRefreshType;JILjava/lang/String;Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;)[Lcom/sec/ims/options/Capabilities;

    move-result-object p0

    return-object p0
.end method

.method public getCapabilities(Ljava/util/List;Lcom/sec/ims/options/CapabilityRefreshType;JILandroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;)[Lcom/sec/ims/options/Capabilities;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/ims/options/CapabilityRefreshType;",
            "JI",
            "Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;",
            ")[",
            "Lcom/sec/ims/options/Capabilities;"
        }
    .end annotation

    .line 682
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityQuery:Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mRcsProfile:Ljava/util/Map;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Ljava/lang/String;

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->getCapabilities(Ljava/util/List;Lcom/sec/ims/options/CapabilityRefreshType;JILjava/lang/String;Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;)[Lcom/sec/ims/options/Capabilities;

    move-result-object p0

    return-object p0
.end method

.method public getCapabilitiesByContactId(Ljava/lang/String;Lcom/sec/ims/options/CapabilityRefreshType;I)[Lcom/sec/ims/options/Capabilities;
    .locals 2

    .line 692
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityQuery:Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mRcsProfile:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->getCapabilitiesByContactId(Ljava/lang/String;Lcom/sec/ims/options/CapabilityRefreshType;ILjava/lang/String;)[Lcom/sec/ims/options/Capabilities;

    move-result-object p0

    return-object p0
.end method

.method public getCapabilitiesCache()Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;
    .locals 1

    .line 989
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mAvailablePhoneId:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilitiesCache(I)Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    move-result-object p0

    return-object p0
.end method

.method public getCapabilitiesCache(I)Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;
    .locals 1

    .line 994
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilitiesMapList:Ljava/util/Map;

    monitor-enter v0

    .line 995
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilitiesMapList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 996
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;
    .locals 0

    .line 1000
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    return-object p0
.end method

.method getCapabilityControl(I)Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl;
    .locals 0

    .line 1004
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mControl:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl;

    return-object p0
.end method

.method getForcePollingGuard(I)Z
    .locals 0

    .line 1606
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->forcePollingGuard:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method getImModule()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;
    .locals 0

    .line 1688
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 286
    sget-object p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->NAME:Ljava/lang/String;

    return-object p0
.end method

.method public getNetworkPreferredUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;
    .locals 0

    .line 880
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->getNetworkPreferredUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object p0

    return-object p0
.end method

.method getOptionsModule()Lcom/sec/internal/ims/servicemodules/options/OptionsModule;
    .locals 0

    .line 1602
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mOptionsModule:Lcom/sec/internal/ims/servicemodules/options/OptionsModule;

    return-object p0
.end method

.method public getOwnCapabilities()Lcom/sec/ims/options/Capabilities;
    .locals 1

    .line 961
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mActiveDataPhoneId:I

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getOwnCapabilities(I)Lcom/sec/ims/options/Capabilities;

    move-result-object p0

    return-object p0
.end method

.method public getOwnCapabilities(I)Lcom/sec/ims/options/Capabilities;
    .locals 9

    .line 965
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityQuery:Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mAvailablePhoneId:I

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mImsRegInfoList:Ljava/util/Map;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mNetworkType:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-boolean v6, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mIsInCall:Z

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCallNumber:[Ljava/lang/String;

    aget-object v7, v1, p1

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mOwnList:Ljava/util/Map;

    .line 966
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v8, p0

    check-cast v8, Lcom/sec/ims/options/Capabilities;

    move v1, p1

    .line 965
    invoke-virtual/range {v0 .. v8}, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->getOwnCapabilities(IILjava/util/Map;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;IZLjava/lang/String;Lcom/sec/ims/options/Capabilities;)Lcom/sec/ims/options/Capabilities;

    move-result-object p0

    return-object p0
.end method

.method public getOwnCapabilitiesBase(I)Lcom/sec/ims/options/Capabilities;
    .locals 2

    .line 956
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityQuery:Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mOwnList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/ims/options/Capabilities;

    invoke-virtual {v0, p1, p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityQuery;->getOwnCapabilitiesBase(ILcom/sec/ims/options/Capabilities;)Lcom/sec/ims/options/Capabilities;

    move-result-object p0

    return-object p0
.end method

.method getOwnList()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/ims/options/Capabilities;",
            ">;"
        }
    .end annotation

    .line 1578
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mOwnList:Ljava/util/Map;

    return-object p0
.end method

.method public getPhonebook()Lcom/sec/internal/ims/servicemodules/options/ContactCache;
    .locals 0

    .line 984
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContactList:Lcom/sec/internal/ims/servicemodules/options/ContactCache;

    return-object p0
.end method

.method getPollingIntent(I)Landroid/app/PendingIntent;
    .locals 0

    .line 1614
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mPollingIntent:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/PendingIntent;

    return-object p0
.end method

.method public getPresenceModule()Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;
    .locals 0

    .line 1016
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mPresenceModule:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    return-object p0
.end method

.method public getServiceAvailabilityInfoExpiry(I)I
    .locals 2

    .line 907
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->isCapConfigAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->getServiceAvailabilityInfoExpiry()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 908
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getServiceAvailabilityInfoExpiry: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CapabilityDiscModule"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return p0
.end method

.method public getServicesRequiring()[Ljava/lang/String;
    .locals 2

    const-string/jumbo p0, "presence"

    const-string v0, "lastseen"

    const-string/jumbo v1, "options"

    .line 291
    filled-new-array {v1, p0, v0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getThrottledIntent(I)Landroid/app/PendingIntent;
    .locals 0

    .line 1618
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mThrottledIntent:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/PendingIntent;

    return-object p0
.end method

.method public getUriGenerator()Lcom/sec/internal/ims/util/UriGenerator;
    .locals 0

    .line 1012
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    return-object p0
.end method

.method getUrisToRequest()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;>;"
        }
    .end annotation

    .line 1598
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mUrisToRequestList:Ljava/util/Map;

    return-object p0
.end method

.method getUserLastActive(I)J
    .locals 0

    .line 1646
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mUserLastActive:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method handleDelayedSetOwnCapabilities(I)V
    .locals 4

    const-string v0, "handleMessage: EVT_DELAYED_SET_OWN_CAPABILITIES"

    const-string v1, "CapabilityDiscModule"

    .line 1442
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mPresenceModule:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getRegiInfoUpdater(I)Z

    move-result v0

    const/16 v2, 0x35

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    const-string v0, "EVT_SET_OWN_CAPABILITIES : setting own capabilities"

    .line 1444
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1445
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1446
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1447
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v3, v3, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1448
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mPresenceModule:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    invoke-virtual {p0, p1, v3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->setRegiInfoUpdater(IZ)V

    goto :goto_0

    :cond_0
    const-string v0, "EVT_DELAYED_SET_OWN_CAPABILITIES : Delayed for a while"

    .line 1450
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1452
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v2, v3, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x64

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    return-void
.end method

.method public handleIntent(Landroid/content/Intent;)V
    .locals 0

    .line 0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 574
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->handleMessage(Landroid/os/Message;)V

    .line 575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: evt "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CapabilityDiscModule"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v2, 0xf

    if-eq v0, v2, :cond_0

    const-string p0, "CapabilityDiscoveryModule disabled."

    .line 578
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 582
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mServiceAvailabilityEventListenerWrapper:Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerWrapper;

    invoke-static {p1, p0, v0, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityEvent;->handleEvent(Landroid/os/Message;Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;Lcom/sec/internal/ims/servicemodules/options/ServiceAvailabilityEventListenerWrapper;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 583
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleMessage: unknown event "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public handleModuleChannelRequest(Landroid/os/Message;)V
    .locals 5

    .line 589
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1f41

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1f42

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 595
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, v4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->disableFeature(JZ)V

    .line 596
    invoke-virtual {p0, p1, v3, v2}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->sendModuleResponse(Landroid/os/Message;ILjava/lang/Object;)V

    goto :goto_0

    .line 591
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, v4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->enableFeature(JZ)V

    .line 592
    invoke-virtual {p0, p1, v3, v2}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->sendModuleResponse(Landroid/os/Message;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public hasVideoOwnCapability(I)Z
    .locals 0

    .line 980
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mHasVideoOwn:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public init()V
    .locals 4

    const-string v0, "CapabilityDiscModule"

    const-string v1, "init"

    .line 301
    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->init()V

    .line 304
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "BackgroundHandler"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 305
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 306
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mBackgroundHandler:Landroid/os/Handler;

    .line 308
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->loadCapabilityStorage()V

    .line 310
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->migrateSharedprefWithPhoneId(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 312
    :goto_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 313
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mLastPollTimestamp:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->loadPollTimestamp(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public isCapDiscEnabled(I)I
    .locals 2

    .line 885
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->isCapConfigAvailable(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->getDefaultDisc()I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v1, 0x1

    .line 887
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isCapDiscEnabled: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CapabilityDiscModule"

    invoke-static {v0, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v1
.end method

.method public isConfigured(I)Z
    .locals 0

    .line 1213
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mIsConfigured:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method isOwnInfoPublished()Z
    .locals 2

    .line 1217
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mPresenceModule:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->isOwnCapPublished()Z

    move-result p0

    .line 1218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isOwnInfoPublished: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CapabilityDiscModule"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method isPollingInProgress(I)Z
    .locals 1

    .line 1039
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityUpdate:Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mPollingHistory:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-virtual {v0, p1, p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->isPollingInProgress(ILjava/util/List;)Z

    move-result p0

    return p0
.end method

.method public isUceServiceAvailable(ILjava/lang/String;)Z
    .locals 4

    .line 1399
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->checkModuleReady(I)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "CapabilityDiscModule"

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->isCheckRcsSwitch(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1404
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "isUceServiceAvailable: regiInfo is null"

    .line 1406
    invoke-static {v2, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v1

    .line 1410
    :cond_1
    invoke-virtual {p0, p2}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const-string p0, "isUceServiceAvailable: not ready"

    .line 1400
    invoke-static {v2, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v1
.end method

.method loadConfig(I)V
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "CapabilityDiscModule"

    const-string v0, "Config not ready"

    .line 370
    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->load()V

    .line 374
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->notifyProvisionedValue(I)V

    return-void
.end method

.method loadPollTimestamp(I)J
    .locals 6

    .line 1135
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "capdiscovery_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "pollTimestamp"

    const-wide/16 v2, 0x0

    .line 1136
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1137
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 1138
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    .line 1139
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadPollTimestamp: abnormal case, clear lastPollTime "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " to 0"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CapabilityDiscModule"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1140
    invoke-virtual {p0, v2, v3, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->savePollTimestamp(JI)V

    return-wide v2

    :cond_0
    return-wide v0
.end method

.method loadThirdPartyServiceTuples(I)V
    .locals 2

    const-string v0, "CapabilityDiscModule"

    const-string v1, "loadThirdPartyServiceTuples"

    .line 1248
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mControl:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mControl:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mPresenceModule:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    if-ne p1, v0, :cond_0

    .line 1250
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mServiceTupleList:Ljava/util/List;

    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->loadThirdPartyServiceTuples(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method notifyCapabilitiesChanged(Ljava/util/List;Lcom/sec/ims/options/Capabilities;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/ims/options/Capabilities;",
            "I)V"
        }
    .end annotation

    .line 1092
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$$ExternalSyntheticLambda3;-><init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;ILjava/util/List;Lcom/sec/ims/options/Capabilities;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method notifyEABServiceAdvertiseResult(II)V
    .locals 2

    .line 1255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyEABServiceAdvertiseResult: error["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CapabilityDiscModule"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityServiceEventListener:Lcom/sec/internal/ims/servicemodules/options/CapabilityServiceEventListener;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityServiceEventListener;->notifyEABServiceAdvertiseResult(II)V

    return-void
.end method

.method notifyOptionsResponseToAOSP(Lcom/sec/ims/util/ImsUri;ILjava/lang/String;Ljava/util/List;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/ims/util/ImsUri;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "CapabilityDiscModule"

    .line 1525
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyOptionsResponseToAOSP: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " respCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " caps: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1526
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mOptionsCallbacks:Lcom/sec/internal/helper/PhoneIdKeyMap;

    monitor-enter v0

    .line 1527
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mOptionsCallbacks:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p5}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    if-eqz p0, :cond_1

    .line 1528
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_1

    .line 1529
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/util/List;

    const-string v1, "CapabilityDiscModule"

    .line 1530
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyOptionsResponseToAOSP: callbacks size"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 1531
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_0
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$OptionsResponseCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1533
    :try_start_1
    invoke-interface {v1, p2, p3, p4}, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$OptionsResponseCallback;->onNetworkResponse(ILjava/lang/String;Ljava/util/List;)V
    :try_end_1
    .catch Landroid/telephony/ims/ImsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "CapabilityDiscModule"

    .line 1535
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ImsException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1538
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1540
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method notifyOwnCapabilitiesChanged(I)V
    .locals 2

    .line 1085
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$$ExternalSyntheticLambda2;-><init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method onAdsChanged()V
    .locals 3

    .line 802
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    .line 803
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->adsChangedCheckRcsSwitch(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 804
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isDualIMS()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isRegAllowed(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "CapabilityDiscModule"

    const-string v2, "onAdsChanged: trigger syncContact"

    .line 805
    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 806
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->syncContact()V

    :cond_0
    return-void
.end method

.method onBootCompleted()V
    .locals 2

    .line 1414
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->isPhoneLockState(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "CapabilityDiscModule"

    if-eqz v0, :cond_0

    const-string p0, "onBootCompleted : not required sync contact"

    .line 1415
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1418
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1419
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "Chn syncContact Block."

    .line 1420
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v0, "onBootCompleted: try sync contact"

    .line 1423
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1424
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mRetrySyncContactCount:I

    const/16 v0, 0xd

    .line 1425
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onCallStateChanged(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/imsservice/ICall;",
            ">;)V"
        }
    .end annotation

    .line 551
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mImsRegInfoList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityForIncall:Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mImsRegInfoList:Ljava/util/Map;

    invoke-virtual {v0, p1, v1, p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->processCallStateChanged(ILjava/util/concurrent/CopyOnWriteArrayList;Ljava/util/Map;)V

    goto :goto_0

    .line 554
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityForIncall:Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->processCallStateChangedOnDeregi(ILjava/util/concurrent/CopyOnWriteArrayList;)V

    :goto_0
    return-void
.end method

.method public onConfigured(I)V
    .locals 2

    const-string v0, "CapabilityDiscModule"

    const-string v1, "onConfigured"

    .line 319
    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 320
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->processConfigured(I)V

    return-void
.end method

.method onContactChanged(Z)V
    .locals 6

    .line 1020
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityUpdate:Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mAvailablePhoneId:I

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->isOfflineAddedContact:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mLastListSubscribeStamp:Lcom/sec/internal/helper/PhoneIdKeyMap;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mAvailablePhoneId:I

    .line 1021
    invoke-virtual {v1, p0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move v1, p1

    .line 1020
    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->onContactChanged(ZIZJ)V

    return-void
.end method

.method public onDefaultSmsPackageChanged()V
    .locals 3

    const-string v0, "CapabilityDiscModule"

    const-string v1, "onDefaultSmsPackageChanged"

    .line 1429
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1430
    :goto_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1431
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mControl:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mPresenceModule:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    if-ne v1, v2, :cond_0

    const/16 v1, 0x13

    .line 1432
    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onDeregistered(Lcom/sec/ims/ImsRegistration;I)V
    .locals 0

    .line 523
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onDeregistered(Lcom/sec/ims/ImsRegistration;I)V

    .line 524
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityRegistration:Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mImsRegInfoList:Ljava/util/Map;

    invoke-virtual {p2, p1, p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;->onDeregistered(Lcom/sec/ims/ImsRegistration;Ljava/util/Map;)V

    return-void
.end method

.method public onDeregistering(Lcom/sec/ims/ImsRegistration;)V
    .locals 1

    .line 529
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onDeregistering(Lcom/sec/ims/ImsRegistration;)V

    .line 530
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityRegistration:Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mImsRegInfoList:Ljava/util/Map;

    invoke-virtual {v0, p1, p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;->onDeregistering(Lcom/sec/ims/ImsRegistration;Ljava/util/Map;)V

    return-void
.end method

.method public onImsConifgChanged(ILjava/lang/String;)V
    .locals 2

    .line 609
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onChange: config changed : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "CapabilityDiscModule"

    invoke-static {v0, p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 610
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x7

    invoke-virtual {p0, v0, p2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 611
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x258

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method onImsSettingsUpdate(I)V
    .locals 1

    .line 1187
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->onImsSettingsUpdate(Landroid/content/Context;I)V

    return-void
.end method

.method public onNetworkChanged(Lcom/sec/internal/constants/ims/os/NetworkEvent;I)V
    .locals 7

    .line 470
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mAvailablePhoneId:I

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mImsRegInfoList:Ljava/util/Map;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mNetworkEvent:Ljava/util/Map;

    .line 471
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-object v2, p1

    move v3, p2

    .line 470
    invoke-virtual/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->onNetworkChanged(Landroid/content/Context;Lcom/sec/internal/constants/ims/os/NetworkEvent;IILjava/util/Map;Lcom/sec/internal/constants/ims/os/NetworkEvent;)V

    return-void
.end method

.method onOwnCapabilitiesChanged(I)V
    .locals 0

    .line 563
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityUpdate:Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->onOwnCapabilitiesChanged(I)V

    return-void
.end method

.method public onPackageUpdated(Ljava/lang/String;)V
    .locals 0

    .line 461
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p0, "CapabilityDiscModule"

    const-string p1, "onPackageUpdated: invalid packageName"

    .line 462
    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/16 p1, 0x28

    .line 465
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onRegistered(Lcom/sec/ims/ImsRegistration;)V
    .locals 7

    .line 476
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onRegistered(Lcom/sec/ims/ImsRegistration;)V

    .line 477
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityRegistration:Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mImsRegInfoList:Ljava/util/Map;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mLastCapExResult:Ljava/util/Map;

    .line 478
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mOldFeature:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object v2, p1

    .line 477
    invoke-virtual/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/options/CapabilityRegistration;->onRegistered(Landroid/content/Context;Lcom/sec/ims/ImsRegistration;Ljava/util/Map;Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;J)V

    return-void
.end method

.method onRetrySyncContact()V
    .locals 1

    .line 1438
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityUpdate:Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mRetrySyncContactCount:I

    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->onRetrySyncContact(I)V

    return-void
.end method

.method public onServiceSwitched(ILandroid/content/ContentValues;)V
    .locals 6

    .line 296
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mPresenceSwitchOnList:Ljava/util/Map;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mOptionsSwitchOnList:Ljava/util/Map;

    iget-boolean v5, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityModuleOn:Z

    move v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->onServiceSwitched(ILandroid/content/ContentValues;Ljava/util/Map;Ljava/util/Map;Z)V

    return-void
.end method

.method public onSimChanged(I)V
    .locals 3

    const-string v0, "onSimChanged: clear cache and init poll timer"

    const-string v1, "CapabilityDiscModule"

    .line 535
    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 536
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->clearCapabilitiesCache(I)V

    .line 537
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mInitialQuery:Lcom/sec/internal/helper/PhoneIdKeyMap;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 539
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "onSimChanged: isRunning() is false."

    .line 540
    invoke-static {v1, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 544
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mControl:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mControl:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl;->isReadyToRequest(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    .line 545
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method

.method onUpdateCapabilities(Ljava/util/List;JLcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;Ljava/lang/String;ILjava/util/List;IZLjava/lang/String;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;J",
            "Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;IZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move/from16 v13, p8

    .line 1072
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityUpdate:Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCallNumber:[Ljava/lang/String;

    aget-object v12, v2, v13

    move-object v2, p1

    move-wide/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    invoke-virtual/range {v1 .. v12}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->onUpdateCapabilities(Ljava/util/List;JLcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;Ljava/lang/String;ILjava/util/List;IZLjava/lang/String;Ljava/lang/String;)V

    .line 1075
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_OFFLINE_RCS_USER:I

    int-to-long v1, v1

    cmp-long v1, p2, v1

    if-eqz v1, :cond_1

    .line 1076
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/util/ImsUri;

    .line 1077
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->getLatchingProcessor()Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;

    move-result-object v3

    invoke-virtual {v3, v2, v13}, Lcom/sec/internal/ims/servicemodules/im/ImLatchingProcessor;->removeUriFromLatchingList(Lcom/sec/ims/util/ImsUri;I)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    return-void
.end method

.method public poll(ZZI)V
    .locals 7

    .line 1061
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityExchange:Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mImsRegInfoList:Ljava/util/Map;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mPollingHistory:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p3}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Ljava/util/List;

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->poll(Landroid/content/Context;ZZILjava/util/Map;Ljava/util/List;)V

    return-void
.end method

.method prepareResponse(Ljava/util/List;JLjava/lang/String;ILjava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;J",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 974
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityUpdate:Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContext:Landroid/content/Context;

    iget-object v8, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mImsRegInfoList:Ljava/util/Map;

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mNetworkType:Ljava/util/Map;

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCallNumber:[Ljava/lang/String;

    aget-object v10, v0, p5

    move-object v0, v1

    move-object v1, v2

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    invoke-virtual/range {v0 .. v10}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->prepareResponse(Landroid/content/Context;Ljava/util/List;JLjava/lang/String;ILjava/lang/String;Ljava/util/Map;ILjava/lang/String;)V

    return-void
.end method

.method processConfigured(I)V
    .locals 1

    .line 324
    new-instance v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$$ExternalSyntheticLambda5;-><init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;I)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public publishCapabilities(Ljava/lang/String;Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$PublishResponseCallback;I)V
    .locals 6

    const-string/jumbo v0, "publishCapabilities"

    const-string v1, "CapabilityDiscModule"

    .line 696
    invoke-static {v1, p3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 699
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContext:Landroid/content/Context;

    invoke-static {v0, p3}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->isImsSingleRegiRequired(Landroid/content/Context;I)Z

    move-result v0

    const/16 v2, 0x9

    const/4 v3, -0x1

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContext:Landroid/content/Context;

    invoke-static {v0, p3}, Lcom/sec/internal/ims/util/ConfigUtil;->isGoogDmaPackageInuse(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 702
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    invoke-virtual {v0, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->checkModuleReady(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->isCheckRcsSwitch(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 705
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mImsRegInfoList:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "publishCapabilities: do not publish, already deregistered"

    .line 706
    invoke-static {v1, p3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_2

    .line 708
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mPublishedServiceList:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mPublishedServiceList:Ljava/util/Map;

    .line 709
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mImsRegInfoList:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v4}, Lcom/sec/ims/ImsRegistration;->getServices()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 710
    invoke-static {p3}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v4, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v0, v4, :cond_3

    invoke-static {p3}, Lcom/sec/internal/ims/util/ConfigUtil;->isJibeAs(I)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    sget-object v5, Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;->VOLTE:Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;

    .line 711
    invoke-interface {v4, p3, v5}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getImsProfile(ILcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-static {v0, v4, p3}, Lcom/sec/internal/ims/util/ImsUtil;->needForceRegiOrPublishForMmtelCallComposer(Landroid/content/Context;Lcom/sec/ims/settings/ImsProfile;I)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    const-string/jumbo v0, "publishCapabilities: do not publish, service list is same"

    .line 712
    invoke-static {v1, p3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0xa

    goto :goto_3

    :cond_4
    move v0, v3

    goto :goto_3

    :cond_5
    :goto_0
    const-string/jumbo v0, "publishCapabilities: do not publish, not ready"

    .line 703
    invoke-static {v1, p3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_2

    :cond_6
    :goto_1
    const-string/jumbo v0, "publishCapabilities: do not publish, single regi is not available"

    .line 700
    invoke-static {v1, p3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :goto_2
    move v0, v2

    :goto_3
    if-eq v0, v3, :cond_8

    if-ne v0, v2, :cond_7

    .line 719
    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->removePublishedServiceList(I)V

    .line 722
    :cond_7
    :try_start_0
    invoke-interface {p2, v0}, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$PublishResponseCallback;->onCommandError(I)V
    :try_end_0
    .catch Landroid/telephony/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    .line 724
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "publishCapabilities: failed: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/telephony/ims/ImsException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p3, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    :goto_4
    return-void

    .line 729
    :cond_8
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mImsRegInfoList:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 730
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mImsRegInfoList:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getServices()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->setPublishedServiceList(ILjava/util/Set;)V

    .line 732
    :cond_9
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mPresenceModule:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    invoke-virtual {v0, p3, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->addPublishResponseCallback(ILandroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$PublishResponseCallback;)V

    .line 733
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mPresenceModule:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    const/16 p2, 0xf

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p3, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method putCapabilityControlForOptionsModule(ILcom/sec/internal/ims/servicemodules/options/OptionsModule;)V
    .locals 0

    .line 1008
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mControl:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    return-void
.end method

.method putOwnList(ILcom/sec/ims/options/Capabilities;)V
    .locals 0

    .line 1582
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mOwnList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method putUrisToRequestList(ILjava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)V"
        }
    .end annotation

    .line 1594
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mUrisToRequestList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method putUserLastActive(IJ)V
    .locals 0

    .line 1650
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mUserLastActive:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public queryCapabilityStatus(I)Landroid/telephony/ims/feature/ImsFeature$Capabilities;
    .locals 2

    const-string v0, "CapabilityDiscModule"

    const-string/jumbo v1, "queryCapabilityStatus"

    .line 1384
    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1386
    new-instance v0, Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    invoke-direct {v0}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;-><init>()V

    const-string/jumbo v1, "options"

    .line 1388
    invoke-virtual {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->isUceServiceAvailable(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 1389
    invoke-virtual {v0, v1}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->addCapabilities(I)V

    :cond_0
    const-string/jumbo v1, "presence"

    .line 1391
    invoke-virtual {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->isUceServiceAvailable(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    .line 1392
    invoke-virtual {v0, p0}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->addCapabilities(I)V

    :cond_1
    return-object v0
.end method

.method public registerListener(Lcom/sec/ims/options/ICapabilityServiceEventListener;I)V
    .locals 0

    .line 615
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityServiceEventListener:Lcom/sec/internal/ims/servicemodules/options/CapabilityServiceEventListener;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityServiceEventListener;->registerListener(Lcom/sec/ims/options/ICapabilityServiceEventListener;I)V

    return-void
.end method

.method registerService(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "CapabilityDiscModule"

    const-string/jumbo v1, "registerService: called for vzw api layer"

    .line 1223
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mControl:Lcom/sec/internal/helper/PhoneIdKeyMap;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mActiveDataPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "CapabilityDiscModule"

    const-string/jumbo v1, "registerService: adding service tuple to list"

    .line 1226
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1227
    invoke-static {p1, p2, v0}, Lcom/sec/ims/presence/ServiceTuple;->getServiceTuple(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/sec/ims/presence/ServiceTuple;

    move-result-object p1

    .line 1228
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mServiceTupleList:Ljava/util/List;

    monitor-enter v0

    .line 1229
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mServiceTupleList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1230
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 1232
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mControl:Lcom/sec/internal/helper/PhoneIdKeyMap;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mActiveDataPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mPresenceModule:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    if-ne v0, v1, :cond_1

    const-string v0, "CapabilityDiscModule"

    const-string/jumbo v1, "registerService: calling presence module api"

    .line 1233
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mControl:Lcom/sec/internal/helper/PhoneIdKeyMap;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mActiveDataPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mActiveDataPhoneId:I

    invoke-interface {v0, p1, p2, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl;->registerService(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method registerSimCardEventListener()V
    .locals 3

    .line 1482
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mSimEventListener:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$SimEventListener;

    if-nez v0, :cond_1

    .line 1483
    new-instance v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$SimEventListener;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$SimEventListener;-><init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mSimEventListener:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$SimEventListener;

    .line 1484
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isDualRcsReg()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1485
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getAllSimManagers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 1486
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mSimEventListener:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$SimEventListener;

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->registerSimCardEventListener(Lcom/sec/internal/interfaces/ims/core/ISimEventListener;)V

    goto :goto_0

    .line 1489
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    .line 1490
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mSimEventListener:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$SimEventListener;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->registerSimCardEventListener(Lcom/sec/internal/interfaces/ims/core/ISimEventListener;)V

    :cond_1
    return-void
.end method

.method removeImsRegInfoList(I)V
    .locals 0

    .line 1654
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mImsRegInfoList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removePublishedServiceList(I)V
    .locals 2

    const-string v0, "CapabilityDiscModule"

    const-string/jumbo v1, "removePublishedServiceList"

    .line 1678
    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1679
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mPublishedServiceList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public requestCapabilityExchange(Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;II)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;",
            "II)I"
        }
    .end annotation

    .line 1025
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityExchange:Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->requestCapabilityExchange(Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;II)I

    move-result p0

    return p0
.end method

.method public requestCapabilityExchange(Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;ZII)Z
    .locals 11

    move-object v0, p0

    .line 1029
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityExchange:Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mOwnList:Ljava/util/Map;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/sec/ims/options/Capabilities;

    iget-object v6, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v7, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mImsRegInfoList:Ljava/util/Map;

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCallNumber:[Ljava/lang/String;

    aget-object v8, v2, p4

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mNetworkType:Ljava/util/Map;

    .line 1030
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move-object v0, v1

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move/from16 v10, p5

    .line 1029
    invoke-virtual/range {v0 .. v10}, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->requestCapabilityExchange(Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;ZILcom/sec/ims/options/Capabilities;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Ljava/util/Map;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method requestInitialCapabilitiesQuery(I)V
    .locals 4

    .line 1047
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityExchange:Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mInitialQuery:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mLastPollTimestamp:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->requestInitialCapabilitiesQuery(IZJ)V

    return-void
.end method

.method savePollTimestamp(JI)V
    .locals 3

    .line 1147
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "capdiscovery_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1149
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mLastPollTimestamp:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, p3, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 1151
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string/jumbo p3, "pollTimestamp"

    .line 1152
    invoke-interface {p0, p3, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1153
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public sendOptionsCapabilityRequest(Landroid/net/Uri;Ljava/util/Set;Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$OptionsResponseCallback;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$OptionsResponseCallback;",
            "I)V"
        }
    .end annotation

    const-string v0, "CapabilityDiscModule"

    const-string/jumbo v1, "sendOptionsCapabilityRequest"

    .line 760
    invoke-static {v0, p4, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-eqz p1, :cond_3

    .line 762
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 763
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mOptionsCallbacks:Lcom/sec/internal/helper/PhoneIdKeyMap;

    monitor-enter v6

    .line 764
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mOptionsCallbacks:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p4}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 766
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 767
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mOptionsCallbacks:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, p4, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 770
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 771
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 772
    invoke-interface {v7, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 773
    invoke-virtual {v0, p1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityExchange:Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mImsRegInfoList:Ljava/util/Map;

    move-object v1, p1

    move v2, p4

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->sendOptionsRequest(Lcom/sec/ims/util/ImsUri;ILjava/util/Set;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Ljava/util/Map;)Z

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x1

    .line 775
    invoke-static {p3, p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->reportErrorToApp(Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$OptionsResponseCallback;I)V

    goto :goto_0

    .line 780
    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v7, p0

    check-cast v7, Ljava/util/List;

    .line 781
    invoke-interface {v7, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 782
    invoke-virtual {v0, p1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    const-string p0, "CapabilityDiscModule"

    .line 784
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "sendOptionsCapabilityRequest uri: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 785
    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " registered callbacks: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 784
    invoke-static {p0, p4, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 786
    monitor-exit v6

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    const/4 p0, 0x2

    .line 788
    invoke-static {p3, p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->reportErrorToApp(Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$OptionsResponseCallback;I)V

    :goto_1
    return-void
.end method

.method setAvailablePhoneId(I)V
    .locals 0

    .line 1642
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mAvailablePhoneId:I

    return-void
.end method

.method public setCallNumber(ILjava/lang/String;)V
    .locals 0

    .line 559
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCallNumber:[Ljava/lang/String;

    aput-object p2, p0, p1

    return-void
.end method

.method setCapabilityModuleOn(Z)V
    .locals 0

    .line 1674
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityModuleOn:Z

    return-void
.end method

.method setForcePollingGuard(ZI)V
    .locals 0

    .line 1560
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->forcePollingGuard:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    return-void
.end method

.method setHasVideoOwnCapability(ZI)V
    .locals 0

    .line 1610
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mHasVideoOwn:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method setImsRegInfoList(ILcom/sec/ims/ImsRegistration;)V
    .locals 0

    .line 1658
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mImsRegInfoList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method setInitialQuery(ZI)V
    .locals 0

    .line 1574
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mInitialQuery:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    return-void
.end method

.method setIsConfigured(ZI)V
    .locals 0

    .line 1586
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mIsConfigured:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method setIsConfiguredOnCapability(ZI)V
    .locals 0

    .line 1590
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mIsConfiguredOnCapability:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method setIsOfflineAddedContact(ZI)V
    .locals 0

    .line 1544
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->isOfflineAddedContact:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    return-void
.end method

.method setLastCapExResult(Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;I)V
    .locals 0

    .line 1626
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mLastCapExResult:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method setLastListSubscribeStamp(JI)V
    .locals 0

    .line 1570
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mLastListSubscribeStamp:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public setLegacyLatching(Lcom/sec/ims/util/ImsUri;ZI)Z
    .locals 1

    .line 1066
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityUpdate:Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->setLegacyLatching(Landroid/content/Context;Lcom/sec/ims/util/ImsUri;ZI)Z

    move-result p0

    return p0
.end method

.method setNetworkClass(II)V
    .locals 0

    .line 1552
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mNetworkClass:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method setNetworkEvent(Lcom/sec/internal/constants/ims/os/NetworkEvent;I)V
    .locals 0

    .line 1548
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mNetworkEvent:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method setNetworkType(II)V
    .locals 0

    .line 1556
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mNetworkType:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method setOldFeature(JI)V
    .locals 0

    .line 1634
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mOldFeature:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setOwnCapabilities(IZ)V
    .locals 7

    .line 970
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityUpdate:Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mImsRegInfoList:Ljava/util/Map;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mNetworkType:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-boolean v5, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mIsInCall:Z

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCallNumber:[Ljava/lang/String;

    aget-object v6, p0, p1

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->setOwnCapabilities(IZLjava/util/Map;IZLjava/lang/String;)V

    return-void
.end method

.method setPresenceSwitch(IZ)V
    .locals 0

    .line 1670
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mPresenceSwitchOnList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setPublishedServiceList(ILjava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1683
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPublishedServiceList: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CapabilityDiscModule"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1684
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mPublishedServiceList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method setRetrySyncContactCount(I)V
    .locals 0

    .line 1662
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mRetrySyncContactCount:I

    return-void
.end method

.method setThrottledIntent(Landroid/app/PendingIntent;I)V
    .locals 0

    .line 1622
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mThrottledIntent:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p2, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    return-void
.end method

.method setUriGenerator(Lcom/sec/internal/ims/util/UriGenerator;)V
    .locals 0

    .line 1630
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    return-void
.end method

.method setUserActive(ZI)V
    .locals 4

    .line 836
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IPC successful user activity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CapabilityDiscModule"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 838
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mUserLastActive:Lcom/sec/internal/helper/PhoneIdKeyMap;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 840
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mUserLastActive:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 843
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v2, v3, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->saveUserLastActiveTimeStamp(JI)V

    .line 844
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "IPC successful user activity: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mUserLastActive:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method settOptionsSwitch(IZ)V
    .locals 0

    .line 1666
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mOptionsSwitchOnList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public start()V
    .locals 2

    const-string v0, "CapabilityDiscModule"

    const-string/jumbo v1, "start"

    .line 379
    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->isCheckRcsSwitch(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 384
    :cond_0
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->start()V

    .line 386
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContactList:Lcom/sec/internal/ims/servicemodules/options/ContactCache;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContactListener:Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactEventListener;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->registerListener(Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactEventListener;)V

    .line 387
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContactList:Lcom/sec/internal/ims/servicemodules/options/ContactCache;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->start()V

    .line 389
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mOptionsModule:Lcom/sec/internal/ims/servicemodules/options/OptionsModule;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityEventListener:Lcom/sec/internal/ims/servicemodules/options/CapabilityEventListener;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/options/OptionsModule;->registerCapabilityEventListener(Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;)V

    .line 390
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mPresenceModule:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityEventListener:Lcom/sec/internal/ims/servicemodules/options/CapabilityEventListener;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->registerCapabilityEventListener(Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;)V

    .line 392
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->registerSimCardEventListener()V

    const/4 v0, 0x1

    .line 394
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->updateMsgAppInfo(Z)V

    .line 396
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mTelephonyCallback:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule$TelephonyCallbackForCapability;

    invoke-virtual {v0, v1, p0}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    return-void
.end method

.method startPartialPollingTimer(JZI)V
    .locals 4

    .line 1157
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mPartialPollingIntent:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p4}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1158
    invoke-virtual {p0, p4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->stopPartialPollingTimer(I)V

    .line 1161
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startPartialPollingTimer: millis "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CapabilityDiscModule"

    invoke-static {v1, p4, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1162
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.internal.ims.servicemodules.options.poll_partial"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "force"

    .line 1163
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1164
    iget-object p3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1165
    iget-object p3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mPartialPollingIntent:Lcom/sec/internal/helper/PhoneIdKeyMap;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x2000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p3, p4, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 1166
    iget-object p3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mPartialPollingIntent:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p4}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/PendingIntent;

    invoke-static {p3, p0, p1, p2}, Lcom/sec/internal/helper/AlarmTimer;->start(Landroid/content/Context;Landroid/app/PendingIntent;J)V

    return-void
.end method

.method startPoll(I)V
    .locals 6

    .line 1051
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mLastPollTimestamp:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v2, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->getPollingPeriod()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    .line 1053
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1054
    invoke-virtual {p0, v0, v1, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->startPollingTimer(JI)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x12

    .line 1056
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method startPollingTimer(I)V
    .locals 4

    .line 1102
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mConfigs:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->getPollingPeriod()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    .line 1103
    invoke-static {p1}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v2

    const-string/jumbo v3, "use_rand_delay_periodic_poll"

    invoke-interface {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1104
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    invoke-virtual {v2, p1, v0, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->getRandomizedDelayForPeriodicPolling(IJ)J

    move-result-wide v0

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    return-void

    .line 1110
    :cond_1
    invoke-virtual {p0, v0, v1, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->startPollingTimer(JI)V

    return-void
.end method

.method startPollingTimer(JI)V
    .locals 5

    .line 1114
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mPollingIntent:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p3}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1115
    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->stopPollingTimer(I)V

    .line 1118
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startPollingTimer: millis "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CapabilityDiscModule"

    invoke-static {v1, p3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1119
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.internal.ims.servicemodules.options.poll_timeout"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1120
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1121
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mPollingIntent:Lcom/sec/internal/helper/PhoneIdKeyMap;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x2000000

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v1, p3, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 1122
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mPollingIntent:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p3}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/PendingIntent;

    invoke-static {v0, p0, p1, p2}, Lcom/sec/internal/helper/AlarmTimer;->start(Landroid/content/Context;Landroid/app/PendingIntent;J)V

    return-void
.end method

.method public stop()V
    .locals 0

    .line 483
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->stop()V

    .line 484
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->processStop()V

    return-void
.end method

.method stopPartialPollingTimer(I)V
    .locals 2

    .line 1170
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mPartialPollingIntent:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "CapabilityDiscModule"

    const-string/jumbo v1, "stopPartialPollingTimer"

    .line 1171
    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1172
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mPartialPollingIntent:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    invoke-static {v0, v1}, Lcom/sec/internal/helper/AlarmTimer;->stop(Landroid/content/Context;Landroid/app/PendingIntent;)V

    .line 1173
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mPartialPollingIntent:Lcom/sec/internal/helper/PhoneIdKeyMap;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method stopPollingTimer(I)V
    .locals 2

    const-string v0, "CapabilityDiscModule"

    const-string/jumbo v1, "stopPollingTimer"

    .line 1126
    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1128
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mPollingIntent:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1129
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mPollingIntent:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    invoke-static {v0, v1}, Lcom/sec/internal/helper/AlarmTimer;->stop(Landroid/content/Context;Landroid/app/PendingIntent;)V

    .line 1130
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mPollingIntent:Lcom/sec/internal/helper/PhoneIdKeyMap;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public subscribeForCapabilities(Ljava/util/Collection;Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;",
            "I)V"
        }
    .end annotation

    const-string v0, "CapabilityDiscModule"

    const-string/jumbo v1, "subscribeForCapabilities"

    .line 737
    invoke-static {v0, p3, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 739
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 740
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 741
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 743
    invoke-static {v0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 747
    :cond_0
    sget-object v4, Lcom/sec/ims/options/CapabilityRefreshType;->ALWAYS_FORCE_REFRESH:Lcom/sec/ims/options/CapabilityRefreshType;

    sget-wide v5, Lcom/sec/ims/options/Capabilities;->FEATURE_IM_SERVICE:J

    move-object v2, p0

    move v7, p3

    move-object v8, p2

    invoke-virtual/range {v2 .. v8}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilities(Ljava/util/List;Lcom/sec/ims/options/CapabilityRefreshType;JILandroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;)[Lcom/sec/ims/options/Capabilities;

    return-void
.end method

.method syncContact()V
    .locals 3

    const-string/jumbo v0, "syncContact:"

    const-string v1, "CapabilityDiscModule"

    .line 1191
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManager()Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1193
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimLoaded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1194
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->_syncContact(Lcom/sec/internal/constants/Mno;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "syncContact: sim is not loaded."

    .line 1196
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContactList:Lcom/sec/internal/ims/servicemodules/options/ContactCache;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->setIsBlockedContactChange(Z)V

    :goto_0
    return-void
.end method

.method triggerCapexForIncallRegiDeregi(ILcom/sec/ims/ImsRegistration;)V
    .locals 0

    .line 1373
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityForIncall:Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityForIncall;->triggerCapexForIncallRegiDeregi(ILcom/sec/ims/ImsRegistration;)V

    return-void
.end method

.method unregisterListener(Lcom/sec/ims/options/ICapabilityServiceEventListener;I)V
    .locals 0

    .line 619
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityServiceEventListener:Lcom/sec/internal/ims/servicemodules/options/CapabilityServiceEventListener;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityServiceEventListener;->unregisterListener(Lcom/sec/ims/options/ICapabilityServiceEventListener;I)V

    return-void
.end method

.method public updateCapabilities(I)V
    .locals 2

    const-string v0, "CapabilityDiscModule"

    const-string/jumbo v1, "updateCapabilities"

    .line 1378
    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1379
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->updateCapabilities(I)V

    return-void
.end method

.method updateMsgAppInfo(Z)V
    .locals 11

    const-string v0, "CapabilityDiscModule"

    const-string v1, ""

    .line 402
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/internal/helper/os/PackageUtils;->getMsgAppPkgName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 403
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    const-string v3, "Xbot.Version"

    .line 407
    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 409
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v2

    .line 411
    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v4

    .line 414
    :cond_0
    sget-wide v2, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_EXTENDED_MSG:J

    invoke-static {v2, v3}, Lcom/sec/ims/presence/ServiceTuple;->getServiceTuple(J)Lcom/sec/ims/presence/ServiceTuple;

    move-result-object v2

    .line 415
    sget-wide v5, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_CHAT_SESSION:J

    invoke-static {v5, v6}, Lcom/sec/ims/presence/ServiceTuple;->getServiceTuple(J)Lcom/sec/ims/presence/ServiceTuple;

    move-result-object v3

    .line 416
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateMsgAppInfo: msgAppPkgName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "cur:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", new:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    iget-object v5, v2, Lcom/sec/ims/presence/ServiceTuple;->version:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 420
    sget-wide v5, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_EXTENDED_MSG:J

    invoke-static {v5, v6, v4}, Lcom/sec/ims/presence/ServiceTuple;->setServiceVersion(JLjava/lang/String;)V

    if-nez p1, :cond_4

    .line 422
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mImsRegInfoList:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 424
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 425
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v7}, Lcom/sec/ims/ImsRegistration;->hasRcsService()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 427
    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mPresenceModule:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    invoke-virtual {v7, v6}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getOwnPresenceInfo(I)Lcom/sec/ims/presence/PresenceInfo;

    move-result-object v7

    .line 428
    iget-object v8, v3, Lcom/sec/ims/presence/ServiceTuple;->serviceId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/sec/ims/presence/PresenceInfo;->getServiceTuple(Ljava/lang/String;)Lcom/sec/ims/presence/ServiceTuple;

    move-result-object v8

    if-nez v8, :cond_2

    const-string/jumbo v5, "updateMsgAppInfo: chatbot not registered"

    .line 429
    invoke-static {v0, v6, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 432
    :cond_2
    iget-object v8, v2, Lcom/sec/ims/presence/ServiceTuple;->serviceId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/sec/ims/presence/PresenceInfo;->getServiceTuple(Ljava/lang/String;)Lcom/sec/ims/presence/ServiceTuple;

    move-result-object v8

    if-eqz v8, :cond_3

    iget-object v8, v2, Lcom/sec/ims/presence/ServiceTuple;->version:Ljava/lang/String;

    const-string v9, "0.0"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string/jumbo v5, "updateMsgAppInfo: re PUBLISH"

    .line 434
    invoke-static {v0, v6, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 436
    invoke-virtual {v7, v2}, Lcom/sec/ims/presence/PresenceInfo;->removeService(Lcom/sec/ims/presence/ServiceTuple;)V

    .line 437
    iput-object v4, v2, Lcom/sec/ims/presence/ServiceTuple;->version:Ljava/lang/String;

    .line 438
    invoke-virtual {v7, v2}, Lcom/sec/ims/presence/PresenceInfo;->addService(Lcom/sec/ims/presence/ServiceTuple;)V

    .line 440
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mPresenceModule:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v5, v8, v7}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 441
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mPresenceModule:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v8, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 444
    :cond_3
    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mOldFeature:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mOwnList:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/ims/options/Capabilities;

    invoke-virtual {v9}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v7, "updateMsgAppInfo: update REGISTER"

    .line 445
    invoke-static {v0, v6, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 446
    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mImModule:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;

    invoke-interface {v7, v6}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImModule;->updateExtendedBotMsgFeature(I)V

    .line 447
    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mRegMan:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v5}, Lcom/sec/ims/ImsRegistration;->getNetworkType()I

    move-result v5

    invoke-interface {v7, v6, v5}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->sendReRegister(II)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 455
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "error retrieving msgapp("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") details"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method public updateOwnCapabilities(I)V
    .locals 6

    .line 568
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityUpdate:Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mImsRegInfoList:Ljava/util/Map;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mIsConfiguredOnCapability:Ljava/util/Map;

    .line 569
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mNetworkType:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move v3, p1

    .line 568
    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUpdate;->updateOwnCapabilities(Landroid/content/Context;Ljava/util/Map;IZI)V

    return-void
.end method

.method updatePollList(Lcom/sec/ims/util/ImsUri;ZI)Z
    .locals 2

    .line 1034
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mUrisToRequestList:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 1035
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mCapabilityExchange:Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->updatePollList(Ljava/util/Set;Lcom/sec/ims/util/ImsUri;ZI)Z

    move-result p0

    return p0
.end method
