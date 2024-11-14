.class public Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;
.super Lcom/sec/internal/helper/StateMachine;
.source "UtStateMachine.java"


# static fields
.field public static final DOCUMENT_CACHE_RESET_TIMEOUT:I = 0x3e8

.field public static final HTTP_CONNECTION_TIMEOUT:J = 0x2710L

.field public static final HTTP_READ_TIMEOUT:J = 0x2710L

.field public static final HTTP_READ_TIMEOUT_GCF:J = 0x7d0L

.field public static final HTTP_READ_TIMEOUT_TMB:J = 0x7d00L

.field public static final LOG_TAG:Ljava/lang/String;

.field public static final MAX_RETRY_COUNT_412:I = 0x3

.field public static final PDN_LINGER_TIMEOUT:I = 0x1388

.field public static final SECOND:J = 0x3e8L

.field private static mCBIdCounter:I


# instance fields
.field public isGetBeforePut:Z

.field public isRetryingCreatePdn:Z

.field private mApn:Lcom/sec/internal/ims/servicemodules/ss/ApnSettings;

.field public mBsfRetryCounter:I

.field protected mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

.field private mConfig:Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;

.field private mContext:Landroid/content/Context;

.field public mCount412RetryDone:I

.field private mDns:Lokhttp3/Dns;

.field protected mDnsAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field public mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

.field public mForce403Error:Z

.field protected mHasCFCache:Z

.field protected mHasICBCache:Z

.field protected mHasOCBCache:Z

.field protected mICBCache:Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

.field private final mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

.field public mIsFailedBySuspended:Z

.field public mIsGetAfter412:Z

.field public mIsGetForAllCb:Z

.field public mIsGetSdBy404:Z

.field private mIsRequestFailed:Z

.field private mIsRunningRequest:Z

.field public mIsSuspended:Z

.field public mIsUtConnectionError:Z

.field public mMainCondition:I

.field public mNafRetryCounter:I

.field private mNetwork:Landroid/net/Network;

.field protected mOCBCache:Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

.field public mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

.field mPdnListener:Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

.field public mPdnRetryCounter:I

.field public mPdnType:I

.field private final mPendingRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/ss/UtProfile;",
            ">;"
        }
    .end annotation
.end field

.field public mPhoneId:I

.field public mPrevGetType:I

.field protected mPreviousCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

.field protected mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

.field protected mRequestState:Lcom/sec/internal/ims/servicemodules/ss/RequestState;

.field protected mResponseState:Lcom/sec/internal/ims/servicemodules/ss/ResponseState;

.field public mSeparatedCFNL:Z

.field public mSeparatedCFNRY:Z

.field public mSeparatedCfAll:Z

.field public mSeparatedMedia:Z

.field public mSocketFactory:Ljavax/net/SocketFactory;

.field protected mThisSm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

.field mUtCallback:Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;

.field public mUtHttpRetryCounter:I

.field public mUtRetryCounter:I

.field public final mUtServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

.field public needPdnRequestForCW:Z


