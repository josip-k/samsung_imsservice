.class public Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;
.super Lcom/sec/internal/omanetapi/nms/ObjectsOpSearch;
.source "CloudMessageObjectsOpSearch.java"


# static fields
.field private static final serialVersionUID:J = 0x72101bb1a5181ffL


# instance fields
.field private final JSON_CURSOR_TAG:Ljava/lang/String;

.field private final JSON_OBJECT_LIST_TAG:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field private isCmsMcsEnabled:Z

.field private transient mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

.field private final mFormatOfName:Ljava/text/SimpleDateFormat;

.field private final transient mIAPICallFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

.field private final mIsFullSync:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetTAG(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisCmsMcsEnabled(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->isCmsMcsEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIAPICallFlowListener(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;)Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->mIAPICallFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsFullSync(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->mIsFullSync:Z

    return p0
.end method

.method public constructor <init>(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;ZLcom/sec/internal/ims/cmstore/MessageStoreClient;Z)V
    .locals 7

    .line 64
    invoke-interface {p6}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getNmsHost()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p6}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getOMAApiVersion()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p6}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getStoreName()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move-object v5, p3

    move-object v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/omanetapi/nms/ObjectsOpSearch;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V

    .line 51
    const-class v0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;

    .line 52
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->TAG:Ljava/lang/String;

    const-string v0, "objectList"

    .line 58
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->JSON_OBJECT_LIST_TAG:Ljava/lang/String;

    const-string v0, "cursor"

    .line 59
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->JSON_CURSOR_TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->isCmsMcsEnabled:Z

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p6}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->TAG:Ljava/lang/String;

    .line 68
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    .line 69
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->mFormatOfName:Ljava/text/SimpleDateFormat;

    const-string v2, "UTC"

    .line 70
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 71
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->mIAPICallFlowListener:Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;

    .line 72
    iput-boolean p7, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->mIsFullSync:Z

    .line 73
    invoke-interface {p6}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getContext()Landroid/content/Context;

    move-result-object p7

    invoke-interface {p6}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v1

    invoke-static {p7, v1, v0}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->getInstance(Landroid/content/Context;IZ)Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    move-result-object p7

    iput-object p7, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    .line 75
    new-instance p7, Lcom/sec/internal/omanetapi/nms/data/SelectionCriteria;

    invoke-direct {p7}, Lcom/sec/internal/omanetapi/nms/data/SelectionCriteria;-><init>()V

    .line 76
    invoke-direct {p0, p3, p4, p7, p5}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->constructSearchParam(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Lcom/sec/internal/omanetapi/nms/data/SelectionCriteria;Z)V

    .line 77
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    if-nez p5, :cond_0

    .line 78
    iput-object p2, p7, Lcom/sec/internal/omanetapi/nms/data/SelectionCriteria;->fromCursor:Ljava/lang/String;

    .line 81
    :cond_0
    invoke-interface {p6}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getContext()Landroid/content/Context;

    move-result-object p5

    invoke-interface {p6}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result p6

    invoke-static {p5, p6}, Lcom/sec/internal/ims/cmstore/utils/CmsUtil;->isMcsSupported(Landroid/content/Context;I)Z

    move-result p5

    iput-boolean p5, p0, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->isCmsMcsEnabled:Z

    if-eqz p5, :cond_1

    .line 84
    iget-object p5, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p5}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p5

    invoke-virtual {p5}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p5

    invoke-interface {p5}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getContentType()Ljava/lang/String;

    move-result-object p5

    iget-object p6, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 85
    invoke-interface {p6}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p6

    invoke-virtual {p6}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p6

    invoke-interface {p6}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getAuthorizationBearer()Ljava/lang/String;

    move-result-object p6

    .line 84
    invoke-virtual {p0, p5, p6}, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->initMcsCommonRequestHeaders(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :cond_1
    iget-object p5, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p5}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p5

    invoke-virtual {p5}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p5

    invoke-interface {p5, p3}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getValidTokenByLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 88
    iget-object p6, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p6}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object p6

    invoke-virtual {p6}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object p6

    invoke-interface {p6}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getContentType()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p0, p6, p5}, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->initCommonRequestHeaders(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p5, 0x1

    .line 91
    invoke-virtual {p0, p7, p5}, Lcom/sec/internal/omanetapi/nms/ObjectsOpSearch;->initPostRequest(Lcom/sec/internal/omanetapi/nms/data/SelectionCriteria;Z)V

    .line 93
    new-instance p5, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch$1;

    move-object v0, p5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p0

    move-object v4, p3

    move-object v5, p4

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch$1;-><init>(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Ljava/lang/String;)V

    invoke-virtual {p0, p5}, Lcom/sec/internal/helper/httpclient/HttpRequestParams;->setCallback(Lcom/sec/internal/helper/httpclient/HttpRequestParams$HttpRequestCallback;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;Lcom/sec/internal/helper/httpclient/HttpResponseParams;)Z
    .locals 0

    .line 48
    invoke-virtual {p0, p1}, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->handleUnAuthorized(Lcom/sec/internal/helper/httpclient/HttpResponseParams;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-object p0
.end method

.method static synthetic access$500(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-object p0
.end method

.method static synthetic access$600(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-object p0
.end method

.method static synthetic access$700(Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;)Lcom/sec/internal/ims/cmstore/MessageStoreClient;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-object p0
.end method

.method private constructSearchParam(Ljava/lang/String;Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Lcom/sec/internal/omanetapi/nms/data/SelectionCriteria;Z)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 279
    iget-object v0, v1, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 280
    invoke-interface {v0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getMaxSearchEntry()I

    move-result v0

    iput v0, v3, Lcom/sec/internal/omanetapi/nms/data/SelectionCriteria;->maxEntries:I

    .line 285
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->DEFAULT:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v0, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v4, "Ascending"

    const-string v5, "Date"

    const-string v6, ""

    const/4 v7, 0x0

    if-eqz v0, :cond_3

    .line 286
    invoke-static {}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->isGcmReplacePolling()Z

    move-result v0

    const-string v1, "PresetSearch"

    if-eqz v0, :cond_0

    if-nez p4, :cond_2

    .line 288
    new-instance v0, Lcom/sec/internal/omanetapi/nms/data/SearchCriteria;

    invoke-direct {v0}, Lcom/sec/internal/omanetapi/nms/data/SearchCriteria;-><init>()V

    .line 290
    new-instance v2, Lcom/sec/internal/omanetapi/nms/data/SearchCriterion;

    invoke-direct {v2}, Lcom/sec/internal/omanetapi/nms/data/SearchCriterion;-><init>()V

    filled-new-array {v2}, [Lcom/sec/internal/omanetapi/nms/data/SearchCriterion;

    move-result-object v2

    .line 291
    aget-object v4, v2, v7

    iput-object v1, v4, Lcom/sec/internal/omanetapi/nms/data/SearchCriterion;->type:Ljava/lang/String;

    const-string v1, "UPOneDotO"

    .line 292
    iput-object v1, v4, Lcom/sec/internal/omanetapi/nms/data/SearchCriterion;->name:Ljava/lang/String;

    .line 293
    iput-object v6, v4, Lcom/sec/internal/omanetapi/nms/data/SearchCriterion;->value:Ljava/lang/String;

    .line 294
    iput-object v2, v0, Lcom/sec/internal/omanetapi/nms/data/SearchCriteria;->criterion:[Lcom/sec/internal/omanetapi/nms/data/SearchCriterion;

    .line 295
    iput-object v0, v3, Lcom/sec/internal/omanetapi/nms/data/SelectionCriteria;->searchCriteria:Lcom/sec/internal/omanetapi/nms/data/SearchCriteria;

    goto :goto_0

    :cond_0
    if-nez p4, :cond_1

    .line 299
    new-instance v0, Lcom/sec/internal/omanetapi/nms/data/SearchCriteria;

    invoke-direct {v0}, Lcom/sec/internal/omanetapi/nms/data/SearchCriteria;-><init>()V

    .line 301
    new-instance v2, Lcom/sec/internal/omanetapi/nms/data/SearchCriterion;

    invoke-direct {v2}, Lcom/sec/internal/omanetapi/nms/data/SearchCriterion;-><init>()V

    filled-new-array {v2}, [Lcom/sec/internal/omanetapi/nms/data/SearchCriterion;

    move-result-object v2

    .line 302
    aget-object v6, v2, v7

    iput-object v1, v6, Lcom/sec/internal/omanetapi/nms/data/SearchCriterion;->type:Ljava/lang/String;

    const-string/jumbo v1, "path"

    .line 303
    iput-object v1, v6, Lcom/sec/internal/omanetapi/nms/data/SearchCriterion;->name:Ljava/lang/String;

    const-string v1, "/main"

    .line 304
    iput-object v1, v6, Lcom/sec/internal/omanetapi/nms/data/SearchCriterion;->value:Ljava/lang/String;

    .line 305
    iput-object v2, v0, Lcom/sec/internal/omanetapi/nms/data/SearchCriteria;->criterion:[Lcom/sec/internal/omanetapi/nms/data/SearchCriterion;

    .line 306
    iput-object v0, v3, Lcom/sec/internal/omanetapi/nms/data/SelectionCriteria;->searchCriteria:Lcom/sec/internal/omanetapi/nms/data/SearchCriteria;

    .line 308
    :cond_1
    new-instance v0, Lcom/sec/internal/omanetapi/nms/data/SortCriteria;

    invoke-direct {v0}, Lcom/sec/internal/omanetapi/nms/data/SortCriteria;-><init>()V

    .line 310
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/SortCriterion;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/SortCriterion;-><init>()V

    filled-new-array {v1}, [Lcom/sec/internal/omanetapi/nms/data/SortCriterion;

    move-result-object v1

    .line 311
    aget-object v2, v1, v7

    iput-object v5, v2, Lcom/sec/internal/omanetapi/nms/data/SortCriterion;->type:Ljava/lang/String;

    .line 312
    iput-object v4, v2, Lcom/sec/internal/omanetapi/nms/data/SortCriterion;->order:Ljava/lang/String;

    .line 313
    iput-object v1, v0, Lcom/sec/internal/omanetapi/nms/data/SortCriteria;->criterion:[Lcom/sec/internal/omanetapi/nms/data/SortCriterion;

    .line 314
    iput-object v0, v3, Lcom/sec/internal/omanetapi/nms/data/SelectionCriteria;->sortCriteria:Lcom/sec/internal/omanetapi/nms/data/SortCriteria;

    :cond_2
    :goto_0
    return-void

    .line 321
    :cond_3
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->VM:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v0, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v8, 0x0

    if-eqz v0, :cond_8

    .line 322
    sget-object v9, Lcom/sec/internal/ims/cmstore/helper/TMOVariables$TmoMessageFolderId;->mVVMailInbox:Ljava/lang/String;

    .line 324
    iget-boolean v0, v1, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->mIsFullSync:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :try_start_0
    new-array v12, v0, [Ljava/lang/String;

    const-string/jumbo v0, "timeStamp"

    aput-object v0, v12, v7

    .line 327
    iget-object v10, v1, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->mBufferDB:Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;

    const/16 v11, 0x11

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string/jumbo v15, "timeStamp DESC"

    invoke-virtual/range {v10 .. v15}, Lcom/sec/internal/ims/cmstore/adapters/CloudMessageBufferDBPersister;->queryTable(I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v10, :cond_4

    .line 329
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 330
    iget-object v0, v1, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->mFormatOfName:Ljava/text/SimpleDateFormat;

    invoke-interface {v10, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_4
    move-object v0, v6

    :goto_1
    if-eqz v10, :cond_7

    .line 336
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v10, v8

    .line 333
    :goto_2
    :try_start_2
    iget-object v11, v1, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v10, :cond_6

    .line 336
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v8, v10

    :goto_3
    if-eqz v8, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 338
    :cond_5
    throw v0

    :cond_6
    :goto_4
    move-object v0, v6

    :cond_7
    :goto_5
    move-object/from16 v16, v9

    move-object v9, v0

    move-object/from16 v0, v16

    goto :goto_6

    .line 340
    :cond_8
    sget-object v0, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->VM_GREETINGS:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v0, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 341
    sget-object v9, Lcom/sec/internal/ims/cmstore/helper/TMOVariables$TmoMessageFolderId;->mVVMailGreeting:Ljava/lang/String;

    move-object v0, v9

    move-object v9, v6

    goto :goto_6

    :cond_9
    move-object v0, v6

    move-object v9, v0

    .line 343
    :goto_6
    iget-object v10, v1, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v10}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v10

    .line 344
    invoke-interface {v10}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getProtocol()Ljava/lang/String;

    move-result-object v10

    .line 345
    new-instance v11, Landroid/net/Uri$Builder;

    invoke-direct {v11}, Landroid/net/Uri$Builder;-><init>()V

    .line 346
    invoke-virtual {v11, v10}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v10

    iget-object v12, v1, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 348
    invoke-interface {v12}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v12

    .line 349
    invoke-interface {v12}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getNmsHost()Ljava/lang/String;

    move-result-object v12

    .line 347
    invoke-virtual {v10, v12}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v10

    const-string v12, "nms"

    .line 350
    invoke-virtual {v10, v12}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v10

    iget-object v12, v1, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 352
    invoke-interface {v12}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v12

    .line 353
    invoke-interface {v12}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getOMAApiVersion()Ljava/lang/String;

    move-result-object v12

    .line 351
    invoke-virtual {v10, v12}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v10

    iget-object v12, v1, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 355
    invoke-interface {v12}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v12

    .line 356
    invoke-interface {v12}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getStoreName()Ljava/lang/String;

    move-result-object v12

    .line 354
    invoke-virtual {v10, v12}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v10

    move-object/from16 v12, p1

    .line 356
    invoke-virtual {v10, v12}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v10

    const-string v12, "folders"

    .line 357
    invoke-virtual {v10, v12}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v10

    .line 358
    invoke-virtual {v10, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 360
    :try_start_3
    new-instance v10, Lcom/sec/internal/omanetapi/nms/data/Reference;

    invoke-direct {v10}, Lcom/sec/internal/omanetapi/nms/data/Reference;-><init>()V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_3

    .line 361
    :try_start_4
    new-instance v0, Ljava/net/URL;

    invoke-virtual {v11}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, v10, Lcom/sec/internal/omanetapi/nms/data/Reference;->resourceURL:Ljava/net/URL;
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_8

    :catch_2
    move-exception v0

    goto :goto_7

    :catch_3
    move-exception v0

    move-object v10, v8

    .line 363
    :goto_7
    iget-object v11, v1, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iput-object v8, v10, Lcom/sec/internal/omanetapi/nms/data/Reference;->resourceURL:Ljava/net/URL;

    .line 366
    :goto_8
    iget-object v0, v1, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "type: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", minDate: "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mIsFullSync: "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v1, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->mIsFullSync:Z

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-boolean v0, v1, Lcom/sec/internal/ims/cmstore/omanetapi/nms/CloudMessageObjectsOpSearch;->mIsFullSync:Z

    if-nez v0, :cond_a

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 368
    new-instance v0, Lcom/sec/internal/omanetapi/nms/data/SearchCriteria;

    invoke-direct {v0}, Lcom/sec/internal/omanetapi/nms/data/SearchCriteria;-><init>()V

    .line 370
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/SearchCriterion;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/SearchCriterion;-><init>()V

    filled-new-array {v1}, [Lcom/sec/internal/omanetapi/nms/data/SearchCriterion;

    move-result-object v1

    .line 372
    aget-object v2, v1, v7

    iput-object v5, v2, Lcom/sec/internal/omanetapi/nms/data/SearchCriterion;->type:Ljava/lang/String;

    .line 373
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "minDate="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/sec/internal/omanetapi/nms/data/SearchCriterion;->value:Ljava/lang/String;

    .line 374
    iput-object v1, v0, Lcom/sec/internal/omanetapi/nms/data/SearchCriteria;->criterion:[Lcom/sec/internal/omanetapi/nms/data/SearchCriterion;

    .line 375
    iput-object v0, v3, Lcom/sec/internal/omanetapi/nms/data/SelectionCriteria;->searchCriteria:Lcom/sec/internal/omanetapi/nms/data/SearchCriteria;

    .line 378
    :cond_a
    new-instance v0, Lcom/sec/internal/omanetapi/nms/data/SortCriteria;

    invoke-direct {v0}, Lcom/sec/internal/omanetapi/nms/data/SortCriteria;-><init>()V

    .line 380
    new-instance v1, Lcom/sec/internal/omanetapi/nms/data/SortCriterion;

    invoke-direct {v1}, Lcom/sec/internal/omanetapi/nms/data/SortCriterion;-><init>()V

    filled-new-array {v1}, [Lcom/sec/internal/omanetapi/nms/data/SortCriterion;

    move-result-object v1

    .line 382
    aget-object v2, v1, v7

    iput-object v5, v2, Lcom/sec/internal/omanetapi/nms/data/SortCriterion;->type:Ljava/lang/String;

    .line 383
    iput-object v4, v2, Lcom/sec/internal/omanetapi/nms/data/SortCriterion;->order:Ljava/lang/String;

    .line 384
    iput-object v1, v0, Lcom/sec/internal/omanetapi/nms/data/SortCriteria;->criterion:[Lcom/sec/internal/omanetapi/nms/data/SortCriterion;

    .line 386
    iput-object v10, v3, Lcom/sec/internal/omanetapi/nms/data/SelectionCriteria;->searchScope:Lcom/sec/internal/omanetapi/nms/data/Reference;

    .line 387
    iput-object v0, v3, Lcom/sec/internal/omanetapi/nms/data/SelectionCriteria;->sortCriteria:Lcom/sec/internal/omanetapi/nms/data/SortCriteria;

    return-void
.end method