# direct methods
.method public static synthetic $r8$lambda$FbrWuh0dlk8wcH6Y1qIOOmv7PsM(Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->lambda$makeHttpParams$0(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConfig(Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;)Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mConfig:Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNetwork(Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;)Landroid/net/Network;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mNetwork:Landroid/net/Network;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmApn(Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;Lcom/sec/internal/ims/servicemodules/ss/ApnSettings;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mApn:Lcom/sec/internal/ims/servicemodules/ss/ApnSettings;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNetwork(Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;Landroid/net/Network;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mNetwork:Landroid/net/Network;

    return-void
.end method

.method static bridge synthetic -$$Nest$mrefreshDns(Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->refreshDns()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateDnsInfo(Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->updateDnsInfo()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 63
    const-class v0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 107
    sput v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCBIdCounter:I

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Landroid/os/Looper;Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;Lcom/sec/internal/interfaces/ims/IImsFramework;Landroid/content/Context;)V
    .locals 1

    .line 119
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/helper/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    const/4 p1, 0x0

    .line 66
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mSocketFactory:Ljavax/net/SocketFactory;

    .line 67
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mNetwork:Landroid/net/Network;

    .line 68
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mDns:Lokhttp3/Dns;

    const/4 p2, -0x1

    .line 69
    iput p2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    iput p2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnType:I

    .line 70
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mApn:Lcom/sec/internal/ims/servicemodules/ss/ApnSettings;

    .line 72
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mConfig:Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;

    .line 73
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    .line 74
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mSeparatedCFNL:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mSeparatedCFNRY:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mSeparatedMedia:Z

    .line 76
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isGetBeforePut:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsGetAfter412:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mSeparatedCfAll:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mForce403Error:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsGetForAllCb:Z

    .line 77
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsSuspended:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsFailedBySuspended:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsGetSdBy404:Z

    .line 78
    iput p2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mMainCondition:I

    iput p2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPrevGetType:I

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCount412RetryDone:I

    .line 80
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPendingRequests:Ljava/util/List;

    .line 81
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsRunningRequest:Z

    .line 83
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mRequestState:Lcom/sec/internal/ims/servicemodules/ss/RequestState;

    .line 84
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mResponseState:Lcom/sec/internal/ims/servicemodules/ss/ResponseState;

    .line 86
    new-instance p2, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    invoke-direct {p2}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;-><init>()V

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPreviousCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    .line 87
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    .line 88
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mOCBCache:Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mICBCache:Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    .line 90
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mHasCFCache:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mHasOCBCache:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mHasICBCache:Z

    const/4 p2, 0x1

    .line 103
    iput-boolean p2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->needPdnRequestForCW:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isRetryingCreatePdn:Z

    .line 105
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mDnsAddresses:Ljava/util/List;

    .line 108
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsRequestFailed:Z

    .line 111
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mNafRetryCounter:I

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mBsfRetryCounter:I

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnRetryCounter:I

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtRetryCounter:I

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtHttpRetryCounter:I

    .line 112
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsUtConnectionError:Z

    .line 116
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    .line 2175
    new-instance p1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine$1;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine$1;-><init>(Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnListener:Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

    .line 2227
    new-instance p1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine$2;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine$2;-><init>(Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtCallback:Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;

    .line 120
    iput-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mThisSm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    .line 121
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    .line 122
    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 123
    iput-object p5, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mContext:Landroid/content/Context;

    .line 125
    new-instance p1, Lcom/sec/internal/ims/servicemodules/ss/RequestState;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/servicemodules/ss/RequestState;-><init>(Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mRequestState:Lcom/sec/internal/ims/servicemodules/ss/RequestState;

    .line 126
    new-instance p1, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/servicemodules/ss/ResponseState;-><init>(Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mResponseState:Lcom/sec/internal/ims/servicemodules/ss/ResponseState;

    return-void
.end method

.method private addKddiCbRules(Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;)Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;
    .locals 9

    if-nez p1, :cond_0

    .line 1251
    new-instance p1, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    invoke-direct {p1}, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;-><init>()V

    .line 1256
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    const/16 v2, 0xa

    const-string v3, " media = "

    const-string v4, " conditions = "

    const-string v5, "KDDI_UT added rule id = "

    const/4 v6, 0x6

    if-ne v1, v2, :cond_3

    .line 1257
    new-instance v0, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;-><init>()V

    .line 1258
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->valueList:[Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->parseSIBtarget([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 1259
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;

    .line 1260
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->rules:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1261
    sget-object v2, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->ruleId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1263
    :cond_1
    invoke-virtual {p1, v6}, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->isExist(I)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 1264
    sget-object p0, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->ALL:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    invoke-virtual {p1, v6, p0}, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;->getRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;

    move-result-object p0

    .line 1265
    iget-object p1, v0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->rules:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0

    :cond_3
    if-ne v1, v6, :cond_4

    .line 1270
    iget v2, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    invoke-direct {p0, v1, v2, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->makeCBRule(III)Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;

    move-result-object v0

    .line 1271
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string/jumbo v1, "ss_icb_anonymous_ruleid"

    const-string v2, ""

    invoke-static {p0, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->getSetting(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->ruleId:Ljava/lang/String;

    .line 1272
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->setRule(Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;)V

    .line 1273
    sget-object p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->ruleId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-object p1
.end method

.method private getApnSettingFromPdnType(I)I
    .locals 0

    .line 0
    if-eqz p1, :cond_2

    const/16 p0, 0xc

    if-eq p1, p0, :cond_1

    const/16 p0, 0x1b

    if-eq p1, p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/16 p0, 0x800

    return p0

    :cond_1
    const/16 p0, 0x80

    return p0

    :cond_2
    const/16 p0, 0x11

    return p0
.end method

.method private getCbRuleIdFromFeature(Lcom/sec/internal/constants/Mno;)Ljava/lang/String;
    .locals 5

    .line 1565
    sget-object v0, Lcom/sec/internal/constants/Mno;->CMHK:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->HK3:Lcom/sec/internal/constants/Mno;

    filled-new-array {v0, v1}, [Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eqz v0, :cond_4

    .line 1566
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    if-eq v0, v3, :cond_0

    const/16 v4, 0x8

    if-ne v0, v4, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cbbaoc:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 1567
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cbbaoc:Ljava/lang/String;

    return-object p0

    .line 1568
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cbboic:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 1569
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cbboic:Ljava/lang/String;

    return-object p0

    .line 1570
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cbboic_exhc:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 1571
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cbboic_exhc:Ljava/lang/String;

    return-object p0

    .line 1572
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cbbaoc:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 1573
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cbbaoc:Ljava/lang/String;

    return-object p0

    .line 1576
    :cond_4
    sget-object v0, Lcom/sec/internal/constants/Mno;->DTAC:Lcom/sec/internal/constants/Mno;

    if-ne p1, v0, :cond_7

    .line 1577
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget p1, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    if-ne p1, v3, :cond_5

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cbbaoc:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_5

    .line 1578
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cbbaoc:Ljava/lang/String;

    return-object p0

    .line 1579
    :cond_5
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget p1, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    if-ne p1, v2, :cond_6

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cbboic:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_6

    .line 1580
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cbboic:Ljava/lang/String;

    return-object p0

    .line 1581
    :cond_6
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget p1, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    if-ne p1, v1, :cond_7

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cbboic_exhc:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_7

    .line 1582
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cbboic_exhc:Ljava/lang/String;

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method private getMatchedMediaForCB(Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;Lcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;
    .locals 1

    .line 1520
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-virtual {p1, v0, p2}, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->isExist(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1522
    :cond_0
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean p2, p2, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->supportAlternativeMediaForCb:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget p2, p2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->ALL:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    invoke-virtual {p1, p2, v0}, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->isExist(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1523
    sget-object p1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string p2, "no exact CB rule media match -> media ALL should be used"

    invoke-static {p1, p0, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    move-object p2, v0

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    return-object p2
.end method

.method private getPdnType()I
    .locals 1

    .line 698
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mConfig:Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->apnSelection:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "xcap"

    :goto_0
    const-string v0, "cbs"

    .line 700
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p0, 0xc

    return p0

    :cond_1
    const-string v0, "default"

    .line 702
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    const-string/jumbo v0, "wifi"

    .line 704
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    const/16 p0, 0x1b

    return p0
.end method

.method private initializeUtParameters()V
    .locals 1

    const/4 v0, 0x0

    .line 242
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtHttpRetryCounter:I

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtRetryCounter:I

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mBsfRetryCounter:I

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mNafRetryCounter:I

    .line 243
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mSeparatedCFNL:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsUtConnectionError:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsRequestFailed:Z

    .line 244
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsFailedBySuspended:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsSuspended:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mSeparatedMedia:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mSeparatedCfAll:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mSeparatedCFNRY:Z

    const/4 v0, -0x1

    .line 245
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mMainCondition:I

    return-void
.end method

.method private isChnNoRuleCbPut403Error()Z
    .locals 5

    .line 2149
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 2150
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2151
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    .line 2152
    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    const/16 v2, 0x67

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    .line 2153
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mICBCache:Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    if-eqz v2, :cond_0

    .line 2154
    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->convertToMedia(I)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getMatchedMediaForCB(Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;Lcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x69

    if-ne v1, v2, :cond_1

    .line 2156
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mOCBCache:Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    if-eqz v1, :cond_1

    .line 2157
    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->convertToMedia(I)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getMatchedMediaForCB(Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;Lcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method private isCsfbErrorCode(ILcom/sec/internal/constants/Mno;)Z
    .locals 7

    .line 2119
    invoke-virtual {p2}, Lcom/sec/internal/constants/Mno;->isUSA()Z

    move-result p2

    const/16 v0, 0x3f1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    const/4 p2, 0x1

    if-eq p1, v0, :cond_7

    const/16 v0, 0x3eb

    if-eq p1, v0, :cond_7

    const/16 v0, 0x3f5

    if-ne p1, v0, :cond_1

    goto :goto_1

    .line 2126
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->csfbErrorCodeList:[Ljava/lang/String;

    if-nez v0, :cond_2

    goto :goto_1

    .line 2130
    :cond_2
    array-length v2, v0

    if-nez v2, :cond_3

    return v1

    :cond_3
    const-string v2, "all"

    .line 2134
    aget-object v0, v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    return p2

    .line 2138
    :cond_4
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->csfbErrorCodeList:[Ljava/lang/String;

    array-length v0, p0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_6

    aget-object v3, p0, v2

    .line 2139
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "x"

    const-string v6, "[0-9]"

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    return p2

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    return v1

    :cond_7
    :goto_1
    return p2
.end method

.method private isGcfTelUri(Lcom/sec/internal/constants/Mno;)Z
    .locals 1

    .line 658
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object p0

    .line 660
    sget-object v0, Lcom/sec/internal/constants/Mno;->GCF:Lcom/sec/internal/constants/Mno;

    if-ne p1, v0, :cond_1

    const-string p1, "CHM"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "CBK"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "CHC"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private isRetryPdnFailCause(I)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/16 v1, 0xe

    if-eq p1, v1, :cond_1

    const v1, 0x10001

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    return v0

    .line 874
    :cond_1
    :goto_0
    sget-object v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isRetryFailCause: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    iget v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 876
    sget-object v3, Lcom/sec/internal/constants/Mno;->CTC:Lcom/sec/internal/constants/Mno;

    const/4 v4, 0x1

    if-eq v2, v3, :cond_2

    sget-object v3, Lcom/sec/internal/constants/Mno;->CU:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_4

    :cond_2
    if-nez p1, :cond_4

    .line 877
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pdnRetryCounter: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnRetryCounter:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    iget p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnRetryCounter:I

    if-gt p1, v4, :cond_3

    add-int/2addr p1, v4

    .line 879
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnRetryCounter:I

    goto :goto_1

    :cond_3
    return v0

    :cond_4
    :goto_1
    return v4
.end method

.method private isSupportfwd(Lcom/sec/internal/constants/Mno;)Z
    .locals 0

    .line 1035
    sget-object p0, Lcom/sec/internal/constants/Mno;->KOODO:Lcom/sec/internal/constants/Mno;

    if-eq p1, p0, :cond_0

    sget-object p0, Lcom/sec/internal/constants/Mno;->VIVACOM_BULGARIA:Lcom/sec/internal/constants/Mno;

    if-eq p1, p0, :cond_0

    sget-object p0, Lcom/sec/internal/constants/Mno;->WIND_GREECE:Lcom/sec/internal/constants/Mno;

    if-eq p1, p0, :cond_0

    sget-object p0, Lcom/sec/internal/constants/Mno;->CLARO_DOMINICAN:Lcom/sec/internal/constants/Mno;

    if-eq p1, p0, :cond_0

    sget-object p0, Lcom/sec/internal/constants/Mno;->TELUS:Lcom/sec/internal/constants/Mno;

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isTelUriUsePhoneContext(Lcom/sec/internal/constants/Mno;)Z
    .locals 4

    .line 654
    sget-object p0, Lcom/sec/internal/constants/Mno;->VODAFONE_UK:Lcom/sec/internal/constants/Mno;

    sget-object v0, Lcom/sec/internal/constants/Mno;->SFR:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->SOFTBANK:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->TELSTRA:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->ETISALAT_UAE:Lcom/sec/internal/constants/Mno;

    filled-new-array {p0, v0, v1, v2, v3}, [Lcom/sec/internal/constants/Mno;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$makeHttpParams$0(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1873
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mNetwork:Landroid/net/Network;

    invoke-virtual {p0, p1}, Landroid/net/Network;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 1875
    :catch_0
    new-instance p0, Ljava/net/UnknownHostException;

    const-string p1, "android.net.Network.getAllByName returned null"

    invoke-direct {p0, p1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1870
    :cond_0
    new-instance p0, Ljava/net/UnknownHostException;

    const-string p1, "hostname == null"

    invoke-direct {p0, p1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private makeCBRule(III)Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;
    .locals 1

    .line 1508
    invoke-static {p2}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->convertToMedia(I)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;->makeRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;

    move-result-object p1

    .line 1509
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getCbRuleId()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->ruleId:Ljava/lang/String;

    .line 1511
    iget-object p0, p1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    const/4 p2, 0x1

    if-eq p3, p2, :cond_1

    const/4 v0, 0x3

    if-ne p3, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :cond_1
    :goto_0
    iput-boolean p2, p0, Lcom/sec/internal/ims/servicemodules/ss/Condition;->state:Z

    .line 1512
    iput p3, p0, Lcom/sec/internal/ims/servicemodules/ss/Condition;->action:I

    return-object p1
.end method

.method private makeCFRule(IIILjava/lang/String;)Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;
    .locals 1

    .line 1486
    invoke-static {p2}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->convertToMedia(I)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->makeRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    move-result-object p2

    .line 1487
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getCfRuleId(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->ruleId:Ljava/lang/String;

    const/4 p1, 0x1

    if-eq p3, p1, :cond_1

    const/4 v0, 0x3

    if-ne p3, v0, :cond_0

    goto :goto_0

    .line 1493
    :cond_0
    iget-object p1, p2, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    const/4 p4, 0x0

    iput-boolean p4, p1, Lcom/sec/internal/ims/servicemodules/ss/Condition;->state:Z

    const/4 p1, 0x4

    if-ne p3, p1, :cond_2

    .line 1495
    iget-object p1, p2, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    const-string p4, ""

    iput-object p4, p1, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    goto :goto_1

    .line 1490
    :cond_1
    :goto_0
    iget-object v0, p2, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iput-boolean p1, v0, Lcom/sec/internal/ims/servicemodules/ss/Condition;->state:Z

    .line 1491
    iget-object p1, p2, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iput-object p4, p1, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    .line 1498
    :cond_2
    :goto_1
    iget-object p1, p2, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iput p3, p1, Lcom/sec/internal/ims/servicemodules/ss/Condition;->action:I

    .line 1500
    iget-object p1, p2, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 1501
    iget-object p1, p2, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object p3, p1, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    invoke-static {p3}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->getNumberFromURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getNetworkPreferredUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    :cond_3
    return-object p2
.end method

.method private makeInternationalFormat(Lcom/sec/internal/constants/Mno;Lcom/sec/ims/util/ImsUri$UriType;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 711
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->generate3GPPDomain(Lcom/sec/internal/interfaces/ims/core/ISimManager;)Ljava/lang/String;

    move-result-object v0

    .line 713
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->isNeedInternationalNumber:Z

    if-eqz v1, :cond_0

    .line 714
    invoke-static {p3, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->makeInternationalNumber(Ljava/lang/String;Lcom/sec/internal/constants/Mno;)Ljava/lang/String;

    move-result-object p3

    goto/16 :goto_1

    .line 715
    :cond_0
    sget-object v1, Lcom/sec/internal/constants/Mno;->EASTLINK:Lcom/sec/internal/constants/Mno;

    if-ne p1, v1, :cond_2

    .line 716
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p0

    const/16 p1, 0xb

    if-ne p0, p1, :cond_1

    .line 717
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "+"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto/16 :goto_1

    .line 718
    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p0

    const/16 p1, 0xa

    if-ne p0, p1, :cond_d

    .line 719
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "+1"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto/16 :goto_1

    :cond_2
    const-string v1, ";phone-context="

    if-eqz p4, :cond_6

    .line 721
    sget-object v2, Lcom/sec/ims/util/ImsUri$UriType;->SIP_URI:Lcom/sec/ims/util/ImsUri$UriType;

    if-ne p2, v2, :cond_6

    .line 722
    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isTmobile()Z

    move-result p0

    if-nez p0, :cond_4

    sget-object p0, Lcom/sec/internal/constants/Mno;->TELEKOM_ALBANIA:Lcom/sec/internal/constants/Mno;

    if-ne p1, p0, :cond_3

    goto :goto_0

    .line 728
    :cond_3
    sget-object p0, Lcom/sec/internal/constants/Mno;->TELENOR_SWE:Lcom/sec/internal/constants/Mno;

    if-eq p1, p0, :cond_d

    .line 729
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto/16 :goto_1

    :cond_4
    :goto_0
    if-eqz v0, :cond_5

    .line 724
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto/16 :goto_1

    .line 726
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto/16 :goto_1

    .line 732
    :cond_6
    sget-object p2, Lcom/sec/internal/constants/Mno;->DTAC:Lcom/sec/internal/constants/Mno;

    if-ne p1, p2, :cond_8

    .line 733
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    if-nez p0, :cond_7

    .line 734
    invoke-static {p3, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->makeInternationalNumber(Ljava/lang/String;Lcom/sec/internal/constants/Mno;)Ljava/lang/String;

    move-result-object p3

    goto/16 :goto_1

    .line 736
    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";phone-context=ims.mnc005.mcc520.3gppnetwork.org"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    .line 738
    :cond_8
    sget-object p2, Lcom/sec/internal/constants/Mno;->SINGTEL:Lcom/sec/internal/constants/Mno;

    if-ne p1, p2, :cond_9

    .line 739
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";phone-context=+65"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    .line 740
    :cond_9
    sget-object p2, Lcom/sec/internal/constants/Mno;->SMARTONE:Lcom/sec/internal/constants/Mno;

    if-ne p1, p2, :cond_a

    .line 741
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";phone-context=+852"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_a
    if-eqz p4, :cond_b

    .line 742
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isTelUriUsePhoneContext(Lcom/sec/internal/constants/Mno;)Z

    move-result p0

    if-eqz p0, :cond_b

    .line 743
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    .line 744
    :cond_b
    sget-object p0, Lcom/sec/internal/constants/Mno;->CTC:Lcom/sec/internal/constants/Mno;

    if-eq p1, p0, :cond_c

    sget-object p0, Lcom/sec/internal/constants/Mno;->CTCMO:Lcom/sec/internal/constants/Mno;

    if-eq p1, p0, :cond_c

    sget-object p0, Lcom/sec/internal/constants/Mno;->ETISALAT_UAE:Lcom/sec/internal/constants/Mno;

    if-ne p1, p0, :cond_d

    :cond_c
    if-eqz v0, :cond_d

    .line 746
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :cond_d
    :goto_1
    return-object p3
.end method

.method private makeRuleSet(Lcom/sec/internal/constants/Mno;Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;)V
    .locals 9

    .line 1140
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_0

    goto :goto_0

    .line 1222
    :cond_0
    iget p1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->convertToMedia(I)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getCallForwardRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    move-result-object p0

    .line 1223
    invoke-virtual {p2, p0}, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->setRule(Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;)V

    goto/16 :goto_8

    :cond_1
    :goto_0
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    const/4 v3, 0x3

    if-gt v1, v3, :cond_b

    .line 1142
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    const/4 v4, 0x1

    if-ne v3, v2, :cond_4

    if-nez v1, :cond_4

    .line 1143
    sget-object v3, Lcom/sec/internal/constants/Mno;->CMHK:Lcom/sec/internal/constants/Mno;

    sget-object v5, Lcom/sec/internal/constants/Mno;->HK3:Lcom/sec/internal/constants/Mno;

    sget-object v6, Lcom/sec/internal/constants/Mno;->ASIACELL_IRAQ:Lcom/sec/internal/constants/Mno;

    sget-object v7, Lcom/sec/internal/constants/Mno;->ETISALAT_UAE:Lcom/sec/internal/constants/Mno;

    filled-new-array {v3, v5, v6, v7}, [Lcom/sec/internal/constants/Mno;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    if-eqz v3, :cond_a

    .line 1147
    sget-object v5, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->AUDIO:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    invoke-virtual {v3, v1, v5}, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->isExist(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1149
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    invoke-virtual {v3, v1, v5}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->getRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    move-result-object v3

    .line 1150
    iget-object v5, p2, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->rules:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v4

    goto :goto_2

    :cond_2
    move v3, v0

    .line 1152
    :goto_2
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    sget-object v6, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->VIDEO:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    invoke-virtual {v5, v1, v6}, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->isExist(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1154
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    invoke-virtual {v3, v1, v6}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->getRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    move-result-object v3

    .line 1155
    iget-object v5, p2, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->rules:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    move v4, v3

    :goto_3
    if-nez v4, :cond_a

    .line 1157
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v4, v4, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    invoke-static {v4}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->convertToMedia(I)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->isExist(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1158
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v4, v4, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    invoke-static {v4}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->convertToMedia(I)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->getRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    move-result-object v3

    .line 1159
    iget-object v4, p2, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->rules:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 1164
    :cond_4
    sget-object v3, Lcom/sec/internal/constants/Mno;->CSL:Lcom/sec/internal/constants/Mno;

    sget-object v5, Lcom/sec/internal/constants/Mno;->PCCW:Lcom/sec/internal/constants/Mno;

    sget-object v6, Lcom/sec/internal/constants/Mno;->CMHK:Lcom/sec/internal/constants/Mno;

    sget-object v7, Lcom/sec/internal/constants/Mno;->HK3:Lcom/sec/internal/constants/Mno;

    sget-object v8, Lcom/sec/internal/constants/Mno;->ASIACELL_IRAQ:Lcom/sec/internal/constants/Mno;

    filled-new-array {v3, v5, v6, v7, v8}, [Lcom/sec/internal/constants/Mno;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    if-eqz v3, :cond_8

    .line 1166
    sget-object v5, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->AUDIO:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    invoke-virtual {v3, v1, v5}, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->isExist(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1168
    invoke-virtual {p0, v1, v5}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getCallForwardRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    move-result-object v3

    .line 1169
    iget-object v5, p2, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->rules:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v3, v4

    goto :goto_4

    :cond_5
    move v3, v0

    .line 1171
    :goto_4
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    sget-object v6, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->VIDEO:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    invoke-virtual {v5, v1, v6}, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->isExist(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1172
    sget-object v3, Lcom/sec/internal/constants/Mno;->CMHK:Lcom/sec/internal/constants/Mno;

    if-ne p1, v3, :cond_6

    .line 1175
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    invoke-virtual {v3, v1, v6}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->getRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    move-result-object v3

    .line 1176
    iget-object v4, p2, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->rules:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1180
    :cond_6
    invoke-virtual {p0, v1, v6}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getCallForwardRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    move-result-object v3

    .line 1181
    iget-object v5, p2, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->rules:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_7
    move v4, v3

    :goto_5
    if-nez v4, :cond_a

    .line 1184
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->convertToMedia(I)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getCallForwardRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    move-result-object v3

    .line 1185
    iget-object v4, p2, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->rules:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1187
    :cond_8
    sget-object v3, Lcom/sec/internal/constants/Mno;->APT:Lcom/sec/internal/constants/Mno;

    if-ne p1, v3, :cond_9

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    if-eqz v3, :cond_9

    .line 1189
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v4, v4, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    invoke-static {v4}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->convertToMedia(I)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->isExist(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1190
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->convertToMedia(I)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getCallForwardRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    move-result-object v3

    .line 1191
    iget-object v4, p2, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->rules:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1194
    :cond_9
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->convertToMedia(I)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getCallForwardRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    move-result-object v3

    .line 1195
    iget-object v4, p2, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->rules:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 1199
    :cond_b
    sget-object v1, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne p1, v1, :cond_c

    const/4 v1, 0x6

    .line 1200
    sget-object v2, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->ALL:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getCallForwardRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    move-result-object v1

    .line 1201
    iget-object v2, p2, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->rules:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1204
    :cond_c
    sget-object v1, Lcom/sec/internal/constants/Mno;->ZAIN_BAHRAIN:Lcom/sec/internal/constants/Mno;

    if-eq p1, v1, :cond_d

    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isCanada()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1205
    :cond_d
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    if-eqz v1, :cond_e

    .line 1206
    iput v0, v1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->replyTimer:I

    .line 1208
    :cond_e
    iput v0, p2, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->replyTimer:I

    .line 1210
    :cond_f
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->timeSeconds:I

    if-lez v1, :cond_10

    .line 1211
    iput v1, p2, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->replyTimer:I

    goto :goto_7

    .line 1212
    :cond_10
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    if-eqz v1, :cond_11

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->replyTimer:I

    if-lez v1, :cond_11

    .line 1213
    iput v1, p2, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->replyTimer:I

    .line 1215
    :cond_11
    :goto_7
    sget-object v1, Lcom/sec/internal/constants/Mno;->CSL:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->PCCW:Lcom/sec/internal/constants/Mno;

    filled-new-array {v1, v2}, [Lcom/sec/internal/constants/Mno;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 1216
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    if-eqz p0, :cond_12

    .line 1217
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->replyTimer:I

    .line 1219
    :cond_12
    iput v0, p2, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->replyTimer:I

    :cond_13
    :goto_8
    return-void
.end method

.method private needToCsfb(ILcom/sec/internal/constants/Mno;)Z
    .locals 2

    const/16 v0, 0x21

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 856
    sget-object p1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string p2, "needToCsfb :This SIM is not subscribed for xcap"

    invoke-static {p1, p0, p2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return v1

    .line 863
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/Mno;->ORANGE:Lcom/sec/internal/constants/Mno;

    if-eq p2, v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/Mno;->ORANGE_POLAND:Lcom/sec/internal/constants/Mno;

    if-eq p2, v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/Mno;->ORANGE_SLOVAKIA:Lcom/sec/internal/constants/Mno;

    if-ne p2, v0, :cond_2

    :cond_1
    if-eqz p1, :cond_2

    const p2, 0x10004

    if-eq p1, p2, :cond_2

    .line 865
    sget-object p1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string p2, "needToCsfb : xcap pdn rejected for orange group"

    invoke-static {p1, p0, p2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private notifyFailResult(ILandroid/os/Bundle;)V
    .locals 3

    .line 330
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    const/16 v1, 0x65

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/16 v1, 0x67

    if-eq v0, v1, :cond_1

    const/16 v1, 0x69

    if-eq v0, v1, :cond_1

    const/16 v1, 0x77

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 350
    :pswitch_0
    iget-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsGetSdBy404:Z

    if-nez p1, :cond_0

    .line 351
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-virtual {p1, p0, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->setSentSimServDoc(IZ)V

    :cond_0
    return-void

    .line 333
    :pswitch_1
    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsGetAfter412:Z

    if-eqz v1, :cond_2

    .line 334
    iput v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCount412RetryDone:I

    const-string v0, "errorCode"

    const/16 v1, 0x19c

    .line 335
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "errorMsg"

    const-string v1, "Precondition Failed"

    .line 336
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x73

    goto :goto_0

    .line 346
    :cond_1
    :pswitch_2
    iput v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCount412RetryDone:I

    .line 357
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-virtual {v1, p0, v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->notifyFailResult(IIILandroid/os/Bundle;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x72
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private printCompleteLog([Landroid/os/Bundle;II)V
    .locals 3

    .line 2292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UtXcap["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2293
    invoke-static {p2}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->isPutRequest(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2294
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->extractLogFromUtProfile(Lcom/sec/internal/ims/servicemodules/ss/UtProfile;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " {Success}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2296
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->extractLogFromResponse(I[Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2298
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ",<,T"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->extractCrLogFromResponse(I[Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2300
    sget-object p2, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget p3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-static {p2, p3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 2301
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-virtual {p2, p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->writeDump(ILjava/lang/String;)V

    const p0, 0x31000006

    .line 2302
    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    return-void
.end method

.method private printFailLog(Landroid/os/Bundle;II)V
    .locals 2

    .line 2306
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "UtXcap["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]< [!ERROR] "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->extractLogFromUtProfile(Lcom/sec/internal/ims/servicemodules/ss/UtProfile;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->extractLogFromError(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ",<,F,"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p3, "originErrorCode"

    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "errorCode"

    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2309
    sget-object p3, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-static {p3, v0, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 2310
    iget-object p3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-virtual {p3, p0, p2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->writeDump(ILjava/lang/String;)V

    const p0, 0x31000006

    .line 2311
    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    return-void
.end method

.method private refreshDns()V
    .locals 1

    const/4 v0, 0x0

    .line 2114
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mDns:Lokhttp3/Dns;

    return-void
.end method

.method private requestFailed(ILjava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    .line 1987
    invoke-static {}, Lcom/sec/internal/helper/httpclient/DnsController;->getNafAddrSize()I

    move-result v3

    .line 1988
    invoke-static {}, Lcom/sec/internal/helper/httpclient/DnsController;->getBsfAddrSize()I

    move-result v4

    .line 1990
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v5, v5, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    invoke-static {v5}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->isCallBarringType(I)Z

    move-result v5

    const-wide/16 v6, 0x7ef4

    const/16 v8, 0x3f9

    const/16 v9, 0xf

    const/4 v10, 0x1

    if-eqz v5, :cond_0

    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v5, v5, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    const/4 v11, 0x7

    if-ne v5, v11, :cond_0

    .line 1991
    sget-object v5, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v11, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string/jumbo v12, "performing CSFB for CB_BA_ALL, ignoring handling NAPTR IP type"

    invoke-static {v5, v11, v12}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 1992
    :cond_0
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    if-eqz v5, :cond_1

    iget v5, v5, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->ip_version:I

    const/4 v11, 0x3

    if-ne v5, v11, :cond_1

    iget v5, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mNafRetryCounter:I

    add-int/lit8 v11, v5, 0x1

    if-ge v11, v3, :cond_1

    add-int/2addr v5, v10

    .line 1994
    iput v5, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mNafRetryCounter:I

    .line 1995
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->refreshDns()V

    .line 1996
    sget-object v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v2, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mNafRetryCounter: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mNafRetryCounter:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1998
    invoke-virtual {v0, v9}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 1999
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mThisSm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {v1, v9, v8, v6, v7}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(IIJ)V

    .line 2000
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mRequestState:Lcom/sec/internal/ims/servicemodules/ss/RequestState;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 2001
    invoke-virtual {v0, v10}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void

    .line 2005
    :cond_1
    :goto_0
    iget v5, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-static {v5}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v5

    .line 2008
    sget-object v11, Lcom/sec/internal/constants/Mno;->TELEKOM_SVN:Lcom/sec/internal/constants/Mno;

    const/16 v12, 0x193

    if-ne v5, v11, :cond_2

    const/16 v11, 0x194

    if-ne v1, v11, :cond_2

    move v11, v12

    goto :goto_1

    :cond_2
    move v11, v1

    .line 2012
    :goto_1
    sget-object v13, Lcom/sec/internal/constants/Mno;->CHT:Lcom/sec/internal/constants/Mno;

    const/16 v14, 0x3ec

    const/16 v15, 0x1f7

    const/4 v6, 0x0

    if-ne v5, v13, :cond_5

    if-eq v11, v15, :cond_4

    const/16 v7, 0x3ea

    if-eq v11, v7, :cond_4

    const/16 v7, 0x3f1

    if-eq v11, v7, :cond_4

    if-eq v11, v14, :cond_4

    const/16 v7, 0x3ee

    if-eq v11, v7, :cond_4

    const/16 v7, 0x3ef

    if-eq v11, v7, :cond_4

    const/16 v7, 0x3f5

    if-eq v11, v7, :cond_4

    const/16 v7, 0x3f6

    if-eq v11, v7, :cond_4

    const/16 v7, 0x2726

    if-lt v11, v7, :cond_3

    goto :goto_2

    :cond_3
    move v7, v6

    goto :goto_3

    :cond_4
    :goto_2
    move v7, v10

    :goto_3
    if-eqz v7, :cond_5

    move v11, v12

    :cond_5
    if-ne v11, v12, :cond_6

    .line 2028
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isForbidden()Z

    move-result v7

    if-nez v7, :cond_6

    iget-object v7, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    if-eqz v7, :cond_6

    iget v7, v7, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->timerFor403:I

    if-eqz v7, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isChnNoRuleCbPut403Error()Z

    move-result v7

    if-nez v7, :cond_6

    .line 2029
    invoke-virtual {v0, v9}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 2031
    invoke-virtual {v0, v10}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->setForce403Error(Z)V

    .line 2032
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    iget v3, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->updateCapabilities(I)V

    .line 2034
    sget-object v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v3, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string v4, "By 403 Error, SS request will block"

    invoke-static {v1, v3, v4}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 2035
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    iget v3, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string/jumbo v4, "set force CSFB by 403 Error "

    invoke-virtual {v1, v3, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->writeDump(ILjava/lang/String;)V

    .line 2037
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    iget v3, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->registerCwdbObserver(I)V

    .line 2038
    invoke-direct {v0, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->setTimerFor403(Ljava/lang/String;)V

    .line 2040
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mThisSm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    const/16 v1, 0xc

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v12, v2, v3}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(IIJ)V

    return-void

    .line 2044
    :cond_6
    invoke-direct {v0, v11, v5}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isCsfbErrorCode(ILcom/sec/internal/constants/Mno;)Z

    move-result v7

    if-eqz v7, :cond_7

    move v11, v12

    .line 2048
    :cond_7
    sget-object v7, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    sget-object v13, Lcom/sec/internal/constants/Mno;->DISH:Lcom/sec/internal/constants/Mno;

    sget-object v15, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    filled-new-array {v7, v13, v15}, [Lcom/sec/internal/constants/Mno;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v7

    if-eqz v7, :cond_8

    if-ne v11, v12, :cond_8

    const/16 v15, 0x1f7

    goto :goto_4

    :cond_8
    move v15, v11

    .line 2052
    :goto_4
    sget-object v7, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v11, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "errorCode "

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " is converted to "

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v11, v12}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 2053
    invoke-virtual {v5}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v5

    if-eqz v5, :cond_e

    if-eq v1, v14, :cond_e

    .line 2054
    iget-boolean v5, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsUtConnectionError:Z

    const/16 v11, 0x64

    const/4 v12, 0x2

    if-eqz v5, :cond_d

    if-eqz v2, :cond_d

    .line 2055
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 2056
    iput-boolean v6, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsUtConnectionError:Z

    .line 2057
    iget v13, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string v14, "UT connection failed."

    invoke-static {v7, v13, v14}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 2060
    iget v13, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mNafRetryCounter:I

    add-int/2addr v13, v10

    if-lt v13, v3, :cond_9

    iget v13, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mBsfRetryCounter:I

    add-int/2addr v13, v10

    if-ge v13, v4, :cond_b

    :cond_9
    const-string v13, "failed to connect"

    .line 2061
    invoke-virtual {v5, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_a

    const-string/jumbo v14, "xcap"

    invoke-virtual {v5, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_a

    iget v14, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mNafRetryCounter:I

    add-int/lit8 v6, v14, 0x1

    if-ge v6, v3, :cond_a

    add-int/2addr v14, v10

    .line 2062
    iput v14, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mNafRetryCounter:I

    .line 2064
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->refreshDns()V

    :goto_5
    move v3, v10

    goto :goto_6

    .line 2065
    :cond_a
    invoke-virtual {v5, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v3, "bsf"

    invoke-virtual {v5, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget v3, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mBsfRetryCounter:I

    add-int/lit8 v6, v3, 0x1

    if-ge v6, v4, :cond_b

    add-int/2addr v3, v10

    .line 2066
    iput v3, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mBsfRetryCounter:I

    .line 2068
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->refreshDns()V

    goto :goto_5

    :cond_b
    const/4 v3, 0x0

    :goto_6
    if-nez v3, :cond_c

    const-string/jumbo v4, "timeout"

    .line 2071
    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c

    iget v4, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtHttpRetryCounter:I

    if-ge v4, v12, :cond_c

    add-int/2addr v4, v10

    .line 2072
    iput v4, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtHttpRetryCounter:I

    goto :goto_7

    :cond_c
    move v10, v3

    .line 2076
    :goto_7
    iget v3, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "errStr: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", needRetry = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mNafRetryCounter: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mNafRetryCounter:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mBsfRetryCounter: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mBsfRetryCounter:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mUtHttpRetryCounter: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtHttpRetryCounter:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v3, v4}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    if-eqz v10, :cond_e

    .line 2079
    invoke-virtual {v0, v9}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 2080
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mThisSm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    const-wide/16 v2, 0x7ef4

    invoke-virtual {v1, v9, v8, v2, v3}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(IIJ)V

    .line 2081
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mRequestState:Lcom/sec/internal/ims/servicemodules/ss/RequestState;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    const-wide/16 v1, 0x64

    .line 2082
    invoke-virtual {v0, v11, v1, v2}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(IJ)V

    return-void

    :cond_d
    if-nez v5, :cond_e

    const/16 v3, 0x193

    if-eq v1, v3, :cond_f

    .line 2085
    iget v4, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtRetryCounter:I

    if-ge v4, v12, :cond_f

    .line 2086
    iget v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string v2, "CHN operator UT failed, retry after 5s"

    invoke-static {v7, v1, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 2087
    iget v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtRetryCounter:I

    add-int/2addr v1, v10

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtRetryCounter:I

    .line 2089
    invoke-static {}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->getInstance()Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    move-result-object v1

    iget v2, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->clearLastAuthInfo(I)V

    .line 2090
    invoke-virtual {v0, v9}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 2091
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mThisSm:Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    const-wide/16 v2, 0x7ef4

    invoke-virtual {v1, v9, v8, v2, v3}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(IIJ)V

    .line 2092
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mRequestState:Lcom/sec/internal/ims/servicemodules/ss/RequestState;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    const-wide/16 v1, 0x1388

    .line 2093
    invoke-virtual {v0, v11, v1, v2}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(IJ)V

    return-void

    :cond_e
    const/16 v3, 0x193

    .line 2098
    :cond_f
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v4, v4, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    invoke-static {v4}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->isPutRequest(I)Z

    move-result v4

    if-eqz v4, :cond_10

    const/4 v4, 0x0

    .line 2099
    iput-boolean v4, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mSeparatedMedia:Z

    iput-boolean v4, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mSeparatedCfAll:Z

    iput-boolean v4, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mSeparatedCFNRY:Z

    iput-boolean v4, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mSeparatedCFNL:Z

    const/4 v4, -0x1

    .line 2100
    iput v4, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mMainCondition:I

    .line 2103
    :cond_10
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    if-lez v15, :cond_11

    move v12, v15

    goto :goto_8

    :cond_11
    move v12, v3

    :goto_8
    const-string v3, "errorCode"

    .line 2104
    invoke-virtual {v4, v3, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "originErrorCode"

    .line 2105
    invoke-virtual {v4, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz v2, :cond_12

    .line 2106
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    if-eqz v1, :cond_12

    iget-boolean v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->isErrorMsgDisplay:Z

    if-eqz v1, :cond_12

    .line 2107
    new-instance v1, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;

    invoke-direct {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;-><init>()V

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtXmlParse;->parseError(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "errorMsg"

    invoke-virtual {v4, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2110
    :cond_12
    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->failUtRequest(Landroid/os/Bundle;)V

    return-void
.end method

.method private sendDisconnectPdnWithDelay()V
    .locals 8

    const/4 v0, 0x2

    .line 762
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 765
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    const/16 v2, 0x74

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    move v1, v3

    goto :goto_2

    .line 768
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    const/16 v2, 0x1388

    if-eqz v1, :cond_5

    .line 769
    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->delay_disconnect_pdn:I

    if-le v1, v2, :cond_4

    .line 772
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getAllSimManagers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 773
    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimAvailable()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimState()I

    move-result v5

    if-nez v5, :cond_1

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isDualIMS()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 777
    :cond_3
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v4

    if-ge v3, v0, :cond_5

    .line 778
    iget v5, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    if-eq v5, v4, :cond_4

    goto :goto_1

    :cond_4
    move v7, v3

    move v3, v1

    move v1, v7

    goto :goto_2

    :cond_5
    :goto_1
    move v1, v3

    move v3, v2

    .line 785
    :goto_2
    sget-object v2, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v4, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendDisconnectPdnWithDelay: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "ms, loadedSim : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v4, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    int-to-long v1, v3

    .line 786
    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(IJ)V

    return-void
.end method

.method private setCbUserConfig(Lcom/sec/internal/ims/servicemodules/ss/MEDIA;ZI)V
    .locals 2

    .line 572
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->AUDIO:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 573
    iget p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string/jumbo v0, "ss_volte_cb_pref"

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getUserSetToInt(ILjava/lang/String;I)I

    move-result v1

    goto :goto_0

    .line 575
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->VIDEO:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    if-ne p1, v0, :cond_1

    .line 576
    iget p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string/jumbo v0, "ss_video_cb_pref"

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getUserSetToInt(ILjava/lang/String;I)I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz p2, :cond_2

    or-int p1, v1, p3

    goto :goto_1

    :cond_2
    not-int p1, p3

    and-int/2addr p1, v1

    .line 585
    :goto_1
    iget p2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-virtual {p0, p2, v0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->setUserSet(ILjava/lang/String;I)V

    return-void
.end method

.method private setTimerFor403(Ljava/lang/String;)V
    .locals 4

    .line 2166
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->timerFor403:I

    .line 2167
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "10 minutes"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 v0, 0x258

    :cond_0
    if-lez v0, :cond_1

    .line 2171
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/sec/internal/helper/PreciseAlarmManager;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/PreciseAlarmManager;

    move-result-object p1

    const/16 v1, 0xe

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(II)Landroid/os/Message;

    move-result-object p0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-virtual {p1, p0, v0, v1}, Lcom/sec/internal/helper/PreciseAlarmManager;->sendMessageDelayed(Landroid/os/Message;J)Lcom/sec/internal/helper/DelayedMessage;

    :cond_1
    return-void
.end method

.method private updateCallforwardingInfo(Lcom/sec/internal/constants/Mno;)Ljava/lang/String;
    .locals 5

    .line 934
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->support_media:Z

    if-nez v0, :cond_0

    .line 935
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    const/16 v1, 0xff

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    goto :goto_0

    .line 936
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->convertToMedia(I)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->ALL:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    if-ne v0, v1, :cond_1

    .line 937
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    const/4 v1, 0x1

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    .line 940
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    if-nez v1, :cond_2

    .line 941
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->number:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 942
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPreviousCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    iget v2, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    iget v3, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->convertToMedia(I)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->getRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->number:Ljava/lang/String;

    .line 943
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "previous activated number set "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->number:Ljava/lang/String;

    invoke-static {v3}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 947
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->isCFSingleElement:Z

    const/4 v2, 0x4

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v3, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    const/4 v4, 0x5

    if-eq v3, v4, :cond_7

    if-ne v3, v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x7

    if-ne v3, v4, :cond_4

    .line 953
    iget p1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->timeSeconds:I

    iget-boolean v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->support_ss_namespace:Z

    .line 954
    invoke-static {p1, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->makeNoReplyTimerXml(IZ)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object p1

    .line 953
    invoke-static {p1}, Lcom/sec/internal/constants/ims/XmlCreator;->toXcapXml(Lcom/sec/internal/constants/ims/XmlElement;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 955
    :cond_4
    sget-object v0, Lcom/sec/internal/constants/Mno;->SINGTEL:Lcom/sec/internal/constants/Mno;

    if-eq p1, v0, :cond_5

    sget-object v0, Lcom/sec/internal/constants/Mno;->FET:Lcom/sec/internal/constants/Mno;

    if-ne p1, v0, :cond_6

    :cond_5
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mSeparatedCFNRY:Z

    if-nez v0, :cond_6

    const/4 v0, 0x2

    if-ne v3, v0, :cond_6

    .line 956
    iget v0, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    .line 957
    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->convertToMedia(I)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getCallForwardRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->support_ss_namespace:Z

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->timeSeconds:I

    invoke-static {v0, v1, p1, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->makeSingleXml(Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;ZLcom/sec/internal/constants/Mno;I)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object p1

    .line 956
    invoke-static {p1}, Lcom/sec/internal/constants/ims/XmlCreator;->toXcapXml(Lcom/sec/internal/constants/ims/XmlElement;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 960
    :cond_6
    iget v0, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    .line 961
    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->convertToMedia(I)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getCallForwardRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->support_ss_namespace:Z

    invoke-static {v0, v1, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->makeSingleXml(Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;ZLcom/sec/internal/constants/Mno;)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object p1

    .line 960
    invoke-static {p1}, Lcom/sec/internal/constants/ims/XmlCreator;->toXcapXml(Lcom/sec/internal/constants/ims/XmlElement;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 950
    :cond_7
    :goto_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getCfRuleSet()Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->support_ss_namespace:Z

    invoke-static {v0, p1, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->makeMultipleXml(Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;Lcom/sec/internal/constants/Mno;Z)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object p1

    .line 949
    invoke-static {p1}, Lcom/sec/internal/constants/ims/XmlCreator;->toXcapXml(Lcom/sec/internal/constants/ims/XmlElement;)Ljava/lang/String;

    move-result-object p1

    .line 965
    :goto_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    if-ne v1, v2, :cond_8

    .line 966
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPreviousCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    iget v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->convertToMedia(I)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->getRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->clear()V

    :cond_8
    return-object p1
.end method

.method private updateDnsInfo()V
    .locals 4

    .line 2248
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnListener:Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->getDnsServers(Lcom/sec/internal/interfaces/ims/core/PdnEventListener;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2249
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 2251
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mDnsAddresses:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 2252
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2253
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mDnsAddresses:Ljava/util/List;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mNetwork:Landroid/net/Network;

    invoke-virtual {v3, v1}, Landroid/net/Network;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2256
    :catch_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string v1, "UnknownHostException"

    invoke-static {v0, p0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    return-void

    .line 2259
    :cond_1
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string v2, "Dns Service List is null"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0xc

    const/16 v1, 0x3fa

    .line 2260
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(II)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method protected checkUtInternalError()I
    .locals 3

    .line 249
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isForbidden()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string v1, "SS request is blocked by previous 403 error"

    invoke-static {v0, p0, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    const/16 p0, 0x3eb

    return p0

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->isCallBarringType(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 255
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string v1, "not support All CB over IMS. CSFB."

    invoke-static {v0, p0, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    const/16 p0, 0x3ea

    return p0

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->checkAvailabilityError(I)I

    move-result v0

    if-eqz v0, :cond_2

    return v0

    .line 264
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->isInvalidUtRequest(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 p0, 0x3f0

    return p0

    .line 268
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->isTerminalRequest(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->checkXcapApn(I)Z

    move-result v0

    if-nez v0, :cond_4

    const/16 p0, 0x3f1

    return p0

    .line 272
    :cond_4
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 273
    sget-object v1, Lcom/sec/internal/constants/Mno;->KOODO:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_5

    sget-object v1, Lcom/sec/internal/constants/Mno;->TELUS:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_6

    :cond_5
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->isCallBarringType(I)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 p0, 0x3f2

    return p0

    .line 277
    :cond_6
    sget-object v1, Lcom/sec/internal/constants/Mno;->WIND_GREECE:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_7

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isServiceDeactive()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 278
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string v1, "Service is disabled on network side"

    invoke-static {v0, p0, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    const/16 p0, 0x3f3

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public clearCachedSsData(I)V
    .locals 3

    const/16 v0, 0x65

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eq p1, v0, :cond_2

    const/16 v0, 0x67

    if-eq p1, v0, :cond_1

    const/16 v0, 0x69

    if-eq p1, v0, :cond_0

    .line 630
    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    .line 631
    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mICBCache:Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mOCBCache:Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    .line 632
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mHasICBCache:Z

    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mHasOCBCache:Z

    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mHasCFCache:Z

    return-void

    .line 624
    :cond_0
    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mOCBCache:Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    .line 625
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mHasOCBCache:Z

    return-void

    .line 620
    :cond_1
    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mICBCache:Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    .line 621
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mHasICBCache:Z

    return-void

    .line 616
    :cond_2
    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    .line 617
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mHasCFCache:Z

    return-void
.end method

.method protected completeUtRequest()V
    .locals 1

    const/4 v0, 0x0

    .line 287
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->completeUtRequest([Landroid/os/Bundle;)V

    return-void
.end method

.method protected completeUtRequest(Landroid/os/Bundle;)V
    .locals 0

    .line 299
    filled-new-array {p1}, [Landroid/os/Bundle;

    move-result-object p1

    .line 300
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->completeUtRequest([Landroid/os/Bundle;)V

    return-void
.end method

.method protected completeUtRequest(Z)V
    .locals 3

    .line 292
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    filled-new-array {v0}, [Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    .line 293
    aget-object v1, v0, v1

    const-string/jumbo v2, "status"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 294
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->completeUtRequest([Landroid/os/Bundle;)V

    return-void
.end method

.method protected completeUtRequest([Landroid/os/Bundle;)V
    .locals 4

    .line 304
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    .line 305
    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->requestId:I

    .line 307
    invoke-direct {p0, p1, v1, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->printCompleteLog([Landroid/os/Bundle;II)V

    .line 309
    iget v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 310
    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 311
    iget v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mNafRetryCounter:I

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mBsfRetryCounter:I

    invoke-static {v2, v3}, Lcom/sec/internal/helper/httpclient/DnsController;->correctServerAddr(II)V

    :cond_0
    const/16 v2, 0xf

    .line 314
    invoke-virtual {p0, v2}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 315
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->isDisconnectXcapPdn:Z

    if-eqz v2, :cond_1

    .line 316
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->sendDisconnectPdnWithDelay()V

    :cond_1
    const/4 v2, 0x0

    .line 318
    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    .line 319
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mRequestState:Lcom/sec/internal/ims/servicemodules/ss/RequestState;

    invoke-virtual {p0, v2}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 321
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-virtual {v2, v3, v1, v0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->notifySuccessResult(III[Landroid/os/Bundle;)V

    .line 323
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->unlockProcessingRequest()Z

    move-result p1

    if-nez p1, :cond_2

    .line 324
    sget-object p1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string v1, "Process next request..."

    invoke-static {p1, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 325
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->processUtRequest()V

    :cond_2
    return-void
.end method

.method protected createCBRequestId()I
    .locals 1

    .line 1688
    sget p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCBIdCounter:I

    const/16 v0, 0xff

    if-lt p0, v0, :cond_0

    const/4 p0, 0x0

    .line 1689
    sput p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCBIdCounter:I

    .line 1691
    :cond_0
    sget p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCBIdCounter:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCBIdCounter:I

    return p0
.end method

.method protected dequeueProfile()Lcom/sec/internal/ims/servicemodules/ss/UtProfile;
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPendingRequests:Ljava/util/List;

    monitor-enter v0

    .line 153
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPendingRequests:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 154
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected disconnectPdn()V
    .locals 4

    const/4 v0, 0x1

    .line 914
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    const/4 v0, 0x2

    .line 915
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 916
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 917
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disconnectPdn: mPdnType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 918
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnType:I

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnListener:Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->stopPdnConnectivity(IILcom/sec/internal/interfaces/ims/core/PdnEventListener;)I

    const/4 v0, 0x3

    .line 919
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    :cond_0
    return-void
.end method

.method protected enqueueProfile(Lcom/sec/internal/ims/servicemodules/ss/UtProfile;)V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPendingRequests:Ljava/util/List;

    monitor-enter v0

    .line 147
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPendingRequests:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected failUtRequest(Landroid/os/Bundle;)V
    .locals 5

    .line 361
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    .line 362
    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->requestId:I

    .line 364
    invoke-direct {p0, p1, v1, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->printFailLog(Landroid/os/Bundle;II)V

    const/4 v1, 0x0

    .line 366
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsGetForAllCb:Z

    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsGetAfter412:Z

    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isGetBeforePut:Z

    const/16 v2, 0xf

    .line 367
    invoke-virtual {p0, v2}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    const-string/jumbo v2, "originErrorCode"

    .line 368
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x3f9

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    if-eqz v2, :cond_0

    iget-boolean v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->isDisconnectXcapPdn:Z

    if-eqz v2, :cond_1

    .line 369
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->sendDisconnectPdnWithDelay()V

    .line 372
    :cond_1
    iget v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 373
    sget-object v3, Lcom/sec/internal/constants/Mno;->CTC:Lcom/sec/internal/constants/Mno;

    if-eq v2, v3, :cond_2

    sget-object v3, Lcom/sec/internal/constants/Mno;->CTCMO:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_3

    :cond_2
    const-string v2, "errorCode"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/16 v3, 0x193

    if-ne v1, v3, :cond_3

    .line 374
    sget-object v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string v4, "CTC have to retry to CDMA dial"

    invoke-static {v1, v3, v4}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v1, 0x1389

    .line 375
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 378
    :cond_3
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->notifyFailResult(ILandroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 380
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    .line 381
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mRequestState:Lcom/sec/internal/ims/servicemodules/ss/RequestState;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 383
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->unlockProcessingRequest()Z

    move-result p1

    if-nez p1, :cond_4

    .line 384
    sget-object p1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string v1, "Process next request..."

    invoke-static {p1, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 385
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->processUtRequest()V

    :cond_4
    return-void
.end method

.method protected getCallBarringRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;
    .locals 6

    .line 1357
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mICBCache:Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    const/16 v1, 0x69

    if-ne p1, v1, :cond_0

    .line 1359
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mOCBCache:Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    :cond_0
    const/4 p1, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 1363
    invoke-direct {p0, v0, p2}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getMatchedMediaForCB(Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;Lcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1366
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget p2, p2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-virtual {v0, p2, v3}, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;->getRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;

    move-result-object p2

    .line 1367
    iget-object v0, p2, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1368
    iget-object v0, p2, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    if-eq p0, p1, :cond_1

    if-ne p0, v2, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/ss/Condition;->state:Z

    .line 1370
    iput p0, v0, Lcom/sec/internal/ims/servicemodules/ss/Condition;->action:I

    :cond_3
    return-object p2

    .line 1376
    :cond_4
    new-instance v3, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;

    invoke-direct {v3}, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;-><init>()V

    .line 1377
    iput-boolean v1, v3, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->allow:Z

    .line 1378
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getCbRuleId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->ruleId:Ljava/lang/String;

    .line 1379
    new-instance v4, Lcom/sec/internal/ims/servicemodules/ss/Condition;

    invoke-direct {v4}, Lcom/sec/internal/ims/servicemodules/ss/Condition;-><init>()V

    iput-object v4, v3, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    .line 1380
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v5, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    iput v5, v4, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    .line 1381
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    if-eq p0, p1, :cond_5

    if-ne p0, v2, :cond_6

    :cond_5
    move v1, v2

    :cond_6
    iput-boolean v1, v4, Lcom/sec/internal/ims/servicemodules/ss/Condition;->state:Z

    .line 1383
    iput p0, v4, Lcom/sec/internal/ims/servicemodules/ss/Condition;->action:I

    if-nez v0, :cond_7

    .line 1386
    new-instance v0, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;-><init>()V

    .line 1388
    :cond_7
    iget-object p0, v3, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    .line 1389
    iget-object p0, v3, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1390
    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->setRule(Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;)V

    return-object v3
.end method

.method protected getCallForwardRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;
    .locals 8

    .line 1396
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 1398
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1, p1, p2}, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->isExist(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->supportAlternativeMediaForCf:Z

    if-nez v1, :cond_1

    sget-object v1, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    sget-object v4, Lcom/sec/internal/constants/Mno;->H3G_SE:Lcom/sec/internal/constants/Mno;

    filled-new-array {v1, v4}, [Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 1399
    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/sec/internal/constants/Mno;->CU:Lcom/sec/internal/constants/Mno;

    sget-object v4, Lcom/sec/internal/constants/Mno;->CTC:Lcom/sec/internal/constants/Mno;

    sget-object v5, Lcom/sec/internal/constants/Mno;->CSL:Lcom/sec/internal/constants/Mno;

    sget-object v6, Lcom/sec/internal/constants/Mno;->PCCW:Lcom/sec/internal/constants/Mno;

    filled-new-array {v1, v4, v5, v6}, [Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 1400
    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->isExist(I)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 1399
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    sget-object v4, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->ALL:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    invoke-virtual {v1, p1, v4}, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->isExist(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    :goto_1
    move v1, v2

    goto :goto_2

    :cond_3
    move v1, v3

    :goto_2
    const/4 v4, 0x4

    if-eqz v1, :cond_11

    .line 1404
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->supportAlternativeMediaForCf:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    sget-object v5, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->ALL:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    invoke-virtual {v1, p1, v5}, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->isExist(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1405
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    invoke-virtual {p2, p1, v5}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->getRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    move-result-object p1

    goto :goto_3

    .line 1406
    :cond_4
    sget-object v1, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    sget-object v5, Lcom/sec/internal/constants/Mno;->H3G_SE:Lcom/sec/internal/constants/Mno;

    filled-new-array {v1, v5}, [Lcom/sec/internal/constants/Mno;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    invoke-virtual {v1, p1, p2}, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->isExist(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1407
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->ALL:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    invoke-virtual {p2, p1, v1}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->getRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    move-result-object p1

    .line 1408
    iget-object p2, p1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-object p2, p2, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1409
    iget-object p2, p1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-object p2, p2, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->AUDIO:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1410
    :cond_5
    sget-object v1, Lcom/sec/internal/constants/Mno;->CU:Lcom/sec/internal/constants/Mno;

    sget-object v5, Lcom/sec/internal/constants/Mno;->CTC:Lcom/sec/internal/constants/Mno;

    sget-object v6, Lcom/sec/internal/constants/Mno;->CSL:Lcom/sec/internal/constants/Mno;

    sget-object v7, Lcom/sec/internal/constants/Mno;->PCCW:Lcom/sec/internal/constants/Mno;

    filled-new-array {v1, v5, v6, v7}, [Lcom/sec/internal/constants/Mno;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    invoke-virtual {v1, p1, p2}, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->isExist(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    sget-object v5, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->AUDIO:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    invoke-virtual {v1, p1, v5}, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->isExist(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1411
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    invoke-virtual {v1, p1, v5}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->getRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    move-result-object p1

    .line 1412
    iget-object v1, p1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1413
    iget-object v1, p1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1415
    :cond_6
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    invoke-virtual {v1, p1, p2}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->getRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    move-result-object p1

    .line 1418
    :goto_3
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget-object p2, p2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->number:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_a

    .line 1420
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, p2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    if-nez v1, :cond_7

    sget-object v1, Lcom/sec/internal/constants/Mno;->WIND_GREECE:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_7

    .line 1421
    sget-object p2, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string v4, "number change prevented for deactivation"

    invoke-static {p2, v1, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_4

    .line 1423
    :cond_7
    iget-object v1, p1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object p2, p2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->number:Ljava/lang/String;

    iput-object p2, v1, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    .line 1426
    :goto_4
    iget-object p2, p1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    if-eq v1, v2, :cond_9

    const/4 v4, 0x3

    if-ne v1, v4, :cond_8

    goto :goto_5

    :cond_8
    move v2, v3

    :cond_9
    :goto_5
    iput-boolean v2, p2, Lcom/sec/internal/ims/servicemodules/ss/Condition;->state:Z

    goto :goto_6

    .line 1428
    :cond_a
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, p2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    if-ne v1, v2, :cond_b

    .line 1430
    iget-object v1, p1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iput-boolean v2, v1, Lcom/sec/internal/ims/servicemodules/ss/Condition;->state:Z

    .line 1431
    sget-object v1, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_d

    .line 1432
    iget-object v1, p1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object p2, p2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->number:Ljava/lang/String;

    iput-object p2, v1, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    goto :goto_6

    :cond_b
    if-ne v1, v4, :cond_c

    .line 1435
    iget-object p2, p1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    const-string v1, ""

    iput-object v1, p2, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    .line 1436
    iget-object p2, p1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iput-boolean v3, p2, Lcom/sec/internal/ims/servicemodules/ss/Condition;->state:Z

    goto :goto_6

    .line 1438
    :cond_c
    iget-object p2, p1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iput-boolean v3, p2, Lcom/sec/internal/ims/servicemodules/ss/Condition;->state:Z

    .line 1440
    :cond_d
    :goto_6
    iget-object p2, p1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    iput v1, p2, Lcom/sec/internal/ims/servicemodules/ss/Condition;->action:I

    .line 1442
    iget-object p2, p1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object p2, p2, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_f

    .line 1443
    iget-object p2, p1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object p2, p2, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    const-string/jumbo v1, "sip:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_e

    iget-object p2, p1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object p2, p2, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    const-string/jumbo v1, "tel:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_e

    iget-object p2, p1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object p2, p2, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    const-string/jumbo v1, "voicemail:"

    .line 1444
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_e

    .line 1445
    iget-object p2, p1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v1, p2, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getNetworkPreferredUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    goto :goto_7

    .line 1446
    :cond_e
    sget-object p2, Lcom/sec/internal/constants/Mno;->TMOBILE_PL:Lcom/sec/internal/constants/Mno;

    if-ne v0, p2, :cond_f

    .line 1447
    iget-object p2, p1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v1, p2, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->getNumberFromURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getNetworkPreferredUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    .line 1451
    :cond_f
    :goto_7
    iget-object p2, p1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object p2, p2, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->fwdElm:Ljava/util/List;

    if-eqz p2, :cond_10

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_10

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isSupportfwd(Lcom/sec/internal/constants/Mno;)Z

    move-result p0

    if-eqz p0, :cond_10

    .line 1452
    iget-object p0, p1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->fwdElm:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_10
    return-object p1

    .line 1458
    :cond_11
    new-instance v0, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;-><init>()V

    .line 1459
    new-instance v1, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    invoke-direct {v1}, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;-><init>()V

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    .line 1460
    new-instance v1, Lcom/sec/internal/ims/servicemodules/ss/Condition;

    invoke-direct {v1}, Lcom/sec/internal/ims/servicemodules/ss/Condition;-><init>()V

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    .line 1462
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->number:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 1463
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->number:Ljava/lang/String;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->getNumberFromURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getNetworkPreferredUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->number:Ljava/lang/String;

    .line 1466
    :cond_12
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->number:Ljava/lang/String;

    iput-object v2, v1, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    .line 1467
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getCfRuleId(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->ruleId:Ljava/lang/String;

    .line 1468
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iput p1, v1, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    .line 1469
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget p1, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    if-eqz p1, :cond_13

    if-ne p1, v4, :cond_14

    .line 1470
    :cond_13
    iput-boolean v3, v1, Lcom/sec/internal/ims/servicemodules/ss/Condition;->state:Z

    .line 1472
    :cond_14
    iput p1, v1, Lcom/sec/internal/ims/servicemodules/ss/Condition;->action:I

    .line 1474
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    if-nez p1, :cond_15

    .line 1475
    new-instance p1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    invoke-direct {p1}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    .line 1478
    :cond_15
    iget-object p1, v0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p1, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    .line 1479
    iget-object p1, v0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1480
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->setRule(Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;)V

    return-object v0
.end method

.method protected getCbRuleId()Ljava/lang/String;
    .locals 4

    .line 1532
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 1534
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    const/16 v2, 0x67

    if-eq v1, v2, :cond_2

    const/16 v2, 0x69

    if-eq v1, v2, :cond_0

    const-string p0, ""

    return-object p0

    .line 1536
    :cond_0
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getCbRuleIdFromFeature(Lcom/sec/internal/constants/Mno;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 1538
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OCB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->createCBRequestId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1541
    :cond_2
    sget-object v1, Lcom/sec/internal/constants/Mno;->CMHK:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->HK3:Lcom/sec/internal/constants/Mno;

    filled-new-array {v1, v2}, [Lcom/sec/internal/constants/Mno;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x5

    if-eqz v0, :cond_6

    .line 1542
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    if-eq v0, v1, :cond_3

    const/4 v3, 0x7

    if-eq v0, v3, :cond_3

    const/16 v3, 0x9

    if-ne v0, v3, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cbbaic:Ljava/lang/String;

    .line 1543
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 1544
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cbbaic:Ljava/lang/String;

    return-object p0

    .line 1545
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cbbicwr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    .line 1546
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cbbicwr:Ljava/lang/String;

    return-object p0

    .line 1547
    :cond_5
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cbbaic:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6

    .line 1548
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cbbaic:Ljava/lang/String;

    return-object p0

    .line 1551
    :cond_6
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    if-ne v0, v2, :cond_7

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cbbicwr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7

    .line 1552
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cbbicwr:Ljava/lang/String;

    return-object p0

    .line 1553
    :cond_7
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cbbaic:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_8

    .line 1554
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cbbaic:Ljava/lang/String;

    return-object p0

    .line 1556
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ICB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->createCBRequestId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getCbRuleSet(I)Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;
    .locals 9

    .line 1279
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 1281
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mICBCache:Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    const/16 v2, 0x69

    if-ne p1, v2, :cond_0

    .line 1283
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mOCBCache:Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    .line 1286
    :cond_0
    sget-object v2, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-ne v0, v2, :cond_1

    .line 1287
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->addKddiCbRules(Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;)Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    move-result-object p0

    return-object p0

    :cond_1
    if-eqz v1, :cond_9

    .line 1291
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;->clone()Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    move-result-object p1

    .line 1295
    iget-object v1, p1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->rules:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;

    .line 1296
    sget-object v5, Lcom/sec/internal/constants/Mno;->ELISA_FINLAND:Lcom/sec/internal/constants/Mno;

    sget-object v6, Lcom/sec/internal/constants/Mno;->TELEFONICA_CZ:Lcom/sec/internal/constants/Mno;

    sget-object v7, Lcom/sec/internal/constants/Mno;->VODAFONE_NEWZEALAND:Lcom/sec/internal/constants/Mno;

    sget-object v8, Lcom/sec/internal/constants/Mno;->CU:Lcom/sec/internal/constants/Mno;

    filled-new-array {v5, v6, v7, v8}, [Lcom/sec/internal/constants/Mno;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, v4, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget v6, v5, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v7, v7, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    if-ne v6, v7, :cond_3

    .line 1298
    iget-object v5, v5, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 1299
    iget-object v5, v4, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-object v5, v5, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v6, v6, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    invoke-static {v6}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->convertToMedia(I)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1302
    :cond_3
    iget-object v5, v4, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget v6, v5, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v8, v7, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    if-ne v6, v8, :cond_2

    iget-object v5, v5, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    iget v6, v7, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    invoke-static {v6}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->convertToMedia(I)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v5, v5, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->supportAlternativeMediaForCb:Z

    if-eqz v5, :cond_2

    iget-object v5, v4, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-object v5, v5, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    sget-object v6, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->ALL:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    .line 1303
    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1306
    :cond_4
    iget-object v3, v4, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v4, v4, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_6

    const/4 v6, 0x3

    if-ne v4, v6, :cond_5

    goto :goto_1

    :cond_5
    move v6, v2

    goto :goto_2

    :cond_6
    :goto_1
    move v6, v5

    :goto_2
    iput-boolean v6, v3, Lcom/sec/internal/ims/servicemodules/ss/Condition;->state:Z

    .line 1308
    iput v4, v3, Lcom/sec/internal/ims/servicemodules/ss/Condition;->action:I

    move v3, v5

    goto :goto_0

    :cond_7
    if-nez v3, :cond_8

    .line 1313
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    iget v2, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    invoke-direct {p0, v1, v2, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->makeCBRule(III)Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;

    move-result-object p0

    .line 1314
    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->setRule(Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;)V

    :cond_8
    return-object p1

    .line 1319
    :cond_9
    new-instance v0, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;-><init>()V

    .line 1320
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->convertToMedia(I)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getCallBarringRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;

    move-result-object p0

    .line 1321
    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->setRule(Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;)V

    return-object v0
.end method

.method protected getCbRuleSetForAll(ILcom/sec/internal/constants/Mno;)Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;
    .locals 4

    .line 1327
    sget-object p2, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string v1, "getCbRuleSetForAll"

    invoke-static {p2, v0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1329
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mICBCache:Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    const/16 v1, 0x69

    if-ne p1, v1, :cond_0

    .line 1331
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mOCBCache:Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    :cond_0
    if-eqz v0, :cond_4

    .line 1335
    iget p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string v1, "CBCache not null"

    invoke-static {p2, p1, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1336
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;->clone()Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    move-result-object p1

    .line 1338
    iget-object p2, p1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->rules:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;

    .line 1339
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_1
    iput-boolean v2, v0, Lcom/sec/internal/ims/servicemodules/ss/Condition;->state:Z

    .line 1341
    iput v1, v0, Lcom/sec/internal/ims/servicemodules/ss/Condition;->action:I

    goto :goto_0

    :cond_3
    return-object p1

    .line 1347
    :cond_4
    new-instance p2, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    invoke-direct {p2}, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;-><init>()V

    .line 1348
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->convertToMedia(I)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getCallBarringRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;

    move-result-object p0

    .line 1349
    invoke-virtual {p2, p0}, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->setRule(Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;)V

    return-object p2
.end method

.method protected getCbURL()Ljava/lang/String;
    .locals 5

    .line 1648
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    const/16 v2, 0x69

    const-string v3, "%22%5D"

    const-string v4, "/cp:ruleset/cp:rule%5B@id=%22"

    if-ne v1, v2, :cond_0

    .line 1649
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mOCBCache:Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    if-eqz v1, :cond_1

    .line 1650
    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->convertToMedia(I)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getMatchedMediaForCB(Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;Lcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1652
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mOCBCache:Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    .line 1653
    invoke-virtual {v2, p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;->getRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;

    move-result-object p0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->ruleId:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1658
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mICBCache:Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    if-eqz v1, :cond_1

    .line 1659
    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->convertToMedia(I)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getMatchedMediaForCB(Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;Lcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1661
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mICBCache:Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    .line 1662
    invoke-virtual {v2, p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;->getRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;

    move-result-object p0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->ruleId:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1668
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getCbRuleId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getCfRuleId(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    .line 1607
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cfu:Ljava/lang/String;

    goto :goto_0

    .line 1603
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cfni:Ljava/lang/String;

    goto :goto_0

    .line 1597
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cfnrc:Ljava/lang/String;

    goto :goto_0

    .line 1600
    :cond_2
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cfnr:Ljava/lang/String;

    goto :goto_0

    .line 1594
    :cond_3
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cfb:Ljava/lang/String;

    .line 1610
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->support_media:Z

    if-eqz v0, :cond_4

    .line 1611
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->convertToMedia(I)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object p0

    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->VIDEO:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    invoke-virtual {p0, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 1612
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_video"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_4
    return-object p1
.end method

.method protected getCfRuleSet()Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;
    .locals 13

    .line 1044
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 1047
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v1, :cond_11

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v4, v4, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    const/4 v5, 0x5

    if-eq v4, v5, :cond_11

    const/4 v5, 0x4

    if-eq v4, v5, :cond_11

    .line 1050
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->clone()Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    move-result-object v1

    .line 1052
    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->rules:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v6, v3

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;

    .line 1053
    check-cast v7, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    .line 1054
    iget-object v8, v7, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v8, v8, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->fwdElm:Ljava/util/List;

    if-eqz v8, :cond_1

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_1

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isSupportfwd(Lcom/sec/internal/constants/Mno;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1055
    iget-object v8, v7, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v8, v8, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->fwdElm:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 1058
    :cond_1
    iget-object v8, v7, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget v9, v8, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    iget-object v10, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v11, v10, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    const/4 v12, 0x1

    if-ne v9, v11, :cond_4

    iget-object v8, v8, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    iget v9, v10, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    .line 1059
    invoke-static {v9}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->convertToMedia(I)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v8, v8, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->supportAlternativeMediaForCf:Z

    if-eqz v8, :cond_2

    iget-object v8, v7, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-object v8, v8, Lcom/sec/internal/ims/servicemodules/ss/Condition;->media:Ljava/util/List;

    sget-object v9, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->ALL:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    .line 1060
    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_1

    :cond_2
    sget-object v8, Lcom/sec/internal/constants/Mno;->BELL:Lcom/sec/internal/constants/Mno;

    sget-object v9, Lcom/sec/internal/constants/Mno;->CSL:Lcom/sec/internal/constants/Mno;

    sget-object v10, Lcom/sec/internal/constants/Mno;->PCCW:Lcom/sec/internal/constants/Mno;

    filled-new-array {v8, v9, v10}, [Lcom/sec/internal/constants/Mno;

    move-result-object v8

    .line 1061
    invoke-virtual {v0, v8}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v8

    if-eqz v8, :cond_4

    :cond_3
    :goto_1
    move v8, v12

    goto :goto_2

    :cond_4
    move v8, v3

    :goto_2
    if-eqz v8, :cond_0

    .line 1064
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v8, v6, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_5

    .line 1065
    iget-object v8, v7, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iput-boolean v12, v8, Lcom/sec/internal/ims/servicemodules/ss/Condition;->state:Z

    .line 1066
    iget-object v8, v7, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v6, v6, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->number:Ljava/lang/String;

    iput-object v6, v8, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    goto :goto_3

    :cond_5
    if-ne v8, v12, :cond_6

    .line 1068
    iget-object v8, v7, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iput-boolean v12, v8, Lcom/sec/internal/ims/servicemodules/ss/Condition;->state:Z

    .line 1069
    iget-object v6, v6, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->number:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 1070
    iget-object v6, v7, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v8, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget-object v8, v8, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->number:Ljava/lang/String;

    iput-object v8, v6, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    goto :goto_3

    .line 1073
    :cond_6
    iget-object v6, v7, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iput-boolean v3, v6, Lcom/sec/internal/ims/servicemodules/ss/Condition;->state:Z

    if-ne v8, v5, :cond_7

    .line 1075
    iget-object v6, v7, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    const-string v8, ""

    iput-object v8, v6, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    .line 1078
    :cond_7
    :goto_3
    iget-object v6, v7, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-object v8, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v8, v8, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    iput v8, v6, Lcom/sec/internal/ims/servicemodules/ss/Condition;->action:I

    .line 1080
    iget-object v6, v7, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v6, v6, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    iget-object v6, v7, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v6, v6, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    const-string/jumbo v8, "sip:"

    .line 1081
    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8

    iget-object v6, v7, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v6, v6, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    const-string/jumbo v8, "tel:"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8

    iget-object v6, v7, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v6, v6, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    const-string/jumbo v8, "voicemail:"

    .line 1082
    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 1083
    iget-object v6, v7, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;->fwdElm:Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;

    iget-object v8, v6, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getNetworkPreferredUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/sec/internal/ims/servicemodules/ss/ForwardTo;->target:Ljava/lang/String;

    .line 1086
    :cond_8
    iget-boolean v6, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mSeparatedCFNL:Z

    if-eqz v6, :cond_9

    .line 1087
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->replaceRule(Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;)V

    :cond_9
    move v6, v12

    goto/16 :goto_0

    .line 1094
    :cond_a
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v4, v4, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    if-nez v4, :cond_c

    if-eqz v6, :cond_c

    .line 1095
    sget-object v4, Lcom/sec/internal/constants/Mno;->BELL:Lcom/sec/internal/constants/Mno;

    if-ne v0, v4, :cond_b

    return-object v1

    .line 1098
    :cond_b
    sget-object v4, Lcom/sec/internal/constants/Mno;->CSL:Lcom/sec/internal/constants/Mno;

    sget-object v5, Lcom/sec/internal/constants/Mno;->PCCW:Lcom/sec/internal/constants/Mno;

    filled-new-array {v4, v5}, [Lcom/sec/internal/constants/Mno;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1099
    iput v3, v1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->replyTimer:I

    return-object v1

    .line 1104
    :cond_c
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v5, v4, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    iget v4, v4, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    invoke-static {v4}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->convertToMedia(I)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->isExist(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 1105
    sget-object v4, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v5, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string v6, "CF rule is not present. Make new rule."

    invoke-static {v4, v5, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1106
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v5, v4, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    iget v6, v4, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    iget v7, v4, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->number:Ljava/lang/String;

    invoke-direct {p0, v5, v6, v7, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->makeCFRule(IIILjava/lang/String;)Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    move-result-object v4

    .line 1107
    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->setRule(Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;)V

    .line 1108
    iget-boolean v5, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mSeparatedCFNL:Z

    if-eqz v5, :cond_d

    .line 1109
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    invoke-virtual {v5, v4}, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->replaceRule(Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;)V

    .line 1113
    :cond_d
    sget-object v4, Lcom/sec/internal/constants/Mno;->GCF:Lcom/sec/internal/constants/Mno;

    if-ne v0, v4, :cond_e

    .line 1114
    iput v3, v1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->replyTimer:I

    goto :goto_4

    .line 1115
    :cond_e
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v4, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    if-ne v4, v2, :cond_f

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->timeSeconds:I

    if-lez p0, :cond_f

    .line 1116
    iput p0, v1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->replyTimer:I

    goto :goto_4

    .line 1117
    :cond_f
    sget-object p0, Lcom/sec/internal/constants/Mno;->CSL:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->PCCW:Lcom/sec/internal/constants/Mno;

    filled-new-array {p0, v2}, [Lcom/sec/internal/constants/Mno;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result p0

    if-eqz p0, :cond_10

    .line 1118
    iput v3, v1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->replyTimer:I

    :cond_10
    :goto_4
    return-object v1

    .line 1124
    :cond_11
    new-instance v1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    invoke-direct {v1}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;-><init>()V

    .line 1125
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->makeRuleSet(Lcom/sec/internal/constants/Mno;Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;)V

    .line 1127
    sget-object v4, Lcom/sec/internal/constants/Mno;->GCF:Lcom/sec/internal/constants/Mno;

    if-ne v0, v4, :cond_12

    .line 1128
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    if-eqz v0, :cond_13

    .line 1129
    iput v3, v0, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->replyTimer:I

    goto :goto_5

    .line 1131
    :cond_12
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v3, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    if-ne v3, v2, :cond_13

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->timeSeconds:I

    if-lez v0, :cond_13

    .line 1132
    iput v0, v1, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->replyTimer:I

    .line 1134
    :cond_13
    :goto_5
    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    return-object v1
.end method

.method protected getCfURL()Ljava/lang/String;
    .locals 6

    .line 1620
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 1621
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v2, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_5

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v3, 0x7

    if-ne v2, v3, :cond_1

    const-string p0, "/NoReplyTimer"

    return-object p0

    .line 1632
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    const-string v3, "%22%5D"

    const-string v4, "/cp:ruleset/cp:rule%5B@id=%22"

    if-eqz v2, :cond_4

    .line 1633
    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->convertToMedia(I)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v1

    .line 1634
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v5, v5, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-virtual {v2, v5, v1}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->getRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    move-result-object v2

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->ruleId:Ljava/lang/String;

    .line 1635
    sget-object v5, Lcom/sec/internal/constants/Mno;->CU:Lcom/sec/internal/constants/Mno;

    if-eq v0, v5, :cond_2

    sget-object v5, Lcom/sec/internal/constants/Mno;->CTC:Lcom/sec/internal/constants/Mno;

    if-ne v0, v5, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v5, v5, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-virtual {v0, v5, v1}, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->isExist(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    sget-object v5, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->AUDIO:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    invoke-virtual {v0, v1, v5}, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->isExist(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1637
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-virtual {v0, v1, v5}, Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;->getRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData$Rule;

    move-result-object v0

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->ruleId:Ljava/lang/String;

    :cond_3
    if-eqz v2, :cond_4

    .line 1640
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1644
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getCfRuleId(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1622
    :cond_5
    :goto_0
    sget-object p0, Lcom/sec/internal/constants/Mno;->CHT:Lcom/sec/internal/constants/Mno;

    if-ne v0, p0, :cond_6

    const-string p0, "?xmlns(ss=http://uri.etsi.org/ngn/params/xml/simservs/xcap)"

    return-object p0

    :cond_6
    const-string p0, "?xmlns(cp=urn:ietf:params:xml:ns:common-policy)"

    return-object p0
.end method

.method protected getConfig()Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;
    .locals 0

    .line 610
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mConfig:Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;

    return-object p0
.end method

.method protected getNetworkPreferredUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 668
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 672
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getPreferredUriType()Lcom/sec/ims/util/ImsUri$UriType;

    move-result-object v0

    .line 674
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getPublicId(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->getDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 676
    iget v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-static {v2}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    .line 677
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isGcfTelUri(Lcom/sec/internal/constants/Mno;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 678
    sget-object v0, Lcom/sec/ims/util/ImsUri$UriType;->TEL_URI:Lcom/sec/ims/util/ImsUri$UriType;

    :cond_1
    const-string v3, "\\p{Z}|\\p{Space}"

    const-string v4, ""

    .line 681
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    .line 683
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2b

    if-eq v3, v4, :cond_2

    .line 684
    invoke-direct {p0, v2, v0, p1, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->makeInternationalFormat(Lcom/sec/internal/constants/Mno;Lcom/sec/ims/util/ImsUri$UriType;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_2
    if-eqz v1, :cond_3

    .line 687
    sget-object p0, Lcom/sec/ims/util/ImsUri$UriType;->SIP_URI:Lcom/sec/ims/util/ImsUri$UriType;

    if-ne v0, p0, :cond_3

    .line 688
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "sip:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "@"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object p0

    const-string/jumbo p1, "phone"

    .line 689
    invoke-virtual {p0, p1}, Lcom/sec/ims/util/ImsUri;->setUserParam(Ljava/lang/String;)V

    goto :goto_0

    .line 691
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "tel:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object p0

    .line 694
    :goto_0
    invoke-virtual {p0}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getPreferredUriType()Lcom/sec/ims/util/ImsUri$UriType;
    .locals 1

    .line 647
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->cfUriType:Ljava/lang/String;

    const-string v0, "TEL"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 648
    sget-object p0, Lcom/sec/ims/util/ImsUri$UriType;->TEL_URI:Lcom/sec/ims/util/ImsUri$UriType;

    return-object p0

    .line 650
    :cond_0
    sget-object p0, Lcom/sec/ims/util/ImsUri$UriType;->SIP_URI:Lcom/sec/ims/util/ImsUri$UriType;

    return-object p0
.end method

.method protected getUserSetToBoolean(ILjava/lang/String;)Z
    .locals 1

    .line 2266
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/sec/ims/settings/UserConfiguration;->getUserConfig(Landroid/content/Context;ILjava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method protected getUserSetToInt(ILjava/lang/String;I)I
    .locals 0

    .line 2271
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2, p3}, Lcom/sec/ims/settings/UserConfiguration;->getUserConfig(Landroid/content/Context;ILjava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public handleEpdgAvailabilityChanged(Z)V
    .locals 4

    .line 904
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleEpdgAvailabilityChanged: to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-nez p1, :cond_0

    .line 906
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->hasConnection()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    .line 907
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 908
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    :cond_0
    return-void
.end method

.method public handlePdnFail(Landroid/telephony/PreciseDataConnectionState;)V
    .locals 7

    .line 790
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsRequestFailed:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    if-eqz v0, :cond_8

    .line 791
    invoke-virtual {p1}, Landroid/telephony/PreciseDataConnectionState;->getDataConnectionFailCause()I

    move-result v0

    .line 792
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnType:I

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getApnSettingFromPdnType(I)I

    move-result v1

    .line 793
    invoke-virtual {p1}, Landroid/telephony/PreciseDataConnectionState;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 794
    invoke-virtual {p1}, Landroid/telephony/PreciseDataConnectionState;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getApnTypeBitmask()I

    move-result p1

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_8

    .line 795
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isRetryPdnFailCause(I)Z

    move-result p1

    if-nez p1, :cond_8

    .line 796
    sget-object p1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "XCAP PDN setup failed. failCause = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mPdnRetryCounter : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnRetryCounter:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 798
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 806
    sget-object v2, Lcom/sec/internal/constants/Mno;->CHT:Lcom/sec/internal/constants/Mno;

    const/16 v3, 0x26

    const/4 v4, 0x2

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/sec/internal/constants/Mno;->SINGTEL:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_1

    :cond_0
    const/16 v2, 0x37

    if-eq v0, v2, :cond_7

    if-ne v0, v3, :cond_1

    goto/16 :goto_1

    .line 817
    :cond_1
    sget-object v2, Lcom/sec/internal/constants/Mno;->ETISALAT_UAE:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_2

    if-ne v0, v3, :cond_2

    .line 818
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Etisalat isRetryFailCause: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 822
    :cond_2
    sget-object v2, Lcom/sec/internal/constants/Mno;->VODAFONE_UK:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_3

    const/16 v2, 0x1b

    if-ne v0, v2, :cond_3

    .line 823
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string v2, "Vodafone UK returns MISSING_UNKNOWN_APN for non VoLTE SIM."

    invoke-static {p1, v0, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x21

    .line 827
    :cond_3
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PDN failCause : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->writeDump(ILjava/lang/String;)V

    .line 828
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v3, 0x31000007

    invoke-static {v3, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    const/4 v2, 0x0

    .line 830
    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->needPdnRequestForCW:Z

    .line 831
    invoke-virtual {p0}, Lcom/sec/internal/helper/StateMachine;->getCurrentState()Lcom/sec/internal/helper/IState;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mRequestState:Lcom/sec/internal/ims/servicemodules/ss/RequestState;

    if-ne v2, v3, :cond_4

    .line 833
    invoke-virtual {p0, v4}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 834
    invoke-virtual {p0, v4}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    .line 836
    :cond_4
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    invoke-virtual {v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->isTerminalRequest(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 837
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string v0, "Terminal request, should ignore pdn failed event"

    invoke-static {p1, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 842
    :cond_5
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->needToCsfb(ILcom/sec/internal/constants/Mno;)Z

    move-result v1

    const/16 v2, 0xc

    if-eqz v1, :cond_6

    const/16 p1, 0x193

    .line 843
    invoke-virtual {p0, v2, p1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(II)Landroid/os/Message;

    move-result-object p1

    goto :goto_0

    .line 845
    :cond_6
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string v3, "Disconnect xcap pdn"

    invoke-static {p1, v1, v3}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    add-int/lit16 v0, v0, 0x2726

    .line 846
    invoke-virtual {p0, v2, v0}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(II)Landroid/os/Message;

    move-result-object p1

    .line 848
    :goto_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_2

    .line 808
    :cond_7
    :goto_1
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string v1, "MULTI_CONN_TO_SAME_PDN_NOT_ALLOWED or NETWORK_FAILURE need retry."

    invoke-static {p1, v0, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p1, 0x1

    .line 809
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isRetryingCreatePdn:Z

    .line 810
    invoke-virtual {p0, v4}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    const/16 p1, 0x64

    .line 811
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 812
    invoke-virtual {p0, v4}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 813
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x5dc

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    :cond_8
    :goto_2
    return-void
.end method

.method public hasConditionOnCbCache()Z
    .locals 5

    .line 427
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    const/16 v2, 0x69

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 428
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mOCBCache:Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->isExist(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 429
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The network doesn\'t have OCB condition "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return v3

    .line 433
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mICBCache:Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->isExist(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 434
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The network doesn\'t have ICB condition "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return v3

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public hasConditionOnCfCache()Z
    .locals 6

    .line 402
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    const/4 v1, 0x7

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    const-string v1, "The network doesn\'t have CF condition "

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x0

    if-eq v0, v4, :cond_2

    if-ne v0, v3, :cond_1

    goto :goto_0

    .line 418
    :cond_1
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    invoke-virtual {v3, v0}, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->isExist(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 419
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v2, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return v5

    :cond_2
    :goto_0
    if-ne v0, v3, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v5

    :goto_1
    if-ge v0, v4, :cond_5

    .line 412
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    invoke-virtual {v3, v0}, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->isExist(I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 413
    sget-object v2, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, p0, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return v5

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    return v2
.end method

.method protected hasConnection()Z
    .locals 2

    .line 755
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 756
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getPdnType()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnType:I

    .line 758
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnType:I

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnListener:Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

    invoke-interface {v0, v1, p0}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isConnected(ILcom/sec/internal/interfaces/ims/core/PdnEventListener;)Z

    move-result p0

    return p0
.end method

.method public hasProfile()Z
    .locals 2

    .line 2284
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    if-nez v0, :cond_0

    .line 2285
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string v1, "mProfile is null. so ignore"

    invoke-static {v0, p0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method protected init(I)V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mRequestState:Lcom/sec/internal/ims/servicemodules/ss/RequestState;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;)V

    .line 132
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mResponseState:Lcom/sec/internal/ims/servicemodules/ss/ResponseState;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->addState(Lcom/sec/internal/helper/State;)V

    .line 134
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    .line 135
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getPdnController()Lcom/sec/internal/interfaces/ims/core/IPdnController;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    .line 137
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mRequestState:Lcom/sec/internal/ims/servicemodules/ss/RequestState;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->setInitialState(Lcom/sec/internal/helper/State;)V

    .line 139
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPendingRequests:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 140
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->unlockProcessingRequest()Z

    .line 142
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/sec/internal/helper/PreciseAlarmManager;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/PreciseAlarmManager;

    move-result-object p1

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/internal/helper/PreciseAlarmManager;->removeMessage(Landroid/os/Message;)V

    return-void
.end method

.method public isForbidden()Z
    .locals 0

    .line 924
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mForce403Error:Z

    return p0
.end method

.method public isPutRequestBlocked()Z
    .locals 3

    .line 222
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->insertNewRule:Z

    if-nez v0, :cond_2

    .line 223
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    const/16 v1, 0x65

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 224
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->hasConditionOnCfCache()Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_0
    const/16 v1, 0x69

    if-ne v0, v1, :cond_1

    .line 228
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mOCBCache:Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->hasConditionOnCbCache()Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_1
    const/16 v1, 0x67

    if-ne v0, v1, :cond_2

    .line 232
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mICBCache:Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->hasConditionOnCbCache()Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public isServiceDeactive()Z
    .locals 4

    .line 390
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    const/16 v1, 0x65

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    .line 391
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mCFCache:Lcom/sec/internal/ims/servicemodules/ss/CallForwardingData;

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->active:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    return v2

    :cond_1
    const/16 v1, 0x67

    if-ne v0, v1, :cond_3

    .line 393
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mICBCache:Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    if-eqz p0, :cond_2

    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->active:Z

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    return v2

    :cond_3
    const/16 v1, 0x69

    if-ne v0, v1, :cond_5

    .line 395
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mOCBCache:Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    if-eqz p0, :cond_4

    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData;->active:Z

    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    move v2, v3

    :goto_2
    return v2

    :cond_5
    return v3
.end method

.method protected lockProcessingRequest()Z
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPendingRequests:Ljava/util/List;

    monitor-enter v0

    .line 159
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPendingRequests:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsRunningRequest:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 160
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsRunningRequest:Z

    .line 161
    monitor-exit v0

    return v1

    .line 163
    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    .line 165
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected makeHeader()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1672
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1673
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mConfig:Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->nafServer:Ljava/lang/String;

    const-string v2, "Host"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1674
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->getAcceptEncoding(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Accept-Encoding"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Accept"

    const-string v2, "*/*"

    .line 1675
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1676
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mConfig:Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->impu:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "X-3GPP-Intended-Identity"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1677
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mConfig:Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->xdmUserAgent:Ljava/lang/String;

    const-string v2, "User-Agent"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1679
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->isPutRequest(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "Content-Type"

    const-string v1, "application/xcap-el+xml"

    .line 1680
    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method protected makeHttpParams()Lcom/sec/internal/helper/httpclient/HttpRequestParams;
    .locals 17

    move-object/from16 v0, p0

    .line 1836
    iget v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 1837
    new-instance v13, Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    invoke-direct {v13}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;-><init>()V

    .line 1838
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->makeHeader()Ljava/util/HashMap;

    move-result-object v14

    .line 1840
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mSocketFactory:Ljavax/net/SocketFactory;

    if-eqz v2, :cond_0

    .line 1841
    invoke-virtual {v13, v2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setSocketFactory(Ljavax/net/SocketFactory;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 1844
    :cond_0
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v3, v2, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->isReuseConnection:Z

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mDns:Lokhttp3/Dns;

    if-eqz v3, :cond_1

    .line 1845
    invoke-virtual {v13, v3}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setDns(Lokhttp3/Dns;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    goto/16 :goto_2

    .line 1846
    :cond_1
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mNetwork:Landroid/net/Network;

    if-eqz v3, :cond_6

    .line 1847
    iget v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->ip_version:I

    if-lez v2, :cond_5

    .line 1849
    sget-object v3, Lcom/sec/internal/constants/Mno;->CTCMO:Lcom/sec/internal/constants/Mno;

    if-ne v1, v3, :cond_2

    .line 1850
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPdnListener:Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

    invoke-interface {v3, v4}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->getLinkProperties(Lcom/sec/internal/interfaces/ims/core/PdnEventListener;)Lcom/sec/internal/helper/os/LinkPropertiesWrapper;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1851
    invoke-virtual {v3}, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->hasIPv4Address()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->hasGlobalIPv6Address()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1852
    sget-object v2, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v3, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string v4, "Local ip only has ipv4, use TYPE_A for DNS query"

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v7, 0x1

    goto :goto_0

    :cond_2
    move v7, v2

    .line 1856
    :goto_0
    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1857
    iget v2, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mNafRetryCounter:I

    iput v2, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mBsfRetryCounter:I

    .line 1859
    :cond_3
    sget-object v2, Lcom/sec/internal/constants/Mno;->TELSTRA:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->TELEFONICA_CZ:Lcom/sec/internal/constants/Mno;

    sget-object v4, Lcom/sec/internal/constants/Mno;->ETISALAT_UAE:Lcom/sec/internal/constants/Mno;

    sget-object v5, Lcom/sec/internal/constants/Mno;->SINGTEL:Lcom/sec/internal/constants/Mno;

    sget-object v6, Lcom/sec/internal/constants/Mno;->FET:Lcom/sec/internal/constants/Mno;

    filled-new-array {v2, v3, v4, v5, v6}, [Lcom/sec/internal/constants/Mno;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1860
    new-instance v12, Lcom/sec/internal/helper/httpclient/DnsController;

    iget v3, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mNafRetryCounter:I

    iget v4, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mBsfRetryCounter:I

    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mNetwork:Landroid/net/Network;

    iget-object v6, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mDnsAddresses:Ljava/util/List;

    const/4 v8, 0x1

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mConfig:Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;

    iget-object v10, v2, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->nafServer:Ljava/lang/String;

    iget-object v11, v2, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->bsfServer:Ljava/lang/String;

    const/16 v16, 0x1

    move-object v2, v12

    move-object v9, v1

    move-object v15, v12

    move/from16 v12, v16

    invoke-direct/range {v2 .. v12}, Lcom/sec/internal/helper/httpclient/DnsController;-><init>(IILandroid/net/Network;Ljava/util/List;IZLcom/sec/internal/constants/Mno;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v15, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mDns:Lokhttp3/Dns;

    goto :goto_1

    .line 1864
    :cond_4
    new-instance v10, Lcom/sec/internal/helper/httpclient/DnsController;

    iget v3, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mNafRetryCounter:I

    iget v4, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mBsfRetryCounter:I

    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mNetwork:Landroid/net/Network;

    iget-object v6, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mDnsAddresses:Ljava/util/List;

    const/4 v8, 0x1

    move-object v2, v10

    move-object v9, v1

    invoke-direct/range {v2 .. v9}, Lcom/sec/internal/helper/httpclient/DnsController;-><init>(IILandroid/net/Network;Ljava/util/List;IZLcom/sec/internal/constants/Mno;)V

    iput-object v10, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mDns:Lokhttp3/Dns;

    goto :goto_1

    .line 1868
    :cond_5
    new-instance v2, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;)V

    iput-object v2, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mDns:Lokhttp3/Dns;

    .line 1879
    :goto_1
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mDns:Lokhttp3/Dns;

    invoke-virtual {v13, v2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setDns(Lokhttp3/Dns;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 1882
    :cond_6
    :goto_2
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->isReuseConnection:Z

    invoke-virtual {v13, v2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setReuseConnection(Z)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 1883
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtCallback:Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;

    invoke-virtual {v13, v2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setCallback(Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setHeaders(Ljava/util/Map;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 1885
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->isPutRequest(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1886
    sget-object v2, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->PUT:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {v13, v2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 1887
    new-instance v2, Lcom/sec/internal/helper/httpclient/HttpPostBody;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->updateUtDetailInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sec/internal/helper/httpclient/HttpPostBody;-><init>([B)V

    .line 1888
    invoke-virtual {v13, v2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setPostBody(Lcom/sec/internal/helper/httpclient/HttpPostBody;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    goto :goto_3

    .line 1890
    :cond_7
    sget-object v2, Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;->GET:Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;

    invoke-virtual {v13, v2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setMethod(Lcom/sec/internal/helper/httpclient/HttpRequestParams$Method;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 1893
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->makeUri()Ljava/lang/String;

    move-result-object v2

    .line 1894
    invoke-virtual {v13, v2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setUrl(Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    move-result-object v2

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mConfig:Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->bsfServer:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setBsfUrl(Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    move-result-object v2

    iget v3, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-virtual {v2, v3}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setPhoneId(I)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 1895
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mConfig:Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->username:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1896
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mConfig:Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->impu:Ljava/lang/String;

    invoke-virtual {v13, v2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setUserName(Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    goto :goto_4

    .line 1898
    :cond_8
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mConfig:Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->username:Ljava/lang/String;

    invoke-virtual {v13, v2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setUserName(Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 1900
    :goto_4
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mConfig:Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->passwd:Ljava/lang/String;

    invoke-virtual {v13, v2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setPassword(Ljava/lang/String;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    move-result-object v2

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->support_tls:Z

    invoke-virtual {v2, v3}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setUseTls(Z)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    move-result-object v2

    const-wide/16 v3, 0x2710

    invoke-virtual {v2, v3, v4}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setConnectionTimeout(J)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 1901
    sget-object v2, Lcom/sec/internal/constants/Mno;->GCF:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_9

    const-wide/16 v2, 0x7d0

    .line 1902
    invoke-virtual {v13, v2, v3}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setReadTimeout(J)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    goto :goto_5

    .line 1903
    :cond_9
    sget-object v2, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    sget-object v5, Lcom/sec/internal/constants/Mno;->DISH:Lcom/sec/internal/constants/Mno;

    filled-new-array {v2, v5}, [Lcom/sec/internal/constants/Mno;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-wide/16 v2, 0x7d00

    .line 1904
    invoke-virtual {v13, v2, v3}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setReadTimeout(J)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    goto :goto_5

    .line 1906
    :cond_a
    invoke-virtual {v13, v3, v4}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setReadTimeout(J)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 1909
    :goto_5
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->ip_version:I

    invoke-virtual {v13, v2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setIpVersion(I)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 1911
    sget-object v2, Lcom/sec/internal/constants/Mno;->ORANGE:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_d

    .line 1914
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mApn:Lcom/sec/internal/ims/servicemodules/ss/ApnSettings;

    if-eqz v2, :cond_b

    .line 1915
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/ss/ApnSettings;->getProxyAddress()Ljava/lang/String;

    move-result-object v2

    .line 1916
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mApn:Lcom/sec/internal/ims/servicemodules/ss/ApnSettings;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/ss/ApnSettings;->getProxyPort()I

    move-result v3

    goto :goto_6

    :cond_b
    const/4 v2, 0x0

    const/16 v3, 0x50

    .line 1918
    :goto_6
    sget-object v4, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    .line 1921
    :try_start_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_c

    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mNetwork:Landroid/net/Network;

    if-eqz v5, :cond_c

    .line 1922
    sget-object v5, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v6, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "proxyAddress : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " ProxyPort : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1923
    new-instance v5, Ljava/net/Proxy;

    sget-object v6, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v7, Ljava/net/InetSocketAddress;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mNetwork:Landroid/net/Network;

    .line 1924
    invoke-virtual {v0, v2}, Landroid/net/Network;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-direct {v7, v0, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {v5, v6, v7}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v5

    goto :goto_7

    :catch_0
    move-exception v0

    .line 1927
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 1930
    :cond_c
    :goto_7
    invoke-virtual {v13, v4}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setProxy(Ljava/net/Proxy;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setUseProxy(Z)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    goto :goto_8

    :cond_d
    const/4 v2, 0x1

    .line 1933
    :goto_8
    sget-object v0, Lcom/sec/internal/constants/Mno;->CU:Lcom/sec/internal/constants/Mno;

    if-ne v1, v0, :cond_e

    .line 1934
    sget-object v0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    .line 1935
    invoke-virtual {v13, v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setProxy(Ljava/net/Proxy;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setUseProxy(Z)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 1938
    :cond_e
    sget-object v0, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->DISH:Lcom/sec/internal/constants/Mno;

    filled-new-array {v0, v3}, [Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1939
    invoke-virtual {v13, v2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setUseImei(Z)V

    .line 1942
    :cond_f
    sget-object v0, Lcom/sec/internal/constants/Mno;->HK3:Lcom/sec/internal/constants/Mno;

    if-eq v1, v0, :cond_11

    sget-object v0, Lcom/sec/internal/constants/Mno;->TWO_DEGREE:Lcom/sec/internal/constants/Mno;

    if-ne v1, v0, :cond_10

    goto :goto_9

    :cond_10
    const/4 v0, 0x0

    .line 1945
    invoke-virtual {v13, v0}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setIgnoreServerCert(Z)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    const/4 v2, 0x1

    goto :goto_a

    :cond_11
    :goto_9
    const/4 v2, 0x1

    .line 1943
    invoke-virtual {v13, v2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setIgnoreServerCert(Z)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    .line 1948
    :goto_a
    sget-object v0, Lcom/sec/internal/constants/Mno;->VODAFONE_AUSTRALIA:Lcom/sec/internal/constants/Mno;

    if-ne v1, v0, :cond_12

    .line 1949
    invoke-virtual {v13, v2}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setCipherSuiteType(I)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    :cond_12
    return-object v13
.end method

.method public makeUri()Ljava/lang/String;
    .locals 12

    .line 1696
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1698
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mConfig:Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->nafPort:I

    const/16 v2, 0x1bb

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->support_tls:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "http://"

    .line 1701
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    :goto_0
    const-string v1, "https://"

    .line 1699
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1704
    :goto_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mConfig:Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->nafServer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1705
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mConfig:Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->nafPort:I

    const/16 v2, 0x50

    if-eq v1, v2, :cond_2

    const-string v1, ":"

    .line 1706
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mConfig:Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->nafPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1709
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mConfig:Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->xcapRootUri:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1710
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mConfig:Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->xcapRootUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1713
    :cond_3
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 1714
    sget-object v2, Lcom/sec/internal/constants/Mno;->XPLORE:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_4

    const-string v2, "/rem/sentinel/xcap"

    .line 1715
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string v2, "/simservs.ngn.etsi.org/users/"

    .line 1718
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mConfig:Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->impu:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/simservs.xml"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1720
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    const/16 v3, 0x9

    const/16 v4, 0x8

    const/4 v5, 0x4

    const-string v6, "/~~/simservs/communication-diversion"

    const-string v7, "/~~/simservs/ss:outgoing-communication-barring"

    const-string v8, "/~~/simservs/outgoing-communication-barring"

    const-string v9, "/~~/simservs/ss:incoming-communication-barring"

    const-string v10, "/~~/simservs/incoming-communication-barring"

    const-string v11, "/~~/simservs/ss:communication-diversion"

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_7

    :pswitch_0
    const-string v2, "/~~/simservs/communication-waiting"

    .line 1723
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    :pswitch_1
    const-string v2, "/~~/terminating-identity-presentation-restriction"

    .line 1799
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    :pswitch_2
    const-string v2, "/~~/terminating-identity-presentation"

    .line 1795
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    :pswitch_3
    const-string v2, "/~~/simservs/originating-identity-presentation-restriction"

    .line 1791
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    :pswitch_4
    const-string v2, "/~~/simservs/originating-identity-presentation"

    .line 1787
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    .line 1773
    :pswitch_5
    sget-object v2, Lcom/sec/internal/constants/Mno;->CHT:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_5

    .line 1774
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1776
    :cond_5
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1778
    :goto_2
    sget-object v2, Lcom/sec/internal/constants/Mno;->HK3:Lcom/sec/internal/constants/Mno;

    sget-object v6, Lcom/sec/internal/constants/Mno;->FET:Lcom/sec/internal/constants/Mno;

    sget-object v7, Lcom/sec/internal/constants/Mno;->CHT:Lcom/sec/internal/constants/Mno;

    filled-new-array {v2, v6, v7}, [Lcom/sec/internal/constants/Mno;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    if-eq v2, v4, :cond_10

    if-ne v2, v3, :cond_6

    goto/16 :goto_7

    .line 1781
    :cond_6
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->isCBSingleElement:Z

    if-eqz v2, :cond_10

    .line 1782
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getCbURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    .line 1753
    :pswitch_6
    sget-object v2, Lcom/sec/internal/constants/Mno;->CHT:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_7

    .line 1754
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    .line 1756
    :cond_7
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    .line 1760
    :pswitch_7
    sget-object v2, Lcom/sec/internal/constants/Mno;->CHT:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_8

    .line 1761
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1763
    :cond_8
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1765
    :goto_3
    sget-object v2, Lcom/sec/internal/constants/Mno;->HK3:Lcom/sec/internal/constants/Mno;

    sget-object v6, Lcom/sec/internal/constants/Mno;->FET:Lcom/sec/internal/constants/Mno;

    sget-object v7, Lcom/sec/internal/constants/Mno;->CHT:Lcom/sec/internal/constants/Mno;

    filled-new-array {v2, v6, v7}, [Lcom/sec/internal/constants/Mno;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    if-eq v2, v4, :cond_10

    if-ne v2, v3, :cond_9

    goto :goto_7

    .line 1768
    :cond_9
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->isCBSingleElement:Z

    if-eqz v2, :cond_10

    .line 1769
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getCbURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 1746
    :pswitch_8
    sget-object v2, Lcom/sec/internal/constants/Mno;->CHT:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_a

    .line 1747
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 1749
    :cond_a
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 1733
    :pswitch_9
    sget-object v2, Lcom/sec/internal/constants/Mno;->CHT:Lcom/sec/internal/constants/Mno;

    if-eq v1, v2, :cond_c

    sget-object v2, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-eq v1, v2, :cond_c

    sget-object v2, Lcom/sec/internal/constants/Mno;->XPLORE:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_b

    goto :goto_4

    .line 1736
    :cond_b
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 1734
    :cond_c
    :goto_4
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1738
    :goto_5
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->isCFSingleElement:Z

    if-eqz v2, :cond_d

    .line 1739
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getCfURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1741
    :cond_d
    sget-object v2, Lcom/sec/internal/constants/Mno;->SMARTONE:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_10

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    if-ne v2, v5, :cond_10

    const-string v2, "/cp:conditions"

    .line 1742
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 1726
    :pswitch_a
    sget-object v2, Lcom/sec/internal/constants/Mno;->CHT:Lcom/sec/internal/constants/Mno;

    if-eq v1, v2, :cond_f

    sget-object v2, Lcom/sec/internal/constants/Mno;->XPLORE:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_e

    goto :goto_6

    .line 1729
    :cond_e
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 1727
    :cond_f
    :goto_6
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    :goto_7
    const-string v2, "cp:"

    .line 1805
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "ss:"

    .line 1806
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gtz v2, :cond_11

    if-lez v3, :cond_18

    .line 1809
    :cond_11
    sget-object v4, Lcom/sec/internal/constants/Mno;->CHT:Lcom/sec/internal/constants/Mno;

    const/16 v6, 0x65

    const-string/jumbo v7, "xmlns(cp=urn:ietf:params:xml:ns:common-policy)"

    if-ne v1, v4, :cond_13

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v8, v4, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    const/4 v9, 0x5

    if-eq v8, v9, :cond_12

    if-ne v8, v5, :cond_13

    :cond_12
    iget v4, v4, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    if-ne v4, v6, :cond_13

    .line 1811
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_13
    const-string v4, "?"

    .line 1813
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1814
    sget-object v4, Lcom/sec/internal/constants/Mno;->XPLORE:Lcom/sec/internal/constants/Mno;

    const-string/jumbo v5, "xmlns(ss=http://uri.etsi.org/ngn/params/xml/simservs/xcap)"

    if-ne v1, v4, :cond_15

    if-lez v3, :cond_14

    .line 1816
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    if-lez v2, :cond_18

    .line 1819
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_15
    if-lez v2, :cond_16

    .line 1823
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_16
    if-gtz v3, :cond_17

    .line 1825
    sget-object v2, Lcom/sec/internal/constants/Mno;->SFR:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_18

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    if-ne p0, v6, :cond_18

    .line 1826
    :cond_17
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1832
    :cond_18
    :goto_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onAirplaneModeChanged(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 637
    iget p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result p1

    if-nez p1, :cond_0

    iget p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isHkMo()Z

    move-result p1

    if-nez p1, :cond_0

    iget p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isTw()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x0

    .line 638
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->setForce403Error(Z)V

    :cond_1
    const/4 p1, 0x2

    .line 640
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 641
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mRequestState:Lcom/sec/internal/ims/servicemodules/ss/RequestState;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    .line 642
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    :cond_2
    return-void
.end method

.method protected parseSIBtarget([Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;",
            ">;"
        }
    .end annotation

    .line 1228
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    .line 1230
    sget-object p1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string v1, "Empty password"

    invoke-static {p1, p0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0

    .line 1233
    :cond_0
    array-length p0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p0, :cond_2

    aget-object v3, p1, v2

    .line 1234
    new-instance v4, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;

    invoke-direct {v4}, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;-><init>()V

    const-string v5, ","

    .line 1235
    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1236
    aget-object v5, v3, v1

    iput-object v5, v4, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->ruleId:Ljava/lang/String;

    .line 1237
    iget-object v5, v4, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    const/16 v6, 0xa

    iput v6, v5, Lcom/sec/internal/ims/servicemodules/ss/Condition;->condition:I

    .line 1239
    iget-object v5, v4, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->target:Ljava/util/List;

    const/4 v6, 0x1

    aget-object v7, v3, v6

    invoke-static {v7}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->cleanBarringNum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1240
    iput-boolean v1, v4, Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;->allow:Z

    .line 1241
    iget-object v5, v4, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    const/4 v7, 0x2

    aget-object v3, v3, v7

    const-string/jumbo v7, "true"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v5, Lcom/sec/internal/ims/servicemodules/ss/Condition;->state:Z

    .line 1242
    iget-object v3, v4, Lcom/sec/internal/ims/servicemodules/ss/SsRuleData$SsRule;->conditions:Lcom/sec/internal/ims/servicemodules/ss/Condition;

    iget-boolean v5, v3, Lcom/sec/internal/ims/servicemodules/ss/Condition;->state:Z

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v6, 0x3

    :goto_1
    iput v6, v3, Lcom/sec/internal/ims/servicemodules/ss/Condition;->action:I

    .line 1243
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method protected processTerminalRequest()V
    .locals 7

    .line 443
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "process terminal request "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getStringRequestType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 444
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v2, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    const/16 v3, 0x72

    const/16 v4, 0x64

    const-string v5, "enable_call_wait"

    if-eq v2, v3, :cond_5

    const/16 v3, 0x73

    if-eq v2, v3, :cond_2

    const-string/jumbo v3, "ss_clir_pref"

    const-string/jumbo v4, "ss_clip_pref"

    const/4 v5, 0x1

    const/4 v6, 0x0

    packed-switch v2, :pswitch_data_0

    .line 558
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no matched type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 561
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "errorCode"

    .line 562
    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 563
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->failUtRequest(Landroid/os/Bundle;)V

    goto/16 :goto_3

    .line 542
    :pswitch_0
    iget v0, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    .line 543
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-virtual {p0, v1, v3, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->setUserSet(ILjava/lang/String;I)V

    .line 544
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->completeUtRequest()V

    goto/16 :goto_3

    .line 486
    :pswitch_1
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-virtual {p0, v1, v3, v6}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getUserSetToInt(ILjava/lang/String;I)I

    move-result v1

    const/4 v2, 0x4

    .line 488
    filled-new-array {v1, v2}, [I

    move-result-object v1

    .line 489
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "queryClir"

    .line 490
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 491
    iget v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "terminal CLIR = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v1, v6

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 493
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->completeUtRequest(Landroid/os/Bundle;)V

    goto/16 :goto_3

    .line 548
    :pswitch_2
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    iget-boolean v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->enable:Z

    invoke-virtual {p0, v0, v4, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->setUserSet(ILjava/lang/String;I)V

    .line 549
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->completeUtRequest()V

    goto/16 :goto_3

    .line 498
    :pswitch_3
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-virtual {p0, v1, v4, v5}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getUserSetToInt(ILjava/lang/String;I)I

    move-result v1

    .line 500
    new-instance v2, Landroid/telephony/ims/ImsSsInfo$Builder;

    invoke-direct {v2, v1}, Landroid/telephony/ims/ImsSsInfo$Builder;-><init>(I)V

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/telephony/ims/ImsSsInfo$Builder;->setIncomingCommunicationBarringNumber(Ljava/lang/String;)Landroid/telephony/ims/ImsSsInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ims/ImsSsInfo$Builder;->build()Landroid/telephony/ims/ImsSsInfo;

    move-result-object v2

    .line 501
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "imsSsInfo"

    .line 502
    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 503
    iget v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "terminal CLIP = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 505
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->completeUtRequest(Landroid/os/Bundle;)V

    goto/16 :goto_3

    .line 529
    :pswitch_4
    iget v0, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->convertCbTypeToBitMask(I)I

    move-result v0

    .line 532
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    if-ne v1, v5, :cond_0

    goto :goto_0

    :cond_0
    move v5, v6

    .line 534
    :goto_0
    sget-object v1, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->AUDIO:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    invoke-direct {p0, v1, v5, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->setCbUserConfig(Lcom/sec/internal/ims/servicemodules/ss/MEDIA;ZI)V

    .line 535
    sget-object v1, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->VIDEO:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    invoke-direct {p0, v1, v5, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->setCbUserConfig(Lcom/sec/internal/ims/servicemodules/ss/MEDIA;ZI)V

    .line 537
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->completeUtRequest()V

    goto/16 :goto_3

    .line 463
    :pswitch_5
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string/jumbo v2, "ss_volte_cb_pref"

    invoke-virtual {p0, v1, v2, v6}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getUserSetToInt(ILjava/lang/String;I)I

    move-result v1

    .line 464
    iget v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string/jumbo v3, "ss_video_cb_pref"

    invoke-virtual {p0, v2, v3, v6}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getUserSetToInt(ILjava/lang/String;I)I

    move-result v2

    and-int/2addr v1, v2

    .line 468
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->convertCbTypeToBitMask(I)I

    move-result v2

    new-array v3, v5, [Landroid/os/Bundle;

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    move v5, v6

    .line 472
    :goto_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "status"

    .line 473
    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 474
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    const-string v4, "condition"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 475
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    const-string/jumbo v4, "serviceClass"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    aput-object v1, v3, v6

    .line 478
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "terminal CallBarring "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v4, v4, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 480
    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->completeUtRequest([Landroid/os/Bundle;)V

    goto :goto_3

    .line 513
    :cond_2
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v1

    if-nez v1, :cond_3

    .line 514
    sget-object v1, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    goto :goto_2

    :cond_3
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 515
    :goto_2
    sget-object v2, Lcom/sec/internal/constants/Mno;->TELSTRA:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_4

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->needPdnRequestForCW:Z

    if-eqz v1, :cond_4

    .line 516
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string v2, "Telstra needs to connect xcap pdn for call waiting to check non VoLTE SIM."

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 517
    invoke-virtual {p0, v4}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void

    .line 521
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget-boolean v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->enable:Z

    .line 522
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-virtual {p0, v1, v5, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->setUserSet(ILjava/lang/String;Z)V

    .line 523
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->completeUtRequest()V

    goto :goto_3

    .line 447
    :cond_5
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 448
    sget-object v2, Lcom/sec/internal/constants/Mno;->TELSTRA:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_6

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->needPdnRequestForCW:Z

    if-eqz v1, :cond_6

    .line 449
    invoke-virtual {p0, v4}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    return-void

    .line 453
    :cond_6
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-virtual {p0, v1, v5}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getUserSetToBoolean(ILjava/lang/String;)Z

    move-result v1

    .line 455
    iget v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "terminal CallWaiting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 457
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->completeUtRequest(Z)V

    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected processUtRequest()V
    .locals 6

    const/16 v0, 0xf

    .line 189
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    const/16 v1, 0x3f9

    const-wide/16 v2, 0x7ef4

    .line 190
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(IIJ)V

    .line 192
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->dequeueProfile()Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    const/4 v0, 0x2

    .line 193
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    const/16 v0, 0x64

    .line 194
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 195
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->initializeUtParameters()V

    .line 197
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->checkUtInternalError()I

    move-result v1

    const/16 v2, 0xc

    const-wide/16 v3, 0x64

    if-eqz v1, :cond_0

    .line 199
    invoke-virtual {p0, v2, v1, v3, v4}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(IIJ)V

    return-void

    .line 203
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isPutRequestBlocked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 204
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string v5, "Insertion of new rule is prohibited."

    invoke-static {v0, v1, v5}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x3f4

    .line 205
    invoke-virtual {p0, v2, v0, v3, v4}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(IIJ)V

    return-void

    .line 209
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mConfig:Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;

    if-eqz v1, :cond_2

    .line 210
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    iget v5, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getPublicId(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->impu:Ljava/lang/String;

    .line 213
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    invoke-virtual {v1, v2, v5}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->isTerminalRequest(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x4

    .line 215
    invoke-virtual {p0, v0, v3, v4}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(IJ)V

    goto :goto_0

    .line 217
    :cond_3
    invoke-virtual {p0, v0, v3, v4}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(IJ)V

    :goto_0
    return-void
.end method

.method protected query(Lcom/sec/internal/ims/servicemodules/ss/UtProfile;)V
    .locals 1

    .line 180
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->enqueueProfile(Lcom/sec/internal/ims/servicemodules/ss/UtProfile;)V

    .line 181
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->lockProcessingRequest()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 182
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->processUtRequest()V

    goto :goto_0

    .line 184
    :cond_0
    sget-object p1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string v0, "Other request is processing now"

    invoke-static {p1, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setForce403Error(Z)V
    .locals 0

    .line 928
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mForce403Error:Z

    return-void
.end method

.method protected setUserSet(ILjava/lang/String;I)V
    .locals 0

    .line 2276
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2, p3}, Lcom/sec/ims/settings/UserConfiguration;->setUserConfig(Landroid/content/Context;ILjava/lang/String;I)V

    return-void
.end method

.method protected setUserSet(ILjava/lang/String;Z)V
    .locals 0

    .line 2280
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2, p3}, Lcom/sec/ims/settings/UserConfiguration;->setUserConfig(Landroid/content/Context;ILjava/lang/String;Z)V

    return-void
.end method

.method protected unhandledMessage(Landroid/os/Message;)V
    .locals 5

    .line 1957
    sget-object v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->getStringMessage(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1959
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xc

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0xf

    if-eq v0, v1, :cond_1

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    if-eq v0, v4, :cond_1

    goto :goto_0

    .line 1975
    :cond_0
    iput-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    .line 1976
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->setForce403Error(Z)V

    .line 1977
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    iget v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->unregisterCwdbObserver(I)V

    .line 1978
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    iget v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->updateCapabilities(I)V

    .line 1979
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mRequestState:Lcom/sec/internal/ims/servicemodules/ss/RequestState;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_0

    :cond_1
    if-ne v0, v4, :cond_3

    .line 1963
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isRetryingCreatePdn:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x64

    .line 1964
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 1965
    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isRetryingCreatePdn:Z

    .line 1967
    :cond_2
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->disconnectPdn()V

    .line 1969
    :cond_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1970
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_4

    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    :cond_4
    const/4 p1, 0x1

    .line 1971
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsRequestFailed:Z

    .line 1972
    invoke-direct {p0, v0, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->requestFailed(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected unlockProcessingRequest()Z
    .locals 3

    .line 169
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPendingRequests:Ljava/util/List;

    monitor-enter v0

    .line 170
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPendingRequests:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 171
    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsRunningRequest:Z

    .line 172
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    .line 174
    :cond_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    .line 176
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected updateConfig(Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;)V
    .locals 5

    .line 589
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mConfig:Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;

    .line 590
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->getBuilder()Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;

    move-result-object p1

    iget v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->setPhoneId(I)Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData$Builder;->build()Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    .line 592
    iget p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object p1

    sget-object v0, Lcom/sec/internal/constants/Mno;->GCF:Lcom/sec/internal/constants/Mno;

    if-ne p1, v0, :cond_0

    const-string p1, "CHM"

    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 593
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->setTurnOffGcfCondition()V

    .line 596
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mUtServiceModule:Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;

    iget v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mConfig = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mConfig:Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mFeature = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    .line 597
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ssDomain = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string/jumbo v3, "ss_domain_setting"

    const-string v4, "CS"

    invoke-static {v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->getSetting(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ussdDomain = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string/jumbo v3, "ussd_domain_setting"

    .line 598
    invoke-static {v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->getSetting(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 596
    invoke-virtual {p1, v0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->writeDump(ILjava/lang/String;)V

    const/4 p1, 0x1

    .line 599
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->needPdnRequestForCW:Z

    const/4 p1, 0x0

    .line 600
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsGetForAllCb:Z

    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mIsGetSdBy404:Z

    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isRetryingCreatePdn:Z

    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isGetBeforePut:Z

    const/4 v0, -0x1

    .line 603
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->clearCachedSsData(I)V

    .line 605
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->setForce403Error(Z)V

    .line 606
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/sec/internal/helper/PreciseAlarmManager;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/PreciseAlarmManager;

    move-result-object p1

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/internal/helper/PreciseAlarmManager;->removeMessage(Landroid/os/Message;)V

    return-void
.end method

.method protected updateUtDetailInfo()Ljava/lang/String;
    .locals 5

    .line 974
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 976
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v2, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    const/16 v3, 0x65

    if-eq v2, v3, :cond_d

    const/16 v3, 0x67

    const/4 v4, 0x1

    if-eq v2, v3, :cond_5

    const/16 v3, 0x69

    if-eq v2, v3, :cond_5

    const/16 v3, 0x6b

    if-eq v2, v3, :cond_4

    const/16 v3, 0x6d

    if-eq v2, v3, :cond_1

    const/16 v0, 0x73

    if-eq v2, v0, :cond_0

    const-string v0, ""

    goto/16 :goto_3

    .line 1009
    :cond_0
    iget-boolean v0, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->enable:Z

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->support_ss_namespace:Z

    const-string v2, "communication-waiting"

    .line 1010
    invoke-static {v2, v0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->makeSingleXml(Ljava/lang/String;ZZ)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v0

    .line 1009
    invoke-static {v0}, Lcom/sec/internal/constants/ims/XmlCreator;->toXcapXml(Lcom/sec/internal/constants/ims/XmlElement;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 1018
    :cond_1
    sget-object v2, Lcom/sec/internal/constants/Mno;->VINAPHONE:Lcom/sec/internal/constants/Mno;

    const-string/jumbo v3, "originating-identity-presentation-restriction"

    if-ne v0, v2, :cond_3

    .line 1019
    iget v0, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    if-ne v0, v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->support_ss_namespace:Z

    invoke-static {v3, v4, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->makeSingleXml(Ljava/lang/String;ZZ)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/constants/ims/XmlCreator;->toXcapXml(Lcom/sec/internal/constants/ims/XmlElement;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 1022
    :cond_3
    iget v0, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->support_ss_namespace:Z

    invoke-static {v3, v0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->makeSingleXml(Ljava/lang/String;IZ)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/constants/ims/XmlCreator;->toXcapXml(Lcom/sec/internal/constants/ims/XmlElement;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 1013
    :cond_4
    iget-boolean v0, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->enable:Z

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->support_ss_namespace:Z

    const-string/jumbo v2, "originating-identity-presentation"

    .line 1014
    invoke-static {v2, v0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->makeSingleXml(Ljava/lang/String;ZZ)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v0

    .line 1013
    invoke-static {v0}, Lcom/sec/internal/constants/ims/XmlCreator;->toXcapXml(Lcom/sec/internal/constants/ims/XmlElement;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 982
    :cond_5
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v3, v2, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->support_media:Z

    if-eqz v3, :cond_7

    iget-boolean v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->noMediaForCB:Z

    if-eqz v2, :cond_6

    goto :goto_1

    .line 984
    :cond_6
    sget-object v2, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    if-eq v0, v2, :cond_8

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->convertToMedia(I)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/ims/servicemodules/ss/MEDIA;->ALL:Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    if-ne v1, v2, :cond_8

    .line 985
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iput v4, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    goto :goto_2

    :cond_7
    :goto_1
    const/16 v2, 0xff

    .line 983
    iput v2, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    .line 988
    :cond_8
    :goto_2
    sget-object v1, Lcom/sec/internal/constants/Mno;->VODAFONE_AUSTRALIA:Lcom/sec/internal/constants/Mno;

    const/16 v2, 0x8

    if-ne v0, v1, :cond_9

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v3, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    if-ne v3, v2, :cond_9

    .line 989
    iput v4, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    .line 992
    :cond_9
    sget-object v1, Lcom/sec/internal/constants/Mno;->HK3:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->FET:Lcom/sec/internal/constants/Mno;

    sget-object v4, Lcom/sec/internal/constants/Mno;->CHT:Lcom/sec/internal/constants/Mno;

    filled-new-array {v1, v3, v4}, [Lcom/sec/internal/constants/Mno;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    if-eq v1, v2, :cond_a

    const/16 v2, 0x9

    if-ne v1, v2, :cond_b

    .line 993
    :cond_a
    sget-object v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    const-string v3, "3HK & FET & CHT mo mt"

    invoke-static {v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 994
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    .line 995
    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getCbRuleSetForAll(ILcom/sec/internal/constants/Mno;)Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->support_ss_namespace:Z

    invoke-static {v1, v2, v0, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->makeMultipleXml(Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;ILcom/sec/internal/constants/Mno;Z)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v0

    .line 994
    invoke-static {v0}, Lcom/sec/internal/constants/ims/XmlCreator;->toXcapXml(Lcom/sec/internal/constants/ims/XmlElement;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 999
    :cond_b
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->isCBSingleElement:Z

    if-nez v1, :cond_c

    .line 1000
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    .line 1001
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getCbRuleSet(I)Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v3, v3, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->support_ss_namespace:Z

    invoke-static {v1, v2, v0, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->makeMultipleXml(Lcom/sec/internal/ims/servicemodules/ss/CallBarringData;ILcom/sec/internal/constants/Mno;Z)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v0

    .line 1000
    invoke-static {v0}, Lcom/sec/internal/constants/ims/XmlCreator;->toXcapXml(Lcom/sec/internal/constants/ims/XmlElement;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 1003
    :cond_c
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v2, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    iget v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->serviceClass:I

    .line 1005
    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->convertToMedia(I)Lcom/sec/internal/ims/servicemodules/ss/MEDIA;

    move-result-object v1

    .line 1004
    invoke-virtual {p0, v2, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getCallBarringRule(ILcom/sec/internal/ims/servicemodules/ss/MEDIA;)Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget-boolean v2, v2, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->support_ss_namespace:Z

    invoke-static {v1, v0, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->makeSingleXml(Lcom/sec/internal/ims/servicemodules/ss/CallBarringData$Rule;Lcom/sec/internal/constants/Mno;Z)Lcom/sec/internal/constants/ims/XmlElement;

    move-result-object v0

    .line 1003
    invoke-static {v0}, Lcom/sec/internal/constants/ims/XmlCreator;->toXcapXml(Lcom/sec/internal/constants/ims/XmlElement;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 978
    :cond_d
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->updateCallforwardingInfo(Lcom/sec/internal/constants/Mno;)Ljava/lang/String;

    move-result-object v0

    .line 1030
    :goto_3
    sget-object v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Print PUT Body : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p0, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method
